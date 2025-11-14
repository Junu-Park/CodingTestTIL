// 카드(11652)

let n = Int(readLine()!)!

var result: [Int: Int] = [:]

var maxCount = 0
var answer: Int?

for _ in 0 ..< n {
    let input = Int(readLine()!)!

    if answer == nil {
        answer = input
    }

    result[input, default: 0] += 1
    let value = result[input]!

    if maxCount < value {
        maxCount = value
        answer = input
    } else if maxCount == value {
        answer = min(input, answer!)
    }
}

print(answer!)