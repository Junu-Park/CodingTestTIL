// 연속된 수의 합(120923)

func solution(_ num: Int, _ total: Int) -> [Int] {
    let aver = total / num
    let centerIdx = num % 2 == 0 ? (num / 2) - 1 : num / 2
    var answer = Array(repeating: aver, count: num)
    
    for i in answer.indices {
        answer[i] += i - centerIdx
    }
    
    return answer
}
