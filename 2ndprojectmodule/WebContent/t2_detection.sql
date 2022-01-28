CREATE TABLE t2_detection
(
    detection_seq    NUMBER(15, 0)    NOT NULL, 
    detection_tim    DATE             DEFAULT SYSDATE NOT NULL, 
    situation_img    VARCHAR2(200)    NOT NULL, 
    face_img         VARCHAR2(200)    NOT NULL, 
    user_id          VARCHAR2(20)     NOT NULL, 
    ent_object_id    VARCHAR2(50)     NOT NULL, 
     PRIMARY KEY (detection_seq)
)
/

select * from t2_detection;

CREATE SEQUENCE t2_detection_SEQ
START WITH 1
INCREMENT BY 1;
/

CREATE OR REPLACE TRIGGER t2_detection_AI_TRG
BEFORE INSERT ON t2_detection 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT t2_detection_SEQ.NEXTVAL
    INTO :NEW.detection_seq
    FROM DUAL;
END;
/

INSERT INTO t2_detection (detection_tim, situation_img, face_img, user_id, ent_object_id) VALUES (sysdate, 'situation_img 1', 'face_img 1', 'smart', 'ent_object_id 1');