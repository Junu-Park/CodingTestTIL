// 진료 순서 정하기(120835)

func solution(_ emergency:[Int]) -> [Int] {
    let eCount = emergency.count
    var answer = Array(repeating: 0, count: eCount)

    var curOrder = 1
    while curOrder <= eCount {
        var curIdx = -1
        for i in 0..<eCount {
            if answer[i] != 0 { continue }
            if curIdx == -1 {
                curIdx = i
            } else {
                if emergency[curIdx] < emergency[i] {
                    curIdx = i
                }
            }
        }
        
        answer[curIdx] = curOrder
        curOrder += 1
    }

    return answer
}