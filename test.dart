main() {
  assert(check('2020-09-07', '2020-09-07', [1]));
  assert(check('2020-09-07', '2020-09-09', [1, 3]));
  assert(check('2020-09-07', '2020-09-09', [1, 2, 3]));
  assert(check('2020-09-07', '2020-09-13', [1, 2, 3, 4, 5, 6, 7]));
  assert(check('2020-09-08', '2020-09-13', [2, 3, 4, 5, 6, 7]));
  assert(check('2020-09-08', '2020-09-14', [1, 2, 3, 4, 5, 6, 7]));
  assert(check('2020-09-08', '2020-09-14', [1, 2, 3, 4, 5]));
  assert(check('2020-09-08', '2020-10-30', [1, 2, 3, 4, 5]));

  // assert(check('2020-09-07', '2020-09-09', [1, 2]) == false);
  // assert(check('2020-09-07', '2020-09-07', [2]) == false);
  // assert(check('2020-09-07', '2020-09-07', [3]) == false);
  // assert(check('2020-09-07', '2020-09-07', [1, 2]) == false);
  // assert(check('2020-09-07', '2020-09-13', [2, 3, 4, 5, 6, 7]) == false);
  // assert(check('2020-09-07', '2020-09-12', [2, 3, 4, 5, 6, 7]) == false);
  // assert(check('2020-09-07', '2020-09-12', [1, 2, 3, 4, 5, 6, 7]) == false);
  // assert(check('2020-09-08', '2020-09-13', [3, 4, 5, 6, 7]) == false);
  // assert(check('2020-09-08', '2020-09-14', [1, 3, 4, 5, 6, 7]) == false);
  // assert(check('2020-09-08', '2020-09-14', [3, 4, 5, 6, 7]) == false);
  // assert(check('2020-09-08', '2020-09-14', [1, 3, 5, 7]) == false);
  // assert(check('2020-09-08', '2020-10-30', [1, 3, 4, 5]) == false);
  // assert(check('2020-09-08', '2020-10-30', [1, 3, 4, 6, 7]) == false);
}


bool check(String startDate1, String endDate1, List<int> list) {
  var startDate = DateTime.parse(startDate1);
  var endDate = DateTime.parse(endDate1);

  // for

  // if (list.contains(startDate.weekday) && list.contains(endDate.weekday)) {
  //   return true;
  // }
  // return false;

  ///如果不在一个星期范围内
  if ((daysBetween(startDate, endDate) + 1) < 7) {
    var startContrastDay = startDate.weekday;
    var endContrastDay = endDate.weekday;

    ///如果开始时间的星期数小于了结束时间的星期数
    if (startDate.weekday > endDate.weekday) {
      startContrastDay = endDate.weekday;
      endContrastDay = startDate.weekday;
    }
    for (var i = 0; i < list.length; i++) {
      var currentWeekDay = list[i];
      if (currentWeekDay < startContrastDay ||
          currentWeekDay > endContrastDay) {
        return false;
      }
    }
    return true;
  }
  return true;
}

int daysBetween(DateTime a, DateTime b, [bool ignoreTime = false]) {
  if (ignoreTime) {
    int v = a.millisecondsSinceEpoch ~/ 86400000 -
        b.millisecondsSinceEpoch ~/ 86400000;
    if (v < 0) return -v;
    return v;
  } else {
    int v = a.millisecondsSinceEpoch - b.millisecondsSinceEpoch;
    if (v < 0) v = -v;
    return v ~/ 86400000;
  }
}
