import 'package:ny_articles_clean_architecture/features/most_viewed_articles/data/remote/models/article_response_model.dart';
import 'package:ny_articles_clean_architecture/features/most_viewed_articles/data/remote/models/media_meta_data_response_model.dart';
import 'package:ny_articles_clean_architecture/features/most_viewed_articles/data/remote/models/media_response_model.dart';

final articleEntityTest = articleResponseModelTest.toEntity();
final articleEntityWithoutImagesTest = articleResponseModelWithoutImagesTest.toEntity();
final mediaMetaDataEntityTest = mediaMetaDataResponseModelTest.toEntity();

final mediaEntityTest = mediaResponseModelTest.toEntity();

final articleResponseModelWithoutImagesTest = ArticleResponseModel(
  uri: 'nyt://article/d89e8363-7567-59b7-879b-bf6eb58f1d68',
  url: 'https://www.nytimes.com/2023/10/21/us/politics/chesebro-trump.html',
  id: 100000009135277,
  assetId: 100000009135277,
  source: 'New York Times',
  publishedDate: DateTime.parse('2023-10-21'),
  updated: DateTime.parse('2023-10-25 15:20:39'),
  section: 'U.S.',
  subsection: 'Politics',
  nytdsection: 'u.s.',
  adxKeywords:
      'Georgia Criminal Case Against Trump (2020 Election);Storming of the US Capitol (Jan, 2021);Presidential Election of 2020;Content Type: Personal Profile;Legal Profession;Chesebro, Kenneth;Trump, Donald J;Tribe, Laurence H;Harvard Law School',
  byline: 'By Elizabeth Williamson',
  type: 'Article',
  title: 'From Bush v. Gore to ‘Stop the Steal’: Kenneth Chesebro’s Long, Strange Trip',
  abstract:
      'Mr. Chesebro, a buttoned-down Harvard lawyer, evolved from left-leaning jurist to key player in the Trump false electors scandal. What happened?',
  desFacet: const [
    'Georgia Criminal Case Against Trump (2020 Election)',
    'Storming of the US Capitol (Jan, 2021)',
    'Presidential Election of 2020',
    'Content Type: Personal Profile',
    'Legal Profession'
  ],
  orgFacet: const ['Harvard Law School'],
  perFacet: const ['Chesebro, Kenneth', 'Trump, Donald J', 'Tribe, Laurence H'],
  geoFacet: const [],
  listMediaResponseModel: const [],
  etaId: 0,
);

final articleResponseModelTest = ArticleResponseModel(
  uri: 'nyt://article/d89e8363-7567-59b7-879b-bf6eb58f1d68',
  url: 'https://www.nytimes.com/2023/10/21/us/politics/chesebro-trump.html',
  id: 100000009135277,
  assetId: 100000009135277,
  source: 'New York Times',
  publishedDate: DateTime.parse('2023-10-21'),
  updated: DateTime.parse('2023-10-25 15:20:39'),
  section: 'U.S.',
  subsection: 'Politics',
  nytdsection: 'u.s.',
  adxKeywords:
      'Georgia Criminal Case Against Trump (2020 Election);Storming of the US Capitol (Jan, 2021);Presidential Election of 2020;Content Type: Personal Profile;Legal Profession;Chesebro, Kenneth;Trump, Donald J;Tribe, Laurence H;Harvard Law School',
  byline: 'By Elizabeth Williamson',
  type: 'Article',
  title: 'From Bush v. Gore to ‘Stop the Steal’: Kenneth Chesebro’s Long, Strange Trip',
  abstract:
      'Mr. Chesebro, a buttoned-down Harvard lawyer, evolved from left-leaning jurist to key player in the Trump false electors scandal. What happened?',
  desFacet: const [
    'Georgia Criminal Case Against Trump (2020 Election)',
    'Storming of the US Capitol (Jan, 2021)',
    'Presidential Election of 2020',
    'Content Type: Personal Profile',
    'Legal Profession'
  ],
  orgFacet: const ['Harvard Law School'],
  perFacet: const ['Chesebro, Kenneth', 'Trump, Donald J', 'Tribe, Laurence H'],
  geoFacet: const [],
  listMediaResponseModel: const [mediaResponseModelTest],
  etaId: 0,
);

const mediaResponseModelTest = MediaResponseModel(
    type: 'image',
    subtype: 'photo',
    caption:
        'Kenneth Chesebro pleaded guilty on Friday to a single felony charge of conspiracy. He had been charged with seven felonies, including one charge under Georgia’s state racketeering law.',
    copyright: 'Pool photo by Alyssa Pointer',
    approvedForSyndication: 1,
    listMediaMetaDataResponseModel: [mediaMetaDataResponseModelTest]);

const mediaMetaDataResponseModelTest = MediaMetaDataResponseModel(
    url:
        'https://static01.nyt.com/images/2023/10/21/multimedia/21dc-chesebro-01-gkjm/21dc-chesebro-01-gkjm-mediumThreeByTwo210.jpg',
    format: 'mediumThreeByTwo210',
    height: 140,
    width: 210);
