import 'package:hack19/src/Feed.dart';
import 'package:webfeed/webfeed.dart';
import 'package:http/http.dart' as http;

/// Checks if you are awesome. Spoiler: you are.
class FeedFetcher {
  FeedFetcher(this.url);

  final String url;

  Future<Feed> fetch() async {
    var response = await http.get(url);

    if (response.body.contains("xmlns=\"http://www.w3.org/2005/Atom\"")) {
      return Feed.fromAtom(AtomFeed.parse(response.body));
    }
    return Feed.fromRss(RssFeed.parse(response.body));
  }

}
