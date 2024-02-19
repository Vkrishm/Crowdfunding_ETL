-- Create table for contacts data.
CREATE TABLE contacts (
	contact_id INT PRIMARY KEY,
	first_name VARCHAR(15) NOT NULL,
	last_name VARCHAR(15) NOT NULL,
	email VARCHAR(45) NOT NULL);
	
-- Create table for category data.
CREATE TABLE category (
	category_id VARCHAR(10) PRIMARY KEY,
	category VARCHAR(20));
	
-- Create table for subcategory data.
CREATE TABLE subcategory (
	subcategory_id VARCHAR(10) PRIMARY KEY,
	subcategory VARCHAR);

-- Create table for campaign data.
CREATE TABLE campaign (
	cf_id INT PRIMARY KEY,
	contact_id INT,
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	company_name VARCHAR(40) NOT NULL,
	description VARCHAR(55) NOT NULL,
	goal DECIMAL(8,2) NOT NULL,
	pledged DECIMAL(8,2),
	outcome VARCHAR(10) NOT NULL,
	backers_count INT,
	country VARCHAR(2) NOT NULL,
	currency VARCHAR(3) NOT NULL,
	launch_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR(5),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	subcategory_id VARCHAR(10),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id));