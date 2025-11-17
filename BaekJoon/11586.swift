// 지영 공주님의 마법 거울(11586)

let n = Int(readLine()!)!

var mirror = [[Character]]()

mirror.reserveCapacity(n)

for _ in 0..<n {
    let input = Array(readLine()!)

    mirror.append(input)
}

let m = Int(readLine()!)!

if m == 2 {
    for i in 0..<n {
        mirror[i].reverse()
    }
} else if m == 3 {
    mirror.reverse()
}

for mir in mirror {
    print(String(mir))
}