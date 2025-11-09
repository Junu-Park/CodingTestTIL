// 이상한 문자 만들기(12930)

func solution(_ s:String) -> String {
    var arr = s.map { String($0) }
    var idx = 0
    
    for i in arr.indices {
        if arr[i] == " " {
            idx = 0
            continue
        }
        if idx % 2 == 0 {
            arr[i] = arr[i].uppercased()
        } else {
            arr[i] = arr[i].lowercased()
        }
        idx += 1
    }
    
    return arr.joined()
}