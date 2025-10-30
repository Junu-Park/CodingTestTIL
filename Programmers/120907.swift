// OX퀴즈(120907)

func solution(_ quiz:[String]) -> [String] {
    var answer: [String] = []

    for q in quiz {
        let expression = q.split(separator: " ").map { String($0) }
        let fir = Int(expression[0])!
        let oper = expression[1]
        let sec = Int(expression[2])!
        let ans = Int(expression.last!)!

        var result = 0

        if oper == "+" {
            result = fir + sec
        } else {
            result = fir - sec
        }

        answer.append(result == ans ? "O" : "X")
    }
    
    return answer
}