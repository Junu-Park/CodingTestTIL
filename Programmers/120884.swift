// 치킨 쿠폰(120884)

func solution(_ chicken:Int) -> Int {
    var answer = 0
    
    var coupon = chicken
    while (coupon / 10) > 0 {
        answer += coupon / 10
        let remain = coupon % 10
        coupon /= 10
        coupon += remain
    }
    
    return answer
}

// 쿠폰 10장 -> 치킨 1개 + 쿠폰 1장 => 실질적으로 쿠폰 9장으로 치킨 1개
// 그래서 치킨 개수 / 9, but 교환 당시에는 쿠폰 10장으로 교환해야하기에 10장을 채우기 위한 1장을 남겨두기
// 그래서 (치킨 개수 - 1) / 9
func solution2(_ chicken:Int) -> Int {
    return (chicken - 1) / 9
}