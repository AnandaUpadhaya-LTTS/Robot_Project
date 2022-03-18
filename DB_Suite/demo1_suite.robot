*** Settings ***
Library     DatabaseLibrary
Suite Setup     Connect To Database     dbapiModuleName=pymysql     dbName=dbfree_db    dbUsername=dbfree_db
...     dbPassword=12345678     dbHost=db4free.net  dbPort=3306
Suite Teardown   Disconnect From Database

*** Test Cases ***

TC1

    Table Must Exist    Products
    ${count}        Row Count    select * from Products
    Log To Console    ${count}

TC2

    Row Count Is Equal To X    select * from Products    50
    Row Count Is Equal To X    Select * from Products where product_id=1     1

TC3

    Execute Sql String    Insert into Products (product_id, productname,description) values (12345,"Ananda","name_field")
    Row Count Is Equal To X    select * from Products where product_id=12345    1

TC4
    ${query_res}        Query    select * from Products
    Log To Console    ${query_res}

TC5
     #Execute Sql String    Insert into Products (product_id, productname,description) values (10001,"Ananda","name_field")
     Execute Sql String    Update Products set productname='Ananda_upadhaya' where product_id=10001

