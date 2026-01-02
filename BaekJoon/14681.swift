// 사분면 고르기(14681)

let posX = Int(readLine()!)! > 0
let posY = Int(readLine()!)! > 0

if posX && posY {
    print(1)
} else if !posX && posY {
    print(2)
} else if !posX && !posY {
    print(3)
} else {
    print(4)
}