// 별 찍기 - 16(10991)

let n = Int(readLine()!)!

// 단일 문자라도 기본 타입은 String이기에, Character로 사용하고 싶다면 명시 필요
var board = Array(repeating: Array<Character>(repeating: " ", count: 2 * n - 1), count: n)

let center = n - 1

for i in board.indices {
    for j in stride(from: center - i, to: center + i + 1, by: 2) {
        board[i][j] = "*"
    }
    print(String(board[i][0...(center + i)]))
}