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

var count = 0

var answer = 0

for _ in 0 ..< 5 {
    let input = readLine()!.split(separator: " ").map { Int($0)! }

    if answer != 0 { continue }

    for i in input {
        
        count += 1
        var result = 0

        if let pos = position[i] {
            vis[pos.y][pos.x] = true
        }

        // 가로 확인
        for y in 0 ..< 5 {
            if vis[y].allSatisfy { $0 } {
                result += 1
            }
        }

        // 세로 확인
        for x in 0 ..< 5 {
            if (0...4).allSatisfy { vis[$0][x]} {
                result += 1
            }
        }

        // 좌측대각선 확인
        if (0...4).allSatisfy { vis[$0][$0] } {
            result += 1
        }

        // 우측대각선 확인
        if (0...4).allSatisfy { vis[$0][4 - $0] } {
            result += 1
        }

        if result >= 3 {
            answer = count
            break
        }
    }
}

print(answer)