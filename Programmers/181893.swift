// 배열 조각하기(181893)

func solution(_ arr:[Int], _ query:[Int]) -> [Int] {
    var answer = arr
    
    for i in 0..<query.count {
        if i % 2 == 0 {
            answer = Array(answer[...query[i]])
        } else {
            answer = Array(answer[query[i]...])
        }
    }
    
    return answer
}