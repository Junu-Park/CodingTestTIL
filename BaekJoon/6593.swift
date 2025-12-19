// 상범 빌딩(6593)

while let input = readLine() {
    if input == "0 0 0" { break }

    let size = input.split(separator: " ").map { Int($0)! }

    let f = size[0]
    let h = size[1]
    let w = size[2]

    var board = [[[Character]]]()
    board.reserveCapacity(f)

    for _ in 0 ..< f {
        var tmp = [[Character]]()
        for _ in 0 ..< h {
            tmp.append(Array(readLine()!))
        }
        board.append(tmp)
        _ = readLine()!
    }

    let dirs: [(z: Int, y: Int, x: Int)] = [(-1, 0, 0), (1, 0, 0), (0, -1, 0), (0, 1, 0), (0, 0, -1), (0, 0, 1)]

    var answer = 0

    var vis = Array(repeating: Array(repeating: Array(repeating: -1, count: w), count: h), count: f)

    outLoop: for z in 0 ..< f {
        for y in 0 ..< h {
            for x in 0 ..< w {
                if board[z][y][x] != "S" { continue }

                var queue = [(z: Int, y: Int, x: Int)]()
                var front = 0

                queue.append((z,y,x))
                vis[z][y][x] = 0

                while front < queue.count {
                    let cur = queue[front]
                    front += 1

                    for dir in dirs {
                        let nz = cur.z + dir.z
                        let ny = cur.y + dir.y
                        let nx = cur.x + dir.x

                        if nz >= f || nz < 0 || ny >= h || ny < 0 || nx >= w || nx < 0 { continue }
                        if board[nz][ny][nx] == "#" { continue }
                        if vis[nz][ny][nx] != -1 { continue }

                        if board[nz][ny][nx] == "E" {
                            answer = vis[cur.z][cur.y][cur.x] + 1
                            break outLoop
                        }

                        queue.append((nz,ny,nx))
                        vis[nz][ny][nx] = vis[cur.z][cur.y][cur.x] + 1
                    }
                }
            }
        }
    }

    if answer != 0 {
        print("Escaped in \(answer) minute(s).")
    } else {
        print("Trapped!")
    }
}
