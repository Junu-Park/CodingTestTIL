// A+B - 8(11022)

let n = Int(readLine()!)!

for i in 1...n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    print("Case #\(i): \(input[0]) + \(input[1]) = \(input.reduce(0) { $0 + $1 })")
}