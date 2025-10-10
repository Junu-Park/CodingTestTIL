// 주사위 게임2(181930)

// Int, Double 타입 혼용으로 인한 런타임 오류 조심
func solution(_ a:Int, _ b:Int, _ c:Int) -> Int {
    let numSet: Set<Int> = [a,b,c]
    
    var answer = Double(a + b + c)

    if numSet.count == 1 {
        answer *= pow(Double(a),3) + pow(Double(b),3) + pow(Double(c),3)
    }

    if numSet.count <= 2 {
        answer *= pow(Double(a),2) + pow(Double(b),2) + pow(Double(c),2)
    }

    return Int(answer)
}