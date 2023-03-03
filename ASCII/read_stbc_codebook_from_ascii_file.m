function [x, n, M] = read_stbc_codebook_from_ascii_file(filename)
% function [x, n, M] = read_stbc_codebook_from_ascii_file(filename)
% reads a complex-valued STBC codebook from ASCII file
% (2 transmitting antennas assumed)
% ASCII file should contain a table of real-valued numbers
% Each row represents one signal from the codebook
% The first half of columns represents signal for the 1st antenna,
% the seconf half of columns represents signal for the 2nd antenna
% 1, 3, 5,... columns represent real part of numbers,
% 2, 4, 6,... columns represent imaginary part of numbers
% filename - ASCII file name, including extension
% x - codebook, complex-valued 2D (M-by-2*n) array, signals along rows
% n - number of complex-valued time-domain samples in the codebook signals
% M - number of signals in the codebook

s = load(filename, '-ascii');
if mod(size(s, 2), 2)
    error('ASCII table should contain even number of columns!')
end
n = size(s, 2)/4;
M = size(s, 1);
x = complex(s(:,1:2:end), s(:,2:2:end));
