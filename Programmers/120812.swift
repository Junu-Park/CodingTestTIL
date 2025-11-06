// 최빈값 구하기(120812)

func solution(_ array:[Int]) -> Int {
    var result: [Int: Int] = [:]
    for a in array {
        result[a, default: 0] += 1
    }
    
    let max = result.values.max()!
    let filtered = result.filter { $0.value == max }.keys
    return filtered.count > 1 ? -1 : filtered.first!
}