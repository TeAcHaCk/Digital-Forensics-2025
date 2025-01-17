# Exercise 4

We've worked with standard Hashing Algorithms until now. The logic behind them, if there's a single bit change, then there's a huge difference in the output

A cryptographic hash answers the question "Are these two files identical?". At some points, this might not be very useful to us.
Let's say we wanna see how different or similar two files are. How does a cryptographic hash help us then?

To help us here, we use something called as a Fuzzy Hash Algorithm, and in this case we're going to be talking about SSDEEP

Unlike cryptographic hashes, `ssdeep` does not come in-built into the systems. To install it, you can run `sudo pacman -Syu ssdeep` and we can run `ssdeep`

We can't directly use `ssdeep` because it requires multiple files to be given as an input.

## How to use ssdeep

SSDEEP creates hash values by chunking the input files and then performs a fuzzy hash. In order to first initialise `ssdeep`, we need to "store" the hash in a "database".

```shell
ssdeep -s testing.txt # This will output a fuzzy hash
ssdeep -s testing.txt > ssdeep.db # Save the output fuzzy hash in a "database"
```

Now over here, we have a database that contains the fuzzy hash of the input file that we gave. Now using this as our database, we can find out the similarity between any other file and the original file we inputted.

```shell
ssdeep -s -m ssdeep.db other.txt # This will return a match score which tells how similar they are
```

Now for your exercise, you're going to have to take the 4 files from the previous exercise and make 4 other files which are going to give a ssdeep score of at least 95

