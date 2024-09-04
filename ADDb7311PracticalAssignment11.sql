-- Creating a table called customers
CREATE TABLE customers (
    CUSTOMER_ID NUMBER(5),
    FIRST_NAME VARCHAR2(50),
    SURNAME VARCHAR2(50),
    ADDRESS VARCHAR2(50),
    PHONE_NUM VARCHAR2(20),
    EMAIL VARCHAR2(50),
    PRIMARY KEY(CUSTOMER_ID)
);

-- Creating a table called staff
CREATE TABLE staff(
STAFF_ID NUMBER(5),
FIRST_NAME VARCHAR2(50),
SURNAME VARCHAR2(50),
POSITION VARCHAR2(50),
PHONE_NUM VARCHAR2(20),
ADDRESS VARCHAR2(50),
EMAIL VARCHAR2(50),
PRIMARY KEY(STAFF_ID)
);

-- Creating a table called billing
CREATE TABLE billing(
BILL_ID NUMBER(5),
BILL_DATE DATE,
CUSTOMER_ID NUMBER(5),
FOREIGN KEY(CUSTOMER_ID) REFERENCES customers(CUSTOMER_ID),
STAFF_ID NUMBER(5),
FOREIGN KEY(STAFF_ID) REFERENCES staff(STAFF_ID),
PRIMARY KEY(BILL_ID)
);

-- Creating a table called delivery_items
CREATE TABLE delivery_items(
DELIVERY_ITEM_ID NUMBER(5),
DESCRIPTION VARCHAR2(100),
STAFF_ID NUMBER(5),
FOREIGN KEY(STAFF_ID) REFERENCES staff(STAFF_ID),
PRIMARY KEY(DELIVERY_ITEM_ID)
);

-- Creating a table called driver
CREATE TABLE driver(
DRIVER_ID NUMBER(5),
FIRST_NAME VARCHAR2(50),
SURNAME VARCHAR2(50),
DRIVER_CODE VARCHAR2(50),
PHONE_NUM VARCHAR2(20),
ADDRESS VARCHAR2(50),
PRIMARY KEY(DRIVER_ID)
);

-- Creating a table called vehicle
CREATE TABLE vehicle(
VIN_NUMBER VARCHAR2(50),
VEHICLE_TYPE VARCHAR2(50),
MILAGE NUMBER(7),
COLOUR VARCHAR2(50),
MANUFACTURER VARCHAR2(50),
PRIMARY KEY(VIN_NUMBER)
);

-- Creating a table called driver_deliveries
CREATE TABLE driver_deliveries(
DRIVER_DELIVERY_ID NUMBER(5),
VIN_NUMBER VARCHAR2(50),
FOREIGN KEY(VIN_NUMBER) REFERENCES vehicle(VIN_NUMBER),
DRIVER_ID NUMBER(5),
FOREIGN KEY(DRIVER_ID) REFERENCES driver(DRIVER_ID),
DELIVERY_ITEM_ID NUMBER(5),
FOREIGN KEY(DELIVERY_ITEM_ID) REFERENCES delivery_items(DELIVERY_ITEM_ID),
PRIMARY KEY(DRIVER_DELIVERY_ID)
);

