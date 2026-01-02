// 알람 시계(2884)

let input = readLine()!.split(separator: " ").map { Int($0)! }
var time = input[0] * 60 + input[1] - 45

if time < 0 {
    time += 24 * 60
} 

print(time / 60, time % 60)