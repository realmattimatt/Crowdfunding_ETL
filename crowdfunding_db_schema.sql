DROP TABLE IF EXISTS campaign; -- run 1st
DROP TABLE IF EXISTS subcategory; -- run 2nd
DROP TABLE IF EXISTS category; -- run 3rd
DROP TABLE IF EXISTS contacts; -- run 4th

CREATE TABLE contacts (
    contact_id VARCHAR(10) PRIMARY KEY NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL
); -- highlight this entire CREATE TABLE and run 5th

CREATE TABLE category (
    category_id VARCHAR(10) PRIMARY KEY NOT NULL,
    category VARCHAR(50) NOT NULL,
    FOREIGN KEY (category_id) REFERENCES category(category_id) ON DELETE CASCADE
); -- highlight this entire CREATE TABLE and run 6th

CREATE TABLE subcategory (
    subcategory_id VARCHAR(10) PRIMARY KEY NOT NULL,
    subcategory VARCHAR(50) NOT NULL,
    FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id) ON DELETE CASCADE
); -- highlight this entire CREATE TABLE and run 7th

CREATE TABLE campaign (
    cf_id INT PRIMARY KEY NOT NULL,
    contact_id VARCHAR NOT NULL,
	company_name VARCHAR(100) NOT NULL,
    description TEXT,
    goal DECIMAL(10,2) NOT NULL,
    pledged DECIMAL(10,2),
    outcome VARCHAR(50),
    backers_count INT,
    country VARCHAR(10) NOT NULL,
    currency VARCHAR(10) NOT NULL,
    launch_date DATE,
    end_date DATE,
	category_id VARCHAR(10) NOT NULL,
    subcategory_id VARCHAR(10) NOT NULL,
    FOREIGN KEY (contact_id) REFERENCES contacts(contact_id) ON DELETE CASCADE,
    FOREIGN KEY (category_id) REFERENCES category(category_id) ON DELETE CASCADE,
    FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id) ON DELETE CASCADE
); -- highlight this entire CREATE TABLE and run 8th


-- Uncomment as needed below to test. 
-- SELECT * FROM contacts;
-- SELECT * FROM category;
-- SELECT * FROM subcategory;
-- SELECT * FROM campaign;
-- See README.md for the order to import