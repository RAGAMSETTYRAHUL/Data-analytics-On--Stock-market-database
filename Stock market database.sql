create database  stock_market;
use  stock_market;

CREATE TABLE Stocks (
    stock_id INT PRIMARY KEY,
    stock_name VARCHAR(50),
    ticker_symbol VARCHAR(10)
);

CREATE TABLE Stock_Prices (
    price_id INT PRIMARY KEY,
    stock_id INT,
    price_date DATE,
    opening_price DECIMAL(10, 2),
    closing_price DECIMAL(10, 2),
    highest_price DECIMAL(10, 2),
    lowest_price DECIMAL(10, 2),
    volume INT,
    FOREIGN KEY (stock_id) REFERENCES Stocks(stock_id)
);

CREATE TABLE Trades (
    trade_id INT PRIMARY KEY,
    stock_id INT,
    trade_date DATE,
    trade_volume INT,
    trade_price DECIMAL(10, 2),
    FOREIGN KEY (stock_id) REFERENCES Stocks(stock_id)
);

-- Stocks Table
INSERT INTO Stocks (stock_id, stock_name, ticker_symbol) VALUES
(1, 'Apple Inc.', 'AAPL'),
(2, 'Microsoft Corp.', 'MSFT'),
(3, 'Tesla Inc.', 'TSLA');

-- Stock_Prices Table
INSERT INTO Stock_Prices (price_id, stock_id, price_date, opening_price, closing_price, highest_price, lowest_price, volume) VALUES
(1, 1, '2024-09-01', 180.50, 182.00, 183.00, 179.50, 2000000),
(2, 1, '2024-09-02', 182.00, 181.50, 183.50, 180.50, 1800000),
(3, 2, '2024-09-01', 330.00, 332.00, 335.00, 328.50, 1500000),
(4, 2, '2024-09-02', 332.00, 331.50, 334.50, 330.00, 1400000),
(5, 3, '2024-09-01', 260.00, 262.50, 265.00, 258.00, 2500000);

-- Trades Table
INSERT INTO Trades (trade_id, stock_id, trade_date, trade_volume, trade_price) VALUES
(1, 1, '2024-09-01', 100000, 181.50),
(2, 1, '2024-09-02', 95000, 181.00),
(3, 2, '2024-09-01', 75000, 332.50),
(4, 2, '2024-09-02', 80000, 331.00),
(5, 3, '2024-09-01', 50000, 261.00);

