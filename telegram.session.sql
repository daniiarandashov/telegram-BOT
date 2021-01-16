CREATE TABLE users(
    user_id SERIAL PRIMARY KEY, 
    first_name VARCHAR(25) NOT NULL, 
    last_name VARCHAR(25) NOT NULL, 
    position VARCHAR(25) NOT NULL, 
    phone_number VARCHAR(20) NOT NULL, 
    date_created TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE feedbacks(
    feedback_id SERIAL PRIMARY KEY, 
    author_id VARCHAR(15) NOT NULL,
    author_first_name VARCHAR(25) NOT NULL,
    author_last_name VARCHAR(25) NOT NULL,
    author_phone_number VARCHAR(20) NOT NULL,
    feedback_text VARCHAR(255) NOT NULL,
    date_created TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE meal_type(
    id SERIAL PRIMARY KEY, 
    category INT NOT NULL,
    date_created TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP

);


CREATE TABLE meal(
    meal_id SERIAL PRIMARY KEY, 
    name VARCHAR(30) NOT NULL,
    meal_type SMALLINT NOT NULL,
    image_path VARCHAR(255) NOT NULL,
    price INT NOT NULL,
    date_created TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT (meal_type) 
    FOREIGN KEY  meal_type
    REFERENCES meal_type.(id)
);
