// 요세푸스 문제(1158)

let nk = readLine()!.split(separator: " ").map { Int($0)! }
let n = nk[0]
let k = nk[1] - 1

var people = Array(1...n).map { String($0) }
var idx = 0

var answer = [String]()
answer.reserveCapacity(n)

while !people.isEmpty {
    idx = (idx + k) % people.count

    answer.append(people[idx])
    people.remove(at: idx)

    if idx == people.count {
        idx = 0
    }
}

print("<\(answer.joined(separator: ", "))>")