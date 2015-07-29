Methods can return new objects that are not of the same class as the object you called the method on.  Sometimes these objects will behave like other objects your familiar with (like arrays!) and trick you. You can always ask an object what class it is and you can always ask it what methods it responds to (reflection).

When we scrape websites, we use gems to parse HTML. (nokogiri)

We also use gems to make it easier to communicate with web servers using the HTTP protocol.(httparty, faraday, typhoeus, rest-client)  We could implement this protocol ourselves but that would be such a pain.  Someone has already created a gem/library which knows how to communicate using the HTTP protocol and has created a nice descriptive API for us to use.  We are both using the API of the gem, and potentially interacting with a web service's API.

We send out HTTP get requests (typically) when we do web scraping.  We could do the same thing in a browser when we type a URL into the address bar of Chrome.  The browser gets a giant string of HTML back, parses it, and renders it in the browser.  But we only want to parse the HTML, we don't want to render it!

Selector Gadget

Why is this useful?
Craigslist is broken, let's disrupt it!
http://craigsapartmentsearch.herokuapp.com/

# whats the problem I want to solve?
# data/behavoir
# why web scraping and not an API?
# -craigslist is broken! let's disrupt it!
# what are your first thoughts when looking at this file?
# how do i know the url structure
# how/where am i using nokogiri?
# how do i know what methods to call on the nokogiri objects?
# how do i know the HTML will always be in the same order?


# bad code
- URL constants not interpolating
- next if bedrooms.to_i > 2
- no tests
- why not use an instance variable for the nokogiri "doc" object
- parsing the whole doc multiple times

#good code
- small well named methods
- units of work
- seperate out persistence
