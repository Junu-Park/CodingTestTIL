// ACM 호텔(10250)

import Foundation // String(format:) 이니셜라이저 사용을 위한 프레임워크 import

let t = Int(readLine()!)!

for _ in 0 ..< t {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let floor = input[0]
    let order = input[2]

    let floorNum = order % floor == 0 ? floor : order % floor
    let roomNum = order % floor == 0 ? order / floor : (order / floor) + 1

    print("\(floorNum)\(String(format: "%.2d", roomNum))")
}
