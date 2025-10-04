// 순서쌍의 개수(120836)

func solution(_ n:Int) -> Int {
    var answer = 0

    for i in 1...n {
        if n % i == 0 {
            answer += 1
        }
    }

    return answer
}