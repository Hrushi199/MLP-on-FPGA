# Fixed-Point Neural Network Inference on FPGA 🚀

![Board](https://img.shields.io/badge/Board-Digilent_Basys_3-red)
![FPGA](https://img.shields.io/badge/FPGA-Artix--7_XC7A35T-blue)
![Toolchain](https://img.shields.io/badge/Tools-Vivado_%7C_Vitis_HLS-green)
![License](https://img.shields.io/badge/License-MIT-orange)

## 📌 Project Overview
This project implements a complete **Multilayer Perceptron (MLP)** Neural Network on a **Xilinx Artix-7 FPGA** (Digilent Basys 3).

Unlike standard FPGA implementations that use ReLU or floating-point arithmetic, this design features:
1.  **True Non-Linear Activation:** Implements $tanh(x) = \frac{e^x - e^{-x}}{e^x + e^{-x}}$ using **CORDIC algorithms**.
2.  **Fixed-Point Arithmetic:** Uses **Q8.8 format** (`ap_fixed<16,8>`) to optimize hardware resources without an FPU.
3.  **End-to-End Deployment:** From Python training to bitstream generation using **Vitis HLS** and **Vivado**.

### 🎯 Objective
To deploy a **784 $\rightarrow$ 64 $\rightarrow$ 10** MLP architecture to classify handwritten digits (MNIST) with high accuracy and low power consumption.

---

## ⚙️ Architecture & Design
The system is built using a hybrid **Hardware-Software** co-design approach:

### Data Flow
1.  **Input:** User selects an image index via **4-bit physical switches** on the board[cite: 85, 90].
2.  **Preprocessing:** Zero-padding logic converts inputs to 32-bit format.
3.  **Processing Core (Vitis HLS):**
    * Performs fully pipelined **Matrix-Vector Multiplication**.
    * Computes activation using iterative **CORDIC Tanh approximation**.
4.  **Output:** The predicted digit class is displayed via **LEDs**.

### Technical Specifications
* **Data Type:** `ap_fixed<16, 8>` (Range: $[-128, 127.9]$, Precision: $\approx 0.0039$).
* **Weights/Bias Storage:** On-chip **Block RAM (BRAM)**.
* **Activation Cost:** The CORDIC implementation consumes **37 DSP48E1 slices** solely for the math operations.

---

## 📊 Performance Results

The hardware implementation was verified against a Python Golden Model and C-Simulation, achieving **bit-exact consistency**.

### 1. Accuracy
| Metric | Value |
| :--- | :--- |
| **Test Set Size** | 1000 Images |
| **Final Accuracy** | **95.80%** |
| **Consistency** | 100% Match with Python Model |

### 2. FPGA vs. CPU Comparison
| Metric | FPGA (Artix-7) | CPU (Reference) |
| :--- | :--- | :--- |
| **Latency** | 0.584 ms | 0.026 ms |
| **Power** | **0.298 W** | ~65 W |
| **Clock Freq** | 100 MHz | ~4 GHz |

> **Note:** While the CPU has lower latency due to high clock speed, the FPGA offers massive **power efficiency**, consuming over **200x less power**.

### 3. Resource Utilization (Post-Route)
| Resource | Used | Utilization % |
| :--- | :--- | :--- |
| **LUT** | 4,262 | 20.49% |
| **FF** | 4,308 | 10.36% |
| **BRAM** | 23 | 46.00% |
| **DSP** | 40 | 44.44% |

---

## 🛠️ Hardware Setup
* **Board:** Digilent Basys 3 (Artix-7 XC7A35T)
* **Interface:**
    * `sw[3:0]`: Selects the test image index.
    * `led[3:0]`: Displays the predicted digit (binary).
