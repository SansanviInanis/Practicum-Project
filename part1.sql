CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    login_id VARCHAR(255) UNIQUE,
    password VARCHAR(32),
    created TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    modified TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE employees (
    emp_id INT AUTO_INCREMENT PRIMARY KEY,
    login_id VARCHAR(255),
    emp_name VARCHAR(255),
    overtime ENUM('Y', 'N'),
    emp_start DATE,
    emp_end DATE,
    modified TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (login_id) REFERENCES users(login_id)
);

CREATE TABLE timesheets (
    ts_id INT AUTO_INCREMENT PRIMARY KEY,
    emp_id INT,
    ts_date DATE,
    ts_approved ENUM('Y', 'N'),
    start_time VARCHAR(5),
    end_time VARCHAR(5),
    hours INT CHECK (hours >= 0 AND hours <= 23),
    minutes INT CHECK (minutes >= 0 AND minutes <= 59),
    overtime ENUM('Y', 'N'),
    modified TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (emp_id) REFERENCES employees(emp_id)
);

CREATE TABLE timesheets_items (
    tr_id INT AUTO_INCREMENT PRIMARY KEY,
    ts_id INT,
    time_from VARCHAR(5),
    time_out VARCHAR(5),
    description VARCHAR(128),
    modified TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (ts_id) REFERENCES timesheets(ts_id)
);