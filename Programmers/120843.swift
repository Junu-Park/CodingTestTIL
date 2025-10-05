// 공 던지기(120843)

func solution(_ numbers:[Int], _ k:Int) -> Int {
    let idx = 0 + (k - 1) * 2
    
    return numbers[idx % numbers.count]
}