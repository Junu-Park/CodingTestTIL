// 알파벳 거리(5218)

let n = Int(readLine()!)!

for _ in 0..<n {
    let input = readLine()!.split(separator: " ")
    let count = input[0].count
    var a = Array(input[0])
    a.reserveCapacity(count)
    var b = Array(input[1])
    b.reserveCapacity(count)
    var result: [Int] = []
    result.reserveCapacity(count)
    for i in 0..<count {
        let aChar = Int(a[i].asciiValue!)
        let bChar = Int(b[i].asciiValue!)
        if bChar >= aChar {
            result.append(bChar - aChar)
        } else {
            result.append((bChar + 26) - aChar)
        }
    }

    print("Distances: \(result.map{ String($0) }.joined(separator: " "))")
}