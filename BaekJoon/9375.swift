// 패션왕 신해빈(9375)

let caseN = Int(readLine()!)!

for _ in 0..<caseN {
    let n = Int(readLine()!)!

    // 의상 이름의 중복은 없기 때문에, 종류별로 몇 별 있는지만 체크하면 됨
    var closet = [String: Int]()
    for _ in 0..<n {
        let input = readLine()!.split(separator: " ")
        closet[String(input[1]), default: 0] += 1
    }
    
    // 종류별로 입지 않는 경우도 있으니 종류별로 +1, 알몸인 경우는 없으니 - 1
    let answer = closet.reduce(1) { $0 * ($1.value + 1) } - 1

    print(answer)
}