// 주사위 세개(2480)

let dices = readLine()!.split(separator: " ").map { Int($0)! }
var dicesDict = [Int:Int]()
for dice in dices {
    dicesDict[dice, default: 0] += 1
}

if dicesDict.count == 1 {
    print(10000 + dices.first! * 1000)
} else if dicesDict.count == 2 {
    print(1000 + dicesDict.first { $0.value == 2 }!.key * 100)
} else {
    print(dices.max()! * 100)
}