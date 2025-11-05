// 치킨 쿠폰(120884)

func solution(_ chicken:Int) -> Int {
    var answer = 0
    
    var coupon = chicken
    var remain = 0
    
    while (coupon / 10) > 0 {
        answer += coupon / 10
        remain += coupon % 10
        coupon /= 10
        coupon += remain
        remain = 0
    }
    
    return answer
}