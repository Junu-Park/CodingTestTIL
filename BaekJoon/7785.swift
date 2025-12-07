// 회사에 있는 사람(7785)

let n = Int(readLine()!)!

var record = [String: Bool]()

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { String($0) }
    if input[1] == "enter" {
        record[input[0], default: false] = true
    } else {
        record.removeValue(forKey: input[0])
    }
}

for r in record.sorted { $0.key > $1.key } {
    print(r.key)
}