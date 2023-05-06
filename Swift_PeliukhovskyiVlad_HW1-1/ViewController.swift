//
//  ViewController.swift
//  Swift_PeliukhovskyiVlad_HW1-1
//
//  Created by Vladyslav Peliukhovskyi on 06.05.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        var randomNumbers = [Int]()
        for i in 1...10 {
            var randomNumber: Int
            if i <= 5 {
                randomNumber = Int.random(in: -100...0)
            } else {
                randomNumber = Int.random(in: 1...100)
            }
            randomNumbers.append(randomNumber)
        }

        print("Оригінайльний массив:", randomNumbers)

        //1

        let randomNumbersOrigin:[Int] = randomNumbers
        for i in 0..<randomNumbers.count {
            if randomNumbers[i] < 0 {
                randomNumbers[i] = 0
            }
        }

        print("Модифікований массив:", randomNumbers)

        //2

        let minNumberOfArray = randomNumbersOrigin.min()!
        let maxNUmberOfArray = randomNumbersOrigin.max()!

        print("Найменше число массиву є \(String(describing: minNumberOfArray)), а найбільше \(String(describing: maxNUmberOfArray))")

        //3

        var sum = 0
        for number in randomNumbers {
            sum += number
        }

        print("Сума елемінтів массиву = ", sum)

        //4

        let months = ["Січень", "Лютий", "Березень", "Квітень", "Травень", "Червень", "Липень", "Серпень", "Вересень", "Жовтень", "Листопад", "Грудень"]

        var monthDictionary = [Int: String]()

        for (index, month) in months.enumerated() {
            monthDictionary[index] = month
        }

        print(monthDictionary)

        //5

        var dictionary = ["first": 1, "second": 2, "third": 3, "fourth": 4]

        if let firstValue = dictionary["first"],
           let fourthValue = dictionary["fourth"]{
            dictionary["first"] = fourthValue
            dictionary["fourth"] = firstValue
        }

        print(dictionary)

        //6

        var calendar = [Int: [String]]()
        for year in 1970...2022{
            calendar[year] = months
        }

        print(calendar)

        //7

        for (year, _) in calendar {
            calendar[year]?.append("Мій місяць")
        }

        print(calendar)

        //8*
        
        var days = [Int]()
        for day in 1...31 {
            days.append(day)
        }
        var calendarPro = [Int : [String: [Int]]] ()
        for (year, months) in calendar {
            var monthDictionary = [String: [Int]]()
            for month in months {
                monthDictionary[month] = days
        }
            calendarPro[year] = monthDictionary
        }
       
        //9

        let a = Int.random(in: -10...10)
        let b = Int.random(in: -10...10)

        print("Число 1: \(a)")
        print("Число 2: \(b)")

        if a == b {
            let result = (a + b) * 3
            
            print("Сумма чисел * 3 рівна: \(result)")
            
        } else {
            let sum = a + b
            if sum % 2 == 0 {
                
                print("Сумма чисел парна і рівна: \(sum)")
            }
        }

        //10

        let phrase = "Привіт, світ! Чудово!"
        let words = phrase.components(separatedBy: " ")
        print(words.first!)
        print(words.last!.trimmingCharacters(in: .punctuationCharacters))

        //11
        
        func batteryStatus(percent: Int) -> String {
            switch percent {
            case 100:
                return "Пристрій заряджено"
            case 70...80:
                return "Необхідно зарядити пристрій протягом 6 годин"
            case 20...40:
                return "Покладіть пристрій на зарядку"
            case 0:
                return "Пристрій повністю розряджений"
            default:
                return ""
            }
        }
        let percent = 30
        let message = batteryStatus(percent: percent)
        print(message)

    }
    
}

