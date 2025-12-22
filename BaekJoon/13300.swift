// 방 배정(13300)

let nk = readLine()!.split(separator: " ").map { Int($0)! }
let n = nk[0]
let k = nk[1]

var students = [String: Int]()

for _ in 0..<n {
    students[readLine()!, default: 0] += 1
}

var answer = 0
for val in students.values {
    answer += val / k
    answer += val % k == 0 ? 0 : 1
}

print(answer)