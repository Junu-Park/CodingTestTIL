// 싸이버개강총회(19583)

func convertToInt(_ str: String) -> Int {
    let tmp = str.split(separator: ":").map { Int($0)! }
    return tmp[0] * 60 + tmp[1]
}

let times = readLine()!.split(separator: " ").map { String($0) }
let s = convertToInt(times[0])
let e = convertToInt(times[1])
let q = convertToInt(times[2])

var result = [String: Bool]()
while let record = readLine() {
    let tmp = record.split(separator: " ").map { String($0) }
    let t = convertToInt(tmp[0])
    let name = tmp[1]

    if t <= s {
        result[name] = true 
    } else if (e...q).contains(t) {
        if let _ = result[name] {
            result[name] = false
        }
    }
}

print(result.filter { !$0.value }.count)