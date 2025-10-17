// 1로 만들기(181880)

func solution(_ num_list: [Int]) -> Int {
    var answer = 0

    for n in num_list {
        answer += recur(n)
    }

    return answer
}

func recur(_ num: Int, _ count: Int = 0) -> Int {
    if num == 1 {
        return count
    }

    return recur((num % 2 == 0) ? (num / 2) : (num - 1) / 2, count + 1)
}