// 색종이(2563)

let n = Int(readLine()!)!

var board = Array(repeating: Array(repeating: false, count: 100 + 1), count: 100 + 1)
for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let x = input[0]
    let y = input[1]

    for i in y..<(y + 10) {
        for j in x..<(x + 10) {
            if board[i][j] { continue }

            board[i][j] = true
        }
    }
}

var answer = 0
for i in 1...100 {
    for j in 1...100 {
        if board[i][j] {
            answer += 1
        }
    }
}
print(answer)