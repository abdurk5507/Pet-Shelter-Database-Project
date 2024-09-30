Quincy Pet Shelter Database Project

Overview

This project consists of two key components:

SQL Schema & Data Dump: A structured SQL database for a pet adoption system.
PHP Application: A simple PHP web application that interacts with the database to display information about the pets, their medical history, adoption status, and other key details.
SQL Schema
The database khanab_DB contains the following tables:

ADOPTION: Tracks adoption details, including adoption date, pet ID, and owner ID.
MEDICAL: Stores medical services provided to pets, including the service name, date, veterinarian, and costs.
OWNER: Stores pet owners’ details, including name, contact information, and their preferences for pet adoption.
PET: Stores pet information, including name, breed, species, age, gender, size, arrival date, and health status.
The schema also defines several views for reporting:

Birth Date of Pets: Displays pet names, age, health status, species, and arrival date.
Breed with Highest Adoption Rate: Shows the breed with the highest adoption rate.
Medical Services on Pets in Date Order: Lists medical services performed on pets.
Pets Adopted Each Year: Shows pets adopted, their owners, and adoption dates.
Pets Not Adopted and Length of Stay: Lists pets still in the shelter and their length of stay.
Preferred Pet Match for Unadopted Pets: Matches unadopted pets with owners who have matching preferences.
PHP Web Application
The PHP component interacts with the database to display the following views:

Medical History of Pets: Displays pets' medical services, including service type and date.
Pets Not Adopted: Lists unadopted pets and their length of stay at the shelter.
Adopted/Returned Pets: Shows pets, their owners, adoption/return date, and current adoption status.
Pet Birth Dates: Displays pet birthdates, health status, species, and arrival dates.
Preferred Pet Matches: Lists unadopted pets and potential owner matches based on species preferences.
Breed Adoption Rates: Displays the breed with the highest adoption rate.

Installation Instructions

Database Setup:
Import the provided SQL dump file (khanab_DB.sql) into your MySQL server to create the database schema and populate it with initial data.

PHP Application Setup:
Modify the config.php file to update the database connection details (host, username, password, and database name).
Ensure the server supports PHP 7.x and MySQL 8.x.

Running the Application:
Open the web browser and navigate to the application URL (e.g., http://localhost/QuincyShelterDatabase) to view the pet adoption and medical data.

Dependencies
MySQL 8.0+
PHP 7.2+
phpMyAdmin (for database management)

Usage
Use the PHP web interface to view and manage pet adoption data, medical records, and generate reports on shelter operations. The application uses SQL queries to fetch the data dynamically from the database.

Author

Abdur Khan

For any issues or contributions, please submit a pull request or open an issue.
