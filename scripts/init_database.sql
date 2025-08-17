*/ 
  This script creates a new database named study after checking if it already exists. if the DB exists, it is dropped and recreated. 
  Also the script sets up 3 schemas within the DB : 'bronze', 'silver', 'gold'.

  WARNING: Running this script will drop the entire 'study' DB if it exists. 
  All the data in the DB will be permanently deleted. Ensure you have proper backups before running this script.
  
  */
USE master;
GO
-- Drop and recreate the DHW databse

IF EXISTS (SELECT 1 FROM sys.database WHERE name= 'study')
BEGIN
  ALTER DATABASE study SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
  DROP DATABASE study;
END;
GO

-- create the 'study' database

CREATE DATABASE study;
GO

USE study;
GO

-- CREATE SCHEMAS

CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