--Inserting into my customers table
INSERT ALL
  INTO customers (CUSTOMER_ID, FIRST_NAME, SURNAME, ADDRESS, PHONE_NUM, EMAIL) VALUES (11011, 'Bob', 'Smith', '18 Water rd', '0877277521', 'bobs@isat.com')
  INTO customers (CUSTOMER_ID, FIRST_NAME, SURNAME, ADDRESS, PHONE_NUM, EMAIL) VALUES (11012, 'Sam', 'Hendricks', '22 Water rd', '0863257857', 'shen@mcom.co.za')
  INTO customers (CUSTOMER_ID, FIRST_NAME, SURNAME, ADDRESS, PHONE_NUM, EMAIL) VALUES (11013, 'Larry', 'Clark', '101 Summer lane', '0834567891', 'larc@mcom.co.za')
  INTO customers (CUSTOMER_ID, FIRST_NAME, SURNAME, ADDRESS, PHONE_NUM, EMAIL) VALUES (11014, 'Jeff', 'Jones', '55 Mountain way', '0612547895', 'jj@isat.co.za')
  INTO customers (CUSTOMER_ID, FIRST_NAME, SURNAME, ADDRESS, PHONE_NUM, EMAIL) VALUES (11015, 'Andre', 'Kerk', '5 Main rd', '0827238521', 'akerk@mcal.co.za')
  INTO customers (CUSTOMER_ID, FIRST_NAME, SURNAME, ADDRESS, PHONE_NUM, EMAIL) VALUES (11016, 'Wayne', 'Smith', '13 Water rd', '0877277522', 'ws@isat.com')
  INTO customers (CUSTOMER_ID, FIRST_NAME, SURNAME, ADDRESS, PHONE_NUM, EMAIL) VALUES (11017, 'John', 'Hendricks', '29 Water rd', '0863257851', 'jhen@mcom.co.za')
  INTO customers (CUSTOMER_ID, FIRST_NAME, SURNAME, ADDRESS, PHONE_NUM, EMAIL) VALUES (11018, 'Sally', 'Clark', '111 Summer lane', '0834567892', 'sallyc@mcom.co.za')
  INTO customers (CUSTOMER_ID, FIRST_NAME, SURNAME, ADDRESS, PHONE_NUM, EMAIL) VALUES (11019, 'Bridget', 'Bitterhour', '125 Mountain way', '0612547896', 'bb@isat.co.za')
  INTO customers (CUSTOMER_ID, FIRST_NAME, SURNAME, ADDRESS, PHONE_NUM, EMAIL) VALUES (11111, 'Nicole', 'Kerk', '175 Main rd', '0827238529', 'nk@mcal.co.za')
  INTO customers (CUSTOMER_ID, FIRST_NAME, SURNAME, ADDRESS, PHONE_NUM, EMAIL) VALUES (11112, 'Catherine', 'Smith', '19 Water rd', '0877277523', 'cath@isat.com')
  INTO customers (CUSTOMER_ID, FIRST_NAME, SURNAME, ADDRESS, PHONE_NUM, EMAIL) VALUES (11113, 'Mel', 'Hendricks', '5 Water rd', '0863257852', 'melh@mcom.co.za')
  INTO customers (CUSTOMER_ID, FIRST_NAME, SURNAME, ADDRESS, PHONE_NUM, EMAIL) VALUES (11114, 'Lucy', 'Du Plessis', '221 Summer lane', '0834567892', 'ldup@mcom.co.za')
  INTO customers (CUSTOMER_ID, FIRST_NAME, SURNAME, ADDRESS, PHONE_NUM, EMAIL) VALUES (11116, 'Josh', 'Maverick', '155 Mountain way', '0612547897', 'joshm@isat.co.za')
  INTO customers (CUSTOMER_ID, FIRST_NAME, SURNAME, ADDRESS, PHONE_NUM, EMAIL) VALUES (11117, 'Stuart', 'Jones', '35 Main rd', '0827238521', 'sjones@mcal.co.za')
SELECT 1 FROM dual;

--Inserting into my staff table
INSERT ALL
  INTO staff (STAFF_ID, FIRST_NAME, SURNAME, POSITION, PHONE_NUM, ADDRESS, EMAIL) VALUES (51011, 'Sally', 'Du Toit', 'Logistics', '0825698547', '18 Main rd', 'sdut@isat.com')
  INTO staff (STAFF_ID, FIRST_NAME, SURNAME, POSITION, PHONE_NUM, ADDRESS, EMAIL) VALUES (51012, 'Mark', 'Wright', 'CRM', '0836984178', '12 Cape Way', 'mwright@isat.com')
  INTO staff (STAFF_ID, FIRST_NAME, SURNAME, POSITION, PHONE_NUM, ADDRESS, EMAIL) VALUES (51013, 'Harry', 'Sheen', 'Logistics', '0725648965', '15 Water Street', 'hsheen@isat.com')
  INTO staff (STAFF_ID, FIRST_NAME, SURNAME, POSITION, PHONE_NUM, ADDRESS, EMAIL) VALUES (51014, 'Jabu', 'Xolani', 'Logistics', '0823116598', '18 White Lane', 'jxo@isat.com')
  INTO staff (STAFF_ID, FIRST_NAME, SURNAME, POSITION, PHONE_NUM, ADDRESS, EMAIL) VALUES (51015, 'Roberto', 'Henry', 'Packaging', '0783521451', '55 Cape Street', 'rhenry@isat.com')
  INTO staff (STAFF_ID, FIRST_NAME, SURNAME, POSITION, PHONE_NUM, ADDRESS, EMAIL) VALUES (51016, 'Pat', 'Durant', 'Logistics', '0825698542', '1 Main rd', 'pd@isat.com')
  INTO staff (STAFF_ID, FIRST_NAME, SURNAME, POSITION, PHONE_NUM, ADDRESS, EMAIL) VALUES (51017, 'Steve', 'Maritz', 'CRM', '0836984173', '2 Cape Way', 'sm@isat.com')
  INTO staff (STAFF_ID, FIRST_NAME, SURNAME, POSITION, PHONE_NUM, ADDRESS, EMAIL) VALUES (51018, 'Maxwell', 'Dube', 'Logistics', '0725648964', '5 Water Street', 'max@isat.com')
  INTO staff (STAFF_ID, FIRST_NAME, SURNAME, POSITION, PHONE_NUM, ADDRESS, EMAIL) VALUES (51019, 'Shane', 'Mane', 'Logistics', '0823116595', '8 White Lane', 'smane@isat.com')
  INTO staff (STAFF_ID, FIRST_NAME, SURNAME, POSITION, PHONE_NUM, ADDRESS, EMAIL) VALUES (51111, 'Bob', 'Truth', 'Packaging', '0783521456', '35 Cape Street', 'btruth@isat.com')
