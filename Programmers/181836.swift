// 그림 확대(181836)

func solution(_ picture:[String], _ k:Int) -> [String] {
    var answer: [String] = []
    // 반복적으로 발생 가능한 메모리 재할당을 방지
    answer.reserveCapacity(picture.count * k)
    for line in picture {
        var tmp = ""
        // 반복적으로 발생 가능한 메모리 재할당을 방지
        tmp.reserveCapacity(line.count * k)
        for char in line {
            tmp += String(repeating: char, count: k)
        }

        for _ in 0..<k {
            answer.append(tmp)
        }
    }
    
    return answer
}