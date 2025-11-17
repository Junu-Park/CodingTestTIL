// 바구니 뒤집기(10811)

let cnt = readLine()!.split(separator: " ").map { Int($0)! }

var result = Array(1...cnt[0])

for _ in 0..<cnt[1] {
    let input = readLine()!.split(separator: " ").map { Int($0)! }

    let front = input[0] - 1
    let rear = input[1] - 1

    result[front...rear].reverse()
}

print(result.map { String($0) }.joined(separator: " "))