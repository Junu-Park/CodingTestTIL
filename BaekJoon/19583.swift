// 싸이버개강총회(19583)

let times = readLine()!.split(separator: " ").map { String($0) }
let s = times[0].split(separator: ":").map { Int($0)! }
let sInt = s[0] * 60 + s[1]
let e = times[1].split(separator: ":").map { Int($0)! }
let eInt = e[0] * 60 + e[1]
let q = times[2].split(separator: ":").map { Int($0)! }
let qInt = q[0] * 60 + q[1]

var result = [String: Bool]()
while let record = readLine() {
    let tmp = record.split(separator: " ").map { String($0) }
    let time = tmp[0].split(separator: ":").map { Int($0)! }
    let timeInt = time[0] * 60 + time[1]
    let name = tmp[1]

    if timeInt <= sInt {
        result[name] = true 
    } else if (eInt...qInt).contains(timeInt) {
        if let _ = result[name] {
            result[name] = false
        }
    }
}

print(result.filter { !$0.value }.count)