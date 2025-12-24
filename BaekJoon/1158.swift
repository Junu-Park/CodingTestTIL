// 요세푸스 문제(1158)

let nk = readLine()!.split(separator: " ").map { Int($0)! }
let n = nk[0]
// 인덱스로 활용하기 위해, - 1
let k = nk[1] - 1

var people = Array(1...n).map { String($0) }
var idx = 0

var answer = [String]()
answer.reserveCapacity(n)

while !people.isEmpty {
    // (현재 인덱스 + 타겟 인덱스까지의 거리) % 현재 배열의 크기
    idx = (idx + k) % people.count

    answer.append(people[idx])
    people.remove(at: idx)
}

print("<\(answer.joined(separator: ", "))>")