SELECT 1 FROM dual;

--Inserting into my billing table
INSERT ALL
  INTO billing (BILL_ID, CUSTOMER_ID, STAFF_ID, BILL_DATE) VALUES (800, 11011, 51011, TO_DATE('06-Sep-22', 'DD-Mon-YY'))
  INTO billing (BILL_ID, CUSTOMER_ID, STAFF_ID, BILL_DATE) VALUES (801, 11012, 51013, TO_DATE('07-Sep-22', 'DD-Mon-YY'))
  INTO billing (BILL_ID, CUSTOMER_ID, STAFF_ID, BILL_DATE) VALUES (802, 11014, 51015, TO_DATE('10-Nov-22', 'DD-Mon-YY'))
  INTO billing (BILL_ID, CUSTOMER_ID, STAFF_ID, BILL_DATE) VALUES (803, 11015, 51012, TO_DATE('09-Dec-22', 'DD-Mon-YY'))
  INTO billing (BILL_ID, CUSTOMER_ID, STAFF_ID, BILL_DATE) VALUES (804, 11013, 51014, TO_DATE('09-Dec-22', 'DD-Mon-YY'))
  INTO billing (BILL_ID, CUSTOMER_ID, STAFF_ID, BILL_DATE) VALUES (805, 11111, 51011, TO_DATE('06-Sep-22', 'DD-Mon-YY'))
  INTO billing (BILL_ID, CUSTOMER_ID, STAFF_ID, BILL_DATE) VALUES (806, 11012, 51013, TO_DATE('07-Sep-22', 'DD-Mon-YY'))
  INTO billing (BILL_ID, CUSTOMER_ID, STAFF_ID, BILL_DATE) VALUES (807, 11014, 51015, TO_DATE('10-Nov-22', 'DD-Mon-YY'))
  INTO billing (BILL_ID, CUSTOMER_ID, STAFF_ID, BILL_DATE) VALUES (808, 11015, 51012, TO_DATE('09-Dec-22', 'DD-Mon-YY'))
  INTO billing (BILL_ID, CUSTOMER_ID, STAFF_ID, BILL_DATE) VALUES (809, 11113, 51018, TO_DATE('09-Dec-22', 'DD-Mon-YY'))
  INTO billing (BILL_ID, CUSTOMER_ID, STAFF_ID, BILL_DATE) VALUES (810, 11011, 51011, TO_DATE('06-Sep-22', 'DD-Mon-YY'))
  INTO billing (BILL_ID, CUSTOMER_ID, STAFF_ID, BILL_DATE) VALUES (811, 11012, 51013, TO_DATE('07-Sep-22', 'DD-Mon-YY'))
  INTO billing (BILL_ID, CUSTOMER_ID, STAFF_ID, BILL_DATE) VALUES (812, 11014, 51016, TO_DATE('10-Nov-22', 'DD-Mon-YY'))
  INTO billing (BILL_ID, CUSTOMER_ID, STAFF_ID, BILL_DATE) VALUES (813, 11117, 51012, TO_DATE('09-Dec-22', 'DD-Mon-YY'))
  INTO billing (BILL_ID, CUSTOMER_ID, STAFF_ID, BILL_DATE) VALUES (814, 11013, 51014, TO_DATE('09-Dec-22', 'DD-Mon-YY'))
  INTO billing (BILL_ID, CUSTOMER_ID, STAFF_ID, BILL_DATE) VALUES (815, 11012, 51111, TO_DATE('06-Sep-22', 'DD-Mon-YY'))
  INTO billing (BILL_ID, CUSTOMER_ID, STAFF_ID, BILL_DATE) VALUES (816, 11012, 51019, TO_DATE('07-Sep-22', 'DD-Mon-YY'))
  INTO billing (BILL_ID, CUSTOMER_ID, STAFF_ID, BILL_DATE) VALUES (817, 11014, 51015, TO_DATE('10-Nov-22', 'DD-Mon-YY'))
  INTO billing (BILL_ID, CUSTOMER_ID, STAFF_ID, BILL_DATE) VALUES (818, 11112, 51012, TO_DATE('09-Dec-22', 'DD-Mon-YY'))
  INTO billing (BILL_ID, CUSTOMER_ID, STAFF_ID, BILL_DATE) VALUES (819, 11013, 51014, TO_DATE('09-Dec-22', 'DD-Mon-YY'))
  INTO billing (BILL_ID, CUSTOMER_ID, STAFF_ID, BILL_DATE) VALUES (820, 11116, 51019, TO_DATE('09-Dec-22', 'DD-Mon-YY'))
