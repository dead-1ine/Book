#!/usr/bin/env python3

# 선형회귀 실습
import tensorflow as tf

# 데이터와 변수 설정
tf.compat.v1.disable_eager_execution()

x_data = [[1, 1], [2, 2], [3, 3]]
y_data = [[10], [20], [30]]

X = tf.compat.v1.placeholder(tf.float32, shape=[None, 2])
Y = tf.compat.v1.placeholder(tf.float32, shape=[None, 1])

W = tf.Variable(tf.random.normal(shape=(2, 1)), name='W')
b = tf.Variable(tf.random.normal(shape=(1,)), name='b')

# 2. 가설과 비용함수, optimizer 정의
hypothesis = tf.matmul(X, W) + b
cost = tf.reduce_mean(tf.square(hypothesis - Y))
optimizer = tf.compat.v1.train.GradientDescentOptimizer(learning_rate=0.01).minimize(cost)

# 3. 매 스텝 별로 결과를 출력하며 비용함수가 줄어드는 것을 확인
with tf.compat.v1.Session() as sess:
	sess.run(tf.compat.v1.global_variables_initializer())
	
	for step in range(50):
		c, W_, b_, _ = sess.run([cost, W, b, optimizer], feed_dict={X: x_data, Y: y_data})
		print('Step : %2d\t loss : %.2f\t' % (step, c))
		
	print(sess.run(hypothesis, feed_dict={X: [[4, 4]]}))