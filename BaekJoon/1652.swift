// 누울 자리를 찾아라(1652)
// 한 줄에 여러 개일 수도 있다. ex) ..X.. => 2자리

let n = Int(readLine()!)!

var board = [[Character]]()
board.reserveCapacity(n)

for _ in 0..<n {
    board.append(Array(readLine()!))
}

// 가로 체크
var widthCnt = 0
for y in 0..<n {
    var flag = true
    for x in 0..<n {
        if board[y][x] == "X" {
            flag = true
            continue 
        }

        if flag, (x + 1) < n, board[y][x + 1] == "." {
            widthCnt += 1
            flag = false
        }
    }
}

// 세로 체크
var heightCnt = 0
for x in 0..<n {
    var flag = true
    for y in 0..<n {
        if board[y][x] == "X" {
            flag = true
            continue
        }

        if flag, (y + 1) < n, board[y + 1][x] == "." {
            heightCnt += 1
            flag = false
        }
    }
}

print("\(widthCnt) \(heightCnt)")