SELECT 1 FROM dual;

--Inserting into my delivery_items table
INSERT ALL
  INTO delivery_items (DELIVERY_ITEM_ID, DESCRIPTION, STAFF_ID) VALUES (71011, 'House relocation', 51011)
  INTO delivery_items (DELIVERY_ITEM_ID, DESCRIPTION, STAFF_ID) VALUES (71012, 'Delivery of specialized consignments', 51017)
  INTO delivery_items (DELIVERY_ITEM_ID, DESCRIPTION, STAFF_ID) VALUES (71013, 'Delivery of specialized consignments', 51015)
  INTO delivery_items (DELIVERY_ITEM_ID, DESCRIPTION, STAFF_ID) VALUES (71014, 'Office relocation', 51012)
  INTO delivery_items (DELIVERY_ITEM_ID, DESCRIPTION, STAFF_ID) VALUES (71015, 'Delivery of specialized consignments', 51014)
SELECT 1 FROM dual;

--Inserting into my vehicle table
INSERT ALL
  INTO vehicle (VIN_NUMBER, VEHICLE_TYPE, MILAGE, COLOUR, MANUFACTURER) VALUES ('1ZA55858541', 'Cutaway van chassis', 115352, 'RED', 'MAN')
  INTO vehicle (VIN_NUMBER, VEHICLE_TYPE, MILAGE, COLOUR, MANUFACTURER) VALUES ('1ZA51858542', 'Flatbed truck', 315856, 'BLUE', 'ISUZU')
  INTO vehicle (VIN_NUMBER, VEHICLE_TYPE, MILAGE, COLOUR, MANUFACTURER) VALUES ('1ZA35858543', 'Medium Standard Truck', 789587, 'SILVER', 'MAN')
  INTO vehicle (VIN_NUMBER, VEHICLE_TYPE, MILAGE, COLOUR, MANUFACTURER) VALUES ('1ZA15851545', 'Flatbed truck', 555050, 'WHITE', 'TATA')
  INTO vehicle (VIN_NUMBER, VEHICLE_TYPE, MILAGE, COLOUR, MANUFACTURER) VALUES ('1ZA35868540', 'Cutaway van chassis', 79058, 'WHITE', 'ISUZU')
  INTO vehicle (VIN_NUMBER, VEHICLE_TYPE, MILAGE, COLOUR, MANUFACTURER) VALUES ('1ZA65858541', 'Cutaway van chassis', 215352, 'RED', 'MAN')
  INTO vehicle (VIN_NUMBER, VEHICLE_TYPE, MILAGE, COLOUR, MANUFACTURER) VALUES ('1ZA61858542', 'Flatbed truck', 215856, 'BLUE', 'ISUZU')
  INTO vehicle (VIN_NUMBER, VEHICLE_TYPE, MILAGE, COLOUR, MANUFACTURER) VALUES ('1ZA65858543', 'Medium Standard Truck', 889587, 'SILVER', 'MERC')
  INTO vehicle (VIN_NUMBER, VEHICLE_TYPE, MILAGE, COLOUR, MANUFACTURER) VALUES ('1ZA65851545', 'Flatbed truck', 155050, 'WHITE', 'MAN')
  INTO vehicle (VIN_NUMBER, VEHICLE_TYPE, MILAGE, COLOUR, MANUFACTURER) VALUES ('1ZA65868540', 'Cutaway van chassis', 19058, 'WHITE', 'ISUZU')
  INTO vehicle (VIN_NUMBER, VEHICLE_TYPE, MILAGE, COLOUR, MANUFACTURER) VALUES ('1ZA75858541', 'Cutaway van chassis', 315352, 'RED', 'MAN')
  INTO vehicle (VIN_NUMBER, VEHICLE_TYPE, MILAGE, COLOUR, MANUFACTURER) VALUES ('1ZA71858542', 'Flatbed truck', 115856, 'BLUE', 'ISUZU')
  INTO vehicle (VIN_NUMBER, VEHICLE_TYPE, MILAGE, COLOUR, MANUFACTURER) VALUES ('1ZA75858543', 'Medium Standard Truck', 989587, 'SILVER', 'MAN')
  INTO vehicle (VIN_NUMBER, VEHICLE_TYPE, MILAGE, COLOUR, MANUFACTURER) VALUES ('1ZA17851545', 'Flatbed truck', 755050, 'WHITE', 'TATA')
  INTO vehicle (VIN_NUMBER, VEHICLE_TYPE, MILAGE, COLOUR, MANUFACTURER) VALUES ('1ZA75868540', 'Cutaway van chassis', 29058, 'WHITE', 'ISUZU')
  INTO vehicle (VIN_NUMBER, VEHICLE_TYPE, MILAGE, COLOUR, MANUFACTURER) VALUES ('1ZA85858541', 'Cutaway van chassis', 515352, 'RED', 'MERC')
  INTO vehicle (VIN_NUMBER, VEHICLE_TYPE, MILAGE, COLOUR, MANUFACTURER) VALUES ('1ZA81858542', 'Flatbed truck', 715856, 'BLUE', 'ISUZU')
  INTO vehicle (VIN_NUMBER, VEHICLE_TYPE, MILAGE, COLOUR, MANUFACTURER) VALUES ('1ZA85858543', 'Medium Standard Truck', 789587, 'SILVER', 'MAN')
  INTO vehicle (VIN_NUMBER, VEHICLE_TYPE, MILAGE, COLOUR, MANUFACTURER) VALUES ('1ZA85851545', 'Flatbed truck', 955050, 'WHITE', 'TATA')
  INTO vehicle (VIN_NUMBER, VEHICLE_TYPE, MILAGE, COLOUR, MANUFACTURER) VALUES ('1ZA85868540', 'Cutaway van chassis', 39058, 'WHITE', 'MERC')
