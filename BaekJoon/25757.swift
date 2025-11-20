// 임스와 함께하는 미니게임(25757)

let input = readLine()!.split(separator: " ")
let n = Int(input[0])!
let requiredNum = ["Y": 2, "F": 3, "O": 4][input[1]]!

var played: [String: Void] = [:]

var cnt = 1
var answer = 0

for _ in 0..<n {
    let player = readLine()!

    if played[player] != nil { continue }

    played[player] = ()
    cnt += 1

    if requiredNum == cnt {
        answer += 1
        cnt = 1
    }
}

print(answer)

// 다른 풀이

let input = readLine()!.split(separator: " ")
let n = Int(input[0])!
let requiredNum = ["Y": 1, "F": 2, "O": 3][input[1]]!

var uniquePlayer: Set<String> = []

for _ in 0..<n {
    uniquePlayer.insert(readLine()!)
}

print(uniquePlayer.count / requiredNum)