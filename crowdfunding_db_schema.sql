--DROP TABLE campaign;

CREATE TABLE contacts(
	contact_id INTEGER PRIMARY KEY,
	first_name VARCHAR,
	last_name VARCHAR,
	email VARCHAR
);

SELECT * FROM contacts LIMIT(10);

CREATE TABLE category(
	category_id VARCHAR PRIMARY KEY,
	category VARCHAR
);

SELECT * FROM category LIMIT(10);

CREATE TABLE subcategory(
	subcategory_id VARCHAR PRIMARY KEY,
	subcategory VARCHAR
);

SELECT * FROM subcategory LIMIT(10);

CREATE TABLE campaign(
	cf_id INTEGER PRIMARY KEY,
	contact_id INTEGER,
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	company_name VARCHAR,
	description VARCHAR,
	goal DOUBLE PRECISION,
	pledged DOUBLE PRECISION,
	outcome VARCHAR,
	backers_count DOUBLE PRECISION,
	country VARCHAR,
	currency VARCHAR,
	launched_date VARCHAR,
	end_date VARCHAR,
	category_id VARCHAR,
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	subcategory_id VARCHAR,
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

SELECT * FROM campaign LIMIT(10);
