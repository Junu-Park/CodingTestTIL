// 영어가 싫어요(120894)

func solution(_ numbers:String) -> Int64 {
    let dict = ["zero": "0", "one": "1", "two": "2", "three": "3", "four": "4", "five": "5", "six": "6", "seven": "7", "eight": "8", "nine": "9"]
    var stack = ""
    var answer = ""
    for n in numbers {
        stack.append(n)
        if let num = dict[String(stack)] {
            answer += num
            stack = ""
        }
    }

    return Int64(answer)!
}