SELECT 1 FROM dual;

--Inserting into my driver table
INSERT ALL
  INTO driver (DRIVER_ID, FIRST_NAME, SURNAME, DRIVER_CODE, PHONE_NUM, ADDRESS) VALUES (81011, 'Buthelezi', 'Marshall', 'C1', '0725698547', '18 Leopard creek')
  INTO driver (DRIVER_ID, FIRST_NAME, SURNAME, DRIVER_CODE, PHONE_NUM, ADDRESS) VALUES (81012, 'Tina', 'Mtati', 'C', '0636984178', '12 Cape rd')
  INTO driver (DRIVER_ID, FIRST_NAME, SURNAME, DRIVER_CODE, PHONE_NUM, ADDRESS) VALUES (81013, 'Jono', 'Mvuyisi', 'EC1', '0725648965', '15 Circle lane')
  INTO driver (DRIVER_ID, FIRST_NAME, SURNAME, DRIVER_CODE, PHONE_NUM, ADDRESS) VALUES (81014, 'Richard', 'Smith', 'C1', '0623116598', '18 Beach rd')
  INTO driver (DRIVER_ID, FIRST_NAME, SURNAME, DRIVER_CODE, PHONE_NUM, ADDRESS) VALUES (81015, 'Brett', 'Smith', 'EB', '0883521457', '55 Summer lane')
SELECT 1 FROM dual;

--Inserting into my driver_deliveries table
INSERT ALL
  INTO driver_deliveries (DRIVER_DELIVERY_ID, VIN_NUMBER, DRIVER_ID, DELIVERY_ITEM_ID) VALUES (91011, '1ZA55858541', 81011, 71011)
  INTO driver_deliveries (DRIVER_DELIVERY_ID, VIN_NUMBER, DRIVER_ID, DELIVERY_ITEM_ID) VALUES (91012, '1ZA35858543', 81012, 71013)
  INTO driver_deliveries (DRIVER_DELIVERY_ID, VIN_NUMBER, DRIVER_ID, DELIVERY_ITEM_ID) VALUES (91013, '1ZA17851545', 81011, 71015)
  INTO driver_deliveries (DRIVER_DELIVERY_ID, VIN_NUMBER, DRIVER_ID, DELIVERY_ITEM_ID) VALUES (91014, '1ZA35868540', 81013, 71015)
  INTO driver_deliveries (DRIVER_DELIVERY_ID, VIN_NUMBER, DRIVER_ID, DELIVERY_ITEM_ID) VALUES (91015, '1ZA15851545', 81014, 71012)
SELECT 1 FROM dual;


-- Question 3.1
CREATE USER C##John IDENTIFIED BY Johnch2024; --Granting permission to a person named "John"
GRANT SELECT ANY TABLE TO C##John;

CREATE USER C##Hannah IDENTIFIED BY Hannahch2024; -- Granting permission to a person named "Hannah"
GRANT INSERT ANY TABLE TO C##Hannah;

-- Question 4.1
-- Enable server output to display results on the console
SET SERVEROUTPUT ON;

