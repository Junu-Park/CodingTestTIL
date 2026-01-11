// 과제 안 내신 분..?(5597)

var check = Set(Array(1...30))

for _ in 0..<28 {
    let input = Int(readLine()!)!

    check.remove(input)
}

for c in check.sorted() {
    print(c)
}