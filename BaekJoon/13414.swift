// 수강신청(13414)

let input = readLine()!.split(separator: " ").map { Int($0)! }
let available = input[0]
let total = input[1]

var dict: [String: Int] = [:]
dict.reserveCapacity(total)

for i in 0..<total {
    dict[readLine()!] = i
}

for d in dict.sorted { $0.value < $1.value }.prefix(available) {
    print(d.key)
}