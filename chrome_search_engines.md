# Custom Search Engine Suggest URLs

| Search Engine | Nickname | Search URL                                               | Suggest URL                                                                                         |
|---------------|----------|----------------------------------------------------------|-----------------------------------------------------------------------------------------------------|
| Google        | g        | `https://www.google.com/search?q=%s`                     | `https://www.google.com/complete/search?client=chrome&q=%s`                                         |
| Gmail         | mail     | `https://mail.google.com/mail/u/0/?subset=all#search/%s` |                                                                                                     |
| Google Maps   | maps     | `https://maps.google.com/maps?q=%s`                      |                                                                                                     |
| Amazon        | az       | `https://www.amazon.com/s?k=%s`                          | `https://completion.amazon.com/search/complete?search-alias=aps&client=amazon-search-ui&mkt=1&q=%s` |
| Wikipedia     | wiki     | `https://en.wikipedia.org/wiki/Special:Search?search=%s` | `https://en.wikipedia.org/w/api.php?action=opensearch&search=%s`                                    |
| YouTube       | yt       | `https://www.youtube.com/results?search_query=%s`        |                                                                                                     |
| GitHub        | git      | `https://github.com/search?q=%s`                         |                                                                                                     |
| Reddit        | reddit   | `https://www.reddit.com/search/?q=%s`                    |                                                                                                     |
| DuckDuckGo    | duck     | `https://duckduckgo.com/?q=%s&t=vivaldi`                 | `https://ac.duckduckgo.com/ac/?q=%s&type=list`                                                      |
| Safari Online | safari   | `https://learning.oreilly.com/home/?value=%s`            |                                                                                                     |
