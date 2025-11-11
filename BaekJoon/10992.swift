// 별 찍기 - 17(10992)

let n = Int(readLine()!)!

var arr = Array(repeating: Array(repeating: " ", count: n * 2 - 1), count: n)

let center = n - 1

// 마지막 줄 별 채우기
for i in arr[center].indices {
    arr[n - 1][i] = "*"
}

// 나머지 줄 별 채우기
for i in 0 ..< (n - 1) {
    arr[i][center - i] = "*"
    arr[i][center + i] = "*"
}

for i in arr.indices {
    // 라인에서 마지막 별 뒤의 필요 없는 공백은 제거하고 출력해야한다.
    print(arr[i][0 ... center + i].joined())
}