// 더하기 사이클(1110)

let n = readLine()!

let num = Int(n)!

var arr = Array(n)
if num < 10 {
    arr.insert("0", at: 0)
}

var tmp = -1
var answer = 0
while num != tmp {
    if tmp == -1 {
        let ten = arr.last!
        let one = String(arr.map { Int(String($0))! }.reduce(0, +)).last!
        tmp = Int("\(ten)\(one)")!
    } else {
        let str = String(tmp)
        let ten = str.last!
        let one = String(str.map { Int(String($0))! }.reduce(0, +)).last!
        tmp = Int("\(ten)\(one)")!
    }
    answer += 1
}

print(answer)