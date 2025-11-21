// 듣보잡(1764)

let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0]
let m = input[1]

var notHear: Set<String> = []
var notSee: Set<String> = []

for i in 0..<(n + m) {
    let name = readLine()!

    if i < n {
        notHear.insert(name)
    } else {
        notSee.insert(name)
    }
}
let answer = notHear.intersection(notSee)
print(answer.count)
for name in answer.sorted() {
    print(name)
}