//Task 1

var b: Float = 5
var h: Float = 9

func surfaceCalculation(){
    let surface = b * h / 2
    print (surface)
}

surfaceCalculation()

//Task 2

struct Car{
    
    var Make: String
    var Model: String
    var HorsePower: Float
    var Torque: Float
    var DateOfManufacturing: String
    
}

let car1 = Car(Make: "Nissan", Model: "Silvia S15", HorsePower: 246.748064, Torque: 334.8, DateOfManufacturing: "2002")

let car2 = Car(Make: "Lamborghini", Model: "Aventador", HorsePower: 683.921266, Torque: 508, DateOfManufacturing: "2011")

func printInfo(aCar: Car){
    print(aCar.Make + "," + aCar.Model + "," + "\(aCar.HorsePower)" + "," + "\(aCar.Torque)" + aCar.DateOfManufacturing)
}

printInfo(aCar: car1)

//Task 3

func betterCar(aCar: Car, aCarTwo: Car) -> Car{
    if(aCar.HorsePower > aCarTwo.HorsePower){
        return aCar
    }
    else{
        return aCarTwo
    }
}
//Call the function
betterCar(aCar: car1, aCarTwo: car2)

//Print the better car
print(betterCar(aCar: car1, aCarTwo: car2))
