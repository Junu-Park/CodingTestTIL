// 적록색약(10026)

let n = Int(readLine()!)!

var board = [[Character]]()
board.reserveCapacity(n)

for _ in 0..<n {
    board.append(Array(readLine()!))
}

// 상, 하, 좌, 우
let dirs: [(y:Int, x: Int)] = [(-1, 0), (1, 0), (0, -1), (0, 1)]

var vis = Array(repeating: Array(repeating: false, count: n), count: n)

var answer1 = 0

for y in 0..<n {
    for x in 0..<n {
        if vis[y][x] { continue }

        answer1 += 1

        var queue: [(y:Int, x: Int)] = []
        var front = 0

        queue.append((y, x))
        vis[y][x] = true

        while queue.count >= front + 1 {
            let cur = queue[front]
            front += 1

            for dir in dirs {
                let ny = cur.y + dir.y 
                let nx = cur.x + dir.x
                if ny >= n || ny < 0 || nx >= n || nx < 0 { continue }
                if vis[ny][nx] { continue }
                if board[cur.y][cur.x] != board[ny][nx] { continue }

                queue.append((ny, nx))
                vis[ny][nx] = true
            }
        }
    }
}

vis = Array(repeating: Array(repeating: false, count: n), count: n)

var answer2 = 0

for y in 0..<n {
    for x in 0..<n {
        if vis[y][x] { continue }

        answer2 += 1

        var queue: [(y:Int, x: Int)] = []
        var front = 0

        queue.append((y, x))
        vis[y][x] = true

        while queue.count >= front + 1 {
            let cur = queue[front]
            front += 1

            for dir in dirs {
                let ny = cur.y + dir.y 
                let nx = cur.x + dir.x
                if ny >= n || ny < 0 || nx >= n || nx < 0 { continue }
                if vis[ny][nx] { continue }
                if board[cur.y][cur.x] == "R" || board[cur.y][cur.x] == "G" {
                    if board[ny][nx] == "B" { continue }
                } else {
                    if board[ny][nx] != "B" { continue }
                }

                queue.append((ny, nx))
                vis[ny][nx] = true
            }
        }
    }
}

print("\(answer1) \(answer2)")