// 시리얼 번호(1431)

let n = Int(readLine()!)!

var serial: [(code: String, cnt: Int, sum: Int)] = []

for _ in 0..<n {
    let code = readLine()!
    let cnt = code.count
    let sum = code.reduce(0) { $0 + ($1.isNumber ? Int(String($1))! : 0) }
    serial.append((code, cnt, sum))
}

serial.sort { fir, sec in
    if fir.cnt != sec.cnt {
        return fir.cnt < sec.cnt
    } else {
        if fir.sum != sec.sum {
            return fir.sum < sec.sum
        } else {
            return fir.code < sec.code
        }
    }
}

for ser in serial {
    print(ser.code)
}