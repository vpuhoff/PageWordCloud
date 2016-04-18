# PageWordCloud
An ASP.NET WebForms adaptation of the d3.js Word Cloud Generator by Jason Davies

PageWordCloud contains some examples of various variants for integrating the Word Cloud Generator by [Jason Davies](http://www.jasondavies.com/) into WebForms pages. PageWordCloud uses the [original HTML example](https://www.jasondavies.com/wordcloud/) and changes it to fit the needs of ASP.NET WebForms.

## Example Overview
### SimpleLinkInclude.aspx
This is a quite simple ASP.NET WebForms adaptation for the 
Word Cloud Generator by Jason Davies (http://www.jasondavies.com/), 
taken almost directly from the example in https://www.jasondavies.com/wordcloud/.

The only major modification done here is to take the original page with it's HTML controls into this Web Form and 
replacing the controls with ASP.NET Controls with an appropriate client side Id. 
This allows to control the behaviour of the Word Cloud from the server side, 
while the computation still is entirely done on the client side.

However, this implementation has the following shortcomings:
- The SVG/PNG Download has been removed for simplicity.
- The random palette functionality is not supported.
- The client side Control Id's are hard coded/static and may conflict with potential other content on the page.</li>

### More to come...
