// 평균(1546)

let n = Double(readLine()!)!
let input = readLine()!.split(separator: " ").map { Double($0)! }
let m = input.max()!
let scores = input.map { $0 / m * 100 }

print(scores.reduce(0, +) / n)