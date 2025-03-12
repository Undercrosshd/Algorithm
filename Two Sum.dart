/* 문제
input : 정수 배열 nums와 정수 target이 주어질 때, 

두 수를 더해서 / target이 되는 

배열 내 두 숫자의 인덱스를 반환하세요.

같은 요소를 두 번 사용할 수 없습니다.
답은 반드시 하나만 존재한다고 가정합니다.

Follow-up: Can you come up with an algorithm that 
is less than O(n^2) time complexity?

* 조건
2 <= nums.length <= 10^4
-10^9 <= nums[i] <= 10^9
-10^9 <= target <= 10^9
정답은 하나만 존재하며, 중복된 입력이 없습니다.

* 예시
예제 1
	입력: nums = [2, 7, 11, 15], target = 9
	출력: [0, 1]
	설명: nums[0] + nums[1] = 2 + 7 = 9 이므로 [0, 1] 반환

예제 2:
	입력: nums = [3, 2, 4], target = 6
	출력: [1, 2]
	설명: nums[1] + nums[2] = 2 + 4 = 6 이므로 [1, 2] 반환
	
예제 3:
	입력: nums = [3, 3], target = 6
	출력: [0, 1]
	설명: nums[0] + nums[1] = 3 + 3 = 6 이므로 [0, 1] 반환
   */

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
