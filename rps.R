#input is one of the three game options: rock paper, scissor
#output determines game winner

RPS=function(x){
  
  #define game inputs
  options=c("rock","paper","scissors")
  
  #range of variables,number of random data point to choose
  #idx function will yield random number from the range with each run
  idx=sample(1:3,1)
  
  comp=options[idx]
  
  #make a string of computer selction and user selection
  b=paste(comp, "and", x)
  
  #vector of game possibilities depending on  which option computer chooses first
  pos=c("scissors and rock",
  "scissors and paper",
  "scissors and scissors",
  "rock and paper",
  "rock and rock",
  "rock and scissors",
  "paper and paper",
  "paper and rock",
  "paper and scissors")
  
  #will generate nth elemt in possibilities vector
  results=switch(d,"scissors and rock, you win!",
        "scissors and paper, computer wins",
        "scissors and scissors, please redo",
        "rock and paper, you win!",
        "rock and rock, please redo",
        "rock and scissors, computer wins",
        "paper and paper, please redo",
        "paper and rock, computer wins",
        "paper and scissors, you win!")
  
  return(results)
  
  #define element
  d=match(b,pos)
 
}

#in console, RPS("option)

##make for self with if functions