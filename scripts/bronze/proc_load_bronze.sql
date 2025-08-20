/*
===============================================================================
Stored Procedure: Load Bronze Layer (Source -> Bronze)
===============================================================================
Script Purpose:
    This stored procedure loads data into the 'bronze' schema from external CSV files. 
    It performs the following actions:
    - Truncates the bronze tables before loading data.
    - Uses the `BULK INSERT` command to load data from csv Files to bronze tables.

Parameters:
    None. 
	  This stored procedure does not accept any parameters or return any values.

Usage Example:
    CALL bronze.load_bronze();
===============================================================================
*/

CREATE OR REPLACE PROCEDURE bronze.load_bronze()
LANGUAGE plpgsql
AS $$
DECLARE
    start_time TIMESTAMP;
    batch_start_time TIMESTAMP;
    end_time TIMESTAMP;
    batch_end_time TIMESTAMP;
BEGIN
    BEGIN
        -- Start of procedure
        -- Measure time for the entire batch procedure
        batch_start_time := clock_timestamp();
        RAISE NOTICE '====';
        RAISE NOTICE 'Loading Files';
        RAISE NOTICE '====';

        -- Measure time for bronze.crm_cust_info
        start_time := clock_timestamp();
        RAISE NOTICE '----------';
        RAISE NOTICE '>>> Truncate table: bronze.crm_cust_info';
        RAISE NOTICE '----------';
        TRUNCATE TABLE bronze.crm_cust_info;
        RAISE NOTICE '>>> Inserting data into: bronze.crm_cust_info';
        COPY bronze.crm_cust_info 
        FROM 'path-to-csv'
        WITH (FORMAT CSV, HEADER);
        end_time := clock_timestamp();
        RAISE NOTICE '>> Load duration: % seconds', EXTRACT(SECOND FROM end_time - start_time);

        -- Measure time for bronze.crm_prd_info
        start_time := clock_timestamp();
        RAISE NOTICE '----------';
        RAISE NOTICE '>>> Truncate table: bronze.crm_prd_info';
        RAISE NOTICE '----------';
        TRUNCATE TABLE bronze.crm_prd_info;
        RAISE NOTICE '>>> Inserting data into: bronze.crm_prd_info';
        COPY bronze.crm_prd_info 
        FROM 'path-to-csv'
        WITH (FORMAT CSV, HEADER);
        end_time := clock_timestamp();
        RAISE NOTICE '>> Load duration: % seconds', EXTRACT(SECOND FROM end_time - start_time);

        -- Measure time for bronze.crm_sales_details
        start_time := clock_timestamp();
        RAISE NOTICE '----------';
        RAISE NOTICE '>>> Truncate table: bronze.crm_sales_details';
        RAISE NOTICE '----------';
        TRUNCATE TABLE bronze.crm_sales_details;
        RAISE NOTICE '>>> Inserting data into: bronze.crm_sales_details';
        COPY bronze.crm_sales_details 
        FROM 'path-to-csv'
        WITH (FORMAT CSV, HEADER);
        end_time := clock_timestamp();
        RAISE NOTICE '>> Load duration: % seconds', EXTRACT(SECOND FROM end_time - start_time);

        -- Measure time for bronze.erp_cust_az12
        start_time := clock_timestamp();
        RAISE NOTICE '----------';
        RAISE NOTICE '>>> Truncate table: bronze.erp_cust_az12';
        RAISE NOTICE '----------';
        TRUNCATE TABLE bronze.erp_cust_az12;
        RAISE NOTICE '>>> Inserting data into: bronze.erp_cust_az12';
        COPY bronze.erp_cust_az12 
        FROM 'path-to-csv' 
        WITH (FORMAT CSV, HEADER);
        end_time := clock_timestamp();
        RAISE NOTICE '>> Load duration: % seconds', EXTRACT(SECOND FROM end_time - start_time);

        -- Measure time for bronze.erp_loc_a101
        start_time := clock_timestamp();
        RAISE NOTICE '----------';
        RAISE NOTICE '>>> Truncate table: bronze.erp_loc_a101';
        RAISE NOTICE '----------';
        TRUNCATE TABLE bronze.erp_loc_a101;
        RAISE NOTICE '>>> Inserting data into: bronze.erp_loc_a101';
        COPY bronze.erp_loc_a101 
        FROM 'path-to-csv' 
        WITH (FORMAT CSV, HEADER);
        end_time := clock_timestamp();
        RAISE NOTICE '>> Load duration: % seconds', EXTRACT(SECOND FROM end_time - start_time);

        -- Measure time for bronze.erp_px_cat_g1v2
        start_time := clock_timestamp();
        RAISE NOTICE '----------';
        RAISE NOTICE '>>> Truncate table: bronze.erp_px_cat_g1v2';
        RAISE NOTICE '----------';
        TRUNCATE TABLE bronze.erp_px_cat_g1v2;
        RAISE NOTICE '>>> Inserting data into: bronze.erp_px_cat_g1v2';
        COPY bronze.erp_px_cat_g1v2 
        FROM 'path-to-csv' 
        WITH (FORMAT CSV, HEADER);
        end_time := clock_timestamp();
        RAISE NOTICE '>> Load duration: % seconds', EXTRACT(SECOND FROM end_time - start_time);
        batch_end_time := clock_timestamp();
        RAISE NOTICE '>> Full load duration: % seconds', EXTRACT(SECOND FROM batch_end_time - batch_start_time);
    EXCEPTION
        WHEN OTHERS THEN
            RAISE NOTICE '===';
            RAISE NOTICE 'ERROR OCCURRED DURING LOADING BRONZE LAYER';
            RAISE NOTICE 'ERROR MESSAGE: %', SQLERRM;
            RAISE NOTICE '===';
    END;
END;
$$;
