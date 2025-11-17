// 킹, 퀸, 룩, 비숍, 나이트, 폰(3003)

let white = [1,1,2,2,2,8]

var black = [String]()
black.reserveCapacity(6)

let input = readLine()!.split(separator: " ").map { Int($0)! }

for i in 0..<6 {
    black.append(String(white[i] - input[i]))
}

print(black.joined(separator: " "))

// 간결한 풀이
let input = readLine()!.split(separator: " ").map { Int($0)! }

let white = [1,1,2,2,2,8]

print(zip(white, input).map { String($0 - $1) }.joined(separator: " "))