// 문자열 여러 번 뒤집기(181913)

func solution(_ my_string:String, _ queries:[[Int]]) -> String {
    var answer = Array(my_string)
    
    if my_string.count == 1 {
        return my_string
    }
    
    for q in queries {
        answer[q[0]...q[1]].reverse()
    }

    return String(answer)
}