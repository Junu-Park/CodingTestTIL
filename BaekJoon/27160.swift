// 할리갈리(27160)

let n = Int(readLine()!)!

var cards = [String: Int]()

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { String($0) }
    cards[input[0], default: 0] += Int(input[1])!
}

print(cards.values.contains(5) ? "YES" : "NO")