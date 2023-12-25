CREATE TABLE Cars (
    car_id SERIAL PRIMARY KEY,
    brand VARCHAR(50),
    model VARCHAR(50),
    year INTEGER,
    price DECIMAL(10, 2)
);

-- Создание таблицы "Клиенты"
CREATE TABLE Customers (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(20)
);

-- Создание таблицы "Заказы"
CREATE TABLE Orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INTEGER REFERENCES Customers(customer_id),
    car_id INTEGER REFERENCES Cars(car_id),
    order_date DATE,

);
