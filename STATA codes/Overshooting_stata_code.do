* set data as time series
tsset time

* generate variables for difference in interest rates
gen r_ind_lag = D.r_ind
gen r_sgp_lag = D.r_sgp
gen r_mal_lag = D.r_mal
gen r_phi_lag = D.r_phi

* generate variables for difference in interest rates across countries
gen r_diff_ind_sgp = r_ind_lag - r_sgp_lag
gen r_diff_ind_mal = r_ind_lag - r_mal_lag
gen r_diff_ind_phi = r_ind_lag - r_phi_lag

* regression between india v singapore
regress dep_ind_sgp infl_d_ind_sgp r_diff_ind_sgp

* regression between india v malaysia
regress dep_ind_mal infl_d_ind_mal r_diff_ind_mal

* regression between india v philippines
regress dep_ind_phi infl_d_ind_phi r_diff_ind_phi

