// 랭킹전 대기열(20006)

let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0]
let roomMax = input[1]

var rooms = [[(lv: Int, name: String)]]()

for _ in 0..<n {
    let input = readLine()!.split(separator: " ")
    let lv = Int(input[0])!
    let name = String(input[1])

    var flag = false

    for idx in rooms.indices {
        if rooms[idx].count < roomMax {
            let room = rooms[idx].first!
            if ((room.lv - 10)...(room.lv + 10)).contains(lv) {
                rooms[idx].append((lv, name))
                flag = true
                break
            }
        }
    }

    if !flag {
        rooms.append([(lv, name)])
    }
}

for room in rooms {
    if room.count == roomMax {
        print("Started!")
    } else {
        print("Waiting!")
    }

    for player in room.sorted { $0.name < $1.name } {
        print(player.lv, player.name)
    }
}