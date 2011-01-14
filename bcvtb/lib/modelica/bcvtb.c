#include "bcvtb.h"

int establishModelicaClient(const char *const docname){
  return establishclientsocket(docname);
}


int exchangeModelicaClient(int sockfd, 
			   int flaWri, int *flaRea,
			   double simTimWri,
			   double* dblValWri, size_t nDblWri,
			   double* simTimRea,
			   double* dblValRea, size_t nDblRea){
  const int zer = 0;
  int nIntRea;
  int nBooRea;
  int intValRea[1]; // allocate array of non-zero size
  int booValRea[1]; // allocate array of non-zero size
  return exchangewithsocket(&sockfd, 
			    &flaWri, flaRea,
			    &nDblWri, &zer, &zer,
			    &nDblRea, &nIntRea, &nBooRea,
			    &simTimWri,
			    dblValWri, NULL, NULL,
			    simTimRea,
			    dblValRea, intValRea, booValRea);
}

int closeModelicaClient(int sockfd){
    const int flaWri = 1;
    sendclientmessage(&sockfd, &flaWri);
    return closeipc(&sockfd);
}
