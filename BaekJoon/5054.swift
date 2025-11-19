// 주차의 신(5054)

let t = Int(readLine()!)!

for _ in 0..<t {
    let n = Int(readLine()!)!
    let input = readLine()!.split(separator: " ").map { Int($0)! }.sorted()

    var answer = 0
    for park in input {
        var cur = park
        var cnt = 0
        for visit in input {
            if park == visit { continue }
            cnt += abs(cur - visit)
            cur = visit
        }

        // 다시 차로 돌아가기
        cnt += abs(park - cur)
        
        if answer == 0 {
            answer = cnt
        } else {
            answer = min(answer, cnt)
        }
    }

    print(answer)
}