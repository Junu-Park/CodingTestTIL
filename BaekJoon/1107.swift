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

for ch in 0...999999 {
    // 버튼을 눌러서 해당 채널로 이동 가능한지 체크
    let chStr = String(ch)
    let chSet = Set(chStr.map { Int(String($0))! })
    if chSet.intersection(brokenSet).count == 0 {
        answer = min(answer, chStr.count + abs(ch - n))
    }
}

print(answer)
