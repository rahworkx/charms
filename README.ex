# Overview

Geminabox lets you host your own gems, and push new gems to it just like with rubygems.org. The bundler dependencies API is supported out of the box. Authentication is left up to either the web server, or the Rack stack. For basic auth, try Rack::Auth.

# Usage

You can simply deploy the Server with:
```
juju deploy geminabox
```


## Scale out Usage

Comming Soon

## Known Limitations and Issues

No known Limitations or Issues curently found

# Configuration

Update the Config.ru file as you wish in the followin location of docker file.

```
assets/config.ru
```

# Contact Information


## Geminabox

  - [geminabox github]: https://github.com/geminabox/geminabox
  - Feel free to add things if it's useful for users


[rahworkx github]: https://github.com/rahworkx
[icon guidelines]: https://jujucharms.com/docs/stable/authors-charm-icon
