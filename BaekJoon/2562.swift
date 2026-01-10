// 최댓값(2562)

var answer = 0
var idx = 0
for i in 1...9 {
    let input = Int(readLine()!)!
    if answer < input {
        answer = input
        idx = i
    }
}

print("\(answer)\n\(idx)")