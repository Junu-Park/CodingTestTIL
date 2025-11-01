// 다항식 더하기(120863)

func solution(_ polynomial:String) -> String {
    let arr = polynomial.components(separatedBy: " + ")
    var varResult = 0
    var constResult = 0
    for a in arr {
        if a.hasSuffix("x") {
            let tmp = a.dropLast()
            varResult += tmp.isEmpty ? 1 : Int(tmp)!
        } else {
            constResult += Int(a)!
        }
    }

    var answer = ""

    if varResult > 0 {
        answer += varResult == 1 ? "x" : "\(varResult)x"
    }
    
    if constResult > 0 {
        answer += answer == "" ? "\(constResult)" : " + \(constResult)"
    }

    return answer
}