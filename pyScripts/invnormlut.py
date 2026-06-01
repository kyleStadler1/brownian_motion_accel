
################################################# 16 version
# import numpy as np
# from scipy.stats import norm

# # --- CONFIG ---
# n = 13                               # address width
# N = 2**n                              # number of entries (full 2^n)
# coe_filename = f"invnorm_lut_{n}bit_fp16.coe"
# decimal_filename = f"invnorm_lut_{n}bit_decimal.txt"

# # --- GENERATE BALANCED PROBABILITIES ---
# indices = np.arange(N)
# p = (indices + 0.5) / (N + 1)       # balanced so tails are symmetric
# z = norm.ppf(p, loc=0.5, scale =1/6)
# z = np.clip(z, -6, 6)               # optional safety clip for finite range

# # --- SAVE DECIMAL LUT ---
# np.savetxt(decimal_filename, z, fmt="%.6f")
# print(f"Decimal LUT saved as {decimal_filename}")

# # --- CONVERT TO IEEE FP16 HEX ---
# z_fp16 = np.float16(z)
# z_fp16_hex = [
#     format(np.frombuffer(np.float16(val).tobytes(), dtype=np.uint16)[0], '04x')
#     for val in z_fp16
# ]

# # --- SAVE COE FILE ---
# with open(coe_filename, "w") as f:
#     f.write(
#         f"""; This COE file is generated from an FP16 inverse normal LUT
# ; Address width = {n}, entries = {N}

# memory_initialization_radix=16;
# memory_initialization_vector=
# """
#     )

#     # Write values, 10 per line for readability
#     for i, word in enumerate(z_fp16_hex):
#         if i % 10 == 9 or i == N - 1:
#             f.write(word + "\n")
#         else:
#             f.write(word + " ")

#     f.write(";")

# print(f"COE file saved as {coe_filename}")
# print(f"Entries: {N}")
# print(f"Range: {z.min():.3f} to {z.max():.3f}")

################################################# 16 version



import numpy as np
from scipy.stats import norm
import struct

# --- CONFIG ---
n = 10                               # address width
N = 2**n                              # number of entries (full 2^n)
coe_filename = f"invnorm_lut_{n}bit_fp32.coe"
decimal_filename = f"invnorm_lut_{n}bit_decimal.txt"

# --- GENERATE BALANCED PROBABILITIES ---
indices = np.arange(N)
p = (indices + 0.5) / (N + 1)       # balanced so tails are symmetric
z = norm.ppf(p, loc=0.5, scale=1/6)
z = np.clip(z, -6, 6)               # optional safety clip for finite range

# --- SAVE DECIMAL LUT ---
np.savetxt(decimal_filename, z, fmt="%.6f")
print(f"Decimal LUT saved as {decimal_filename}")

# --- CONVERT TO IEEE FP32 HEX ---
z_fp32 = np.float32(z)
z_fp32_hex = [
    format(struct.unpack('<I', struct.pack('<f', val))[0], '08x')
    for val in z_fp32
]

# --- SAVE COE FILE ---
with open(coe_filename, "w") as f:
    f.write(
        f"""; This COE file is generated from an FP32 inverse normal LUT
; Address width = {n}, entries = {N}

memory_initialization_radix=16;
memory_initialization_vector=
"""
    )

    # Write values, 10 per line for readability
    for i, word in enumerate(z_fp32_hex):
        if i % 10 == 9 or i == N - 1:
            f.write(word + "\n")
        else:
            f.write(word + " ")

    f.write(";")

print(f"COE file saved as {coe_filename}")
print(f"Entries: {N}")
print(f"Range: {z.min():.3f} to {z.max():.3f}")