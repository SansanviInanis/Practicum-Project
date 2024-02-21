CREATE TABLE timesheets (
    ts_id INT AUTO_INCREMENT PRIMARY KEY,
    emp_id INT,
    ts_date DATE,
    ts_approved ENUM('Y', 'N'),
    start_time VARCHAR(5),
    end_time VARCHAR(5),
    hours INT,
    minutes INT,
    overtime ENUM('Y', 'N'),
    modified TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (emp_id) REFERENCES employees(emp_id)
);
