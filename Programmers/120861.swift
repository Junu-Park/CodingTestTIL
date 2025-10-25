// 캐릭터의 좌표(120861)

func solution(_ keyinput:[String], _ board:[Int]) -> [Int] {
    var dict = ["up": [0, 1], "down": [0, -1], "left": [-1, 0], "right": [1, 0]]
    var xy = [0,0]
    
    let xMax = board[0] / 2
    let yMax = board[1] / 2
    
    for input in keyinput {
        let key = dict[input]!

        let newX = xy[0] + key[0]
        let newY = xy[1] + key[1]

        if abs(newX) <= xMax {
            xy[0] = newX
        }

        if abs(newY) <= yMax {
            xy[1] = newY
        }
    }
    
    return xy
}