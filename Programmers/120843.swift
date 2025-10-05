// 공 던지기(120843)

func solution(_ numbers:[Int], _ k:Int) -> Int {
    var idx = 0 + (k - 1) * 2

    let count = numbers.count

    if idx >= count {
        idx = idx % count
    }

    return numbers[idx]
}