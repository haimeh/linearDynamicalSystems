library("mxnet")






# Prediction
# mu_t = A * mu_(t-1) + B * u_t
# Sig_t = A * Sig_(t-1) * A^T + Q


# Update
# K_t = ( Sig_t * C^T ) / ( C * Sig_t * C^T + R )
# mu_t = mu_t + K_t * ( y_t - C * x_t )
# P_t = ( I - K_t * C ) * Sig_t

# kalman gain is calculated to minimize posterior error cov
