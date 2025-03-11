List<int> twoSum(List<int> nums, int target) {
  // Step 1: 숫자와 인덱스를 저장할 해시맵 생성
  Map<int, int> map = {};

  // Step 2: 배열을 순회하면서 필요한 값을 맵에서 찾음
  for (int i = 0; i < nums.length; i++) {
    int complement = target - nums[i]; // 필요한 값 계산

    // Step 3: 필요한 값이 맵에 존재하면 정답 반환
    if (map.containsKey(complement)) {
      return [map[complement]!, i];
    }

    // Step 4: 현재 숫자와 인덱스를 맵에 추가
    map[nums[i]] = i;
  }

  // Step 5: 문제 조건에 의해 정답이 항상 존재하므로 여기에는 도달하지 않음
  throw ArgumentError("No solution found");
}
