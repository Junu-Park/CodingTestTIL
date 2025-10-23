// 배열 만들기2(181921)

func solution(_ l:Int, _ r:Int) -> [Int] {
    var answer: [Int] = []

    for i in l...r {
        let target = Set(Array(String(i)))
        
        if target.subtracting(["0", "5"]).count == 0 {
            answer.append(i)
        }
    }
    
    if answer.count == 0 {
        answer.append(-1)
    }

    return answer
}