# Wordpress installation using Vagrant LAMP
![version](https://img.shields.io/badge/version-1.0-blue)

**@author:** Lazlo Meli \< https://github.com/lazlomeli >

> Built with: 

![Vagrant](https://img.shields.io/badge/vagrant-%231563FF.svg?style=for-the-badge&logo=vagrant&logoColor=white)
![Ruby](https://img.shields.io/badge/ruby-%23CC342D.svg?style=for-the-badge&logo=ruby&logoColor=white)
![WordPress](https://img.shields.io/badge/WordPress-%23117AC9.svg?style=for-the-badge&logo=WordPress&logoColor=white)
![Shell Script](https://img.shields.io/badge/shell_script-%23121011.svg?style=for-the-badge&logo=gnu-bash&logoColor=white)
![Oracle](https://img.shields.io/badge/Oracle-F80000?style=for-the-badge&logo=oracle&logoColor=white)
![MySQL](https://img.shields.io/badge/mysql-%2300f.svg?style=for-the-badge&logo=mysql&logoColor=white)

_______________________________________________________________

### 1. Requirements and version installations
<sup>The project was made for Windows OS</sup>
- [Oracle VM Virtual Box](https://www.virtualbox.org/wiki/Downloads) 
- [Vagrant 2.3.0 for Windows](https://www.vagrantup.com/downloads)
- [MySQL Server 8.0](https://dev.mysql.com/downloads/mysql/)

_______________________________________________________________

### 2. Installation
Clone the repostory in your desired folder. After doing so, `git pull` just to make sure you have the latest version.
> Listing the files in my folder after cloning:

![image](https://user-images.githubusercontent.com/72606659/194422481-6b71fe31-383b-4ba8-bacc-5052a6ab4c68.png)

### 3. Running the project
Simple. Double click the `setup.bat` file. It will run and configure everything.
> Edit the script in any text editor to see what it does

Once you run this script a **Command Prompt** should open up and start configuring the Vagrant box. It should look something like this:
> Command Line logs

<img src="https://user-images.githubusercontent.com/72606659/194424879-b29db742-f28c-46be-9bb7-16f4025fdfc9.png" width="700" height="300">

A Virtual Box virtual machine should also start up and start configuring itself.
If you open up the Oracle VM VirtualBox application, you can see that a new virtual machine has been created:

![image](https://user-images.githubusercontent.com/72606659/194425206-6aeabc70-3c07-4fd4-98b9-37492a7d4c0d.png)

After the virtual machine is configured. A **Google Chrome** tab should automatically open at `http://127.0.0.1:8080/`
You should see something like this:
> Wordpress set up page

<img src="https://user-images.githubusercontent.com/72606659/194426321-b1a7b03a-77d5-490b-ab14-a29bea32cf59.png" width="450" height="500">

Fill up the labels with your information and you have yourself a fully configured Wordpress. Now you can customize your new Wordpress administration dashboard as you like.

_______________________________________________________________

### 4. Performance Testing
> Apache Benchmark version 2.3 was used

The following command was used to test the server `ab -k -n100 -c5 http://127.0.0.1:8000/`
To learn more about the flags used in this command, [here](https://httpd.apache.org/docs/2.4/programs/ab.html) you can find the official Apache documentation about it.

> This is the output of the previous command:

<img src="https://user-images.githubusercontent.com/72606659/194429378-c5eb790e-b7de-4b74-bc1c-99a528ef65e0.png" width="600" height="600">

I tested the server with: 
- **100** petitions with **5** concurrent petitions
- **200** petitions with **20** concurrent petitions
- **300** petitions with **30** concurrent petitions
- **350** petitions with **35** concurrent petitions

> I could not go any further than 350/35, the server would crash out.

After all the tests, I collected the data and graphied it:
> Time per request in seconds

<img src="https://user-images.githubusercontent.com/72606659/194429891-2577c8dc-a68a-4593-9032-709a7416b26c.png" width="600" height="400">

### 5. Connect via SSH
It is possible to connect to the virtual machine created by Vagrant using SSH. The following command will allow you to do so:

`ssh vagrant@127.0.0.1 -p 2222 -o Compression=yes -o DSAAuthentication=yes -o LogLevel=FATAL -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -o ForwardAgent=yes`

> This command will then ask for the 'vagrant' user password, which in fact is 'vagrant'. To learn more about SSH command flags and options [click here](https://linuxcommand.org/lc3_man_pages/ssh1.html)

_______________________________________________________________

### 6. End
Learn more about Vagrant [here](https://www.vagrantup.com/docs)
