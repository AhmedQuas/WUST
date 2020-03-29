clear
close all
clc

z=zeros(4,4);
o=ones(4,4);
e=eye(4,4);

example_matrix=[1,2,3;4,5,6;7,8,9];

example_matrix_times_two=2*example_matrix;

vector_1=rand(1,3);
example_matrix_times_vector=example_matrix.*vector_1;

example_matrix_eye=example_matrix*ones(3,3);

example_matrix_transpose=example_matrix';