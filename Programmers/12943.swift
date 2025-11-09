// 콜라츠 추측(12943)

func solution(_ num:Int) -> Int {
    var cnt = 0
    var result = Int64(num)
    
    if num == 1 {
        return 0
    }
    
    while cnt <= 500 {
        if result % 2 == 0 {
            result /= 2 
        } else {
            result *= 3
            result += 1
        }
        
        cnt += 1
        
        if result == 1 {
            break
        }
    }
    
    return result == 1 ? cnt : -1
}