# 🏫 School Management System Database

Production-ready MySQL database for a School Management System.

---

# Author 
- Md Sufiyan Ali

# Requirements

- MySQL 8.0+
- UTF8MB4 Character Set

---

# Project Structure

```
database/
│
├── 00_reset_database.sql
├── 01_database.sql
│
├── 02_tables/
│
├── 03_constraints/
│
└── 04_indexes/
```

---

# Execution Order

> **⚠️ IMPORTANT**
>
> Execute the SQL files in the exact order shown below.
> The order is designed to avoid foreign key dependency errors.

---

# Step 1 - Create Database

Run

```
01_database.sql
```

---

# Step 2 - Create Tables

## 2.1 School Module

Run

```
02_tables/
└── 01_school/
    ├── schools.sql
```

---

## 2.2 Academics (Independent Tables)

Run

```
02_tables/
└── 02_academics/
    ├── academic_years.sql
    ├── classes.sql
    ├── sections.sql
    └── subjects.sql
```

These tables don't depend on Students or Teachers.

---

## 2.3 People Module

Run

```
02_tables/
└── 03_people/
    ├── students.sql
    ├── teachers.sql
    ├── parents.sql
    ├── student_parents.sql
    ├── student_login.sql
    ├── teacher_login.sql
    ├── parent_login.sql
    ├── school_admin_login.sql
    └── super_admin_login.sql
```

---

## 2.4 Academics (Relationship Tables)

Now Students and Teachers exist.

Run

```
02_tables/
└── 02_academics/
    ├── student_classes.sql
    ├── teacher_subjects.sql
    ├── timetable.sql
    ├── attendance.sql
    ├── exams.sql
    ├── exam_results.sql
    ├── assignments.sql
    └── assignment_submissions.sql
```

---

## 2.5 Finance

Run

```
02_tables/
└── 04_finance/
    ├── fee_categories.sql
    └── fee_payment.sql
```

---

## 2.6 Library

Run

```
02_tables/
└── 05_library/
    ├── book_categories.sql
    ├── books.sql
    └── book_issues.sql
```

---

## 2.7 Transport

Run

```
02_tables/
└── 06_transport/
    ├── routes.sql
    ├── drivers.sql
    ├── transport_vehicles.sql
    └── student_transport.sql
```

---

## 2.8 Documents

Run

```
02_tables/
└── 07_documents/
    ├── documents.sql
    └── id_cards.sql
```

---

## 2.9 Notifications

Run

```
02_tables/
└── 08_notifications/
    ├── notifications.sql
    └── messages.sql
```

---

# Step 3 - Apply Constraints

After **all tables** are created successfully, execute every file inside

```
03_constraints/
```

Use the following order.

```
01_school
02_academics
03_people
04_finance
05_library
06_transport
07_documents
08_notifications
```

> Since all referenced tables already exist, foreign key creation will complete successfully.

---

# Step 4 - Create Indexes

Finally execute every file inside

```
04_indexes/
```

Order

```
01_school
02_people
03_academics
04_finance
05_library
06_transport
07_documents
08_notifications
```

---

# Final Folder Execution Summary

```
1. 01_database.sql

2. Tables

   01_school
       schools.sql

   02_academics
       academic_years.sql
       classes.sql
       sections.sql
       subjects.sql

   03_people
       students.sql
       teachers.sql
       parents.sql
       student_parents.sql
       student_login.sql
       teacher_login.sql
       parent_login.sql
       school_admin_login.sql
       super_admin_login.sql

   02_academics
       student_classes.sql
       teacher_subjects.sql
       timetable.sql
       attendance.sql
       exams.sql
       exam_results.sql
       assignments.sql
       assignment_submissions.sql

   04_finance
       fee_categories.sql
       fee_payment.sql

   05_library
       book_categories.sql
       books.sql
       book_issues.sql

   06_transport
       routes.sql
       drivers.sql
       transport_vehicles.sql
       student_transport.sql

   07_documents
       documents.sql
       id_cards.sql

   08_notifications
       notifications.sql
       messages.sql

3. Constraints

   01_school
   02_academics
   03_people
   04_finance
   05_library
   06_transport
   07_documents
   08_notifications

4. Indexes

   01_school
   02_people
   03_academics
   04_finance
   05_library
   06_transport
   07_documents
   08_notifications
```

---

# Notes

- Execute every SQL file only once.
- Do not execute constraint files before all tables are created.
- Do not execute index files before constraint files.
- This execution order has been arranged to satisfy all table dependencies and foreign key relationships.


# Dependency Diagram

schools
   │
   ├───────────────┐
   │               │
academic_years   students
classes          teachers
sections         parents
subjects            │
   │                │
   ├────────────┬───┘
   │            │
student_classes │
teacher_subjects│
attendance       │
timetable        │
exams            │
exam_results     │
assignments      │
assignment_submissions

students ──────► fee_payment
students ──────► book_issues
students ──────► student_transport

routes ───────► transport_vehicles
drivers ──────► transport_vehicles

schools ──────► documents
schools ──────► id_cards
schools ──────► notifications
schools ──────► messages