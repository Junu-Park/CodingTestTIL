// 옹알이 (1)(120956)

func solution(_ babbling:[String]) -> Int {
    let compare = ["aya": (), "ye": (), "woo": (), "ma": ()]
    
    var stack: [Character] = []
    stack.reserveCapacity(15)
    
    var answer = 0
    for word in babbling {
        var flag = true
        for char in word {
            stack.append(char)
            
            if stack.count > 3 {
                flag = false
                break 
            }

            if compare[String(stack)] != nil {
                stack.removeAll()
            }
        }
        if !stack.isEmpty {
            flag = false
            stack.removeAll()
        }
        
        if flag {
            answer += 1
        }
    }

    return answer
}