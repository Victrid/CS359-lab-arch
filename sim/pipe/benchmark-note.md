# Benchmark Improvement Log

Original:  Average CPE     16.44 Score   0.0/60.0

After adding `iaddl` instructions: Average CPE   13.96 
Score  0.0/60.0

Adjusting iaddl sequence: Average CPE   12.96 
Score  0.0/60.0

Adjusting another iaddl sequence to fill bubble: Average CPE   11.96 
Score  13.0/60.0

Expanding loop by 2: Average CPE   10.37 
Score  51.1/60.0

Expanding loop by 8: Average CPE   9.79 
Score  60.0/60.0

Expanding loop by 16 (with `leave` instructions): Average CPE   9.63 
Score  60.0/60.0

Finding that we have an extra `%edi` register at our disposal, then we do not need a `pop / push`: Average CPE   9.45 
Score  60.0/60.0

