// 코드 처리하기(181932)

func solution(_ code:String) -> String {
    var answer = ""
    var mode = false
    for idx, char in code.enumerated() {
        if char == "1" {
            mode.toggle()
            continue
        }
        
        if mode, idx % 2 != 0 {
            answer += char
        } else if !mode, idx % 2 == 0 {
            answer += char
        }
    }
    
    return answer.isEmpty ? "EMPTY" : answer
}