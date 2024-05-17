#include <DHT.h>

// Định nghĩa chân kết nối cảm biến
#define DHTPIN 2     
#define DHTTYPE DHT11   // DHT 11

// Tạo đối tượng DHT
DHT dht(DHTPIN, DHTTYPE);

void setup() {
  Serial.begin(9600);
  dht.begin();
}

void loop() {
  delay(2000);  // Chờ 2 giây trước khi đọc dữ liệu mới

  // Đọc độ ẩm và nhiệt độ từ cảm biến
  float humidity = dht.readHumidity();
  float temperature = dht.readTemperature();

  // Kiểm tra nếu đọc dữ liệu thành công
  if (isnan(humidity) || isnan(temperature)) {
    Serial.println(F("Failed to read from DHT sensor!"));
    return;
  }

  // In dữ liệu ra cổng Serial
  Serial.print(F("Humidity: "));
  Serial.print(humidity);
  Serial.print(F("%  Temperature: "));
  Serial.print(temperature);
  Serial.println(F("°C"));

  // Tạo chuỗi JSON và gửi qua cổng Serial
  String jsonData = "{";
  jsonData += "\"temperature\":" + String(temperature) + ",";
  jsonData += "\"humidity\":" + String(humidity) + ",";
  jsonData += "\"timestamp\":\"" + String(millis()) + "\"";  // Sử dụng millis() cho thời gian nội bộ
  jsonData += "}";
  
  Serial.println(jsonData);
}
