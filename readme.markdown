Simple Loading Bar For Your Bash Script
=======================================

I needed a simple loading or progressing bar for some of my bash scripts. I like
pv. Its great. But an extra depency for my scripts. I dont like extra depencies
and this was just a one evening script. 


Output
=====

The Output will look something like this:

  [            #####       ]

or

  (  ooooooooooooooo                   )

or 

  |                      =====  |

or whatever you specify as parameters ;) 

Usage
=====

At first copy this in your script and change the first while condition to
something useful to you. Maybe you would like to pack this into a function or
something. But this is at least your part ;) 

Next you can specify your parameters (if you want to!)

  ./loading.sh maximal_size_of_bar speed_in_seconds first_delimiter fill_chars last_delimiter

For Example:

  ./loading.sh 50 0.02 [ "######" ]

Thats all. But keep an eye on special characters in Bash! Its possible that
everything implodes. Use \( for ( for example. 

At least you can start the script without any parameters:

  ./loading.sh

Hint
====

Remove the \r (Carrige return) from the script. Does make nice banners in your
Terminal :) 


