# 🛍️ E-Commerce Microservices with Kafka

<div align="center">
  <img src="https://i.imgur.com/JLy7o2E.png" alt="Architecture Diagram" width="600">
  
  [![.NET](https://img.shields.io/badge/.NET-7.0-512BD4?logo=dotnet)](https://dotnet.microsoft.com/)
  [![Kafka](https://img.shields.io/badge/Apache_Kafka-2.8-231F20?logo=apachekafka)](https://kafka.apache.org/)
  [![Docker](https://img.shields.io/badge/Docker-20.10-2496ED?logo=docker)](https://www.docker.com/)
  [![PostgreSQL](https://img.shields.io/badge/PostgreSQL-15-4169E1?logo=postgresql)](https://www.postgresql.org/)
</div>

## 🚀 Быстрый старт

### 1. Клонирование репозитория
```bash
git clone https://github.com/CoderCppH/MicroServiceAndKafka_Ecommerce.git
cd MicroServiceAndKafka_Ecommerce
2. Запуск инфраструктуры
bash
docker-compose -f docker/kafka-compose.yml up -d
docker-compose -f docker/postgres-compose.yml up -d
3. Запуск сервисов
bash
dotnet build
cd src/ApiGateway
dotnet run
📊 Архитектура системы
<div align="center"> <img src="https://i.imgur.com/5XQ8z9m.png" alt="Service Architecture" width="800"> </div>
🔧 Основные сервисы
Сервис	Порт	Описание	Иконка
API Gateway	5000	Главная точка входа	<img src="https://i.imgur.com/8Km9tLL.png" width="20">
Order Service	5001	Обработка заказов	<img src="https://i.imgur.com/Vv5nQ12.png" width="20">
Payment Service	5002	Управление платежами	<img src="https://i.imgur.com/3JjQ9Hf.png" width="20">
Product Service	5003	Каталог товаров	<img src="https://i.imgur.com/5XQ8z9m.png" width="20">
Kafka UI	9000	Мониторинг Kafka	<img src="https://i.imgur.com/JLy7o2E.png" width="20">
📡 Настройка Kafka
json
{
  "Kafka": {
    "BootstrapServers": "localhost:9092",
    "OrderTopic": "order-events",
    "PaymentTopic": "payment-events"
  }
}
📊 Мониторинг
<div align="center"> <a href="http://localhost:9000"> <img src="https://i.imgur.com/mVQhOzX.png" alt="Kafdrop" width="300"> </a> <a href="http://localhost:3000"> <img src="https://i.imgur.com/5XQ8z9m.png" alt="Grafana" width="300"> </a> </div>
🧪 Тестирование
bash
dotnet test tests/IntegrationTests
🛑 Остановка
bash
docker-compose -f docker/kafka-compose.yml down
docker-compose -f docker/postgres-compose.yml down
📜 Лицензия
MIT License

<div align="center"> <img src="https://i.imgur.com/JLy7o2E.png" alt="Footer" width="100"> </div> ```
Для использования этого README.md:

Замените все https://i.imgur.com/... ссылки на реальные изображения

Рекомендуемые сервисы для хостинга изображений:

Imgur

GitHub Issues

Cloudinary

Для иконок сервисов можно использовать:

Simple Icons

Font Awesome

Material Icons

Для архитектурных диаграмм:

Draw.io

Lucidchart

Excalidraw
