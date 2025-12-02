// 나이순 정렬(10814)

let n = Int(readLine()!)!

// 이름이 같은 회원이 존재할 수 있기에 딕셔너리 사용하면 안됨
var member: [(year: Int, name: String)] = []
for order in 1...n {
    let input = readLine()!.split(separator: " ")

    member.append((Int(input[0])!, String(input[1]))) 
}

// 배열에 넣을 때부터 가입순서대로 원소가 정렬되어있기 때문에, 나이가 같은 경우에는 새롭게 정렬을 하지 않으면 된다.
for mem in member.sorted { $0.year < $1.year } {
    print("\(mem.year) \(mem.name)")
}