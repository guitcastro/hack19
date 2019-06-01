  import 'package:hack19/hack19.dart';
  import 'package:test/test.dart';


  void main() {
    group('Usage example', () {
      test('Medium flutter', () async {
        final fetcher = FeedFetcher("https://medium.com/feed/flutter");
        final feed = await fetcher.fetch();

        print(feed.title);
        for (var feedItem in feed.items) {
          print(feedItem.title);
        }
      });
      
      test('Medium flutter community', () async {
        final fetcher = FeedFetcher("https://medium.com/feed/flutter-community");
        final feed = await fetcher.fetch();

        print(feed.title);
        for (var feedItem in feed.items) {
          print(feedItem.title);
        }
      });


      test('Medium dartlang', () async {
        final fetcher = FeedFetcher("https://medium.com/feed/dartlang");
        final feed = await fetcher.fetch();

        print(feed.title);
        for (var feedItem in feed.items) {
          print(feedItem.title);
        }
      });

      test('StackOverflow flutter', () async {
        final fetcher = FeedFetcher("https://stackoverflow.com/feeds/tag/flutter");
        final feed = await fetcher.fetch();

        print(feed.title);
        for (var feedItem in feed.items) {
          print(feedItem.title);
        }
      });

      test('StackOverflow dart', () async {
        final fetcher = FeedFetcher("https://stackoverflow.com/feeds/tag/flutter");
        final feed = await fetcher.fetch();

        print(feed.title);
        for (var feedItem in feed.items) {
          print(feedItem.title);
        }
      });
      
    });
  }
