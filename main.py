import json


class Person():
    def __init__(self):
        self.firstname = "John"
        self.lastname = "doe"
        self.favourite_colors = ["red", "green", "blue"]


open('person.json', 'w+').write(json.dumps(Person().__dict__))