#imports
from tkinter import *

import os
import msvcrt
import random



#variable

voc = [
    ["go", "가다"],
    ["teach", "가르치다"],
    ["have", "가지다"],
    ["have", "갖다"],
    ["lie", "거짓말하다"],
    ["worry", "걱정하다"],
    ["walk", "걷다"],
    ["call/dial", "걸다"],
    ["marry", "결혼하다"],
    ["confess", "고백하다"],
    ["study", "공부하다"],
    ["roast, grill, bake", "굽다"],
    ["wait", "기다리다"],
    ["remember", "기억하다"],
    ["dream", "꿈꾸다"],
    ["boil", "끓이다"],
    ["finish", "끝나다"],
    ["exit", "나가다"],
    ["pay", "내다"],
    ["close", "닫다"],
    ["answer", "대답하다"],
    ["help", "도와주다"],
    ["arrive", "도착하다"],
    ["hear", "듣다"],
    ["enter", "들어오다"],
    ["drink", "마시다"],
    ["meet", "만나다"],
    ["make", "만들다"],
    ["talk, speak", "말하다"],
    ["eat", "먹다"],
    ["not know", "모르다"],
    ["ask", "묻다"],
    ["ask", "물어보다"],
    ["learn", "배우다"],
    ["undress/take off clothes", "벗다"],
    ["send", "보내다"],
    ["see", "보다"],
    ["fry", "볶다"],
    ["borrow, lend", "빌리다"],
    ["buy", "사다"],
    ["fall in love", "사랑에 빠지다"],
    ["love", "사랑하다"],
    ["use", "사용하다"],
    ["live", "살다"],
    ["think", "생각하다"],
    ["hurry/rush", "서두르다"],
    ["mix/blend", "섞다"],
    ["introduce", "소개하다"],
    ["rest", "쉬다"],
    ["start", "시작하다"],
    ["wear hoes/socks/footwear)", "신다"],
    ["hate, dislike", "싫어하다"],
    ["fight", "싸우다"],
    ["chop/slice", "썰다"],
    ["write", "쓰다"],
    ["wear hat/eyewear", "쓰다"],
    ["wash", "씻다"],
    ["sit", "앉다"],
    ["know", "알다"],
    ["promise", "약속하다"],
    ["not have", "없다"],
    ["practice", "연습하다"],
    ["open", "열다"],
    ["come", "오다"],
    ["cook", "요리하다"],
    ["exercise", "운동하다"],
    ["drive", "운전하다"],
    ["cry", "울다"],
    ["laugh", "웃다"],
    ["win, defeat", "이기다"],
    ["talk, chat", "이야기하다"],
    ["get up", "일어나다"],
    ["work", "일하다"],
    ["read", "읽다"],
    ["wear", "입다"],
    ["have", "있다"],
    ["sleep", "자다"],
    ["measure, weigh", "재다"],
    ["telephone", "전화하다"],
    ["like", "좋아하다"],
    ["be sorry", "죄송하다"],
    ["give", "주다"],
    ["order", "주문하다"],
    ["die", "죽다"],
    ["prepare", "준비하다"],
    ["lose, be defeated", "지다"],
    ["steam", "찌다"],
    ["take (picture)", "찍다"],
    ["find/look for", "찾다"],
    ["clean", "청소하다"],
    ["congratulate", "축하하다"],
    ["depart", "출발하다"],
    ["dance", "춤추다"],
    ["ride", "타다"],
    ["be born", "태어나다"],
    ["deep fry", "튀기다"],
    ["sell", "팔다"],
    ["need", "필요하다"],
    ["do", "하다"],
    ["stir", "휘젓다"],
]



#functions

def clear():
    os.system('cls')

def menu():
    print("Welcome To Korean tests\n")
    print("Choose:")
    print("a. Korean to English")
    print("b. English to Korean\n")
    choice = input("a/b: ")

    clear()
    main(choice, random)
    

def main(choice, random):
    if (choice == "a"):
        print("KOREAN to ENGLISH\n")
    else:
        print("ENGLISH to KOREAN\n")

    print("\n")

    # declarations
    answerchoices = random.sample(voc, 5)
    question = random.sample(answerchoices, 1)

    if (choice == "a"):
        print("KOREAN to ENGLISH\n")
        print("What is " + question[0][1] + " in English?\n\n")
        
        print("Choices:\n")
        for x in answerchoices:
            print("- " + x[0])

        answer = input("\nAnswer: ")
       

        if (answer != question[0][0]):
            print("\nWRONG!!!\nThe correct answer is " + question[0][0] + "!")
            testing = input("\nPress any key to continue...")


    else:
        print("ENGLISH to KOREAN\n")
        print("What is " + question[0][0] + " in Korean?\n\n")
        
        print("Choices:\n")
        for x in answerchoices:
            print("- " + x[1])
        print("\n")
        
        answer = input("Answer: ")

        if (answer != question[0][1]):
            print("\nWRONG!!!\nThe correct answer is " + question[0][1]  + "!")
            testing = input("\nPress any key to continue...")



    
    

    # if msvcrt.kbhit() and msvcrt.getch()[0] == 27:
    #     print("You have pressed escape...")

    clear()
    main(choice, random)



#main

# menu()


def clicked():
    content = txt.get()
    if len(content) == 0:
        content = "You said nothing"
    else:
        content = "You said \"" + content + "\""

    lbl.configure(text = content)
    txt.insert(0, "CLICKED!")

def KeyboardInput():
    print("testing")


window = Tk()

window.title("Korean Vocabularies")
window.geometry('500x200')

lbl = Label(window, text="Hello:")
lbl.grid(column=0, row=0)



sampleall = random.sample(voc, len(voc))

answerchoices = random.sample(sampleall, 5)






i = 2
for choices in answerchoices:
    Label(window, text=choices[1]).grid(column=0, row=i)
    i +=1

txt = Entry(window,width=10)
txt.grid(column=1, row=(i + 1))

window.mainloop()