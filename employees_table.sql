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
