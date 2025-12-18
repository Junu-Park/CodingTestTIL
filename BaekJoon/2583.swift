// 영역 구하기(2583)

let input = readLine()!.split(separator: " ").map { Int($0)! }
let h = input[0]
let w = input[1]
let n = input[2]

var board = Array(repeating: Array(repeating: 0, count: w), count: h)

for _ in 0..<n {
    let point = readLine()!.split(separator: " ").map { Int($0)! }
    let x1 = point[0]
    let y1 = point[1]
    let x2 = point[2]
    let y2 = point[3]

    // 좌표 개념이기 때문에, 끝 좌표를 포함하면 Index out of range 오류 발생
    for y in y1..<y2 {
        for x in x1..<x2 {
            board[y][x] = 1
        }
    }
}

let dirs: [(y: Int, x: Int)] = [(-1, 0), (1, 0), (0, -1), (0, 1)]

var vis = Array(repeating: Array(repeating: false, count: w), count: h)

var result = [Int]()

for y in 0..<h {
    for x in 0..<w {
        if board[y][x] == 1 { continue }
        if vis[y][x] { continue }

        var queue = [(y: Int, x: Int)]()
        var front = 0

        queue.append((y, x))
        vis[y][x] = true

        while front < queue.count {
            let cur = queue[front]
            front += 1

            for dir in dirs {
                let ny = cur.y + dir.y
                let nx = cur.x + dir.x

                if ny >= h || ny < 0 || nx >= w || nx < 0 { continue }
                if board[ny][nx] == 1 { continue }
                if vis[ny][nx] { continue }

                queue.append((ny, nx))
                vis[ny][nx] = true
            }
        }

        result.append(queue.count)
    }
}

print(result.count)
result.sort()
print(result.map { String($0) }.joined(separator: " "))