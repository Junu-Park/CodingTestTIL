// 그림 확대(181836)

func solution(_ picture:[String], _ k:Int) -> [String] {
    var answer: [String] = []
    
    for line in picture {
        var tmp = ""
        for char in line {
            tmp += String(repeating: char, count: k)
        }

        for _ in 0..<k {
            answer.append(tmp)
        }
    }
    
    return answer
}