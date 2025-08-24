

***

# SQL Data Warehouse Project

A comprehensive data warehousing solution employing the Medallion architecture (Bronze, Silver, Gold layers). This project demonstrates ETL strategies, data modeling, and analytics using real data from ERP and CRM source systems.

> _Originally derived from an online course by [Baraa Khatib Salkini](https://www.linkedin.com/in/baraa-khatib-salkini/), this implementation is tailored for PostgreSQL syntax and enhancements, rather than SQL Express._

***

## Architecture

This project follows the Medallion pattern for data warehouses:

- **Bronze**: Raw, unprocessed ingested data for historical tracking.
- **Silver**: Cleaned, conformed, and unified data ready for further transformation.
- **Gold**: Curated business data models optimized for analytics and reporting.

***

## Features

- Medallion (multi-layer) data architecture
- Robust ETL processing using SQL and scripting
- Modular data modeling for analytics
- Data quality improvement and validation logic
- Rich documentation and reproducible project structure

***

## Project Structure

```
data-warehouse-project/
│
├── datasets/                   # Raw ERP and CRM sample data (CSV)
├── docs/                       # Documentation, models, and diagrams
│   ├── etl.drawio                  # ETL pipeline visualization
│   ├── data_architecture.drawio    # Architecture overview
│   ├── data_catalog.md             # Dataset definitions and metadata
│   ├── data_flow.drawio            # Data flow diagram
│   ├── data_models.drawio          # Data models (star schema, etc)
│   ├── naming-conventions.md       # Naming standards and guidelines
│
├── scripts/                    # SQL ETL and transformation scripts
│   ├── bronze/                     # Raw data loading
│   ├── silver/                     # Data cleansing and transformation
│   ├── gold/                       # Analytics and business data marts
│
├── tests/                      # Test and validation scripts
│
├── README.md                   # Project summary and setup
├── LICENSE                     # MIT License
├── .gitignore                  # Git exclusions
└── requirements.txt            # Project dependencies
```

***

## Getting Started

1. Clone the repository and review the documentation in `docs/`.
2. Use the scripts in the `/scripts` directory to build each layer of the warehouse.
3. Verify data quality and modeling with provided test cases in `/tests`.
4. Explore business metrics in the Gold Layer using your BI tool of choice.

***

## Requirements

- PostgreSQL database (recommended version: 13+)
- Data files in `datasets/` (ERP & CRM CSVs)
- [Optional] Draw.io to view architectural diagrams

***

## Analytics & Reporting

Deliverables and reports include:

- Customer Insights and Segmentation
- Product Performance Analysis
- Sales Trends and KPI Dashboards

***

## Attribution

This project is inspired by and adapted from the online course by [Baraa Khatib Salkini](https://www.linkedin.com/in/baraa-khatib-salkini/).  
Significant modifications have been made, including a shift to PostgreSQL SQL dialect and enhanced logic for data quality.

***

## About the Author

Want to connect with me?  
[Anabel Rivera](https://www.linkedin.com/in/anabel-rivera-v/)

***

## License

This repository is released under the MIT License. You are welcome to use, adapt, and redistribute with appropriate credit.

***

