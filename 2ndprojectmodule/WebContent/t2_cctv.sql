CREATE TABLE t2_cctv
(
    cctv_seq    NUMBER(15, 0)    NOT NULL, 
    cctv_src    VARCHAR2(200)    NOT NULL, 
     PRIMARY KEY (cctv_seq)
)
/

select * from t2_cctv;

CREATE SEQUENCE t2_cctv_SEQ
START WITH 1
INCREMENT BY 1;
/

CREATE OR REPLACE TRIGGER t2_cctv_AI_TRG
BEFORE INSERT ON t2_cctv 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT t2_cctv_SEQ.NEXTVAL
    INTO :NEW.cctv_seq
    FROM DUAL;
END;
/

