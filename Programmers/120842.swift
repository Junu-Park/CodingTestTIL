// 2차원으로 만들기(120842)

func solution(_ num_list:[Int], _ n:Int) -> [[Int]] {
    var answer: [[Int]] = []

    var tmp: [Int] = []
    for num in num_list {
        tmp.append(num)
        
        if tmp.count == n {
            answer.append(tmp)
            tmp.removeAll(keepingCapacity: true)
        }
    }

    return answer
}