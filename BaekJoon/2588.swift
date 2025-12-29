// 곱셈(2588)

let firNum = Int(readLine()!)!
let secNum = readLine()!.map { Int(String($0))! }

let step1 = firNum * secNum[2]
let step2 = firNum * secNum[1]
let step3 = firNum * secNum[0]

print(step1)
print(step2)
print(step3)
print(step1 + (step2 * 10) + (step3 * 100))