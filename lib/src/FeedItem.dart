import 'package:webfeed/webfeed.dart';

class FeedItem {
  FeedItem(this.title, this.content);
  FeedItem.fromRss(RssItem item) : this(item.title, item.content.value);
  FeedItem.fromAtom(AtomItem item) : this(item.title, item.content);

  final String title;
  final String content;
}