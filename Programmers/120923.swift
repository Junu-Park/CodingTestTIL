// 연속된 수의 합(120923)

func solution(_ num: Int, _ total: Int) -> [Int] {
    let centerValue = total / num
    var centerIdx = num / 2
    var answer = Array(repeating: centerValue, count: num)
    
    if num % 2 == 0 {
        centerIdx -= 1
    }
    
    for i in 0 ..< num {
        answer[i] += i - centerIdx
    }
    
    return answer
}
