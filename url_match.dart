void main() {
  String urlString =
      '/index?name=username&age=27&pwd=zbc|123@&likes=lol&likes=beautifull girl&id=main';
  Map<String, String> _parseQuery(url) {
    Map<String, String> _result = {};
    RegExp _regExp = RegExp(r'[?&]([^=&#]+)=([^&#]*)');
    Iterable<RegExpMatch> _querys = _regExp.allMatches(url);
    _querys.forEach((RegExpMatch query) {
      _result['${query.group(1)}'] = '${query.group(2)}';
    });
    return _result;
  }

  String _matchUrl(url) {
    RegExp _regExp = RegExp(r"/(.*?)\?");
    if (_regExp.firstMatch(url) != null) {
      return _regExp.firstMatch(url).group(0).replaceFirst('?', '');
    }
    return null;
  }

  print('参数：${_parseQuery(urlString)}\n路径：${_matchUrl(urlString)}');
}
