# SQL-DataWarehouse-project
Building a modern data warehouse with SQL Server, including ETL processes, data modeling, and analytics

## Data Architecture

This will be using the Medallion Architecture Bronze, Silver, Gold Layers.

Bronze: Raw Data
Silver: Cleaning data
Gold: Aggregation and business logic

## Project Overview

1. Data Architecture Design
2. ETL Pipelines
3. Data Modeling
4. Analytics & Reporting

## Project Requirements
Data Sources: Import Data from two source systems (ERP & CRM) provided as as CSV files
Data Quality: Resolve data quality issues
Integration: Combine data sources into one, user-friendly data model for analytical queries
Scope: Only latest dataset is required
Documentation: Required

## BI Analytics and Reporting
- Customer Behavior 
- Product Performance
- Sales Trends

- data-warehouse-project/
│
├── datasets/                           # Raw datasets used for the project (ERP and CRM data)
│
├── docs/                               # Project documentation and architecture details
│   ├── etl.drawio                      # Draw.io file shows all different techniquies and methods of ETL
│   ├── data_architecture.drawio        # Draw.io file shows the project's architecture
│   ├── data_catalog.md                 # Catalog of datasets, including field descriptions and metadata
│   ├── data_flow.drawio                # Draw.io file for the data flow diagram
│   ├── data_models.drawio              # Draw.io file for data models (star schema)
│   ├── naming-conventions.md           # Consistent naming guidelines for tables, columns, and files
│
├── scripts/                            # SQL scripts for ETL and transformations
│   ├── bronze/                         # Scripts for extracting and loading raw data
│   ├── silver/                         # Scripts for cleaning and transforming data
│   ├── gold/                           # Scripts for creating analytical models
│
├── tests/                              # Test scripts and quality files
│
├── README.md                           # Project overview and instructions
├── LICENSE                             # License information for the repository
├── .gitignore                          # Files and directories to be ignored by Git
└── requirements.txt                    # Dependencies and requirements for the project


This project is licensed under the MIT License. You are free to use, modify, and share this project with proper attribution. This is originally learned in the online coruse of Baraa Khatib Salkini.
