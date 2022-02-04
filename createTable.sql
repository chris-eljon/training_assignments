drop table atc_items
drop table admin
drop table cart
---create admin table
CREATE TABLE ADMIN
(
  ADMIN_ID VARCHAR2(200) NOT NULL 
, EMAIL VARCHAR2(200) NOT NULL 
, PASSWORD VARCHAR2(200) 
, CONSTRAINT ADMIN_PK PRIMARY KEY 
  (
    ADMIN_ID 
  )
  ENABLE 
);

---create atc_items table
CREATE TABLE ATC_ITEMS 
(
  ATC_ID VARCHAR2(200) NOT NULL 
, CART_ID VARCHAR2(200) NOT NULL 
, USERID VARCHAR2(200) NOT NULL 
, PRODUCT_ID VARCHAR2(200) NOT NULL 
, ATC_QTY NUMBER(10) NOT NULL 
, CONSTRAINT ATC_ITEMS_PK PRIMARY KEY 
  (
    ATC_ID 
  )
  ENABLE 
);


---create cart table
CREATE TABLE CART 
(
  CART_ID VARCHAR2(200) NOT NULL 
, USERID VARCHAR2(200) NOT NULL 
, CONSTRAINT CART_PK PRIMARY KEY 
  (
    CART_ID 
  )
  ENABLE 
);


---create category table
drop table category
CREATE TABLE CATEGORY 
(
  CAT_ID VARCHAR2(200) NOT NULL 
, CAT_NAME VARCHAR2(600) NOT NULL 
, CONSTRAINT CATEGORY_PK PRIMARY KEY 
  (
    CAT_ID 
  )
  ENABLE 
);


---create coupon table
drop table coupon
CREATE TABLE COUPON 
(
  COUP_ID VARCHAR2(200) NOT NULL 
, COUP_NAME VARCHAR2(200) NOT NULL 
, DISC_VAL DECIMAL NOT NULL 
, EXPIRY_DATE DATE NOT NULL 
, CONSTRAINT COUPON_PK PRIMARY KEY 
  (
    COUP_ID 
  )
  ENABLE 
);


---create customeracc table
drop table customeracc
CREATE TABLE CUSTOMERACC 
(
  USERID VARCHAR2(200) NOT NULL 
, UNAME VARCHAR2(200) NOT NULL 
, EMADD VARCHAR2(600) NOT NULL 
, PWORD VARCHAR2(600) NOT NULL 
, REGDATE DATE NOT NULL 
, ADDR VARCHAR2(600) NOT NULL 
, CONUM VARCHAR2(100) NOT NULL 
, CONSTRAINT CUSTOMERACC_PK PRIMARY KEY 
  (
    USERID 
  )
  ENABLE 
);


---create orderlist table
drop table orderlist
CREATE TABLE ORDERLIST
(	
 ORDER_ID VARCHAR2(200) NOT NULL
,CART_ID VARCHAR2(200) NOT NULL
, USERID VARCHAR2(200) NOT NULL
, ORDER_DATE DATE NOT NULL
, DEL_DATE DATE NOT NULL
, COUP_ID VARCHAR2(200) NOT NULL
, AMOUNT NUMBER(8,2)
, METHOD_PAYMENT VARCHAR2(200) NOT NULL
, CONSTRAINT ORDERLIST_PK PRIMARY KEY
    (
     ORDER_ID
     )
     ENABLE
);

---create productlist table
drop table productlist
CREATE TABLE PRODUCTLIST 
(	
  PRODUCT_ID VARCHAR2(200) NOT NULL
, PROD_NAME VARCHAR2(600) NOT NULL
, CAT_ID VARCHAR2(600) NOT NULL
, PROD_PRICE NUMBER(8,2) NOT NULL
, PROD_IMG VARCHAR2(600) NOT NULL
, PROD_AVAIL_QTY NUMBER(10,0) NOT NULL
, CONSTRAINT PRODUCTLIST_PK PRIMARY KEY
    (
     PRODUCT_ID
     )
     ENABLE
);