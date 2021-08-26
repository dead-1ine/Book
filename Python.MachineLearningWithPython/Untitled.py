#!/usr/bin/env python3

from sklearn.datasets import load_iris
import pandas as pd
import numpy as np
import mglearn 
iris_dataset = load_iris()

print("iris_dataset' key : ", iris_dataset.keys())
# 데이터셋의 간략한 설명
print(iris_dataset['DESCR'][:193] + "\n...")
# target_names의 값은 우리가 예측하려는 붓꽃 품종의 이름을 배열로 가지고 있다
print("타깃의 이름 : ", iris_dataset['target_names'])
# feature_names의 값은 각 특성을 설명하는 리스트
print("특성의 이름 : ", iris_dataset['feature_names'])

# 실제 데이터는 target, data 필드에 들어 있다.
# data는 꽃잎의 길이와 폭, 꽃받침의 길이와 폭을 수치값으로 가지고 있는 NumPy배열이다.
print("data의 타입 : ", type(iris_dataset['data']))

# data 배열의 행은 각 꽃이 되며 열은 각 꽃에서 구한 네 개의 측정치이다.
print("data의 크기 : ", iris_dataset['data'].shape)

# 이 배열은 150개의 붓꽃 데이터를 가지고 있다.
# 머신러닝에서 각 아이템은 Sample, 속성은 특성이라고 한다.
print("data의 처음 다섯 행 : \n", iris_dataset['data'][:5])

# target 배열도 샘플 붓꽃의 품종을 담은 NumPy 배열이다.
print("target의 타입 : ", type(iris_dataset['target']))

# target의 각 원소가 붓꽃 하나에 해당하는 1차원 배열이다.
print("target의 크기 : ", iris_dataset['target'].shape)

# 붓꽃의 종류는 0에서 2까지의 정수로 기록되어 있다.
# 숫자의 의미는 iris_dataset[target_names] 배열에서 확인 가능
# 0은 setosa, 1은 versicolor, 2는 virginica이다.
print("타깃 : \n", iris_dataset['target'])

# train_test_split 함수로 데이터를 나누기 전 유사 난수 생성기를 사용해 데이터셋을 무작위로 섞는다. 만약 섞지 않은 상태로 데이터셋 뒤쪽의 25%를 테스트 세트로 이용한다면 문제가 생긴다.
from sklearn.model_selection import train_test_split
X_train, X_test, y_train, y_test = train_test_split(
	iris_dataset['data'], iris_dataset['target'], random_state=0)

# X_train은 전체 데이터셋의 75%를, X_test는 나머지 25%를 담고 있다.
print("X_train 크기 : ", X_train.shape)
print("y_train 크기 : ", y_train.shape)

print("X_test 크기 : ", X_test.shape)
print("y_test 크기 : ", y_test.shape)

# 훈련 세트를 사용해 만든 4개의 특성에 대한 산점도 행렬
iris_dataframe = pd.DataFrame(X_train, columns=iris_dataset.feature_names)
#pd.plotting.scatter_matrix(iris_dataframe, c=y_train, figsize=(15,15), marker="o", hist_kwds={'bins':20}, s=60, alpha=8, cmap=mglearn.cm3)
# ---------------------------------------------

# knn 객체는 훈련 데이터로 모델을 만들고 새로운 데이터 포인트에 대해 예측하는 알고리즘을 캡슐화한 것
from sklearn.neighbors import KNeighborsClassifier
knn = KNeighborsClassifier(n_neighbors=1)

# 훈련 데이터셋으로부터 모델을 만들려면 knn 객체의 fit 메서드를 사용한다.
# fit : 훈련 데이터인 NumPy 배열 X_train과 훈련 데이터의 레이블을 담고 있는 NumPy 배열 y_train을 매개변수로 받는다.
knn.fit(X_train, y_train)

# 예측하기
# 꽃받침의 길이가 5cm, 폭이 2.9cm이고 꽃잎의 길이가 1cm, 폭이 0.2cm인 붓꽃의 품종은 무엇일까 ?

# 샘플의 특성 NumPy배열을 만듦
X_new = np.array([[5, 2.9, 1, 0.2]])
print("X_new.shape : ", X_new.shape)

# 예측에는 knn 객체의 predict 메서드를 사용
prediction = knn.predict(X_new)
print("예측 : ", prediction)
print("예측한 타깃의 이름 : ", iris_dataset['target_names'][prediction])

# 모델 평가하기
y_pred = knn.predict(X_test)
print("테스트 세트에 대한 예측값 :\n", y_pred)

print("테스트 세트의 정확도 : {:.2f}".format(np.mean(y_pred == y_test)))

# knn 객체의 score 메서드로도 테스트 세트의 정확도를 계산할 수 있다.
print("테스트 세트의 정확도 : {:.2f}".format(knn.score(X_test, y_test)))

# 이 모델의 테스트 정확도는 약 0.97이다. = 97%를 맞춤