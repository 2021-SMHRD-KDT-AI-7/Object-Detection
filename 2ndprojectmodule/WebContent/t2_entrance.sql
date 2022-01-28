CREATE TABLE t2_entrance
(
    ent_object_id    VARCHAR2(50)     NOT NULL, 
    ent_kind         VARCHAR2(1)      NOT NULL, 
    ent_time         DATE             NOT NULL, 
    ent_face_img     VARCHAR2(200)    NOT NULL, 
    user_id          VARCHAR2(20)     NOT NULL, 
    shop_seq         NUMBER(15, 0)    NOT NULL, 
     PRIMARY KEY (ent_object_id)
)
/

select * from t2_entrance;

ALTER TABLE t2_entrance
    ADD CONSTRAINT FK_t2_entrance_user_id_t2_user FOREIGN KEY (user_id)
        REFERENCES t2_user (user_id)
/

INSERT INTO t2_entrance (ent_object_id, ent_kind, ent_time, ent_face_img, user_id, shop_seq) VALUES ('ent_object_id 1', 'N', sysdate, 'ent_face_img 1', 'smart', 1);
INSERT INTO t2_entrance (ent_object_id, ent_kind, ent_time, ent_face_img, user_id, shop_seq) VALUES ('ent_object_id 2', 'N', sysdate, 'ent_face_img 2', 'smart2', 2);