// 별 찍기 - 8(2445)

let n = Int(readLine()!)!

var arr = Array(repeating: " ", count: n * 2)

for i in 0..<n {
    arr[i] = "*"
    arr[n * 2 - 1 - i] = "*"
    print(arr.joined())
}

for i in 0..<(n - 1) {
    arr[n - 1 - i] = " "
    arr[n + i] = " "
    print(arr.joined())
}