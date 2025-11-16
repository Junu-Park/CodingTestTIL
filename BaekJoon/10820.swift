// 문자열 분석(10820)

while let input = readLine() {
    var lower = 0
    var upper = 0
    var number = 0
    var whitespace = 0
    
    for char in input {
        if char.isNumber {
            number += 1
        } else if char == " " {
            whitespace += 1
        } else if char.isLowercase {
            lower += 1
        } else {
            upper += 1
        }
    }
    print("\(lower) \(upper) \(number) \(whitespace)")
}