// 등수 매기기(120882)

func solution(_ score:[[Int]]) -> [Int] {
    // 딱 나눠떨어지지 않는 수의 경우를 고려해야하기에 실수 부분 필요
    // ex. 1점 + 3점 vs 2점 + 3점 => 정수로 평균을 구하면 둘 다 2점이지만,
    // 실수로 평균을 구하면 2점 vs 2.5점
    let aver: [Double] = score.map { (Double($0[0]) + Double($0[1]))/2 }
    let count = aver.count

    var answer = Array(repeating: 0, count: count)

    var rank = 1
    while rank <= count {
        var idx = -1
        var arr: [Int] = []
        for i in 0..<count {
            if answer[i] != 0 { continue }

            if idx == -1 {
                idx = i
                arr = [idx]
                continue
            }

            if aver[idx] < aver[i] {
                idx = i
                arr = [idx]
                continue
            }
            
            if aver[idx] == aver[i] {
                arr.append(i)
            }
        }

        for i in arr {
            answer[i] = rank
        }
        
        rank += arr.count
    }

    return answer
}

// 케이스의 크기가 더 크다면 아래 풀이가 시간복잡도가 더 빠름
func solution2(_ score:[[Int]]) -> [Int] {
    let aver = score.map { (Double($0[0]) + Double($0[1])) / 2 }

    let sorted = aver.enumerated().sorted { $0.element > $1.element }

    var answer = Array(repeating: 0, count: aver.count)

    var rank = 1
    for i in sorted.indices {
        let (offset, element) = sorted[i]

        if i != 0, element == sorted[i - 1].element {
            answer[offset] = answer[sorted[i - 1].offset]
        } else {
            answer[offset] = rank
        }

        rank += 1
    }

    return answer
}