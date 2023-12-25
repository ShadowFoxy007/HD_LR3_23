-- Создание таблицы "Хабы"
CREATE TABLE Hubs (
    hub_id SERIAL PRIMARY KEY,
    hub_name VARCHAR(50)
);
-- Создание таблицы "Сателлиты"
CREATE TABLE Satellites (
    satellite_id SERIAL PRIMARY KEY,
    satellite_name VARCHAR(50),
    hub_id INTEGER REFERENCES Hubs(hub_id),
    satellite_data JSONB
);
-- Создание таблицы "Связи"
CREATE TABLE Links (
    link_id SERIAL PRIMARY KEY,
    link_name VARCHAR(50),
    hub_id INTEGER REFERENCES Hubs(hub_id),
    satellite_id INTEGER REFERENCES Satellites(satellite_id)
);
