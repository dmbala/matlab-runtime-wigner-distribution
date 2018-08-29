#!/bin/bash 

export matlab_base="${PWD}/matlab-runtime/v93"
echo $matlab_base
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$matlab_base/runtime/glnxa64:$matlab_base/bin/glnxa64:$matlab_base/sys/os/glnxa64:$matlab_base/sys/opengl/lib/glnxa64:$matlab_base/sys/java/jre/glnxa64/jre/lib/amd64:$matlab_base/sys/java/jre/glnxa64/jre/lib/amd64/headless:$matlab_base/sys/java/jre/glnxa64/jre/lib/amd64/jli:$matlab_base/sys/java/jre/glnxa64/jre/lib/amd64/server:$matlab_base/sys/java/jre/glnxa64/jre/lib/amd64/xawt: 
chmod +x wigner_distribution
# ./wigner_distribution <size-of-matrix> <integer> 
./wigner_distribution 100 1 


