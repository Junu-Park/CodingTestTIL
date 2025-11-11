// 별 찍기 - 17(10992)

let n = Int(readLine()!)!

var arr = Array(repeating: Array(repeating: " ", count: n * 2 - 1), count: n)

for i in arr[center].indices {
    arr[n - 1][i] = "*"
}

let center = n - 1

for a in 0 ..< (n - 1) {
    arr[a][center - a] = "*"
    arr[a][center + a] = "*"
}

for i in arr.indices {
    // 별 뒤의 필요 없는 공백은 제거해야한다.
    print(arr[i][0 ... center + i].joined())
}