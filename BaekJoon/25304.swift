// 영수증(25304)

var total = Int(readLine()!)!
let n = Int(readLine()!)!

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }.reduce(1, *)
    total -= input 
}

print(total == 0 ? "Yes" : "No")