// 정수를 나선형으로 배치하기(181832)

import Foundation

func solution(_ n:Int) -> [[Int]] {
    var answer = Array(repeating: Array(repeating: 0, count: n), count: n)

    // 오른쪽, 아래, 왼쪽, 위
    let dir: [(y: Int, x: Int)] = [(0, 1), (1, 0), (0, -1), (-1, 0)]
    var dirIdx = 0

    var y = 0
    var x = 0

    for num in 1...(n * n) {
        answer[y][x] = num

        let ny = y + dir[dirIdx].y
        let nx = x + dir[dirIdx].x

        // 순서 주의
        if ny >= n || nx >= n || ny < 0 || nx < 0 || answer[ny][nx] != 0 {
            dirIdx = (dirIdx + 1) % 4
        }

        y += dir[dirIdx].y
        x += dir[dirIdx].x
    }

    return answer
}