// 세로읽기(10798)
// 매직 넘버 제거?
var input = [[Character]]()
input.reserveCapacity(5)
var maxCnt = 0
for _ in 0..<5 {
    let tmp = Array(readLine()!)
    input.append(tmp)

    maxCnt = max(maxCnt, tmp.count)
}

var answer = ""
answer.reserveCapacity(5 * maxCnt)

for x in 0..<maxCnt {
    for y in 0..<5 {
        if input[y].count > x {
            answer.append(input[y][x])
        }
    }
}

print(answer)