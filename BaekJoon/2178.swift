// 미로 탐색(2178)

let size = readLine()!.split(separator: " ").map { Int($0)! }
let h = size[0]
let w = size[1]

var board = [[Int]]()
board.reserveCapacity(h)

for _ in 0 ..< h {
    board.append(readLine()!.map { Int(String($0))! })
}

let dirs: [(y: Int, x: Int)] = [(-1, 0), (1, 0), (0, -1), (0, 1)]

var vis = Array(repeating: Array(repeating: -1, count: w), count: h)

var queue = [(y: Int, x: Int)]()
var front = 0

queue.append((0, 0))
vis[0][0] = 1

while queue.count >= front + 1 {
    let cur = queue[front]
    front += 1

    for dir in dirs {
        let ny = cur.y + dir.y
        let nx = cur.x + dir.x

        if ny >= h || ny < 0 || nx >= w || nx < 0 { continue }
        if board[ny][nx] == 0 { continue }
        if vis[ny][nx] != -1 { continue }

        queue.append((ny, nx))
        vis[ny][nx] = vis[cur.y][cur.x] + 1
    }
}

print(vis[h - 1][w - 1])