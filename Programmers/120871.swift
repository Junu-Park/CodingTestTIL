// 저주의 숫자 3(120871)

func solution(_ n:Int) -> Int {
    var answer = 0
    var idx = 0
    
    while idx != n {
        idx += 1
        answer += 1
        
        while check(answer) {
            answer += 1
        }
    }
    
    return answer
}

func check(_ num: Int) -> Bool {
    if num % 3 == 0 { return true }

    var tmp = num
    while tmp > 0 {
        if tmp % 10 == 3 { return true }
        tmp /= 10
    }

    return false
}