
-- Create database if it doesn't exist
CREATE DATABASE IF NOT EXISTS student_register;

-- Use the created database
USE student_register;

-- Create the students table
CREATE TABLE IF NOT EXISTS students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    student_number VARCHAR(50) NOT NULL,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(100),
    course VARCHAR(100)
);

-- Insert data into students table
INSERT INTO students (student_number, first_name, last_name, email, course) VALUES
('1111', 'Ntiyiso', 'Baloyi', '221321103@tut4life.ac.za', 'Computer Science'),
('2222', 'Lerato', 'Managa', 'leratom2@gmail.com', 'Psychology'),
('3333', 'Tiyani', 'Baloyi', 'tiyanib21@gmailcom', 'Admin'),
('4444', 'Antony', 'Grog', 'antonyg12@gmail.com', 'Electrical Engineering'),
('5555', 'Angel', 'Moagi', 'angiem22@gmail.com', 'HR'),
('6666', 'Musa', 'Buthelezi', 'musab11@gmailcom', 'Computer Science');
