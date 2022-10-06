# Automatic Wordpress installation using Vagrant
**@author:** Lazlo Meli (https://github.com/lazlomeli)
_______________________________________________________________
> Built with: 

![Ruby](https://img.shields.io/badge/ruby-%23CC342D.svg?style=for-the-badge&logo=ruby&logoColor=white)
![Shell Script](https://img.shields.io/badge/shell_script-%23121011.svg?style=for-the-badge&logo=gnu-bash&logoColor=white)

### 1. Requirements and version installations
<sup>The project was made for Windows OS</sup>
- [Oracle VM Virtual Box](https://www.virtualbox.org/wiki/Downloads) 
- [Vagrant 2.3.0 for Windows](https://www.vagrantup.com/downloads)


### 2. Installation
Clone the repostory in your desired folder. After doing so, `git pull` just to make sure you have the latest version.
> Listing the files in my folder after cloning:

![image](https://user-images.githubusercontent.com/72606659/194422481-6b71fe31-383b-4ba8-bacc-5052a6ab4c68.png)


### 3. Running the project
Simple. Double click the `setup.bat` file. It will run and configure everything.
> Edit the script in any text editor to see what it does

Once you run this script a **Command Prompt** should open up and start configuring the Vagrant box. It should look something like this:
> Command Line logs

![image](https://user-images.githubusercontent.com/72606659/194424879-b29db742-f28c-46be-9bb7-16f4025fdfc9.png)

A Virtual Box virtual machine should also start up and start configuring itself.
If you open up the Oracle VM VirtualBox application, you can see that a new virtual machine has been created:

![image](https://user-images.githubusercontent.com/72606659/194425206-6aeabc70-3c07-4fd4-98b9-37492a7d4c0d.png)

After the virtual machine is configured. A **Google Chrome** tab should automatically open at `http://127.0.0.1:8080/`
You should see something like this:
> Wordpress set up page

![image](https://user-images.githubusercontent.com/72606659/194426321-b1a7b03a-77d5-490b-ab14-a29bea32cf59.png)

### 4. Setting up the Wordpress Dashboard

Fill up the labels with your information and you have yourself a fully configured Wordpress. Now you can customize your new Wordpress administration dashboard as you like.
