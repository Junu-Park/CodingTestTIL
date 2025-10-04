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

// 제곱근 활용
func solution2(_ n:Int) -> Int {
    var answer = 0

    let squareRoot = Int(sqrt(Double(n)))

    for i in 1...squareRoot {
        if n % i == 0 {
            answer += (i * i == n) ? 1 : 2
        }
    }

    return answer
}