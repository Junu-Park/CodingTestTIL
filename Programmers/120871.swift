// 저주의 숫자 3(120871)

func solution(_ n:Int) -> Int {
    var answer = 0
    var idx = 0
    
    while idx != n {
        idx += 1
        answer += 1
        
        while Set(String(answer)).contains("3") || answer % 3 == 0 {
            answer += 1
        }
    }
    
    return answer
}