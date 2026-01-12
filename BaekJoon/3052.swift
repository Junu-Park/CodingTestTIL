// 나머지(3052)

var answer = Set<Int>()

for _ in 0..<10 {
    let input = Int(readLine()!)!

    answer.insert(input % 42)
}

print(answer.count)