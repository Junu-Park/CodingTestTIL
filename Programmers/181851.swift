// 전국 대회 선발 고사(181851)

func solution(_ rank: [Int], _ attendance: [Bool]) -> Int {
    let count = rank.count

    var result: [Int] = []

    var curRank = 1
    while result.count < 3 {
        for i in 0 ..< count {
            if rank[i] == curRank {
                if attendance[i] {
                    result.append(i)
                } else {
                    break
                }
            }
        }
        curRank += 1
    }

    return result[0] * 10000 + result[1] * 100 + result[2]
}
