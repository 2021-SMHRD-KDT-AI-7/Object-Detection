#!/usr/bin/env python
# coding: utf-8

# In[ ]:


import numpy as np
from PIL import Image
import matplotlib.pyplot as plt
import numpy as np
from tensorflow.keras.callbacks import ModelCheckpoint
from tensorflow.keras.callbacks import EarlyStopping
import json
import os
import cv2
import matplotlib.pyplot as plt
from tensorflow.keras import Sequential
from tensorflow.keras.layers import InputLayer,Dense,Flatten
from tensorflow.keras.optimizers import Adam
# CNN 관련 레이어
from tensorflow.keras.layers import Conv2D, MaxPool2D
from sklearn.model_selection import train_test_split
import flask
from flask import request
from flask import Response
from flask import stream_with_context
import tensorflow as tf
from PIL import Image
from tensorflow.keras.callbacks import ModelCheckpoint
from tensorflow.keras.callbacks import EarlyStopping
import random
from tensorflow.python.keras.models import load_model
from tensorflow.keras.applications import VGG16
from tensorflow.keras import Sequential
import pandas as pd
from flask import Flask, request
import io
from tensorflow.keras.models import load_model


# In[ ]:


import tensorflow as tf
physical_devices=tf.config.list_physical_devices('GPU')
tf.config.experimental.set_memory_growth(physical_devices[0],True)
from tensorflow.python.client import device_lib
print(device_lib.list_local_devices())


# In[ ]:


gpus = tf.config.experimental.list_physical_devices('GPU')
if gpus:
  # Restrict TensorFlow to only allocate 1GB of memory on the first GPU
    try:
        tf.config.experimental.set_virtual_device_configuration(
        gpus[0],
        [tf.config.experimental.VirtualDeviceConfiguration(memory_limit=8192)])
        logical_gpus = tf.config.experimental.list_logical_devices('GPU')
        print(len(gpus), "Physical GPUs,", len(logical_gpus), "Logical GPUs")
    except RuntimeError as e:
        # Virtual devices must be set before GPUs have been initialized
        print(e)


# ### 영상 프레임 추출 후 저장

# In[ ]:


# 비디오하위폴더(ex:237-2)
vid='73-1'
# 비디오상위폴더(ex:insidedoor_01)
vvid='outsidedoor_08'

videoPath = 'D:/CCTV/burglary/'+str(vvid)+'/'+str(vid)+'/' # 적용할 비디오 경로
imagePath = './image_frame/'+str(vid)+'/' # 저장할 이미지 경로
file_list = os.listdir(videoPath) #경로내 모든 영상파일을 사용
get_ipython().run_line_magic('mkdir', './image_frame/{vid}')

for file in file_list:
    try:
        if not (os.path.isdir(videoPath + file)):
            os.makedirs(os.path.join(imagePath + file))

            cap = cv2.VideoCapture(videoPath + file)

            count = 0

            while True:
                ret, image = cap.read()

                if not ret:
                    break
                image=cv2.resize(image,(224,224), interpolation=cv2.INTER_CUBIC)
                cv2.imwrite(imagePath + file + "/"+str(vid+"_")+"%d.jpg" % count, image) # 프레임 저장

                print('%d.jpg done' % count)
                count += 1

            cap.release()

    except OSError as e:
        if e.errno != e.EEXIST:
            print("Failed to create directory!!!!!")
            raise  


# ### 데이터 npz화

# In[ ]:


data_dir_f="./image_frame/"
data_dir_f


# In[ ]:


# 적용 파일 설정 (ex 237-2)
vid="case9"
# 적용 파일 상세 설정 (ex 237-2_c03_sp)
a="9"

b=a+"_catch"
#c=a+"_not"


# In[ ]:


data_dir=os.path.join(data_dir_f,vid)


# In[ ]:


file_names_a=os.listdir(os.path.join(data_dir,a))
file_names_b=os.listdir(os.path.join(data_dir,b))
#file_names_c=os.listdir(os.path.join(data_dir,c))


# In[ ]:


def load_images(folder_path,file_names):
    images=[] # 전제 사진이 담길 리스트
    for f_name in file_names:
        print('iii')
        path=os.path.join(folder_path,f_name) # 폴더+파일명
        img =Image.open(path)
        print(np.array(img).shape)
        
        if np.array(img).shape == (224,224,3):
            images.append(np.array(img))
            print('sfdfd')
    return np.array(images)


# In[ ]:


# 데이터 np화
bur_a=load_images(os.path.join(data_dir,a),file_names_a)
bur_b=load_images(os.path.join(data_dir,b),file_names_b)
print("일반 : ",bur_a.shape)
print("절도 : ",bur_b.shape)


# In[ ]:


# 데이터 통합
data=np.concatenate((bur_a,bur_b))
data.shape


# In[ ]:


# 데이터 라벨링 (0:두리번,1:가져가기(catch),2:아무것도 없음(not))
target=np.array([0]*bur_a.shape[0]+[1]*bur_b.shape[0])
target.shape


# In[ ]:


# 훈련용 , 검증용 분리
X_train,X_val,y_train,y_val=train_test_split(data,target,
                                             test_size=0.2,
                                             random_state=999,
                                             stratify=target)


# In[ ]:


print(np.bincount(y_val))
print(np.bincount(y_train))


# In[ ]:


# 확장자 npz
np.savez_compressed('./data/bur_A'+str(a)+'.npz',
                    X_train=X_train,
                    X_val=X_val,
                    y_train=y_train,
                    y_val=y_val)


# ### 모델 설계

# In[ ]:


# 모델 불러오기
files="bur_A9.npz"

