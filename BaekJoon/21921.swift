// 블로그(21921)

let nx = readLine()!.split(separator: " ").map { Int($0)! }
let (n, x) = (nx[0], nx[1])
let visit = readLine()!.split(separator: " ").map { Int($0)! }

var cnt = 1
var result = visit[0..<x].reduce(0, +)
var answer = result

for i in x..<n {
    result += visit[i]
    result -= visit[i - x]

    if result == answer {
        cnt += 1
    } else if result > answer {
        cnt = 1
        answer = result
    }
}

if answer == 0 {
    print("SAD")
} else {
    print(answer)
    print(cnt)
}