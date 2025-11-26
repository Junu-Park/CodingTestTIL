// 빙고(2578)

var board: [[Int]] = []
board.reserveCapacity(5)

for _ in 0 ..< 5 {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }

    board.append(input)
}

var position: [Int: (y: Int, x: Int)] = [:]
for y in 0..<5 {
    for x in 0..<5 {
        position[board[y][x]] = (y, x)
    }
}

var vis = Array(repeating: Array(repeating: false, count: 5), count: 5)

var colBingo = Array(repeating: false, count: 5)
var rowBingo = Array(repeating: false, count: 5)
var diaBingo1 = false
var diaBingo2 = false

var callCount = 0
var bingoCount = 0
var answer = 0

for _ in 0 ..< 5 {
    let input = readLine()!.split(separator: " ").map { Int($0)! }

    if answer != 0 { continue }

    for i in input {
        
        callCount += 1

        guard let pos = position[i] else { continue }
        vis[pos.y][pos.x] = true
        
        var newBingo = 0

        // 가로 확인
        if !rowBingo[pos.y] && vis[pos.y].allSatisfy { $0 } {
            newBingo += 1
            rowBingo[pos.y] = true
        }

        // 세로 확인
        if !colBingo[pos.x] && (0...4).allSatisfy { vis[$0][pos.x] } {
            newBingo += 1
            colBingo[pos.x] = true
        }

        // 좌측대각선 확인
        if pos.x == pos.y && !diaBingo1 && (0...4).allSatisfy { vis[$0][$0] } {
            newBingo += 1
            diaBingo1 = true
        }

        // 우측대각선 확인
        if pos.x + pos.y == 4 && !diaBingo2 && (0...4).allSatisfy { vis[$0][4 - $0] } {
            newBingo += 1
            diaBingo2 = true
        }

        bingoCount += newBingo

        if bingoCount >= 3 {
            answer = callCount
            break
        }
    }
}

print(answer)