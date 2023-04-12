## 1. Describe the Problem:
As a user
So that I can manage my time
I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.

## 2. Describe the Method Signature
Ruby 
estimated_read_time(text) = text total(int) / 200
takes a string(bulk of text or sentence)
returns an integer or float(minutes)

Potential side effects: 
if text total is < 200 program will only return a 0.
need to use float data types for more accurate estimates(seconds)

## 3. Examples
estimated_read_time(500 words) returns 2.5(minutes)
estimated_read_time(1000 words) returns 5(minutes)
estimated_read_time(2000 words) return 10(minutes)
estimated_read_time(0) returns 0(minutes)
estimated_read_time(100) returns 0.5(minutes) = 30(seconds)
estimated_read_time(nil) returns error

## 4. Implement behaviour
Follow test drive approach(Red, green, refactor) to implement behaviour