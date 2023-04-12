## 1. Describe the Problem
As a user
So that I can impove my grammar
I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark. 

## 2. Design the Method Signature
Ruby
* grammar_checker(text)
* takes a string(bulk of text/sentence)
* returns a boolean(true or false) as user looking for verification

Potential side effects: 
Would have to verify with user/client if they were happy for further punctuation to be used within the sentence/text. Are they happy for words to be fully upcase or only capitalized? What if every word if capitalized? 

Can use a regex to identify punctuation however this in some cases can miss certain punctuation(if use [[:punct:]]) what are we defining as suitable sentence ending punctuation? 

## 3. Create Examples as Tests
grammar_checker("This is correct.") => true
grammar_checker("this is not") => false
grammar_checker(" ") => false
grammar_checker("THIS IS ALSO CORRECT!!!") => true
grammar_checker("tHiS iS nOt>") => false

## 4. Implement Behaviour 
Follow test drive approch(Red, green, refactor) to implement behaviour
