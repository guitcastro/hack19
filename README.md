#Hack19 Feed agregrator 

Created from templates made available by Stagehand under a BSD-style
[license](https://github.com/dart-lang/stagehand/blob/master/LICENSE).

## Usage

A simple usage example:

```dart
final fetcher = FeedFetcher("https://medium.com/feed/flutter");
final feed = await fetcher.fetch();

print(feed.title);
for (var feedItem in feed.items) {
  print(feedItem.title);
}
```

You can found more examples in the tests files.

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: http://example.com/issues/replaceme
