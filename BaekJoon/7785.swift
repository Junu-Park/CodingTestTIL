// 회사에 있는 사람(7785)

let n = Int(readLine()!)!

var record = Set<String>()

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { String($0) }
    let name = input[0]
    if input[1] == "enter" {
        record.insert(name)
    } else {
        record.remove(name)
    }
}

for r in record.sorted(by: >) {
    print(r)
}