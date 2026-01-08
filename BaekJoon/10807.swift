// 개수 세기(10807)

let _ = readLine()!
let input = readLine()!.split(separator: " ").map { String($0) }
let target = readLine()!

var dict = [String: Int]()

for i in input {
    dict[i, default: 0] += 1
}

print(dict[target, default: 0])