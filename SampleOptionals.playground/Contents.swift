//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let timeHour = 1____000____000
let timeMinute = 010

let num = 0x12

class Person
{
    var name: String
    var surname: String
    var friend: Person?
    
    init(name: String, surname: String)
    {
        self.name = name
        self.surname = surname
    }
    
    func sayMyName()
    {
        print("\(name) \(surname)")
    }
    
    func getFriend() -> Person?
    {
        return Person(name: "Canan", surname: "Karatas")
    }
}

class Car
{
    var model: String
    var registrationId: String
    var owner: Person?
    
    init(model: String, registrationId: String, owner: Person?) {
        self.model = model
        self.registrationId = registrationId
        self.owner = owner
    }
}

let ahmet = Person(name: "Ahmet", surname: "Aykac")
let suat = Person(name: "Suat", surname: "Karakusoglu")
let taha = Person(name: "Taha", surname: "Demir")

let mazzeratti = Car(
    model: "Mazzeratti",
    registrationId: "9213942",
    owner: taha
)

mazzeratti.owner?.getFriend()?.sayMyName()

var muratCar = Car(
    model: "Murat 124",
    registrationId: "1234",
    owner: taha
)

let name1: String = "Kamil"

let vwGolf = Car(
    model: "Gold",
    registrationId: "1234",
    owner: nil
)

let cars = [mazzeratti, muratCar, vwGolf]

for car in cars
{
// This is not recommended approach
//    if car.owner != nil
//    {
//        let owner = car.owner!
//         print("Owner \(owner.name) has to pay taxes for \(car.model)")
//    }
    
    let owner = car.owner ?? suat
    print("Owner \(owner.name) has to pay taxes for \(car.model)")
    
//    if let owner = car.owner
//    {
//        print("Owner \(owner.name) has to pay taxes for \(car.model)")
//    }
}

