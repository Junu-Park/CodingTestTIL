// 수열(2559)

let nk = readLine()!.split(separator: " ").map { Int($0)! }
let (n, k) = (nk[0], nk[1])
let input = readLine()!.split(separator: " ").map { Int($0)! }

var result = input[0..<k].reduce(0, +)

var answer = result

for i in k..<n {
    result += input[i]
    result -= input[i - k]
    answer = max(answer, result)
}

print(answer)