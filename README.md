# `company_data_cleaning`

## Order of scripts

# `cleaning_pt_1_python.html`

Objective 1\
input: `Data/product_info.csv`\
input: `Data/purchse_info.csv`\
input: `Data/customers/csv`

Objective 2

Objective 3

Objective 5\
output: `Rdata/customer_py_cleaned.csv`

# `cleaning_pt_2_R.html`

Objective 4\
input: `Rdata/customer_py_cleaned.csv`\
input: `Data/product_info.csv`

output: `SQL_init_data/customer_R_cleaned.csv`\
Objective 7

# `cleaning_pt_3_SQL.sql`
Initializing SQL database\
input: `SQL_init_data/customer_R_cleaned`\
input: `Data/product_info.csv`\
input: `Data/purchase_info.csv`  

Objective 6

Objective 8\
output: `Rdata/obj8.csv`

Objective 9

Objective 10\
output: `Rdata/obj10.csv`

# `cleaning_pt_4_R.html`

Objective 11\
input: `Rdata/obj10.csv`

Objective 12\
input: `Rdata/obj8.csv`

## Directories

`Data`: Original csv files provided by CATCH for the project \
`Rdata`: Data files created with either SQL or Python for analysis in R. \
`SQL_init_data`: Data files used to initialize SQL database for part 3
