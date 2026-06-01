import struct
import numpy as np

def hex_to_float(hex_str):
    """Convert hex string to FP32 float"""
    val = int(hex_str, 16)
    bytes_val = val.to_bytes(4, byteorder='big')
    return struct.unpack('>f', bytes_val)[0]

# Read results
print("=== Processing Monte Carlo Results ===\n")

with open('monte_carlo_results.txt', 'r') as f:
    lines = f.readlines()

# Find the hex values section
hex_values = []
in_hex_section = False

for line in lines:
    if 'All Prices (Hex for Python Processing)' in line:
        in_hex_section = True
        continue
    if in_hex_section and len(line.strip()) == 8:
        hex_values.append(line.strip())

# Convert to floats
prices = [hex_to_float(h) for h in hex_values]

# Display results
print("=== Final Prices ===")
for i, price in enumerate(prices):
    print(f"Path {i}: ${price:.2f}")

# Calculate statistics
mean_price = np.mean(prices)
std_dev = np.std(prices)
min_price = np.min(prices)
max_price = np.max(prices)

print("\n=== Statistics ===")
print(f"Mean Final Price: ${mean_price:.2f}")
print(f"Standard Deviation: ${std_dev:.2f}")
print(f"Min Price: ${min_price:.2f}")
print(f"Max Price: ${max_price:.2f}")
print(f"Range: ${min_price:.2f} - ${max_price:.2f}")

# Additional analysis
print("\n=== Return Analysis ===")
starting_price = 100.0  # Assuming $100 start (adjust if different)
returns = [(p - starting_price) / starting_price * 100 for p in prices]
mean_return = np.mean(returns)
print(f"Average Return: {mean_return:.2f}%")
print(f"Best Path Return: {max(returns):.2f}%")
print(f"Worst Path Return: {min(returns):.2f}%")

# Save processed results
with open('processed_results.txt', 'w') as f:
    f.write("Monte Carlo Simulation - Processed Results\n")
    f.write("=" * 50 + "\n\n")
    
    f.write("Final Prices:\n")
    for i, price in enumerate(prices):
        f.write(f"  Path {i}: ${price:.2f}\n")
    
    f.write(f"\nStatistics:\n")
    f.write(f"  Mean: ${mean_price:.2f}\n")
    f.write(f"  Std Dev: ${std_dev:.2f}\n")
    f.write(f"  Min: ${min_price:.2f}\n")
    f.write(f"  Max: ${max_price:.2f}\n")
    
    f.write(f"\nReturns:\n")
    f.write(f"  Average: {mean_return:.2f}%\n")
    f.write(f"  Best: {max(returns):.2f}%\n")
    f.write(f"  Worst: {min(returns):.2f}%\n")

print("\nProcessed results saved to 'processed_results.txt'")