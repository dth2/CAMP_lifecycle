
#' @title Risk History Module for Adolecents
#'
#' @description Module function to track the risk history defined by UAI of uninfected persons
#'              for purpose of intervention targeting.
#'
#' @inheritParams aging_camplc
#' 
#' @param uaicount is the number of UAI in the past 6 months.
#'
#' @keywords module
#' @export
#'
riskhist_adol <- function(dat, at) {


  ## Attributes
  uid <- dat$attr$uid

  ## Edgelist
  el <- as.data.frame(dat$temp$el)
  

  #Move past UAI counts down a time step.
  for (i in 27:3){
  dat$riskhist[,i]<-dat$riskhist[,i-1]
  }
  # Number of UAI at time = at.
  #p1 and p2 are row numbers not uid so we need to get the uid that corespond to those rows. 
  
  rows <- unique(c(el$p1, el$p2))
  counts <- sapply(rows, function(x) sum(el$uai[el$p1==x | el$p2==x]))
  uids<-rep(NA,length(rows))
  mat<-as.data.frame(cbind(rows,counts,uids))
  
  for (i in 1:length(mat$rows)){
      mat$uids[i]<-dat$attr$uid[mat$rows[i]] 
  }
  
  for (i in 1:length(mat$uids)){
  dat$riskhist$t1[dat$riskhist$V1==mat$uids[i]]<-mat$counts[i] 
  }
  


  for (i in 1:length(mat$uids)){
    dat$attr$uaicount[mat$rows[i]]<-sum(dat$riskhist[dat$riskhist$V1==mat$uids[i],2:27],na.rm=TRUE)
      }


  
  return(dat)
}
