// 7의 개수(120912)

func solution(_ array:[Int]) -> Int {
    var answer = 0
    for a in array {
        var tmp = a
        while tmp > 0 {
            if tmp % 10 == 7 {
                answer += 1
            }

            tmp /= 10
        }
    }
    return answer
}