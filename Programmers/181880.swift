// 1로 만들기(181880)

func solution(_ num_list: [Int]) -> Int {
    var answer = 0

    for n in num_list {
        answer += recur(n)
    }

    return answer
}

func solution2(_ num_list: [Int]) -> Int {
    return num_list.map { recur($0) }.reduce(0) { $0 + $1 }
}

// 메모이제이션
func solution3(_ num_list: [Int]) -> Int {
    var memo: [Int: Int] = [:]

    var answer = 0

    // num_list를 오름차순으로 정렬해서 메모이제이션을 적극 활용하는 방법도 괜찮을지도?
    // but, 케이스의 개수가 적은 경우에는 오히려 정렬의 오버헤드가 더 클수도,,,
    for n in num_list {
        var tmp = n
        var cnt = 0
        while tmp != 1 {
            if let val = memo[tmp] {
                cnt += val
                break
            }

            tmp = (tmp % 2 == 0) ? (tmp / 2) : (tmp - 1) / 2
            cnt += 1
        }

        memo[n] = cnt
        answer += cnt
    }
    
    return answer
}

func recur(_ num: Int, _ count: Int = 0) -> Int {
    if num == 1 {
        return count
    }

    return recur((num % 2 == 0) ? (num / 2) : (num - 1) / 2, count + 1)
}
