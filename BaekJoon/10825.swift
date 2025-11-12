// 국영수(10825)

let n = Int(readLine()!)!

typealias Score = (name: String, kor: Int, eng: Int, math: Int)

var board = Array<Score>()
board.reserveCapacity(n)

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { String($0) }

    board.append(Score(name: input[0], kor: Int(input[1])!, eng: Int(input[2])!, math: Int(input[3])! ))
}

board.sort { fir, sec in
    if fir.kor != sec.kor {
        return fir.kor > sec.kor
    } else if fir.eng != sec.eng {
        return fir.eng < sec.eng
    } else if fir.math != sec.math {
        return fir.math > sec.math
    } else {
        return fir.name < sec.name
    }
}

for n in board.map { $0.name } {
    print(n)
}