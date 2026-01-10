// 공 넣기(10810)

let nm = readLine()!.split(separator: " ").map { Int($0)! }

var arr = Array(repeating: 0, count: nm[0])

for _ in 0..<nm[1] {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let ball = input[2]
    for i in (input[0] - 1)..<input[1] {
        arr[i] = ball
    }
}

print(arr.map { String($0) }.joined(separator: " "))