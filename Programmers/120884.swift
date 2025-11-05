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