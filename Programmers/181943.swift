// 문자열 겹쳐쓰기(181943)

func solution(_ my_string:String, _ overwrite_string:String, _ s:Int) -> String {
    let my = Array(my_string)
    
    return String(my[0..<s]) + overwrite_string + String(my[(s + overwrite_string.count)...])
}