// 좌표 정렬하기(11650)

let n = Int(readLine()!)!

typealias Point = (x: Int, y: Int)

var board = Array<Point>()
board.reserveCapacity(n)

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    board.append(Point(x: input[0], y: input[1]))
}

// 튜플 비교 연산자 활용(6개 요소까지 지원): 왼쪽 요소부터 차례대로 비교하면서 다른 요소에서 결정
board.sort { $0 < $1 } // sort(by: <)

for p in board {
    print("\(p.x) \(p.y)")
}