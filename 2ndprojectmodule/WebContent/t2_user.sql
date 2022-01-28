CREATE TABLE t2_user
(
    user_id      VARCHAR2(20)    NOT NULL, 
    user_pw      VARCHAR2(20)    NOT NULL, 
    user_shop    VARCHAR2(50)    NOT NULL, 
     PRIMARY KEY (user_id)
)
/

select * from t2_user;