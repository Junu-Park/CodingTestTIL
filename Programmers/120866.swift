// 안전지대(120866)

import Foundation

func solution(_ board:[[Int]]) -> Int {
    let size = board.count
    var safeArea = Array(repeating: Array(repeating: true, count: size), count: size)

    let dirs: [(y: Int, x: Int)] = [(-1, -1), (-1, 0), (-1, 1), (0, -1), (0, 1), (1, -1), (1, 0), (1, 1)]

    for y in 0..<size {
        for x in 0..<size {
            if board[y][x] == 0 { continue }

            safeArea[y][x] = false

            for dir in dirs {
                let ny = y + dir.y
                let nx = x + dir.x

                if ny >= size || ny < 0 || nx >= size || nx < 0 { continue }
                safeArea[ny][nx] = false
            }
        }
    }

    var answer = 0

    for safe in safeArea {
        answer += safe.filter { $0 }.count
    }

    return answer
}