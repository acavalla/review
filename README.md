#Review

This is a code review from week 10 of the Maker's Academy course. The reviewer acted like a client to describe their needs, which are delineated below. By the end of an hour I had fulfilled almost all of their needs. I worked to a TDD process using git to track workflow but I could have refactored more frequently.

digital audio workstation plugins
musicians use the filters to change how tracks sound
bandpass filter
Input: soundwave
Sets anything below minimum or above maximum to minimum and maximum respectively
Input: array of integers
min: 40 max: 1000; changeable
Edge cases: nil -> raise error: inform data is corrupted
Able to handle 44,100 frequencies in under 100ms
Empty array -> raise error: no frequency supplied
