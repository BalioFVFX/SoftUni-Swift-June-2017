var fuelings: [(distance: Double, amount: Double, date: String)] = []

fuelings.append((distance: 100, amount: 9, date: "19.06.2017"))
fuelings.append((distance: 290, amount: 19, date: "20.06.2017"))

//Get average fuel consumption:
func getLp100k(distance: Double, amount: Double, date: String) -> (String, Double)  {
    let average = distance / amount
    print ("Average liters per 100k: ", average)
    return (date, average)
}

//Storing all the average results:
var averageResults: [(date: String, averageFuelConsumption: Double)] = []

averageResults.append(getLp100k(distance: fuelings[0].distance, amount: fuelings[0].amount, date: fuelings[0].date))
averageResults.append(getLp100k(distance: fuelings[1].distance, amount: fuelings[1].amount, date: fuelings[1].date))


//2
//Add new distance, fuel, date and calculate average fuel consumption between the current and the last fueling:
func addFuelingAndCalculateAVG(currentDistance: Double, currentAmount: Double, currentDate: String) -> ((distance: Double, amount: Double, date: String)){
    let currentAverageConsumption = getLp100k(distance: currentDistance, amount: currentAmount, date: currentDate)
    let lastFueling = fuelings.endIndex-1
    let lastAverageConsumption = getLp100k(distance: fuelings[lastFueling].distance, amount: fuelings[lastFueling].amount, date:fuelings[lastFueling].date)
    print("Current average fuel consumption: ", currentAverageConsumption)
    print("Last average fuel consumption: ", lastAverageConsumption)
    return (currentDistance, currentAmount, currentDate)
    
    
}
//Creating new fuelings and storing it:
fuelings.append(addFuelingAndCalculateAVG(currentDistance: 120, currentAmount: 7, currentDate: "23.06.2017"))


//3

//Converting Litter/100km to MPG:
func lp100kToMPG(distance:Double) -> Double{
    let result = distance * 454609 / 1609344
    print(distance, "Liters", "Equals to: ", result, "MPG")
    return result
}

let litter100KmToMPG = lp100kToMPG(distance: 20)

//4

//Calculating average price per kilometer
func calculateAveragePricePerKilometer(liters: Double) -> Double{
    let price:Double = 1.99
    let returnPrice = liters * price
    print("Average price per kilometer: ", returnPrice)
    return returnPrice
}

var price = calculateAveragePricePerKilometer(liters: 2.44)

print(price)


//5

func printFuelConsumptionAndDateOfFueling(consumption: Double, date: String){
    print("Fuel Consumption: ", consumption, " Date Of Fueling: ", date)
}

printFuelConsumptionAndDateOfFueling(consumption: averageResults[0].averageFuelConsumption, date:averageResults[0].date)
printFuelConsumptionAndDateOfFueling(consumption: averageResults[1].averageFuelConsumption, date:averageResults[1].date)

