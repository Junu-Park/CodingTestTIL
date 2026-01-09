// X보다 작은 수(10871)

let nx = readLine()!.split(separator: " ").map { Int($0)! }

let input = readLine()!.split(separator: " ").map { Int($0)! }.filter { $0 < nx[1] }

print(input.map { String($0) }.joined(separator: " "))