// 콜라츠 추측(12943)

func solution(_ num: Int) -> Int {
    if num == 1 {
        return 0
    }

    var cnt = 0
    // 오버플로우 방지를 위한 Int64 타입 캐스팅
    var result = Int64(num)

    while cnt < 500 {
        if result % 2 == 0 {
            result /= 2
        } else {
            result *= 3
            result += 1
        }

        cnt += 1

        if result == 1 { return cnt }
    }

    return -1
}