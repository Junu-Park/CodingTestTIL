// 좌표 정렬하기(11650)

let n = Int(readLine()!)!

typealias Point = (x: Int, y: Int)

var board = Array(repeating: Point(x: 0, y: 0), count: n)

for i in board.indices {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    board[i] = Point(x: input[0], y: input[1])
}

board.sort { fir, sec in 
    if fir.x != sec.x {
        return fir.x < sec.x
    } else {
        return fir.y < sec.y
    }
}

for p in board {
    print("\(p.x) \(p.y)")
}