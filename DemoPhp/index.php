<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sensor Data Chart</title>
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

                            for (const item of json) {
                                const itemDate = parseTimeString(item.timestamp);
                                if (itemDate) {
                                    dulieu.push([itemDate, parseFloat(item.temperature), parseFloat(item.humidity)]);
                                    dateSet.add(itemDate.toISOString().split('T')[0]);
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
                                title: ` Cảm biến của  ngày ${dateTitle}`,
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
    <div id="curve_chart" style="width: 1000px; height: 700px"></div>
</body>
</html>
