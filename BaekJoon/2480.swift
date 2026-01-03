// 주사위 세개(2480)

let dices = readLine()!.split(separator: " ").map { Int($0)! }
let dicesSet = Set(dices)

if dicesSet.count == 1 {
    print(10000 + dices.first! * 1000)
} else if dicesSet.count == 2 {
    var target = 0
    for dice in dicesSet {
        if dices.filter { $0 == dice }.count == 2 {
            target = dice
            break
        }
    }
    print(1000 + target * 100)
} else {
    print(dices.max()! * 100)
}