CREATE TABLE "Degrees_that_pay_back" (
    "Undergraduate_Major" varchar   NOT NULL,
    "Starting_Median_Salary" INT   NOT NULL,
    "Mid-Career_Median_Salary" INT   NOT NULL,
    "Percent_change_from_starting_to_mid-Career_Salary" INT   NOT NULL,
    "Mid-career_10th_Percentile_Salary" INT   NOT NULL,
    "Mid-career_25th_Percentile_Salary" INT   NOT NULL,
    "Mid-career_75th_Percentile_Salary" INT   NOT NULL,
    "Mid-career_90th_Percentile_Salary" INT   NOT NULL,
    CONSTRAINT "pk_Degrees_that_pay_back" PRIMARY KEY (
        "Undergraduate_Major"
     )
);

CREATE TABLE "Salaries_by_College_Type" (
    "School_Name" VARCHAR   NOT Null Unique,
    "School_Type" VARCHAR   NOT NULL,
    "Starting_Median_Salary" INT   NOT NULL,
    "Mid-Career_Median_Salary" INT   NOT NULL,
    "Mid-Career_10th_Percentile_Salary" INT   NOT NULL,
    "Mid-Career_25th_Percentile_Salary" INT   NOT NULL,
    "Mid-Career_75th_Percentile_Salary" INT   NOT NULL,
    "Mid-Career_90th_Percentile_Salary" INT   NOT NULL,
    CONSTRAINT "pk_Salaries_by_College_Type" PRIMARY KEY (
        "School_Name","School_Type"
     )
);

CREATE TABLE "Salaries_by_Region" (
    "School_Name" VARCHAR   NOT NULL,
    "Region" VARCHAR   NOT NULL,
    "Starting_Median_Salary" INT   NOT NULL,
    "Mid-Career_Median_Salary" INT   NOT NULL,
    "Mid-Career_10th_Percentile_Salary" INT   NOT NULL,
    "Mid-Career_25th_Percentile_Salary" INT   NOT NULL,
    "Mid-Career_75th_Percentile_Salary" INT   NOT NULL,
    "Mid-Career_90th_Percentile_Salary" INT   NOT NULL,
    CONSTRAINT "pk_Salaries_by_Region" PRIMARY KEY (
        "School_Name"
     )
);

ALTER TABLE "Salaries_by_Region" ADD CONSTRAINT "fk_Salaries_by_Region" FOREIGN KEY("School_Name")
REFERENCES "Salaries_by_College_Type" ("School_Name");


-- Joinning Tables
SELECT sr."School_Name",
sr."Region"
Into School_Region_Salaries
FROM "Salaries_by_Region" as sr
INNER JOIN "Salaries_by_College_Type" as sc
ON sr."School_Name" = sc."School_Name";


--DROP TABLE School_Region_Salaries;

SELECT * From School_Region_Salaries


CREATE TABLE "Income_Outcome"
