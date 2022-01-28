CREATE TABLE t2_object
(
    item_seq         NUMBER(15, 0)    NOT NULL, 
    detection_seq    NUMBER(15, 0)    NOT NULL, 
    item_name        VARCHAR2(50)     NOT NULL, 
    item_cnt         NUMBER(15, 0)    NOT NULL, 
     PRIMARY KEY (item_seq)
)
/

select * from t2_detection;

CREATE SEQUENCE t2_object_SEQ
START WITH 1
INCREMENT BY 1;
/

CREATE OR REPLACE TRIGGER t2_object_AI_TRG
BEFORE INSERT ON t2_object 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT t2_object_SEQ.NEXTVAL
    INTO :NEW.item_seq
    FROM DUAL;
END;
/

ALTER TABLE t2_object
    ADD CONSTRAINT FK_t2_object_detection_seq_t2_ FOREIGN KEY (detection_seq)
        REFERENCES t2_detection (detection_seq)
/

INSERT INTO t2_object (detection_seq, item_name, item_cnt) VALUES (1, 'item_name 1', 1);