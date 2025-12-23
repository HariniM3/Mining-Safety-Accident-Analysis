## Mining Safety & Accident Analysis using SQL (MSHA Dataset)

### Objective  
Analyze mining accident data to identify high-risk mines, accident causes, and safety patterns over time using SQL.

### Dataset  
- Public MSHA mining accident dataset (exported via Power BI).  
- ~20,000+ accident records after filtering and cleaning.  
- Key fields: mine ID, operator name, state, coal/metal indicator, accident date, year, quarter, degree of injury, number of injuries, days lost/restricted, accident type, classification, activity, underground location, mining method, equipment, occupation, and total experience.

### Database & Schema  
- Database: `mining_safety` (MySQL).  
- Table: `accidents`

### Key SQL Analysis
1. Accident trends over time (year-wise analysis)  
2. Injury severity distribution  
3. Most common accident types  
4. Underground location risk analysis  
5. Average injuries per accident  
6. Activity-wise accident analysis  
7. Experience vs accident frequency  
8. High-risk mines and operators  

### Skills Demonstrated  
- Database creation and table design  
- SQL querying: `SELECT`, `WHERE`, `GROUP BY`, `ORDER BY`, `LIMIT`, `CASE`, `COUNT`, `AVG`  
- Handling missing values and data quality checks  
- Exploratory data analysis and risk pattern identification  

### How to Run  
1. Create a MySQL database named `mining_safety`.  
2. Run the `CREATE TABLE accidents` script.  
3. Import the cleaned CSV into the `accidents` table.  
4. Execute the SQL queries to reproduce the analysis.
Here is a concise README you can copy to your repo and tweak with your own wording or numbers.

