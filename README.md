# .dotfiles from the 🦉
Here are all of my dotfiles for backup and sharing, feel free to use/copy/steal anything from here.

### Stuff that may be required
- [https://madmalik.github.io/mononoki/](mononoki)
- [FontAwesome](fontawesome)

### CMUS and CMUSFM
To correctly trigger both cmusfm (the Last.fm scrobler i'm currently using) and my custom i3block i had to set it on cmus like this:

```:set display_artist_sort_name=~/.config/userscripts/cmus_propagate.sh```

The `cmus_propagate.sh` is just a way to pipe the incoming status messages from cmus to both scripts.
