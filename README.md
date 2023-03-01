# nc_aen_stbc_fast_2023
Codebooks for noncoherent space-time block codes obtained using autoencoder network and optimized for fast fading conditions

This repository contains codebooks for noncoherent reception of space-time block codes obtained using autoencoder neural network and optimized for fast fading conditions.

These results are presented in the following paper:

Alexander B. Sergienko, "Optimization of Space-Time Block Codes for Noncoherent Reception in Fast Fading Channels," 
submitted to DSPA-2023.

The codebooks are presented in two formats: as MATLAB data files (`*.mat`, folder `MAT`) and as ASCII files (`*.txt`, folder `ASCII`)

File names have the following form: `cb_stbc_fast_n*_M*`

The number after "n" shows the number of samples in the codebook signals.

The number after "M" shows the number of signals in the codebook (i.e., the number of bits that can be transmitted using this codebook is `log2(M)`)

For example, the file `cb_stbc_fast_n6_M16.txt` contains the codebook with M=16 signals (4 bits per signal) consisting of n=6 samples.

All codebooks are designed for 2 transmitting antennas.

Every `.MAT` file contains a single variable with the name `ssc`. This variable is a 2D complex-valued array with `M` rows and `2*n` columns. Every row of this array represents one signal from the codebook. The first `n` columns contain the signal samples for the first transmitting antenna, remaining `n` columns contain the signal samples for the second transmitting antenna. 

Every `.TXT` file contains an ASCII table of numbers with `M` rows and `4*n` columns. Every row of the table represents one signal from the codebook. The first `2*n` columns contain the signal samples for the first transmitting antenna, remaining `2*n` columns contain the signal samples for the second transmitting antenna. Columns with even numbers (0-based indexing assumed) contain real parts of signal samples, columns with odd numbers contain imaginary parts of signal samples. For example, for `n=4` the row of ASCII table contains the numbers in the following order:

```
Column number: 00 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15
Re/Im:          R  I  R  I  R  I  R  I  R  I  R  I  R  I  R  I
Sample:         1  1  2  2  3  3  4  4  1  1  2  2  3  3  4  4
Antenna:        1  1  1  1  1  1  1  1  2  2  2  2  2  2  2  2
```

The `ASCII` folder also contains the file `read_stbc_codebook_from_ascii_file.m` - MATLAB function for reading a codebook from these ASCII files. The 

functiuon returns a MATLAB variable in the format described above for "ssc" variable in `.MAT` files.
