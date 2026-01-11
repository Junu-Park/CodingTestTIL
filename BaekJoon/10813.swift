// 공 바꾸기(10813)

let nm = readLine()!.split(separator: " ").map { Int($0)! }

var basket = Array(0...nm[0])

for _ in 0..<nm[1] {
    let input = readLine()!.split(separator: " ").map { Int($0)! }

    basket.swapAt(input[0], input[1])
}

print(basket[1...].map { String($0) }.joined(separator: " "))