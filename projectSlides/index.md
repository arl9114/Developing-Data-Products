---
title       : Language Style Matching Simulator
subtitle    : inspired by Texas Tech University's research
author      : Antoni Riady Lewa
job         : Product Manager @ Singtel
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [bootstrap]            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Background
Love is probably the most important topic in man's life. Recently, a group of researchers at Texas Tech University found out that romantic relationship tend to be stronger if both people's conversation style match with each other subtly.

I'm trying to simulate the research with Shiny web app with a group of my friend. 

Disclaimer: This 'simulation' is simply for fun, of course, and should not be treated academically.

--- .class #id 
## Logic
Text messages of both partners will be parsed using the following code

```r
unique(splitIntoWords(inputOne))
```
Then, the following code will find the similarities

```r
stringdist(firstPersonText,secondPersonText)
```

--- .class #id 

## Example Run
For example, if a couple used the following messages, then they are a very good match because according to the LSM theory, their conversation style is rather similar.


```r
  firstPersonText <- unique(str_split("Hey, what's up? Up for dinner tonite? :)","[\\p{P}\\s\\t\\n\\r<>\\d]+"))
  secondPersonText <- unique(str_split("Dinner tonite, dear?","[\\p{P}\\s\\t\\n\\r<>\\d]+"))
  prelim<-stringdist(firstPersonText,secondPersonText)
    if(prelim <=50){
      print("IMPOSSIBLE! You're both are a match made in heaven!")
    }else if (prelim<=150){
      print("I'll tell you a secret: most couples would be jealous about the both of you. Congrats!!")
    }else if(prelim<=300){
      print("Not bad. Keep it up!")
    }else{
      print("I think.. both of you should have a conversation.")
    }
```

```
## [1] "IMPOSSIBLE! You're both are a match made in heaven!"
```

--- .class #id 

## Limitations of the Model
This is a mere prototype that is used to demonstrate Shiny & Slidify's capabilities. In the actual simulation, several things should be considered including:

1. Frequency of words
2. Matching/tolerating typos & colloquial spellings (e.g. "Tonite", "2nite", "Tonitez" should be considered equal or almost equal)
3. Train the algorithm with large enough samples to improve the samples
4. Determine a more realistic/accurate classification score (e.g. "prelim" variable). Currently it's rather arbitrary
5. Perhaps build a mobile app that integrates with phone's SMS app and/or Whatsapp/Line/Viber etc. so that the user experience is better. Who knows, perhaps we can disrupt Tinder ;)

--- .class #id 

## References
1. http://today.ttu.edu/posts/2014/02/are-you-hearing-the-language-of-love
2. Stackoverflow






