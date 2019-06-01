import 'package:hack19/src/FeedItem.dart';
import 'package:webfeed/webfeed.dart';

class Feed {
  final String title;
  final List<FeedItem> items;

  Feed(this.title, this.items);

  Feed.fromRss(RssFeed feed) : this(feed.title, 
    feed.items
      .where((f) => f.content != null)
      .map((f) => FeedItem.fromRss(f)).toList());

  Feed.fromAtom(AtomFeed feed) : this(feed.title,
   feed.items.map((f) => FeedItem.fromAtom(f)).toList());

}