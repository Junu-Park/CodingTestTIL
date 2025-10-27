// 특이한 정렬(120880)

func solution(_ numlist:[Int], _ n:Int) -> [Int] {
    return numlist.sorted { first, second in
        let firstDis = abs(first - n)
        let secondDis = abs(second - n)
        
        if firstDis == secondDis {
            return first > second
        } else {
            return firstDis < secondDis
        }
    }
}