// 문자열 뒤집기(181905)

func solution(_ my_string:String, _ s:Int, _ e:Int) -> String {
    let count = my_string.count
    let arr = my_string.map { String($0) }
    var answer = ""
    var stack: [String] = []
    for i in 0..<count {
        if i >= s && i <= e {
            stack.append(arr[i])
            if i == e {
                stack.reverse()
                answer += stack.joined()
            }
        } else {
            answer += arr[i]
        }
    }

    return answer
}

func solution2(_ my_string:String, _ s:Int, _ e:Int) -> String {
    var arr = Array(my_string) // [Character]
    
    arr[s...e].reverse()
    
    return String(arr) // [Character]라서 가능
}