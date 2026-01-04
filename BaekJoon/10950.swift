// A+B - 3(10950)

let n = Int(readLine()!)!

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }.reduce(0, +)
    
    print(input)
}