-- Declare variables to hold the results of the query
DECLARE
    v_driver_name  Driver.FIRST_NAME%TYPE;   -- Variable to store the driver's full name
    v_driver_code  Driver.Driver_Code%TYPE;  -- Variable to store the driver's code
    v_vin_number   Vehicle.VIN_NUMBER%TYPE;  -- Variable to store the vehicle's VIN number
    v_mileage      Vehicle.MILAGE%TYPE;      -- Variable to store the vehicle's mileage

BEGIN
    -- Query to select the driver's full name, driver code, VIN number, and vehicle mileage
    SELECT 
        d.FIRST_NAME || ' ' || d.SURNAME AS DRIVER_NAME, -- Concatenate first name and surname to get full name
        d.DRIVER_CODE,                                    -- Select the driver code
        v.VIN_NUMBER,                                     -- Select the VIN number of the vehicle
        v.MILAGE                                          -- Select the mileage of the vehicle
    INTO 
        v_driver_name, 
        v_driver_code, 
        v_vin_number, 
        v_mileage                                         -- Store the query results into the declared variables
    FROM 
        Driver d                                          -- From the Driver table
    JOIN 
        Driver_Deliveries dd ON d.DRIVER_ID = dd.DRIVER_ID -- Join with Driver_Deliveries on DRIVER_ID
    JOIN 
        Vehicle v ON dd.VIN_NUMBER = v.VIN_NUMBER         -- Join with Vehicle on VIN_NUMBER
    WHERE 
        v.MILAGE < 80000;                                 -- Filter vehicles with mileage less than 80,000

    -- Output the results using DBMS_OUTPUT.PUT_LINE
    DBMS_OUTPUT.PUT_LINE('DRIVER_NAME: ' || v_driver_name);  -- Print the driver's full name
    DBMS_OUTPUT.PUT_LINE('DRIVER_CODE: ' || v_driver_code);  -- Print the driver code
    DBMS_OUTPUT.PUT_LINE('VIN_NUMBER: ' || v_vin_number);    -- Print the vehicle's VIN number
    DBMS_OUTPUT.PUT_LINE('MILEAGE: ' || v_mileage);          -- Print the vehicle's mileage
    
END;
/

--Question 5.1
-- Enable server output to display results on the console
SET SERVEROUTPUT ON;

-- Declare a record type to hold the highest deliveries information
DECLARE
    TYPE highest_deliveries_record IS RECORD(
        DRIVER_ID Staff.STAFF_ID%TYPE,                -- Variable to store the staff ID (driver ID)
        DRIVER_FIRST_NAME Staff.FIRST_NAME%TYPE,      -- Variable to store the driver's first name
        DRIVER_SURNAME Staff.SURNAME%TYPE,            -- Variable to store the driver's surname
        TOTAL_DELIVERIES_PROCESSED NUMBER             -- Variable to store the total number of deliveries processed
    );

    -- Declare a variable of the record type to hold the query result
    v_highest_deliveries_record highest_deliveries_record;

BEGIN
    -- Query to find the staff member with the highest number of deliveries processed
    SELECT 
        st.STAFF_ID,                                   -- Select the staff ID
        st.FIRST_NAME,                                 -- Select the first name
        st.SURNAME,                                    -- Select the surname
        COUNT(dlv.driver_delivery_id) AS ORDERS_PROCESSED  -- Count the number of deliveries processed
    INTO 
        v_highest_deliveries_record                    -- Store the query result into the record variable
    FROM 
        Staff st                                       -- From the Staff table
    JOIN 
        Delivery_Items di ON st.STAFF_ID = di.STAFF_ID -- Join with Delivery_Items on STAFF_ID
    JOIN 
        Driver_Deliveries dlv ON di.DELIVERY_ITEM_ID = dlv.DELIVERY_ITEM_ID -- Join with Driver_Deliveries on DELIVERY_ITEM_ID
    GROUP BY 
        st.STAFF_ID, st.FIRST_NAME, st.SURNAME         -- Group by staff ID, first name, and surname
    ORDER BY 
        ORDERS_PROCESSED DESC                          -- Order by the number of deliveries processed in descending order
    FETCH FIRST 1 ROW ONLY;                            -- Fetch the first row (the staff member with the most deliveries)

    -- Output the results using DBMS_OUTPUT.PUT_LINE
    DBMS_OUTPUT.PUT_LINE('STAFF ID: ' || v_highest_deliveries_record.DRIVER_ID); -- Print the staff ID
    DBMS_OUTPUT.PUT_LINE('FIRST NAME: ' || v_highest_deliveries_record.DRIVER_FIRST_NAME); -- Print the first name
    DBMS_OUTPUT.PUT_LINE('SURNAME: ' || v_highest_deliveries_record.DRIVER_SURNAME); -- Print the surname
    DBMS_OUTPUT.PUT_LINE('DELIVERIES PROCESSED: ' || v_highest_deliveries_record.TOTAL_DELIVERIES_PROCESSED); -- Print the number of deliveries processed

