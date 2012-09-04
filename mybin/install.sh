baseDir=$(cd "$(dirname "$0")"; pwd)

cat << EOF >> $HOME/.bashrc1

# User specific aliases and functions
export LD_LIBRARY_PATH=$baseDir/usr/lib:\$LD_LIBRARY_PATH
export PATH=$baseDir/usr/bin:\$PATH
EOF
