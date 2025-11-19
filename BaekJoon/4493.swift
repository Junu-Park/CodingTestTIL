// 가위 바위 보?(4493)

let t = Int(readLine()!)!

for _ in 0..<t {
    let n = Int(readLine()!)!

    var result = [0, 0]

    for _ in 0..<n {
        let input = readLine()!.split(separator: " ")
        let left = input[0]
        let right = input[1]

        if left == right { continue }

        if left == "R" {
            result[right == "S" ? 0 : 1] += 1
        } else if left == "P" {
            result[right == "R" ? 0 : 1] += 1
        } else if left == "S" {
            result[right == "P" ? 0 : 1] += 1
        }
    }

    if result[0] == result[1] {
        print("TIE")
    } else {
        print("Player \(result[0] > result[1] ? "1" : "2")")
    }
}