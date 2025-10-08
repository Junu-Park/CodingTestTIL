// 도영이가 만든 맛있는 음식(2961)

let n = Int(readLine()!)!
var arr: [(Int, Int)] = []

for _ in 0 ..< n {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    arr.append((input[0], input[1]))
}

var answer = Int.max

func recur(_ idx: Int = 0, _ s: Int = 1, _ b: Int = 0, _ count: Int = 0) {
    if idx == n {
        if count != 0 {
            answer = min(answer, abs(s - b))
        }
        
        return
    }

    // 재료 선택하거나, 안 하거나
    recur(idx + 1, s * arr[idx].0, b + arr[idx].1, count + 1)
    recur(idx + 1, s, b, count)
}

recur()

print(answer)