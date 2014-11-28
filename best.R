best <- function(state, outcome) {

dat <-  read.csv("outcome-of-care-measures.csv", na.strings = "Not Available")

## Check that state and outcome are valid

## Return hospital name in that state with lowest 30-day death
## rate
}



if outcome == "heart attack" {
	vari <- 11

	elseif outcome == "heart failure" {
	vari <- 17

	elseif outcome == "pneumonia" {
	vari <- 23

	else {
	print("invalid outcome")
}




 subs <- (subset(dat, State == state))
 
 head(subs[ order(subs[,11]), ])
