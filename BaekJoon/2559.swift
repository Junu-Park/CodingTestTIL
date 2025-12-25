// 수열(2559)

let nk = readLine()!.split(separator: " ").map { Int($0)! }
let n = nk[0]
let k = nk[1]

var result = 0

var answer = -100 * n - 1

let input = readLine()!.split(separator: " ").map { Int($0)! }

for i in 0..<n {
    result += input[i]
    
    if i == (k - 1) {
        answer = max(answer, result)
    } else if i > (k - 1) {
        result -= input[i - k]
        answer = max(answer, result)
    }
}

print(answer)