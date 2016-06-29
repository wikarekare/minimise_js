# minimise_js

Quick hack in ruby to strip leading and trailing space and comments from javascript. 
A good enough approach, rather than trying to get the absolute minimum sized files.

* Strips // comments from lines
* Strips leading and trailing space on lines
* Outputs any line still containing text.
* Leaves new lines in text. Also leaves spaces within the line.
* These add very little to the size of the -min file, while making error tracking easier.
