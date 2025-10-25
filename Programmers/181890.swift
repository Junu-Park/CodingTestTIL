// 왼쪽 오른쪽(181890)
// 문제 설명이 잘못됨
// "l"이나 "r"이 없다면 빈 리스트를 return합니다. => "l"과 "r"이 없다면이 빈 리스트를 return합니다. 로 바뀌어야함

func solution(_ str_list:[String]) -> [String] {
    guard let lidx = str_list.firstIndex(of: "l"), let ridx = str_list.firstIndex(of: "r") else {
        if let lidx = str_list.firstIndex(of: "l") {
            return Array(str_list[..<lidx])
        } else if let ridx = str_list.firstIndex(of: "r"), ridx < str_list.count {
            return Array(str_list[(ridx + 1)...])
        } else {
            return []
        }
    }
    
    if lidx < ridx {
        return Array(str_list[..<lidx])
    } else if ridx < str_list.count {
        return Array(str_list[(ridx + 1)...])
    } else {
        return []
    }
}