//
//  ex2.swift
//  exercices
//

import Foundation

extension String{
    
    func toDate(format: String) -> Date{ // format = argumat et le String cest le type
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        let date = dateFormatter.date(from: self)
        return date!
        
    }
}

extension Date{
    func toString (format:String) -> String{
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        let date = dateFormatter.string(from: self)
        return date
    }
    
    func getYearDifference(date:Date)-> Int{
        return Calendar.current.dateComponents([.year], from: date, to: Date()).year!

        
}
    
}

struct Email {
    var email: String?
    
    init(email:String) {
        self.email = email
        
    }
    func isValid()-> Bool{
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: self.email)
        
    }
}

class Existance {
    var birthdate: Date
    var age: Int
    
    init(date:Date?){
        self.birthdate = date!
        let currentDate = NSDate()
        self.age = (date?.getYearDifference(date:currentDate as Date))!
}
    func willProbablyDieSoon() -> Bool {
        if self.age > 100{
            return true
        }else{
            return false
        }
}
}

class Person: Existence {
    enum Gender {
        case Male
        case Female
        case Other
    }
    var gender: Gender
    var firstname: String
    var lastname: String
    var email: Email
    
    init(firstname: String, lastname: String, gender: Gender, email: String, birthdate: (date: String, format: String)){
        self.firstname = firstname
        self.lastname = lastname
        self.gender = gender
        self.email = Email(email: email)
        super.init(date: birthdate)

    }
    init(firstname: String, lastname: String, gender: Gender, email: String, birthdate: Date){
        self.firstname = firstname
        self.lastname = lastname
        self.gender = gender
        self.email = Email(email: email)
        super.init(date: birthdate.date.toDate(format: birthdate.format))
    }

    func show() {
        
        print("firstname : \(self.firstname) ")
        print("lastname : \(self.lastname) ")
        
        switch self.gender {
        case .Male:
            print("gender : Male")
        case .Female:
            print("gender : Male")
        case .Other:
            print("gender : Other")
        }

        print("email valid : \(self.email.isValid())")
        print("email : \(self.email)")
        print("birthdate : \(self.birthdate)")
        print("age : \(self.age)")
        print("will die soon : \(self.willProbablyDieSoon())")

    }

}
