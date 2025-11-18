// ACM 호텔(10250)

import Foundation // String(format:) 이니셜라이저 사용을 위한 프레임워크 import

let t = Int(readLine()!)!

for _ in 0 ..< t {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let floor = input[0]
    let guest = input[2]

    let floorNum: Int
    let roomNum: Int
    if guest % floor == 0 {
        floorNum = floor
        roomNum = guest / floor
    } else {
        floorNum = guest % floor
        roomNum = (guest / floor) + 1
    }

    print("\(floorNum)\(String(format: "%.2d", roomNum))")
}