data=np.load("./data/"+files)


# In[ ]:


X_train,y_train=data['X_train'],data['y_train']
X_val,y_val=data['X_val'],data['y_val']
# 훈련 데이터 크기 확인
print(X_train.shape,y_train.shape)
# 검증 데이터 크기 확인
print(X_val.shape,y_val.shape)


# In[ ]:


# 모델 설계
CNN_model=Sequential()
CNN_model.add(InputLayer(input_shape=(224,224,3))) # 입력층
# 특징 추출부
CNN_model.add(Conv2D(kernel_size=(3,3),
                     filters=64,
                     padding='same',
                     activation='relu'))
CNN_model.add(MaxPool2D())
CNN_model.add(Conv2D(kernel_size=(3,3),
                     filters=128,
                     padding='same',
                     activation='relu'))
CNN_model.add(MaxPool2D())
CNN_model.add(Conv2D(kernel_size=(3,3),
                     filters=64,
                     padding='same',
                     activation='relu'))
CNN_model.add(MaxPool2D())
# 분류기
CNN_model.add(Flatten())
CNN_model.add(Dense(64,activation='relu'))
CNN_model.add(Dense(32,activation='relu'))
CNN_model.add(Dense(2,activation='sigmoid')) #출력층


# In[ ]:


# 필요한 경우만 실행
CNN_model.load_weights("./model_weight/modelA3bur8.npz.h5")


# In[ ]:


CNN_model.summary() # 모델의 요약된 정보확인


# In[ ]:


# 2. 모델 학습/평가 방법 설정
CNN_model.compile(loss='sparse_categorical_crossentropy',
                  optimizer=Adam(lr=0.001),
                  metrics='accuracy')


# In[ ]:


# # 3. 모델 학습 및 학습결과 시각화
CNN_model.history=CNN_model.fit(X_train,y_train,
                        validation_data=(X_val,y_val),
                        epochs=40)
CNN_model.save_weights("./model_weight/modelD_"+str(files)+".h5")


# In[ ]:


# 모델저장
CNN_model.save("./test_model/modelE_"+str(files)+".h5")


# In[ ]:


#4. 모델 평가
CNN_model.evaluate(X_val,y_val)


# In[ ]:


# 정확도
plt.figure(figsize=(15,5))
plt.plot(CNN_model.history.history['accuracy'],label='accuracy')
plt.plot(CNN_model.history.history['val_accuracy'],label='val_accuracy')
plt.legend()
plt.show()


# In[ ]:


# 소실치
plt.figure(figsize=(15,5))
plt.plot(CNN_model.history.history['loss'],label='loss')
plt.plot(CNN_model.history.history['val_loss'],label='val_loss')
plt.legend()
plt.show()


# ### 플라스크

# In[ ]:


# 모션모델 분별함수
def motion_model_run(frame):
    # 보여줄 이미지 사이즈 변경
    size=(980,480)
    frame = cv2.resize(frame, size)
    #frame = cv2.resize(frame, (480,240))
    
    # 분류모델 및 확률 추출
    images=cv2.resize(frame,(224,224))
    images = np.array([images])
    pers=int((model.predict(images)[0][1])*100)
    
    #좌표
    rec_x=int(size[0]/6)
    rec_y=size[1]/4
    
    # 확률에 따라 catch로 분류
    if model.predict_classes(images) == 1 :
        a="CATCH"
    else :
        a=""
    
    # 폰트 크기
    if size[0] >700:
        b=2
    else :
        b=1
    
    
    # 결과 시각화

    cv2.rectangle(frame,(0,0),(int(size[0]/4.5),int(size[1]/9.5)),(255,255,255),-1)
    cv2.putText(frame, a, (int(size[0]/200),int(size[1]/13)),cv2.FONT_HERSHEY_PLAIN,b,(0,0,0),b,cv2.LINE_AA)
    cv2.putText(frame, str(pers) , (int(size[0]/7.5),int(size[1]/13)),cv2.FONT_HERSHEY_PLAIN ,b,(0,0,0),b,cv2.LINE_AA)
    cv2.putText(frame, " %", (int(size[0]/6),int(size[1]/13)),cv2.FONT_HERSHEY_PLAIN ,b,(0,0,0),b,cv2.LINE_AA)
        
    return frame , a , pers 


# In[ ]:


from flask import Flask, render_template, Request, Response
import cv2

app = Flask(__name__)
model = load_model("./test_model/modelAbur6.npz.h5")


def gen_frames():
#     cam = find_camera(camera_id)  # return the camera access link with credentials. Assume 0?
    # cam = cameras[int(id)]
    cap = cv2.VideoCapture('case4.mp4')  # capture the video from the live feed
 
    while True:
        # # Capture frame-by-frame. Return boolean(True=frame read correctly. )
        success, frame = cap.read()  # read the camera frame
        if not success:
            break
        else:
            frame ,a ,pers = motion_model_run(frame) # 모션 분별모델 결과물(프레임, catch유무, 퍼센트)
                        
            #객체인식관련 코드 
            ret, buffer = cv2.imencode('.jpg', frame)
            frame = buffer.tobytes()
            
            yield (b'--frame\r\n'
                   b'Content-Type: image/jpeg\r\n\r\n' + frame + b'\r\n')  # concat frame one by one and show result
 
 
@app.route('/video_feed', methods=["GET"])
def video_feed():
    return Response(gen_frames(),
                    mimetype='multipart/x-mixed-replace; boundary=frame')
 
if __name__ == '__main__':
    app.run(host='222.102.104.28',port=2000)
    app.debug=True


# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:




