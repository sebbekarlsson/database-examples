from mongoengine import *

connect("myapp")


class Person(Document):
    firstname = StringField()
    lastname = StringField()
    age = IntField()


class House(Document):
    rooms = IntField()


for person in Person.objects(firstname="Sarah"):
    print(person.firstname)
