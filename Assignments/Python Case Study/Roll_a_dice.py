import random as rd
min_value=0
max_value=5
while True:
    print(1+rd.randint(min_value,max_value))
    b=input("if you wanna continue enter 'y' or 'yes'")
    if b=='y' or b=='yes':
        pass
    else:
        break
print("thank you for playing")
