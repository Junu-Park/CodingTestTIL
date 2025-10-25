// 캐릭터의 좌표(120861)

func solution(_ keyinput:[String], _ board:[Int]) -> [Int] {
    var dict = ["up": [0, 1], "down": [0, -1], "left": [-1, 0], "right": [1, 0]]
    var xy = [0,0]
    
    let xMax = board[0] / 2
    let yMax = board[1] / 2
    
    for input in keyinput {
        let key = dict[input]!
        if abs(xy[0]) < xMax || (key[0] > 0 && xy[0] <= -xMax) || (key[0] < 0 && xy[0] >= xMax) {
            xy[0] += key[0]
        }
        
        if abs(xy[1]) < yMax || (key[1] > 0 && xy[1] <= -yMax) || (key[1] < 0 && xy[1] >= yMax) {
            xy[1] += key[1]
        }
    }
    
    return xy
}