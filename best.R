best <- function(state, outcome) {

dat <-  read.csv("outcome-of-care-measures.csv", colClasses  =  "character", na.strings = "Not Available")

if(state %in% dat$State) {

	if (outcome == "heart attack") {
		subs <- (subset(dat, State == state))
		subs <- subs[ order(as.numeric(subs[,11])), ]
		subs[[1,2]]	
	} 
	else if (outcome == "heart failure") {
		subs <- (subset(dat, State == state))
		subs <- subs[ order(as.numeric(subs[,17])), ]
		subs[[1,2]]
	} 
	else if (outcome == "pneumonia") {
		subs <- (subset(dat, State == state))
		subs <- subs[ order(as.numeric(subs[,23])), ]
		subs[[1,2]]
	} 
	else stop("invalid outcome")   

} else stop("invalid state")   
}