-- Exception handling to catch any errors
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('No staff member with deliveries found.'); -- Handle case where no data is found
    WHEN TOO_MANY_ROWS THEN
        DBMS_OUTPUT.PUT_LINE('Multiple staff members have the highest deliveries processed.'); -- Handle case where multiple rows are returned
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An unexpected error occurred: ' || SQLERRM);  -- Handle any other unexpected errors

END;
/

-- Question 5.3.2
CREATE OR REPLACE VIEW HighestDeliveriesView AS
SELECT 
    st.STAFF_ID AS DRIVER_ID,               -- Select the staff ID as DRIVER_ID
    st.FIRST_NAME AS DRIVER_FIRST_NAME,     -- Select the first name as DRIVER_FIRST_NAME
    st.SURNAME AS DRIVER_SURNAME,           -- Select the surname as DRIVER_SURNAME
    COUNT(dlv.driver_delivery_id) AS TOTAL_DELIVERIES_PROCESSED -- Count the total deliveries processed by each driver
FROM 
    Staff st                                -- From the Staff table
JOIN 
    Delivery_Items di ON st.STAFF_ID = di.STAFF_ID  -- Join Delivery_Items table on STAFF_ID
JOIN 
    Driver_Deliveries dlv ON di.DELIVERY_ITEM_ID = dlv.DELIVERY_ITEM_ID  -- Join Driver_Deliveries table on DELIVERY_ITEM_ID
GROUP BY 
    st.STAFF_ID, st.FIRST_NAME, st.SURNAME  -- Group the results by STAFF_ID, FIRST_NAME, and SURNAME
ORDER BY 
    TOTAL_DELIVERIES_PROCESSED DESC         -- Order by total deliveries processed in descending order
FETCH FIRST 1 ROW ONLY;                     -- Fetch the first row only, which is the driver with the most deliveries

--5.3.2 continued:
-- Enable server output to display results
SET SERVEROUTPUT ON;
-- Declare a record type to hold the result of the query
DECLARE
    TYPE highest_deliveries_record IS RECORD(
        DRIVER_ID Staff.STAFF_ID%TYPE,         -- Define a field for DRIVER_ID with the same type as Staff.STAFF_ID
        DRIVER_FIRST_NAME Staff.FIRST_NAME%TYPE, -- Define a field for DRIVER_FIRST_NAME with the same type as Staff.FIRST_NAME
        DRIVER_SURNAME Staff.SURNAME%TYPE,     -- Define a field for DRIVER_SURNAME with the same type as Staff.SURNAME
        TOTAL_DELIVERIES_PROCESSED NUMBER      -- Define a field for TOTAL_DELIVERIES_PROCESSED as a NUMBER
    );

    v_highest_deliveries_record highest_deliveries_record;  -- Declare a variable of the record type

BEGIN
    -- Select from the view into the declared record variable
    SELECT 
        DRIVER_ID,
        DRIVER_FIRST_NAME,
        DRIVER_SURNAME,
        TOTAL_DELIVERIES_PROCESSED
    INTO 
        v_highest_deliveries_record
    FROM 
        HighestDeliveriesView;

    -- Output the results using DBMS_OUTPUT.PUT_LINE
    DBMS_OUTPUT.PUT_LINE('STAFF ID: ' || v_highest_deliveries_record.DRIVER_ID);
    DBMS_OUTPUT.PUT_LINE('FIRST NAME: ' || v_highest_deliveries_record.DRIVER_FIRST_NAME);
    DBMS_OUTPUT.PUT_LINE('SURNAME: ' || v_highest_deliveries_record.DRIVER_SURNAME);
    DBMS_OUTPUT.PUT_LINE('DELIVERIES PROCESSED: ' || v_highest_deliveries_record.TOTAL_DELIVERIES_PROCESSED);

EXCEPTION
    -- Handle the case where no data is found in the view
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('No data found in the view.');
    -- Handle any other exceptions that may occur
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLERRM);

END;
/

-- 6.1 implicit cursor:
DECLARE
    v_max_billings_staff_id staff.STAFF_ID%TYPE;  -- Variable to store the staff ID with the most billings
    v_max_billings_first_name staff.FIRST_NAME%TYPE;  -- Variable to store the first name of the staff
    v_max_billings_surname staff.SURNAME%TYPE;  -- Variable to store the surname of the staff
