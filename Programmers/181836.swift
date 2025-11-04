// 그림 확대(181836)

func solution(_ picture:[String], _ k:Int) -> [String] {
    var answer: [String] = []
    
    for line in picture {
        var result = ""
        var tmp = ""
        for char in line {
            if tmp.isEmpty || tmp.last! == char {
                tmp.append(char)
            } else {
                result.append(contentsOf: String(repeating: tmp, count: k))
                tmp.removeAll()
                tmp.append(char)
            }
        }
        result.append(contentsOf: String(repeating: tmp, count: k))
        for i in 0..<k {
            answer.append(result)
        }
    }
    
    return answer
}