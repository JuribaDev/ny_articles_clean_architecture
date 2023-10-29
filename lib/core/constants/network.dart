const timeout = Duration(seconds: 30);
const int retries = 5;
const retryDelays = [
  Duration(seconds: 1),
  Duration(seconds: 3),
  Duration(seconds: 5),
  Duration(seconds: 7),
  Duration(seconds: 9),
];
const baseUrl = 'https://api.nytimes.com/';

const apiKey = 'bcvHicFlnhxVBfwVPM5eOT5Ox5ZdVM0u';

String mostViewedArticlesEndpoint(int period) =>
    'svc/mostpopular/v2/mostviewed/all-sections/$period.json?api-key=$apiKey';
