# Exercise 3

Within this folder you have 3 subfolders. Each folder again contains 3 other subfolders. Each of these folders contain 10 files each.
That's a total of 90 files in this root folder.

Your task is simple. You have to identify which algorithm has been used, find the files with these hash values and print out their contents

File 1: `d394e450b32d83a865d3e16ef2b8883b`
File 2: `a38ab79b8d36de9e3c222a474da2fa6050136ee478e810c7128834cb567350aa`
File 3: `5a3c34e570b6098c6718699e5b4d12f1a4b120ef`
File 4: `e95c8e7accebb3616a4289159bbb350d71c38f4fc88b972234a0172f8063c9c2e5562cd04b9bb7e224b803a318df51f7794047c4cc21698767f937924eed95b8`

For the sake of your sanity and those around you, please do not try manually hashing all 90 files. You're going to lose 10 years off your life doing this.

Tips and Tricks:
1. Look at the length of the message digest and have a guess on what algorithm it is using. The longer the digest, the more secure the algorithm. Go to [README](../README.md) to see more about the algorithms
2. You're on Linux. Use the pipe operator and `grep` to chill in life.
3. Look up how to do recursive hashing
