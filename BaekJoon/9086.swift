// 문자열(9086)

let n = Int(readLine()!)!

for _ in 0..<n {
    let input = readLine()!

    print(input.prefix(1) + input.suffix(1))
}