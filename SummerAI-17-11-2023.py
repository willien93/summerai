from os import system, name

def cls():
    if name == 'nt':
        _ = system('cls')
    else:
        _ = system('clear')

def time():
    choice = str(input("1 for hours to minutes\n2 for minutes to hours\nChoice: "))
    x = float(input("Input number: "))
    
    y = 0
    if choice == "1":
        y = 60
        word = "Minutes"
    elif choice == "2":
        y = 1/60
        word = "Hours"
    print(f'{x*y} {word}')

def word():
    w = str(input("Enter word: "))
    print(f'{w} is {len(w)} letters long')

cls()

while True:
    ch = str(input("1 to convert hours and minutes\n2 to find length of a word\nChoice: "))
    if ch == "1":
        time()
    elif ch == "2":
        word()
    input("enter to continue ")
    cls() 