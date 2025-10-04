// 모스부호(1)(120838)

func solution(_ letter:String) -> String {
    let morse = [
    ".-":"a","-...":"b","-.-.":"c","-..":"d",".":"e","..-.":"f",
    "--.":"g","....":"h","..":"i",".---":"j","-.-":"k",".-..":"l",
    "--":"m","-.":"n","---":"o",".--.":"p","--.-":"q",".-.":"r",
    "...":"s","-":"t","..-":"u","...-":"v",".--":"w","-..-":"x",
    "-.--":"y","--..":"z"
    ]

    var answer = ""

    let letterArr = letter.split(separator: " ").map { String($0) }

    for l in letterArr {
        answer += morse[l]!
    }

    return answer
}