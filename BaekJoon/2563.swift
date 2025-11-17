// 색종이(2563)

let n = Int(readLine()!)!
var answer = 0
var board = Array(repeating: Array(repeating: false, count: 100 + 1), count: 100 + 1)
for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let x = input[0]
    let y = input[1]

    for i in y..<(y + 10) {
        for j in x..<(x + 10) {
            if board[i][j] { continue }

            board[i][j] = true
            answer += 1
        }
    }
}

print(answer)