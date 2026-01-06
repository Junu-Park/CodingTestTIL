// 빠른 A+B(15552)

// readLine()은 매번 시스템 콜이 발생해서 오버헤드로 인한 시간 초과 발생
// FileHandle은 시스템 콜이 딱 한 번 발생
// +) 또한, 해당 문제에서는 바이트를 직접처리해야 시간 초과 안 남

import Foundation

let bytes = [UInt8](FileHandle.standardInput.readDataToEndOfFile())
var index = 0

func readInt() -> Int {
    var num = 0
    // 공백, 줄바꿈 건너뛰기
    while index < bytes.count && (bytes[index] == 10 || bytes[index] == 32) {
        index += 1
    }
    // 숫자 읽기
    while index < bytes.count && bytes[index] >= 48 && bytes[index] <= 57 {
        num = num * 10 + Int(bytes[index] - 48)
        index += 1
    }
    return num
}

// ===== 여기서부터 문제 풀이 =====
let n = readInt()
for _ in 0..<n {
    print(readInt() + readInt())
}