// qr code(181903)

func solution(_ q:Int, _ r:Int, _ code:String) -> String {
    let arr = Array(code)
    
    var answer: [Character] = []
    for i in 0..<arr.count {
        if i % q == r {
            answer.append(arr[i])
        }
    }
    
    return String(answer)
}