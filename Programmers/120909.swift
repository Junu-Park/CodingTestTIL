// 제곱수 판별하기(120909)

func solution(_ n: Int) -> Int {
    let sqrtRoot = Int(sqrt(Double(n)))
    
    return sqrtRoot * sqrtRoot == n ? 1 : 2
}