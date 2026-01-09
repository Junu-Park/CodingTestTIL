// 최소, 최대(10818)

let _ = readLine()!
let input = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
print(input.first!, input.last!)