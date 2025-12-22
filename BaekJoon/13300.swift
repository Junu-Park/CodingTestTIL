// 방 배정(13300)

let nk = readLine()!.split(separator: " ").map { Int($0)! }

let n = nk[0]
let k = nk[1]

var students = [(gender: Int, grade: Int)]()

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    students.append((input[0], input[1]))
}

students.sort { fir, sec in
    if fir.grade != sec.grade {
        return fir.grade < sec.grade
    } else {
        return fir.gender < sec.gender
    }
}

var rooms = [Int]()
var cnt = 0

for idx in students.indices {
    if cnt == 0 {
        cnt += 1
    } else {
        let prev = students[idx - 1]
        let cur = students[idx]
        if cnt == k || cur.gender != prev.gender || cur.grade != prev.grade {
            rooms.append(cnt)
            cnt = 1
        } else {
            cnt += 1
        }
    }
}

rooms.append(cnt)

print(rooms.count)