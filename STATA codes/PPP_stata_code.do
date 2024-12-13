* set data as time series
tsset year

* generate lagged variables for inflation differential
gen infl_d_ind_sgp_l1 = L.infl_d_ind_sgp
gen infl_d_ind_mal_l1 = L.infl_d_ind_mal
gen infl_d_ind_phi_l1 = L.infl_d_ind_phi
gen infl_d_ind_sgp_l2 = L2.infl_d_ind_sgp
gen infl_d_ind_mal_l2 = L2.infl_d_ind_mal
gen infl_d_ind_phi_l2 = L2.infl_d_ind_phi
gen infl_d_ind_sgp_l3 = L3.infl_d_ind_sgp
gen infl_d_ind_mal_l3 = L3.infl_d_ind_mal
gen infl_d_ind_phi_l3 = L3.infl_d_ind_phi

* regression for india v singapore
regress dep_ind_sgp infl_d_ind_sgp

* ADF test for india v singapore
predict resid, residuals
dfuller resid
drop resid

* regression for india v malaysia
regress dep_ind_mal infl_d_ind_mal infl_d_ind_mal_l1 infl_d_ind_mal_l2 infl_d_ind_mal_l3

* ADF test for india v malaysia
predict resid, residuals
dfuller resid
drop resid

* regression for india v philippines
regress dep_ind_phi infl_d_ind_phi infl_d_ind_phi_l1 infl_d_ind_phi_l2 infl_d_ind_phi_l3

* ADF test for india v philippines
predict resid, residuals
dfuller resid
