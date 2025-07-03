E-Commerce Microservices with Kafka
Технологии: .NET 7, Apache Kafka, Docker, PostgreSQL
Порты: API Gateway (5000), Order (5001), Payment (5002), Product (5003), Kafdrop (9000)

Установка и запуск
Запустите инфраструктуру:

bash
docker-compose -f docker/kafka-compose.yml up -d
docker-compose -f docker/postgres-compose.yml up -d
Соберите и запустите сервисы:

bash
dotnet build
cd src/ApiGateway
dotnet run
Архитектура системы
Система состоит из:

API Gateway (главная точка входа)

Order Service (обработка заказов)

Payment Service (платежи)

Product Service (каталог товаров)

Kafka (обмен сообщениями между сервисами)

Конфигурация Kafka
Настройки в appsettings.json:

json
"Kafka": {
  "BootstrapServers": "localhost:9092",
  "OrderTopic": "order-events", 
  "PaymentTopic": "payment-events"
}
Мониторинг
Доступ к инструментам:

Kafdrop: http://localhost:9000

Prometheus: http://localhost:9090

Grafana: http://localhost:3000

Тестирование
Запуск тестов:

bash
dotnet test tests/IntegrationTests
Остановка
Чтобы остановить контейнеры:

bash
docker-compose -f docker/kafka-compose.yml down
docker-compose -f docker/postgres-compose.yml down
