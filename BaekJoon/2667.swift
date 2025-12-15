// 단지번호붙이기(2667)

let n = Int(readLine()!)!

var map = [[Character]]()
map.reserveCapacity(n)

for _ in 0..<n {
    map.append(Array(readLine()!))
}

var complex = [Int]()

var vis = Array(repeating: Array(repeating: false, count: n), count: n)

let dirs: [(y: Int, x: Int)] = [(-1, 0), (1, 0), (0, -1), (0, 1)]

for y in 0..<n {
    for x in 0..<n {
        if map[y][x] == "0" { continue }
        if vis[y][x] { continue }

        var queue: [(y: Int, x: Int)] = []
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

                if map[ny][nx] == "0" { continue }
                if vis[ny][nx] { continue }

                queue.append((ny, nx))
                vis[ny][nx] = true
            }
        }

        complex.append(front)
    }
}

print(complex.count)
for com in complex.sorted() {
    print(com)
}