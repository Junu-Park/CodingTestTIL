// 오븐 시계(2525)

let input = readLine()!.split(separator: " ").map { Int($0)! }
let need = Int(readLine()!)!
var time = input[0] * 60 + input[1] + need

if time >= 24 * 60 {
    time -= 24 * 60
}

print(time / 60, time % 60)