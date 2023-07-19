import math as mt
import random as ran

result_1 = mt.pow(2,4)
print("result_1 is ",result_1)

result_2 = mt.sqrt(16)
print("result_2 is ",result_2)

result_3 = ran.randint(0,100)
print("result_3 is ",result_3)

names = ["caden", "neoli", "adam", "alice", "julia"]
print(names)

ran.shuffle(names)
print(names)

result_4 = ran.choice(names)
print(result_4)