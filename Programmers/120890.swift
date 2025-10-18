// 가까운 수(120890)

func solution(_ array:[Int], _ n:Int) -> Int {
    var answer = 0
    for a in array {
        if answer == 0 {
            answer = a
        } else {
            let case1 = abs(answer - n)
            let case2 = abs(a - n)
            if case1 > case2 {
                answer = a
            } else if case1 == case2, a < answer {
                answer = a
            }
        }
    }
    
    return answer
}