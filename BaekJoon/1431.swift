// 시리얼 번호(1431)

let n = Int(readLine()!)!

var serial: [String] = []

for _ in 0..<n {
    serial.append(readLine()!)
}

serial.sort { fir, sec in
    if fir.count != sec.count {
        return fir.count < sec.count
    } else {
        let firSum = fir.filter { $0.isNumber }.reduce(0) { $0 + Int(String($1))! }
        let secSum = sec.filter { $0.isNumber }.reduce(0) { $0 + Int(String($1))! }
        if firSum != secSum {
            return firSum < secSum
        } else {
            return fir < sec
        }
    }
}

for ser in serial {
    print(ser)
}