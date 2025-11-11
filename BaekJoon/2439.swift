// 별 찍기 - 2(2439)

let n = Int(readLine()!)!

var board = Array(repeating: Array<Character>(repeating: " ", count: n), count: n)

for i in board.indices {
    for j in stride(from: n - 1, to: n - i - 2, by: -1) {
        board[i][j] = "*"
    }
    print(String(board[i]))
}