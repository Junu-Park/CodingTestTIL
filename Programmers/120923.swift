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

func solution2(_ num: Int, _ total: Int) -> [Int] {
    let aver = total / num // 평균값 및 중간값
    let offset = (num - 1) / 2 // 중간값에서 처음 혹은 끝 항까지의 거리
    // 등차수열 첫항
    // 공차가 1이라서 가능한 공식
    let firstValue = aver - offset
    return Array(firstValue..<firstValue + num)
}