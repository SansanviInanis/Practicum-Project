CREATE TABLE timesheets_items (
    tr_id INT AUTO_INCREMENT PRIMARY KEY,
    ts_id INT,
    time_from VARCHAR(5),
    time_out VARCHAR(5),
    description VARCHAR(128),
    modified TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (ts_id) REFERENCES timesheets(ts_id)
);
