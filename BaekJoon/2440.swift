// 별 찍기 - 3(2440)

let n = Int(readLine()!)!

for i in stride(from: n, to: 0, by: -1) {
    print(String(repeating: "*", count: i))
}