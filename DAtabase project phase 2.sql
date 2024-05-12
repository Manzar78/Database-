Create database Charity_Management_System;
use Charity_Management_System;

-- Table: Donor
CREATE TABLE Donor (
    donor_id INT PRIMARY KEY,
    donor_name VARCHAR(255) NOT NULL,
    email VARCHAR(255),
    phone_number VARCHAR(20)
);

-- Table: Donation
CREATE TABLE Donation (
    donation_id INT PRIMARY KEY,
    donor_id INT,
    donation_date DATE NOT NULL,
    amount DECIMAL(10, 2) NOT NULL
);

-- Table: Campaign
CREATE TABLE Campaign (
    campaign_id INT PRIMARY KEY,
    campaign_name VARCHAR(255) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE
);

-- Table: Campaign_Donation (many-to-many relationship between Campaign and Donation)
CREATE TABLE Campaign_Donation (
    campaign_id INT,
    donation_id INT,
    PRIMARY KEY (campaign_id, donation_id)
);

-- Table: Beneficiary
CREATE TABLE Beneficiary (
    beneficiary_id INT PRIMARY KEY,
    beneficiary_name VARCHAR(255) NOT NULL,
    contact_person VARCHAR(255),
    contact_number VARCHAR(20),
    address TEXT
);

-- Table: Project
CREATE TABLE Project (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(255) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE,
    description TEXT,
    beneficiary_id INT
);

-- Table: Volunteer
CREATE TABLE Volunteer (
    volunteer_id INT PRIMARY KEY,
    volunteer_name VARCHAR(255) NOT NULL,
    email VARCHAR(255),
    phone_number VARCHAR(20)
);

-- Table: Project_Volunteer (many-to-many relationship between Project and Volunteer)
CREATE TABLE Project_Volunteer (
    project_id INT,
    volunteer_id INT,
    PRIMARY KEY (project_id, volunteer_id)
);

-- Table: Expense
CREATE TABLE Expense (
    expense_id INT PRIMARY KEY,
    expense_date DATE NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    description TEXT,
    project_id INT
);

-- Table: Expense_Category
CREATE TABLE Expense_Category (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(255) NOT NULL
);

-- Table: Project_Expense (many-to-many relationship between Project and Expense_Category)
CREATE TABLE Project_Expense (
    project_id INT,
    expense_id INT,
    category_id INT,
    PRIMARY KEY (project_id, expense_id)
);

