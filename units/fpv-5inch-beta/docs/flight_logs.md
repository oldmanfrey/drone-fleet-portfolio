# UAV Flight Telemetry & Validation Logs

This log chronicles the physical modifications, battery health metrics, and blackbox system performance tracking for this specific vehicle asset.

---

## [LOG-2026-10-30] - Flight Test Profile: Prop Validation
- **Pilot:** `oldmanfrey`
- **Location/Environment:** Outdoor field test, 12 mph crosswinds, 68°F
- **Primary Objective:** Validate mid-throttle oscillation fixes after moving to 5x4x3 props.

### 1. Hardware Configuration Status
*   **Flight Stack Firmware:** Betaflight 4.5.1 (Stable Target)
*   **ESC Protocol:** Bluejay 0.20 (94kHz PWM Frequency)
*   **Battery Unit:** Custom 6S1P pack - Pack ID: `6S-MOLICEL-A3`
*   **Payload Weight:** 645g (AUW including action camera)

### 2. Battery & Power Metrics

| Metric | Pre-Flight | Post-Flight | Delta / Notes |
| :--- | :--- | :--- | :--- |
| **Total Voltage** | 25.2V | 22.2V | Standard operational sag |
| **Cell Average** | 4.20V / cell | 3.70V / cell | Landed at storage voltage safety limit |
| **Capacity Used** | 0 mAh | 3150 mAh | 70% depth of discharge |
| **Internal Resistance**| 4.2 mΩ avg | 4.5 mΩ avg | Pack health within nominal parameters |

### 3. Flight Profile & Quantitative Telemetry
*   **Total Flight Time:** 4 mins 22 secs
*   **Hover Throttle Position:** 24%
*   **Peak Current Draw:** 84.2 A (during vertical punch-out evaluation)
*   **Core Component Temperature:** 
    *   *Motors:* 54°C (Warm to touch, acceptable)
    *   *ESC Board:* 48°C (Nominal cooling)

### 4. Qualitative Systems Evaluation & Pilot Notes
*   **Handling & Response:** The drop from 4.3 to 4.0 pitch props completely smoothed out the 1400Hz mid-throttle vibration profile. Corner tracking feels locked-in with zero wash-out during sharp snap rolls.
*   **Deficiencies Noted:** Lost about 10% top-end recovery punch when pulling out of terminal dives. Throttle curve linear adjustments may be required to compensate for lower prop pitch.

### 5. Maintenance Actions & Maintenance Tickets Raised
- [x] Torque-check all structural frame spacer screws (All secured at 1.2 Nm).
- [ ] **Issue #18 Raised:** Intermittent analog video breakup on vertical axes. Need to inspect VTX antenna coax seating before next pack cycle.
