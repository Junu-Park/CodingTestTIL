// 수 정렬하기 2(2751)

let n = Int(readLine()!)!

var arr = [Int]()
arr.reserveCapacity(n)

for _ in 0..<n {
    arr.append(Int(readLine()!)!)
}

arr.sort()

// 출력 방식1: 메모리 사용 감소(매 출력 시, 버퍼 제거), 시간 증가(매 출력마다, 시스템 콜)
for a in arr {
    print(a)
}
// 출력 방식2: 시간 감소(한 번의 시스템 콜), 메모리 사용 증가(버퍼를 모아서 한 번에 전송)
print(arr.map { String($0) }.joined(separator: "\n"))