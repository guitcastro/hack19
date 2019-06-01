import 'package:webfeed/webfeed.dart';

class FeedItem {
  FeedItem(this.title, this.content, this.image, this.link);

  FeedItem.fromRss(RssItem item) : this(item.title, 
    item.content?.value ?? item.description, 
    item.content?.images?.first,
    item.link);
  FeedItem.fromAtom(AtomItem item) : this(item.title, item.content, null, item.links.first.href);

  final String title;
  final String content;
  final String image;
  final String link;
}