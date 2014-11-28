best <- function(state, outcome) {

dat <-  read.csv("outcome-of-care-measures.csv", na.strings = "Not Available")

## Check that state and outcome are valid

## Return hospital name in that state with lowest 30-day death rate

if (outcome == "heart attack") {
	subs <- (subset(dat, State == state))
	subs <- subs[ order(subs[,11]), ]
	subs[[1,2]]	
} 
else if (outcome == "heart failure") {
		subs <- (subset(dat, State == state))
		subs <- subs[ order(subs[,17]), ]
		subs[[1,2]]
} 
else if (outcome == "pneumonia") {
		subs <- (subset(dat, State == state))
		subs <- subs[ order(subs[,23]), ]
		subs[[1,2]]
} 
else {
	print("invalid outcome")
}





