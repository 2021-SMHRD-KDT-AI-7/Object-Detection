CREATE TABLE t_object
(
    item_seq         NUMBER(15, 0)    NOT NULL, 
    detection_seq    NUMBER(15, 0)    NOT NULL, 
    item_name        VARCHAR2(50)     NOT NULL, 
    item_cnt         NUMBER(15, 0)    NOT NULL, 
     PRIMARY KEY (item_seq)
)
/

CREATE SEQUENCE t_object_SEQ
START WITH 1
INCREMENT BY 1;
/

CREATE OR REPLACE TRIGGER t_object_AI_TRG
BEFORE INSERT ON t_object 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT t_object_SEQ.NEXTVAL
    INTO :NEW.item_seq
    FROM DUAL;
END;
/

ALTER TABLE t_object
    ADD CONSTRAINT FK_t_object_detection_seq_t_de FOREIGN KEY (detection_seq)
        REFERENCES t_detection (detection_seq)
/

select * from t_object;