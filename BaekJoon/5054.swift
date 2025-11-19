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

// 다른 풀이
// 주차 위치가 어디든 이동거리는 동일 => 양 끝 왕복한 거리
let t = Int(readLine()!)!

for _ in 0..<t {
    let n = Int(readLine()!)!
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    
    let minPos = input.min()!
    let maxPos = input.max()!
    
    print(2 * (maxPos - minPos))
}