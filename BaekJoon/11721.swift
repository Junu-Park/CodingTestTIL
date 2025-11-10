// 열 개씩 끊어 출력하기(11721)

let input = readLine()!
var stack: [Character] = []
stack.reserveCapacity(10)
for i in input {
    stack.append(i)
    if stack.count == 10 {
        print(String(stack))
        stack.removeAll(keepingCapacity: true)
    }
}

if !stack.isEmpty {
    print(String(stack))
}