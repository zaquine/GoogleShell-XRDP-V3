#Script V3
#Auto Created User Login
#Created by: Bintang Zaquine

import os
username = "zaquine" #@param {type:"string"}
password = "123456" #@param {type:"string"}
os.system(f"useradd -m {username}")
os.system(f"adduser {username} sudo")
os.system(f"echo '{username}:{password}' | sudo chpasswd")
os.system("sed -i 's/\/bin\/sh/\/bin\/bash/g' /etc/passwd")
