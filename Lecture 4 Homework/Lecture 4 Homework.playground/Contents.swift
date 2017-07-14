enum WeightClassificatoin{
    case UnderWeight
    case Normal
    case OverWeight
    case Obseity
}
class Person{
    var name: String
    var age: Int
    var heightCM: Int
    var weightKG: Float
    var personalIDNumber: String
    
    func calculateBodyMassIndex() -> WeightClassificatoin{
        let heightInMeters: Float = 175 / 100
        let bmi = weightKG / Float(heightInMeters * heightInMeters)
       
        if(bmi < 18.5){
            return .UnderWeight
        }
        if(bmi >= 18.5 && bmi < 24.9){
            return .Normal
        }
        if(bmi >= 25 && bmi <= 29.9){
            return .OverWeight
        }
        else{
            return .Obseity
        }
        
      
    }
    init(name: String, age: Int, heightCM: Int, weightKG: Float, personalIDNumber: String){
        self.name = name
        self.age = age
        self.heightCM = heightCM
        self.weightKG = weightKG
        self.personalIDNumber = personalIDNumber
    }
}




class Student: Person{
    var marks = [Int]()
    var averageMark: Double = 0
    //Average Marks Function
    func averageSucess() -> Double{
        var sum = 0
        let numberOfMarks = marks.count
        for mark in marks{
            sum += mark
        }
        if(marks.isEmpty){
            print("0")
        }
        //Converting to Float
        let convertedSum = Double(sum)
        let convertedNumberOfMarks = Double(numberOfMarks)
        averageMark = convertedSum / convertedNumberOfMarks
        print("Average mark for", name, "is:", averageMark)
        return averageMark
    }
    
    //Compare students function inside the class, go down for outside the class function
    func compareStudentWith(otherStudent: Student) -> Student{
        if(averageMark > otherStudent.averageMark){
            print(name, "has better average mark")
            return self
        }
        
        else if (otherStudent.averageMark > averageMark){
            print(otherStudent.name, "has better average mark")
            return otherStudent
        }
        //If they have same average sucess
        print(name, "has better average mark")
        return self
        
    }
    
    init(name: String, age: Int, heightCM: Int, weightKG: Float, personalIDNumber: String, marks: [Int]){
        self.marks = marks
        super.init(name: name, age: age, heightCM: heightCM, weightKG: weightKG, personalIDNumber: personalIDNumber)
    }
    //Assuming that the student will not have marks, so there's no point adding marks when creating a student

    convenience override init(name: String, age: Int, heightCM: Int, weightKG: Float, personalIDNumber: String){
        
        self.init(name: name, age: age, heightCM: heightCM, weightKG: weightKG, personalIDNumber: personalIDNumber, marks: [0])
    }
    
    
}

//Creating student compare function outside the class:

func compareStudents(student1: Student, student2: Student) -> Student
{
    if(student1.averageMark > student2.averageMark){
        print(student1.name, "has better average mark")
        return student1
    }
        
    else if (student2.averageMark > student1.averageMark){
        print(student2.name, "has better average mark")
        return student2
    }
    //If they have same average sucess
    print(student1, "has better average mark")
    return student1

}

var person = Person(name: "John", age: 19, heightCM: 175, weightKG: 59, personalIDNumber: "0001")

var person2 = Person(name: "Alexander", age: 29, heightCM: 190, weightKG: 94, personalIDNumber: "0002")


print(person.calculateBodyMassIndex())
print(person2.calculateBodyMassIndex())

    //Student with marks
var student = Student(name: "First Student", age: 19, heightCM: 192, weightKG: 77, personalIDNumber: "0003", marks: [4,3,2,5])
    //Student with marks
var student2 = Student(name: "Second Student", age: 29, heightCM: 193, weightKG: 59, personalIDNumber: "0004", marks: [5,5,5,5])

    ///The student without marks
var student3 = Student(name: "Third Student", age: 21, heightCM: 174, weightKG: 57, personalIDNumber: "0101")

student.averageSucess()
student2.averageSucess()
//The student that has init without mark
student3.averageSucess()

//Compare students functions:
//Inside the class function  with one parameter:
student.compareStudentWith(otherStudent: student2)

//Outside the class function with two parameters:
compareStudents(student1: student, student2: student2)

