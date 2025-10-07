// 리모컨(1107)

let n = Int(readLine()!)!
let broken = Int(readLine()!)!
var brokenSet = Set<Int>()
if broken > 0 {
    let brokenArr = readLine()!.split(separator: " ").map { Int(String($0))! }
    brokenSet = Set(brokenArr)
}

// +혹은 -만 눌렀을 때, 버튼 누르는 횟수
var answer = abs(n - 100)

func checkCH(_ ch: Int) -> Bool {
    if ch == 0 {
        return !brokenSet.contains(0)
    }

    var tmp = ch
    while tmp > 0 {
        let target = tmp % 10
        if brokenSet.contains(target) {
            return false
        }

        tmp /= 10
    }

    return true
}

for ch in 0...999999 {
    if checkCH(ch) {
        answer = min(answer, String(ch).count + abs(ch - n))
    }
}

print(answer)
