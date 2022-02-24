#Script V3
#Auto Created User Login
#Created by: Bintang Zaquine

import os
username = "bintang" #@param {type:"string"}
password = "zaquine" #@param {type:"string"}
os.system(f"useradd -m {username}")
os.system(f"adduser {username} sudo")
os.system(f"echo '{username}:{password}' | sudo chpasswd")
os.system("sed -i 's/\/bin\/sh/\/bin\/bash/g' /etc/passwd")
