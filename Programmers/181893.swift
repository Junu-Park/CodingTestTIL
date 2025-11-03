// 배열 조각하기(181893)

func solution(_ arr:[Int], _ query:[Int]) -> [Int] {
    var answer = arr
    
    for i in 0..<query.count {
        if i % 2 == 0 {
            answer = Array(answer[...query[i]])
        } else {
            answer = Array(answer[query[i]...])
        }
    }
    
    return answer
}

// 위 방법은 매 for문 반복마다 배열 복사가 일어나기 때문에, O(쿼리의 길이 * 배열의 길이)
// 아래 방법은 O(쿼리의 길이 + 최종 배열의 길이)
func solution2(_ arr:[Int], _ query:[Int]) -> [Int] {
    var front = 0
    var rear = arr.count - 1
    
    for i in 0..<query.count {
        if i % 2 == 0 {
            // query는 현재 인덱스 기준이기 때문에, 원본 인덱스 기준으로 값을 구하려면 front 값을 더하기
            rear = front + query[i]
        } else {
            front += query[i]
        }
    }
    
    return Array(arr[front...rear])
}