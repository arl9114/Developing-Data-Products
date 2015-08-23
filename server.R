library(stringr)
library(stringdist)
splitIntoWords<-function(text){
  str_split(text,"[\\p{P}\\s\\t\\n\\r<>\\d]+")
}


predictIt<-function(inputOne,inputTwo){
  firstPersonText <- unique(splitIntoWords(inputOne))
  secondPersonText <- unique(splitIntoWords(inputTwo))
  prelim<-stringdist(firstPersonText,secondPersonText)
  if(nchar(inputOne)<=0 || nchar(inputTwo)<=0){
    print("Paste the texts into both fields and click the button to see your result")
  }else{
    if(prelim <=50){
      print("IMPOSSIBLE! You're both are a match made in heaven!")
    }
    else if (prelim<=150){
      print("I'll tell you a secret: most couples would be jealous about the both of you. Congrats!!")
    }else if(prelim<=300){
      print("Not bad. Keep it up!")
    }else{
      print("I think.. both of you should have a conversation.")
    }
  }
}



shinyServer(
  function(input, output) {
    output$prediction<-reactive({predictIt(input$firstPerson,input$secondPerson)})
  }
)