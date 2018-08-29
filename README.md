[title]: - "RandomMatrix and Wigner's semi-circle law"
[TOC] 

## Files

The following files are needed install the matlab runtime library and run the standalone MATLAB application "wigner_distribution"

    install.sh (downloads MATLAB runtime library, unpacks and installs in the local directory)
    wigner_distribution (compiled matlab application)
    wigner_distribution.sh (sets up the matlab runtime environment and executes wigner_distribution)

The standalone applicaiton "wigner_distribution" is created by compiling the matlab script "wigner_distribution.m"  on a machine where MATLAB installed with a license. 

    wigner_distribution.m (actual matlab script. not needed for the example job)


## Compilation

On Amarel cluster, 

    module load MATLAB/R2017b
    mcc -m -R -singleCompThread -R -nodisplay -R -nojvm wigner_distribution.m


You should the compiled application `wigner_distribution` and some additional files. We need only the compiled binary file `wigner_distribution` to run the job. 





