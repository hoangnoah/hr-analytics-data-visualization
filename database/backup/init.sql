CREATE SCHEMA IF NOT EXISTS hr_schema;

CREATE TABLE hr_schema.hr_data (
    age INT,
    attrition VARCHAR(10),
    businesstravel VARCHAR(50),
    dailyrate INT,
    department VARCHAR(100),
    distancefromhome INT,
    education INT,
    educationfield VARCHAR(100),
    employeecount INT,
    employeenumber INT PRIMARY KEY,
    environmentsatisfaction INT,
    gender VARCHAR(10),
    hourlyrate INT,
    jobinvolvement INT,
    joblevel INT,
    jobrole VARCHAR(100),
    jobsatisfaction INT,
    maritalstatus VARCHAR(20),
    monthlyincome INT,
    monthlyrate INT,
    numcompaniesworked INT,
    over18 CHAR(1),
    overtime VARCHAR(5),
    percentsalaryhike INT,
    performancerating INT,
    relationshipsatisfaction INT,
    standardhours INT,
    stockoptionlevel INT,
    totalworkingyears INT,
    trainingtimeslastyear INT,
    worklifebalance INT,
    yearsatcompany INT,
    yearsincurrentrole INT,
    yearssincelastpromotion INT,
    yearswithcurrmanager INT,
    dateofresignation TIMESTAMP
);

COPY hr_schema.hr_data
FROM '/dataset/hr_employee_attrition.csv'
DELIMITER ','
CSV HEADER;