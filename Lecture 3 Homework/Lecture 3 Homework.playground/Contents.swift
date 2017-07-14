enum CardsType{
    case tierce //20
    case quarte //50
    case quint //100
    case hundredNFifty
    case twoHundred
    case belote //20
    case seven
    case eight
    case nine
    case ten
    case J
    case Q
    case K
    case A
}

enum GameType{
    case allTrumps
    case noTrumps
}

let teamACards: [CardsType] = [.A, .ten, .K, .Q, .belote]
let teamBCards: [CardsType] = [.J, .J, .J, .J, .twoHundred]
let teamCCards: [CardsType] = [.J, .J, .J, .J, .twoHundred]
let teamDCards: [CardsType] = [.nine, .nine, .nine, .nine, .hundredNFifty]
let teamECards: [CardsType] = [.ten, .ten, .ten, .ten]
let teamFCards: [CardsType] = [.ten, .ten, .ten, .ten]


func getPoints(teamCards: [CardsType], gameType: GameType) ->(points: Int, aditionalPoints: Int){
    var points = 0
    var additionalPoints = 0
    
    for card in teamCards{
        let tupple = (gameType, card)
        switch tupple{
        case(.allTrumps, .seven):
            points += 0
        case(.noTrumps, .seven):
            points += 0
        case(.allTrumps, .eight):
            points += 0
        case(.noTrumps, .eight):
            points += 0
        case(.allTrumps, .nine):
            points += 14
        case(.noTrumps, .nine):
            points += 0
        case(.allTrumps, .ten):
            points += 10
        case(.noTrumps, .ten):
            points += 10
        case(.allTrumps, .J):
            points += 20
        case(.noTrumps, .J):
            points += 2
        case(.allTrumps, .Q):
            points += 3
        case(.noTrumps, .Q):
            points += 3
        case(.allTrumps, .K):
            points += 4
        case(.noTrumps, .K):
            points += 4
        case(.allTrumps, .A):
            points += 11
        case(.noTrumps, .A):
            points += 11
        case(.allTrumps, .belote):
            points += 20
            additionalPoints += 20
        case(_, .tierce):
            points += 20
            additionalPoints += 20
        case (_, .quarte):
            points += 50
            additionalPoints += 50
        case(_, .quint):
            points += 100
            additionalPoints += 100
        case(_, .hundredNFifty):
            points += 150
            additionalPoints += 150
        case (_, .twoHundred):
            points += 200
            additionalPoints += 200
        default:
            break
            
        }
    }
    
    
    return (points, additionalPoints)
}

getPoints(teamCards: teamACards, gameType: .allTrumps)

var team1: (Int, Int) = getPoints(teamCards: teamACards, gameType: .allTrumps)
var team2: (Int, Int) = getPoints(teamCards: teamBCards, gameType: .allTrumps)

var team3:(Int, Int) = getPoints(teamCards: teamCCards, gameType: .allTrumps)
var team4:(Int, Int) = getPoints(teamCards: teamDCards, gameType: .allTrumps)

var team5:(Int, Int) = getPoints(teamCards: teamECards, gameType: .allTrumps)
var team6:(Int, Int) = getPoints(teamCards: teamFCards, gameType: .allTrumps)

func getWinner(team1: inout (Int, Int), team2: inout(Int, Int)){
    
    switch true {
    case team1.1 > team2.1:
        team1.0 += team1.1
        print("1")
        print("Winner: Team 1")
    case team2.1 > team1.1:
        team2.0 += team2.1
        print("2")
        print("Winner: Team 2")
    case team1.0 == team2.0:
        print("0")
        print("Draw")
    default:
        break
    }
}

print (getWinner(team1: &team1, team2: &team2))

print (getWinner(team1: &team3, team2: &team4))

print (getWinner(team1: &team5, team2: &team6))



