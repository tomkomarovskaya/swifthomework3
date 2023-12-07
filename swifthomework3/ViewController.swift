//
//  ViewController.swift
//  swifthomework3
//
//  Created by Томик on 3.12.23.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Задание 1 - Написать функцию, которая принимает опциональное число и, если оно есть, умножает его на 2
        
        func optionalValue(value: Int?) {
            if value != nil {
                var unwrappedInt = value ?? 10
                unwrappedInt *= 2
                print(unwrappedInt)
            } else {
                print("Значение отсутствует")
            }
        }
        optionalValue(value: nil)
            
        //Задание 2 - Использовать force unwrap для извлечения значения из опциональной переменной. Затем добавьте условие, чтобы обработать случай, если значение равно nil.
        
        
        
        func unwrappingString (stringForFunc: String?) {
            if stringForFunc != nil {
                var unwrapped: String = stringForFunc!
                print(unwrapped)
            } else {
                var unwrapped = stringForFunc ?? "Bye-Bye"
                print(unwrapped)
            }
        }
        
        unwrappingString(stringForFunc: nil)
        
        //Задание 3 - Написать функцию, использующую оператор guard для проверки опционального значения. Если значение равно nil, выведите сообщение об ошибке, в противном случае выполните операцию с извлеченным значением. 3-4 примера
        //пример 1
        func guardReturnPhrase(phrase: String?) -> String {
            guard let phrase = phrase else { return "There is nothing to say"}
            return phrase
        }
        
        let checkOne = guardReturnPhrase(phrase: "I need to say smth")
        print(checkOne)
        
        //пример 2
        func checkNumber (numberA: Int?) -> Int {
            guard let numberA else { return 0 }
            return numberA
        }
        
        let checkTwo = checkNumber(numberA: nil)
        print(checkTwo)
        
        //пример 3
        func doubleUnwrapFunc(doubleValue: Double?) {
            guard let number = doubleValue else {
                print("There is no any double")
                return
            }
            let newNumber = number
            print(newNumber)
            print("We have some double")
        }
        doubleUnwrapFunc(doubleValue: 72.4)
        
        //Задание 4 - Напишите функцию, которая принимает строку и пытается преобразовать ее в целое число. Если преобразование возможно, верните число, если нет - nil
        
        func acceptingString (myString: String) -> Int? {
            if var myNewInt = Int(myString) {
                return myNewInt
            } else {
                return nil
            }
        }
        let checkStringOne = acceptingString(myString: "dsds")
        print(checkStringOne)
        
        let checkStringTwo = acceptingString(myString: "234")
        print(checkStringTwo)
        
        
        //функцию писать внутри enama
        //Задание 5 - Создать перечисление Book. Напишите функцию, которая принимает Book и выводит описание книги
        //смотреть файл Enums
        let book1 = bookSelecting(titleOfTheBook: .theHobbit)
        let book2 = bookSelecting(titleOfTheBook: .theLittlePrince)
        let book3 = bookSelecting(titleOfTheBook: .theLordOfTheRings)
        
        print(book1)
        print(book2)
        print(book3)
        
        //Задание 6 - Создайте перечисление Clothes. Напишите функцию, которая принимает Clothes в качестве параметра и выводит сообщение о выбранной одежде.
        //смотреть файл Enums2
        
        let item = Clothes.description(type: "Shirt", size: "M", color: "White")
        print(item)
  
        
        
    }


}

