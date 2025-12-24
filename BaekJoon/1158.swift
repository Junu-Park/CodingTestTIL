// 요세푸스 문제(1158)

let nk = readLine()!.split(separator: " ").map { Int($0)! }
let n = nk[0]
let k = nk[1] - 1

var people = Array(1...n).map { String($0) }
var front = 0
var rear = n - 1
var tmpK = k

var answer = [String]()
answer.reserveCapacity(n)

while answer.count < n {
    if front == tmpK {
        answer.append(people[front])
        front += 1
        people = Array(people[front...])
        front = 0
        rear = n - 1
    } else {
        people.append(people[front])
        front += 1
        rear += 1
    }
}

print("<\(answer.joined(separator: ", "))>")