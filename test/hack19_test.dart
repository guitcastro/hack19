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
          print(feedItem.image);
        }
      });
      
      test('Medium flutter community', () async {
        final fetcher = FeedFetcher("https://medium.com/feed/flutter-community");
        final feed = await fetcher.fetch();

        print(feed.title);
        for (var feedItem in feed.items) {
          print(feedItem.title);
          print(feedItem.image);
        }
      });


      test('Medium dartlang', () async {
        final fetcher = FeedFetcher("https://medium.com/feed/dartlang");
        final feed = await fetcher.fetch();

        print(feed.title);
        for (var feedItem in feed.items) {
          print(feedItem.title);
          print(feedItem.image);
        }
      });

      test('StackOverflow flutter', () async {
        final fetcher = FeedFetcher("https://stackoverflow.com/feeds/tag/flutter");
        final feed = await fetcher.fetch();

        print(feed.title);
        for (var feedItem in feed.items) {
          print(feedItem.title);
          print(feedItem.image);
        }
      });

      test('StackOverflow dart', () async {
        final fetcher = FeedFetcher("https://stackoverflow.com/feeds/tag/dart");
        final feed = await fetcher.fetch();

        print(feed.title);
        for (var feedItem in feed.items) {
          print(feedItem.title);
          print(feedItem.image);
        }
      });
      
      test('Github issues flutter repo', () async {
        final fetcher = FeedFetcher("https://rsshub.app/github/issue/flutter/flutter");
        final feed = await fetcher.fetch();

        print(feed.title);
        for (var feedItem in feed.items) {
          print(feedItem.title);
          print(feedItem.image);
        }
      });

      test('Github pull requests flutter repo', () async {
        final fetcher = FeedFetcher("http://pullfeed.co/feeds/flutter/flutter");
        final feed = await fetcher.fetch();

        print(feed.title);
        for (var feedItem in feed.items) {
          print(feedItem.title);
          print(feedItem.image);
        }
      });

    });
  }
