import pandas as pd
import matplotlib.pyplot as plt
import numpy as np

# Read CSV with decimal float values (no header)
df = pd.read_csv("floats.csv", header=None, names=['value'])

# Convert to float (handles both fp16 and fp32 decimal representations)
decimal_values = pd.to_numeric(df['value'], errors='coerce')

# Drop any NaN values (in case of parsing errors)
decimal_values = decimal_values.dropna()

# Print statistics
print(f"Total values: {len(decimal_values)}")
print(f"Mean: {decimal_values.mean():.6f}")
print(f"Std Dev: {decimal_values.std():.6f}")
print(f"Min: {decimal_values.min():.6f}")
print(f"Max: {decimal_values.max():.6f}")

# Check for any bad values
if decimal_values.isna().any():
    print(f"\nWARNING: {decimal_values.isna().sum()} bad values detected and dropped")

# Plot histogram
plt.figure(figsize=(10, 6))
plt.hist(decimal_values, bins=50, density=True, alpha=0.7, color='skyblue', edgecolor='black')
plt.title("Histogram of Float Values (FP16/FP32)")
plt.xlabel("Value")
plt.ylabel("Density")
plt.grid(True, linestyle='--', alpha=0.5)
plt.tight_layout()
plt.show()

# Optional: Plot additional statistics
plt.figure(figsize=(12, 4))

# Subplot 1: Histogram with normal overlay
plt.subplot(1, 2, 1)
n, bins, patches = plt.hist(decimal_values, bins=50, density=True, alpha=0.7, 
                             color='skyblue', edgecolor='black', label='Data')

# Overlay expected normal distribution (mean=0.5, std=1/6 for your inverse CDF)
x = np.linspace(decimal_values.min(), decimal_values.max(), 100)
expected_mean = 0.5
expected_std = 1/6
plt.plot(x, 1/(expected_std * np.sqrt(2 * np.pi)) * 
         np.exp(-0.5 * ((x - expected_mean) / expected_std)**2), 
         'r-', linewidth=2, label=f'Normal(μ={expected_mean}, σ={expected_std:.3f})')
plt.xlabel("Value")
plt.ylabel("Density")
plt.title("Distribution with Expected Normal")
plt.legend()
plt.grid(True, alpha=0.3)

# Subplot 2: Q-Q plot
plt.subplot(1, 2, 2)
from scipy import stats
stats.probplot(decimal_values, dist=stats.norm(loc=expected_mean, scale=expected_std), plot=plt)
plt.title("Q-Q Plot vs Normal Distribution")
plt.grid(True, alpha=0.3)

plt.tight_layout()
plt.show()
