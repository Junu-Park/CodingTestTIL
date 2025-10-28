// 유한소수 판별하기(120878)

func solution(_ a:Int, _ b:Int) -> Int {
    // 정수는 유한소수로 분류
    if a % b == 0 { return 1 }

    // 주어진 수 기약분수로 바꾸기
    // 최대공약수(GCD) 구하기 => 유클리드 호제법
    let gcdValue = a > b ? gcd(b, a) : gcd(a, b)

    let newB = b / gcdValue

    var result: Set<Int> = []
    for i in 1...newB {
        if newB % i == 0 {
            var tmp: Set<Int> = []
            for j in 1...i {
                if i % j == 0 {
                    tmp.insert(j)
                }
            }
            if tmp.subtracting([1, i]).count == 0 {
                result.insert(i)
            }
        }
    }

    return result.subtracting([1, 2, 5]).count == 0 ? 1 : 2
}

// 유클리드 호제법: 큰 수를 작은 수로 나누기 -> 나누었던 수를 나머지로 나누기 -> 0이 될 때까지 반복  => 나머지가 0이 나올 때 몫이 최대공약수
func gcd(_ target: Int, _ share: Int) -> Int {
    return share == 0 ? target : gcd(share, target % share)
}