class Faculty:
    def __init__(self, name, tenure, salary):
        self.name = name
        self.tenure = tenure
        self.salary = salary

teacher1 = Faculty("Mr. Benedict", True, 1000000)

if teacher1.tenure == True:
    print(f'{teacher1.name} has tenure and makes ${teacher1.salary}')

class Course:
    def __init__(self, coursetitle, professors, dates):
        self.coursetitle = coursetitle
        self.professors = professors
        self.dates = dates

Class_AI = Course("Computational Account of AI", "Mr. Benedict", "Jul. 10-28")

print(f'My class is called {Class_AI.coursetitle}, taught by {Class_AI.professors}. It will run from {Class_AI.dates}')