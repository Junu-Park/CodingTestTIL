// 알파벳 거리(5218)

let n = Int(readLine()!)!

for _ in 0..<n {
    let input = readLine()!.split(separator: " ")
    var result: [Int] = []
    result.reserveCapacity(input[0].count)
    for (aChar, bChar) in zip(input[0], input[1]) {
        let aVal = Int(aChar.asciiValue!) // aChar.unicodeScalars.first!.value
        let bVal = Int(bChar.asciiValue!) // bChar.unicodeScalars.first!.value
        if bVal >= aVal {
            result.append(bVal - aVal)
        } else {
            result.append((bVal + 26) - aVal)
        }
    }

    print("Distances: \(result.map{ String($0) }.joined(separator: " "))")
}