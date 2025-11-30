// 수 정렬하기 2(2751)

let n = Int(readLine()!)!

var arr = [Int]()
arr.reserveCapacity(n)

for _ in 0..<n {
    arr.append(Int(readLine()!)!)
}

arr.sort()

for a in arr {
    print(a)
}