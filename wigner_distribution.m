% Properties of Random Matrix:http://www-math.mit.edu/~edelman/publications/random_matrix_theory_innovative.pdf
% For a symmetric random matrix, nxn, the distribution of eigen values form a semi-circle when n is very large. This is known as Wigner's semi-cirlce distribution. 
% mcc -m -R -singleCompThread -R -nodisplay -R nojvm wigner_distribution.m  # to compile 

function my_function(n, fnumber)
    %intialize variables: n is the size of matrix, dx is bin width, fnumber is used attach with the file name
    filenumber = num2str(fnumber);
    if ischar(n)
    n = str2num(n);
    end

    %n = round(str2double(n));
    dx = 0.05;

    % Compute eignvalues of a nxn random matrix  
    rng('shuffle')
    a = randn(n);
    M = (a + a')/2;  % construct the symetric random matrix 
    e = eig(M); % solve for the eigen values 
    e = e/(sqrt(2*n));

    %compute histogram
    [m x] = hist(e, -1.1:dx:1.1); % compute histogram
    m = m/(n*dx);
    values = [x;m];
 
    % print outputs
    outfilename = sprintf ( '%s%s%s', 'prob_wigner', filenumber, '.dat' );
    fileID = fopen(outfilename,'w');
    fprintf(fileID,'%9.3f   %9.4f\n', values);
    fclose(fileID);
