// 수열과 구간 쿼리1(181883)

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    var answer = arr
    let count = arr.count
    
    for q in queries {
        for i in 0..<count {
            if i >= q[0] && i <= q[1]  {
                answer[i] += 1
            }
        }
    }
    
    return answer
}