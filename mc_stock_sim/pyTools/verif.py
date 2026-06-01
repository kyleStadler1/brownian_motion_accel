import numpy as np
import matplotlib.pyplot as plt

# S0, mu, sigma, dt, N, paths = 100, 0.1, 0.2, 1/3153600, 60, 100000

# U1 = np.random.uniform(0, 1, (paths, N))
# U2 = np.random.uniform(0, 1, (paths, N))
# Z  = np.sqrt(-2 * np.log(U1)) * np.cos(2 * np.pi * U2)

# increments = np.exp((mu - 0.5*sigma**2)*dt + sigma*np.sqrt(dt)*Z)
# S = S0 * np.cumprod(increments, axis=1)

# plt.plot(S[:500].T, alpha=0.05, color='blue')  # plot 500 paths
# plt.title("GBM - 100k paths, 60s")
# plt.show()



# Verify k0 and k1 are correct
mu   = 0.1       # your annualized mu
sig  = 0.2       # your annualized sigma
dt   = 1/31536000  # 1 second

k0 = (mu - 0.5 * sig**2) * dt   # should be ~2.84e-9
k1 = sig * np.sqrt(dt)            # should be ~1.13e-5

print(f"k0 = {k0:.6e}")
print(f"k1 = {k1:.6e}")