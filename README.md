# SpokenWeb 



### Installing and running Docker
Follow the instructions for your operating system to install Docker:
* [Windows](https://docs.docker.com/docker-for-windows/) (For Windows 10 Home Edition, [see here](https://pcda17.github.io/tutorials/Docker_install_Windows))
* [Mac](https://docs.docker.com/docker-for-mac/)


Enter the following three commands in the terminal to kill an existing SpokenWeb container (if applicable), then download and run the latest version of this Docker container.

```
docker rm -f spokenweb
docker pull hipstas/spokenweb
docker run -it --name spokenweb -d -p 8887:8887 -v ~/Desktop/sharedfolder:/sharedfolder hipstas/spokenweb
```

When the commands above finished running, point your browser to `http://localhost:8887` in to launch the Jupyter interface.

### Running with Binder

If you are unable to run Docker on your machine, you can use [Binder](https://mybinder.readthedocs.io/en/latest/) to work with these Jupyter notebooks in your browser. Click the button below to launch. It may take several minutes to initialize the server.

Work done in Binder will not persist across sessions-- if you close and re-open a Binder instance of this repository, any changes you made will be lost. You can download a notebook to save your changes by going to File > Download As with the notebook open in Jupyter.

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/hipstas/spokenweb/master)
