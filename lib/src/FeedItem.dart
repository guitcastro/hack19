import 'package:webfeed/webfeed.dart';

class FeedItem {
  FeedItem(this.title, this.content, this.image);
  FeedItem.fromRss(RssItem item) : this(item.title, item.content.value, item.content.images.isEmpty 
    ? null : item.content.images.first);
  FeedItem.fromAtom(AtomItem item) : this(item.title, item.content, null);

  final String title;
  final String content;
  final String image;
}