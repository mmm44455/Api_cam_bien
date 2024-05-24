<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sensor Data Chart</title>
    <link rel="stylesheet" href="sytle.css">
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
        google.charts.load('current', {'packages':['corechart']});
        google.charts.setOnLoadCallback(() => drawChart());

        function parseTimeString(timeString) {
            if (!timeString) {
                return null;
            }
            const [datePart, timePart] = timeString.split(' ');
            const [year, month, day] = datePart.split('-');
            const [hour, minute, second] = timePart.split(':');
            return new Date(year, month - 1, day, hour, minute, second);
        }

        function formatDate(date) {
            const day = date.getDate();
            const month = date.getMonth() + 1;
            const year = date.getFullYear();
            return `${day}-${month}-${year}`;
        }

        function formatTime(date) {
            const hours = date.getHours().toString().padStart(2, '0');
            const minutes = date.getMinutes().toString().padStart(2, '0');
            const seconds = date.getSeconds().toString().padStart(2, '0');
            return `${hours}:${minutes}:${seconds}`;
        }

        function generateAlertMessage(temperature, humidity, timestamp) {
            let message = `Thời gian đo: ${timestamp}\n`;
            if (temperature > 30) {
                message += `Nhiệt độ phòng bạn đang là ${temperature} độ. Nhiệt độ khá nóng, nên bạn cần bật quạt đi.\n`;
            } else if (temperature < 20) {
                message += `Nhiệt độ phòng bạn đang là ${temperature} độ. Nhiệt độ khá lạnh, nên bạn cần bật máy sưởi.\n`;
            } else {
                message += `Nhiệt độ phòng bạn đang là ${temperature} độ. Nhiệt độ khá lý tưởng.\n`;
            }

            if (humidity > 70) {
                message += `Độ ẩm trong phòng bạn đang là ${humidity}%. Độ ẩm khá cao, bạn cần bật máy hút ẩm.\n`;
            } else if (humidity < 30) {
                message += `Độ ẩm trong phòng bạn đang là ${humidity}%. Độ ẩm khá thấp, bạn cần bật máy tạo độ ẩm.\n`;
            } else {
                message += `Độ ẩm trong phòng bạn đang là ${humidity}%. Độ ẩm khá lý tưởng.\n`;
            }

            return message;
        }

        function drawChart(date = null) {
            const xhr = new XMLHttpRequest();
            let url = "api.php";
            if (date) {
                url += `?date=${date}`;
            }
            xhr.onreadystatechange = function() {
                if (xhr.readyState === XMLHttpRequest.DONE) {
                    if (xhr.status === 200) {
                        try {
                            const json = JSON.parse(xhr.responseText);
                            const dulieu = [['Time', 'Temperature', 'Humidity']];
                            const dateSet = new Set();
                            let latestTemperature = null;
                            let latestHumidity = null;
                            let latestTimestamp = null;

                            for (const item of json) {
                                const itemDate = parseTimeString(item.timestamp);
                                if (itemDate) {
                                    dulieu.push([itemDate, parseFloat(item.temperature), parseFloat(item.humidity)]);
                                    dateSet.add(itemDate.toISOString().split('T')[0]);
                                    latestTemperature = parseFloat(item.temperature);
                                    latestHumidity = parseFloat(item.humidity);
                                    latestTimestamp = item.timestamp;
                                }
                            }

                            const data = google.visualization.arrayToDataTable(dulieu);

                            const dateArray = Array.from(dateSet);
                            const formattedDateArray = dateArray.map(date => {
                                const dateObj = new Date(date);
                                return formatDate(dateObj);
                            });

                            const dateTitle = formattedDateArray.join(', ');

                            const options = {
                                title: `Cảm biến của ngày ${dateTitle}`,
                                legend: { position: 'bottom' },
                                hAxis: {
                                    title: 'Thời gian'
                                },
                                vAxis: {
                                    title: 'Giá trị'
                                },
                                series: {
                                    0: { targetAxisIndex: 0 },
                                    1: { targetAxisIndex: 1 }
                                },
                                vAxes: {
                                    0: { title: 'Nhiệt độ' },
                                    1: { title: 'Độ ẩm' }
                                }
                            };

                            const chart = new google.visualization.LineChart(document.getElementById('curve_chart'));
                            chart.draw(data, options);

                            if (latestTemperature !== null && latestHumidity !== null && latestTimestamp !== null) {
                                const alertMessage = generateAlertMessage(latestTemperature, latestHumidity, latestTimestamp);
                                document.getElementById('alert').innerText = alertMessage;
                            }
                        } catch (error) {
                            console.error('Error parsing JSON:', error);
                        }
                    } else {
                        console.error('API request failed with status:', xhr.status);
                    }
                }
            };

            xhr.open("GET", url, true);
            xhr.send();
        }

        function updateDataPeriodically() {
            setInterval(() => {
                drawChart(document.getElementById('date-input').value);
            }, 5000);
        }

        function onDateChange() {
            drawChart(document.getElementById('date-input').value);
        }

        updateDataPeriodically();
    </script>
</head>
<body>
    <div>
        <label for="date-input">Chọn ngày:</label>
        <input type="date" id="date-input" onchange="onDateChange()">
    </div>
    <div class="Api_body" style="width:100%">
    <div id="curve_chart" style="width: 65%; height: 700px"></div>
    <div id="alert" style="margin-top: 20px;font-family: cursive; font-size: 16px; color: red;width:35%"></div>
    </div>
</body>
</html>
