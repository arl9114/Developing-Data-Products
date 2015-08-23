shinyUI(
  verticalLayout(
    h1("BACKGROUND"),
    p("   A recent research at the Texas Tech University shows that romantic relationship tend to be stronger if both people's conversation style match with each other subtly."),
    p("   This is called Language Style Matching and the researchers found out that newly met couples who used more similar function words were about twice as likely to be together three months later."),
    p("   Let's try this!"),
    p("   Disclaimer: This is a mere prototype built for fun and I should not be responsible with anything that happens with your relationship. All data will be anonymized."),  
    p(""),
    p(""),
    h1("   INSTRUCTION (read carefully to improve the experiment's accuracy)"),
    p("   1. Both you and your partner must be present. This exercise takes about 5-10 mins."),
    p("   2. Open your phone, copy and paste the exact text message/Whatsapp etc. that you sent when you last asked your partner out for lunch dinner. Ensure that you copy & paste ALL texts that you sent in a particular time when you're asking the guy/girl out from the first message until the last message that you sent before you get the actual dinner."),
    p("   3. Do the same with your partner's phone"),
    p("   4. Click the submit and see where it goes!"),
    p("Read more at " , a(href="http://today.ttu.edu/posts/2014/02/are-you-hearing-the-language-of-love", "http://today.ttu.edu/posts/2014/02/are-you-hearing-the-language-of-love")),
    p("ver 0.1; Antoni@2015"),
    pageWithSidebar(
      # Application title
      headerPanel("Are you compatible?"),
      sidebarPanel(
        textInput('firstPerson',"Your texts",value="",width="1500px"),
        textInput('secondPerson',"Your partner's texts",value="",width="1500px"),
        submitButton("Let's find out!")
      ),
      mainPanel(
        h3('Results of prediction'),
        h4('You both are..'),
        verbatimTextOutput("prediction")
      )
    )
  )
)