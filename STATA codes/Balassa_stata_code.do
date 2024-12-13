* set data as time series
tsset year

* create variables for inverse of real exchange rates
gen inv_r_ind_sgp = 1/r_ind_sgp
gen inv_r_ind_mal = 1/r_ind_mal
gen inv_r_ind_phi = 1/r_ind_phi

* create variables for differential trade sector productivity
gen prod_D_ind_sgp = log(prod_sgp/prod_ind)
gen prod_D_ind_mal = log(prod_mal/prod_ind)
gen prod_D_ind_phi = log(prod_phi/prod_ind)

* regression for india v singapore
regress inv_r_ind_sgp prod_D_ind_sgp

* regression for india v malaysia
regress inv_r_ind_mal prod_D_ind_mal

* regression for india v philippines
regress inv_r_ind_phi prod_D_ind_phi
