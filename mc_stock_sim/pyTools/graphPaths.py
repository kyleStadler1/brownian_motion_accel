import pandas as pd
import matplotlib.pyplot as plt
import os

# ===========================
# CONFIGURATION
# ===========================
CSV_FILE = "sim_fp32.csv"
PATH = os.path.join("..", "mc_stock_sim.sim", "sim_1", "behav", "xsim", CSV_FILE)
EXPECTED_PATHS = 100000
MAX_DAY = 59
# ===========================

def main():
    try:
        df = pd.read_csv(PATH)
    except FileNotFoundError:
        print(f"ERROR: File not found: {PATH}")
        return

    print(f"Loaded {len(df)} rows from CSV")

    # Drop block column if present — not needed for analysis
    df.drop(columns=['block'], errors='ignore', inplace=True)

    # Validate columns
    required_columns = {"uid", "day", "price"}
    if not required_columns.issubset(df.columns):
        print(f"ERROR: CSV missing required columns. Found: {list(df.columns)}")
        return

    # Convert types
    df['uid']   = df['uid'].astype(int)
    df['day']   = df['day'].astype(int)
    df['price'] = df['price'].astype(float)

    # ===========================
    # CHECK FOR DUPLICATE UID:DAY COMBOS
    # ===========================
    duplicates = df[df.duplicated(subset=['uid', 'day'], keep=False)]
    if not duplicates.empty:
        print("\n====================================================")
        print(f"WARNING: Found {len(duplicates)} duplicate uid:day entries!")
        print(duplicates.sort_values(['uid', 'day']).to_string(index=False))
        print("====================================================\n")
    else:
        print("No duplicate uid:day entries found.")

    # ===========================
    # CHECK FOR MISSING PATHS
    # ===========================
    all_uids     = set(range(EXPECTED_PATHS))
    found_uids   = set(df['uid'].unique())
    missing_uids = all_uids - found_uids

    if missing_uids:
        print("\n====================================================")
        print(f"WARNING: Missing {len(missing_uids)} UIDs!")
        print(sorted(missing_uids))
        print("====================================================\n")
    else:
        print("No missing UIDs detected.")

    # ===========================
    # CHECK FOR MISSING DAYS PER PATH
    # ===========================
    expected_days    = set(range(0, MAX_DAY + 1))
    missing_day_total = 0

    print("\n====================================================")
    print("CHECKING FOR MISSING DAYS PER PATH (IGNORING DAY 0)")
    print("====================================================")

    for uid, group in df.groupby('uid'):
        days_present = set(group['day'])
        missing_days = expected_days - days_present
        missing_days.discard(0)

        if missing_days:
            missing_day_total += 1
            print(f"UID {uid} missing days: {sorted(missing_days)}")

    if missing_day_total == 0:
        print("All UIDs have complete day data (except day 0, which is ignored).")
    else:
        print(f"\nTOTAL UIDs WITH MISSING DAYS: {missing_day_total}")

    # ===========================
    # CHECK FOR EXTRA / UNEXPECTED DAYS
    # ===========================
    extra_days = df[~df['day'].between(0, MAX_DAY)]
    if not extra_days.empty:
        print("\n====================================================")
        print("WARNING: Found rows with INVALID day values!")
        print(extra_days.sort_values(['uid', 'day']).to_string(index=False))
        print("====================================================\n")

    # ===========================
    # SUMMARY REPORT
    # ===========================
    unique_uids = df['uid'].nunique()
    print("\n====================================================")
    print("FINAL DATA QUALITY REPORT")
    print("====================================================")
    print(f"Total CSV rows              : {len(df)}")
    print(f"Unique UIDs found           : {unique_uids}")
    print(f"Expected UIDs               : {EXPECTED_PATHS}")
    print(f"Duplicate uid/day rows      : {len(duplicates)}")
    print(f"Missing UIDs                : {len(missing_uids)}")
    print(f"UIDs with missing days      : {missing_day_total}")
    print("====================================================\n")

    # ===========================
    # PLOT
    # ===========================
    plt.figure(figsize=(9.6, 5.4), dpi=200)
    for uid, group in df.groupby('uid'):
        group_sorted = group.sort_values('day')
        plt.plot(group_sorted['day'], group_sorted['price'], alpha=0.03, linewidth=0.5)

    plt.xlabel("Day", fontsize=16)
    plt.ylabel("Price", fontsize=16)
    plt.title(f"{unique_uids} Monte Carlo Paths", fontsize=18)
    plt.grid(True)
    plt.tight_layout()
    plt.show()

if __name__ == "__main__":
    main()