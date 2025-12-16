// 그림(1926)

let size = readLine()!.split(separator: " ").map { Int($0)! }
let w = size[1]
let h = size[0]

var board = [[Int]]()
board.reserveCapacity(h)
for _ in 0..<h {
    board.append(readLine()!.split(separator: " ").map { Int($0)! })
}

let dirs: [(y: Int, x: Int)] = [(-1, 0), (1, 0), (0, -1), (0, 1)]

var vis = Array(repeating: Array(repeating: false, count: w), count: h)

var picture = [Int]()

for y in 0..<h {
    for x in 0..<w {
        if board[y][x] == 0 { continue }
        if vis[y][x] { continue }

        var queue = [(y: Int, x: Int)]()
        var front = 0

        queue.append((y,x))
        vis[y][x] = true

        while queue.count >= front + 1 {
            let cur = queue[front]
            front += 1

            for dir in dirs {
                let ny = cur.y + dir.y
                let nx = cur.x + dir.x

                if ny >= h || ny < 0 || nx >= w || nx < 0 { continue }
                if board[ny][nx] == 0 { continue }
                if vis[ny][nx] { continue }

                queue.append((ny, nx))
                vis[ny][nx] = true
            }
        }

        picture.append(front)
    }
}

print(picture.count)
print(picture.max() ?? 0)