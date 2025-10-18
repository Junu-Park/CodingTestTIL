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

func solution2(_ rank: [Int], _ attendance: [Bool]) -> Int {
    let result = rank.enumerated().filter { attendance[$0.offset] }.sorted { $0.element < $1.element }.prefix(3)

    return result[0].offset * 10000 + result[1].offset * 100 + result[2].offset
}

// 힙 방식 활용
func solution3(_ rank: [Int], _ attendance: [Bool]) -> Int {
    var result: [(index: Int, rank: Int)] = []

    for (idx, rk) in rank.enumerated() {
        if !attendance[idx] { continue }
        
        if result.count < 3 {
            result.append((idx, rk))
            if result.count == 3 {
                result.sort { $0.rank < $1.rank }
            }
        } else if rk < result[2].rank {
            result[2] = (idx, rk)

            if rk < result[1].rank {
                result.swapAt(1, 2)

                if rk < result[0].rank {
                    result.swapAt(0, 1)
                }
            }
        }
    }
    
    return result[0].index * 10000 + result[1].index * 100 + result[2].index
}