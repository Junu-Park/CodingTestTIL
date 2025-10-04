// 배열의 유사도(120903)

func solution(_ s1:[String], _ s2:[String]) -> Int {
    var s1Dic: [String: Void] = [:]

    for s in s1 {
        s1Dic[s] = ()
    }

    var answer = 0

    for s in s2 {
        if s1Dic[s] != nil {
            answer += 1
        }
    }

    return answer
}

func solution2(_ s1:[String], _ s2:[String]) -> Int {
    return Set(s1).intersection(Set(s2)).count
}