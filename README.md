# Audio Analysis Workshop Environment setup

## I. Install Docker 
Follow the instructions for your operating system to install Docker:
* [Windows](https://docs.docker.com/docker-for-windows/) (For Windows 10 Home Edition, [see here](https://pcda17.github.io/tutorials/Docker_install_Windows))
* [Mac](https://docs.docker.com/docker-for-mac/)

### Troubleshooting installing on Windows 10
Docker has a known bug with the virtual private network code they are using which “randomly” prevents some peoples’ configurations from doing proper DNS lookups in Windows 10 installs when the Docker DNS settings are set to “automatic”. To potentially resolve this issue, some users report that going into the Docker settings under network and selecting DNS Server - fixed: 8.8.8.8 may make it work. In the Windows 10 version of Docker, right-click on Docker in the taskbar and choose settings – in the dialog that appears; “Network” is an option on the left navigation bar and the option appears there.

## II. Download the Docker Image

1. Open a new terminal window (Mac) or command prompt (Windows).

2. Run the following command to download the latest version of the Docker image.

```
docker pull hipstas/spokenweb
```

## III. Start Docker

1. Enter the following commands in the terminal to kill an existing SpokenWeb container (if applicable), then run the Docker container. [These commands are explained in more detail below.]

```
docker rm -f spokenweb
docker run -it --name spokenweb -d -p 8887:8887 -v ~/Desktop/sharedfolder:/sharedfolder hipstas/spokenweb
```

## IV. Download the workshop files
1. Download all the repository files to the new 'sharedfolder' that Docker has created on your desktop by selecting the green "Clone or Download" button at https://github.com/hipstas/spokenweb/

![downloading files](arrow.png?raw=true "Title")

2. Unzip the files in to the 'sharedfolder' diretory. 

## V. Start Jupyter notebook
When the commands above have finished running, open your browser to URL `http://localhost:8887` to launch the Jupyter interface.

## VI. Additional information

### Running with Binder [![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/hipstas/spokenweb/master)

If you are unable to run Docker on your machine, you can use [Binder](https://mybinder.readthedocs.io/en/latest/) to work with these Jupyter notebooks in your browser. Click the button below to launch. It may take several minutes to initialize the server.

Work done in Binder will not persist across sessions-- if you close and re-open a Binder instance of this repository, any changes you made will be lost. You can download a notebook to save your changes by going to File > Download As with the notebook open in Jupyter.

### Getting Started with Jupyter Notebooks
Here are some resources to get you started using Jupyter Notebooks.
* [NBViewer](http://nbviewer.jupyter.org) - For viewing (but not running or editing) notebooks quickly.
* [Jupyter Notebook documentation](https://jupyter-notebook.readthedocs.io/en/latest/)
* [Beginner Guide](https://jupyter-notebook-beginner-guide.readthedocs.io/en/latest/what_is_jupyter.html)
* [Notebook Basics](https://nbviewer.jupyter.org/github/jupyter/notebook/blob/master/docs/source/examples/Notebook/Notebook%20Basics.ipynb)

### Docker in more detail
All operating systems are different but we want everyone to use the same kind so we will use Docker. Docker is an application that makes it possible to run a virtual copy of the Linux operating system within your primary OS. We will be using Ubuntu, a version of Linux that is often used to run web servers. Ordinarily, you would launch an Ubuntu server and then install the programs you need, one by one; Docker lets us speed up that process by defining our system's initial configuration in a plain text file, known as a Dockerfile. You can view the Dockerfile we are currently using here.

For more details on how Docker works, [see this overview](https://docs.docker.com/engine/docker-overview/).

1. Open a new terminal window (Mac) or command prompt (Windows).
2. Enter the following command in the terminal window to download the Docker image files we'll be using. This could take several minutes.
```docker pull pcda17/ubuntu-container```
3. When the download is complete, enter the following command to run the container. This will create a new directory called sharedfolder on your desktop.

```docker run --name spokenweb -ti -p 8887:8887 -v ~/Desktop/sharedfolder/:/sharedfolder/ hipstas/spokenweb```

The command above includes several options:
* The `--name` flag sets the name of our container as `spokenweb`. 
* `-ti` tells Docker that we want to use an interactive terminal.
* `-p` maps port 8887 in our container to port 8887 in our local OS.
* The `-v` option defines a "shared volume" between the container and our local machine, a directory called sharedfolder.
* `hipstas/spokenweb` identifies the image we want to download, which is hosted on the Docker Hub website.
