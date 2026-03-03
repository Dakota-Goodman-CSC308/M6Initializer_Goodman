import UIKit

/*
 class:
 properties
 methods
 */
/*
 1. designated initializer
 2. convinience initializer: secondary init that calls a designated iniializer, provide a default value
 3. failable initializer: can return nil when initialization fails
 4. required initializer: in a inheritance hierarchy
 */
class Person{
    var name: String //Stored property
    var age: Int //Stored property
    
    //designated initializer
    init?(name: String, age: Int) {
        guiard !name.isEmpty, age > 0 else{
            return nil
        }
        
        self.name = name
        self.age = age
        print(#function)
    }
    
    convenience init?(){
        self.init(name: "Anonymous", age: 0)
        print(#function)
    }
    
    convenience init?(name: String){
        self.init(name: name, age: 0)
        print(#function)
    }
    
    convenience init?(name: String, using age: Int){
        self.init(name: name, age: age)
        print(#function)
    }
    
    func display(){
        print("Name: \(name), Age: \(age)")
    }
}

var p1: Person = Person()
p1.display()
var p2: Person = Person(name:"John")
p2.display()
var p3: Person = Person(name:"John" age: 30)
p3.display


