/* 문제
주어진 문자열 배열에서 모든 문자열에 대해 공통으로 나타나는 접두사를 구하는 문제입니다.
만약 공통 접두사가 없다면 빈 문자열을 반환합니다.

* 조건
1. 1 <= strs.length <= 200
2. 0 <= strs[i].length <= 200
3. strs[i]는 영어 대소문자 알파벳으로만 구성됩니다.

* 예시
예제 1
	입력: ["flower","flow","flight"]
	출력: "fl"
	설명: 모든 문자열에 대해 "fl"이 공통 접두사입니다.

예제 2
	입력: ["dog","racecar","car"]
	출력: ""
	설명: 공통 접두사가 없으므로 빈 문자열이 반환됩니다. */

class Solution {
  String longestCommonPrefix(List<String> strs) {
    if (strs.isEmpty) return "";

    // 첫 번째 문자열을 기준으로 공통 접두사를 찾는다
    String prefix = strs[0];

    for (int i = 1; i < strs.length; i++) {
      // 각 문자열에서 접두사를 비교하여 갱신
      while (!strs[i].startsWith(prefix)) {
        // 접두사가 맞지 않으면 하나씩 접두사 길이를 줄여간다
        prefix = prefix.substring(0, prefix.length - 1);
        if (prefix.isEmpty) return ""; // 공통 접두사가 없으면 빈 문자열 반환
      }
    }

    return prefix;
  }
}
