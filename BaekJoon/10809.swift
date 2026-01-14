// 알파벳 찾기(10809)

let n = readLine()!
var check = Dictionary(uniqueKeysWithValues: "abcdefghijklmnopqrstuvwxyz".map { ($0, -1)})

for (offset, char) in n.enumerated() {
    if let tmp = check[char], tmp == -1 {
        check[char]! = offset
    }
}

print(check.sorted { $0.key < $1.key }.map { $0.value }.map { String($0) }.joined(separator: " "))