BEGIN
    -- Select the staff member with the most billed customers who has at least 3 billings
    BEGIN
        SELECT b.STAFF_ID, s.FIRST_NAME, s.SURNAME
        INTO v_max_billings_staff_id, v_max_billings_first_name, v_max_billings_surname
        FROM billing b
        JOIN staff s ON b.STAFF_ID = s.STAFF_ID
        GROUP BY b.STAFF_ID, s.FIRST_NAME, s.SURNAME
        HAVING COUNT(b.BILL_ID) >= 3  -- Ensure the staff member has at least 3 billings
        ORDER BY COUNT(b.BILL_ID) DESC
        FETCH FIRST 1 ROW ONLY;

        -- Check if the query returned any rows
        IF SQL%ROWCOUNT > 0 THEN
            DBMS_OUTPUT.PUT_LINE('Person getting the 25% bonus so far:');
            DBMS_OUTPUT.PUT_LINE('Name: ' || v_max_billings_first_name);
            DBMS_OUTPUT.PUT_LINE('Surname: ' || v_max_billings_surname);
            DBMS_OUTPUT.PUT_LINE('Staff ID: ' || v_max_billings_staff_id);
        ELSE
            DBMS_OUTPUT.PUT_LINE('No staff member found with at least 3 billings.');
        END IF;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            DBMS_OUTPUT.PUT_LINE('No staff member found with at least 3 billings.');
    END;
END;
/



-- 6.2 explicit cursor:
DECLARE
    CURSOR c_manager_staff IS
        SELECT FIRST_NAME, SURNAME
        FROM staff
        WHERE POSITION = 'Manager'; -- Cursor to find all staff in the Manager position

    v_first_name staff.FIRST_NAME%TYPE; -- Variable to store the first name
    v_surname staff.SURNAME%TYPE;       -- Variable to store the surname
BEGIN
    -- Open the cursor to start processing
    OPEN c_manager_staff;

    -- Fetch the first row from the cursor
    FETCH c_manager_staff INTO v_first_name, v_surname;

    -- Check if no rows were found
    IF c_manager_staff%NOTFOUND THEN
        DBMS_OUTPUT.PUT_LINE('No staff members found in the Manager position.');
    ELSE
        -- Process each row found by the cursor
        WHILE c_manager_staff%FOUND LOOP
            DBMS_OUTPUT.PUT_LINE('Manager Staff: ' || v_first_name || ' ' || v_surname);
            FETCH c_manager_staff INTO v_first_name, v_surname;
        END LOOP;
    END IF;

    -- Close the cursor
    CLOSE c_manager_staff;
END;
/

-- Question 6.2:
-- Create a sequence to generate unique BILL_ID values
CREATE SEQUENCE staff_ranking_seq
    START WITH 1  -- Start the sequence with 1
    INCREMENT BY 1  -- Increment by 1 for each new value
    CACHE 10;  
    
-- PL/SQL block to rank staff based on their billing count
DECLARE
    v_rank NUMBER;  -- Variable to store the rank
    v_staff_id staff.STAFF_ID%TYPE;  -- Variable to store the staff ID
    v_first_name staff.FIRST_NAME%TYPE;  -- Variable to store the first name
    v_surname staff.SURNAME%TYPE;  -- Variable to store the surname

    -- Cursor to fetch staff with at least 3 billings, ordered by billing count in descending order
    CURSOR c_staff_ranking IS
        SELECT b.STAFF_ID, s.FIRST_NAME, s.SURNAME, COUNT(b.BILL_ID) AS billing_count
        FROM billing b
        JOIN staff s ON b.STAFF_ID = s.STAFF_ID  -- Join billing and staff tables on STAFF_ID
        GROUP BY b.STAFF_ID, s.FIRST_NAME, s.SURNAME  -- Group by staff ID, first name, and surname
        HAVING COUNT(b.BILL_ID) >= 3  -- Filter for staff members who processed at least 3 bills
        ORDER BY COUNT(b.BILL_ID) DESC;  -- Order by billing count in descending order
BEGIN
    v_rank := 0;  -- Initialize rank

    -- Loop through the cursor to process each staff member
    FOR rec IN c_staff_ranking LOOP
        -- Increment the rank using the sequence
        v_rank := staff_ranking_seq.NEXTVAL;

        -- Output the rank and staff member's information
        DBMS_OUTPUT.PUT_LINE('Rank: ' || v_rank);
        DBMS_OUTPUT.PUT_LINE('Staff ID: ' || rec.STAFF_ID);
        DBMS_OUTPUT.PUT_LINE('Name: ' || rec.FIRST_NAME);
        DBMS_OUTPUT.PUT_LINE('Surname: ' || rec.SURNAME);
        DBMS_OUTPUT.PUT_LINE('Billing Count: ' || rec.billing_count);
        DBMS_OUTPUT.PUT_LINE('---');  -- Separator for readability
    END LOOP;
END;
/

SELECT * FROM driver_deliveries;


