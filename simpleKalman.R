library("mxnet")

# Transition Equation
# describes the hidden state
# A is the state transition matrix
# h_t = A*h_(t-1) + N(0,Sig_h)

# Observation Equation / Emission Model
# B transformation matrix from hidden state to observation/emission
# obs_t = B*h_t + N(0,Sig_v)
# note, obs is the predicted and OBS is true



# %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

# what can we want?
# - likelihood of OBS
# - filtered mean and cov

# %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

# probability of observation given hidden state:
# p(v_t | h_t) = N( B*h_t, Sig_v )

# probability of hidden state given observation:
# (via markov property and marginalization)
# p( h_t | v_(0:(t-1)) ) = N( A*f_(t-1),  A*Sig_f_(t-1)*A^T + Sig_h )

# A*f_(t-1) = mu_f
# A*Sig_f_(t-1)*A^T + Sig_h = Sig_hh

# Sig_f_t = ( Sig_hh^-1 - B^T * Sig_v^-1 * B)^-1
#         = ( I - ( Sig_hh * B^T*( Sig_v + B*Sig_hh*B^T)^-1 )*B )*Sig_hh 

# Sig_hh * B^T*( Sig_v + B*Sig_hh*B^T )^-1 = K

# Josephs symmetrized update
# adds numeric stability
# Sig_f_t = (I - K_t*B) * Sig_hh * (I - K_t*B)^T + K*Sig_v*K^T

# f_t = mu_h + K(v-B*mu_h)


forwardLDS <- function(observation, A, B, Sigma_h, Sigma_v)
{
	f_0 = mx.nd.zeros()
	F_0 = mx.nd.zeros()

	mu_h = f_0
	S_hh = F_0
	for(eachobs)
	{

		# update equations
		mu_v = mx.nd.gemm2(A,f_t)

	}
}
