// 수열과 구간 쿼리1(181883)

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    var answer = arr
    
    for q in queries {
        for i in q[0]...q[1] {
            answer[i] += 1
        }
    }
    
    return answer
}