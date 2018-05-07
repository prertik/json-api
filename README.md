# README

To run the App. Use Curl.
```shell
curl -i -H "Accept: application/vnd.api+json" -H 'Content-Type:application/vnd.api+json' -X POST -d '{"data": {"type":"urls", "attributes":{"url":"http://bettermotherfuckingwebsite.com/"}}}' http://localhost:3000/urls
```
This will parse the url and when re-directed to `localhost:3000/urls` the JSON can be viewed. 
To view specific url check `localhost:3000/urls/2`
To view the H1, H2, H3 tag contents specific data contents can be viewed like `localhost:3000/urls/2/contents`

This will store H1, H2, H3 tag and links contents.
