CREATE TABLE "Departments" (
    "Dept_no" varchar(6)   NOT NULL,
    "Dept_name" varchar(20)   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "Dept_no"
     )
);

CREATE TABLE "Dept_Emp" (
    "emp_no" int   NOT NULL,
    "dept_no" varchar(6)   NOT NULL,
    "from_date" varchar(15)   NOT NULL,
    "to_date" varchar(15)   NOT NULL
);

CREATE TABLE "Dept_Mang" (
    "dept_no" varchar(6)   NOT NULL,
    "emp_no" int   NOT NULL,
    "from_date" varchar(15)   NOT NULL,
    "to_date" varchar(15)   NOT NULL
);

CREATE TABLE "Employees" (
    "emp_no" int   NOT NULL,
    "birth_date" varchar(15)   NOT NULL,
    "first_name" varchar(30)   NOT NULL,
    "last_name" varchar(60)   NOT NULL,
    "gender" varchar(1)   NOT NULL,
    "hire_date" varchar(15)   NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "Salaries" (
    "emp_no" int   NOT NULL,
    "salary" int   NOT NULL,
    "from_date" varchar(15)   NOT NULL,
    "to_date" varchar(15)   NOT NULL,
    CONSTRAINT "pk_Salaries" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "Titles" (
    "emp_no" int   NOT NULL,
    "title" varchar(100)   NOT NULL,
    "from_date" varchar(15)   NOT NULL,
    "to_date" varchar(15)   NOT NULL
);

select * from "Dept_Emp";

ALTER TABLE "Dept_Emp" ADD CONSTRAINT "fk_Dept_Emp_dept_no" FOREIGN KEY("dept_no")
REFERENCES "Departments" ("Dept_no");

ALTER TABLE "Dept_Emp" ADD CONSTRAINT "fk_Dept_Emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");

ALTER TABLE "Dept_Mang" ADD CONSTRAINT "fk_Dept_Mang_dept_no" FOREIGN KEY("dept_no")
REFERENCES "Departments" ("Dept_no");

ALTER TABLE "Dept_Mang" ADD CONSTRAINT "fk_Dept_Mang_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");

ALTER TABLE "Salaries" ADD CONSTRAINT "fk_Salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");

ALTER TABLE "Titles" ADD CONSTRAINT "fk_Titles_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");
