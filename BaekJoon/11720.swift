// 숫자의 합(11720)

let _ = readLine()!
let input = readLine()!.map { Int(String($0))! }

print(input.reduce(0) { $0 + $1 })