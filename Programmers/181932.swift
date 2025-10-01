// 코드 처리하기(181932)

func solution(_ code:String) -> String {
    let arr = code.map { String($0) }
    var answer = ""
    var mode = false
    for i in arr.indices {
        if arr[i] == "1" {
            mode.toggle()
            continue
        }
        
        if mode, i % 2 != 0 {
            answer += arr[i]
        } else if !mode, i % 2 == 0 {
            answer += arr[i]
        }
    }
    
    return answer.isEmpty ? "EMPTY" : answer
}