# UGA ACM Machine Learning Workshop

*Shannon Quinn*

- email: <squinn@cs.uga.edu>
- twitter: [@SpectralFilter](https://twitter.com/SpectralFilter)
- github
  - [teaching](https://github.com/eds-uga)
  - [research](https://github.com/quinngroup)

This repository contains notebooks and other files associated with the UGA ACM Machine Learning Workshop (based almost entirely on Jake VanderPlas' [scikit-learn tutorial](https://github.com/jakevdp/sklearn_tutorial); see "Acknowledgements" section at the end of this file).

## Viewing the materials

If you just want to view the static files, look no further--GitHub renders then natively in the web browser! Simply click on the `.ipynb` file you want to view, and it will appear.

Alternatively, you can [view the tutorial materials](http://nbviewer.ipython.org/github/eds-uga/acm-ml-workshop-2017/blob/master/notebooks/Index.ipynb) using the excellent `nbviewer` service.

Note, however, that you **cannot modify or run the contents within `nbviewer`**. To run or modify, then you'll have to read on to the next section.

## Installation and Setup

Executing the code in the Jupyter notebooks requires the following packages to be installed:

- Python version 3.5+
- `numpy` version 1.12 or later: http://www.numpy.org/
- `scipy` version 0.19 or later: http://www.scipy.org/
- `matplotlib` version 2.0 or later: http://matplotlib.org/
- `scikit-learn` version 0.18 or later: http://scikit-learn.org
- `jupyter` version 2.0 or later, with notebook support: http://ipython.org
- `seaborn` version 0.7 or later

There are several ways of getting up and running (see the [01-Introduction](https://github.com/eds-uga/acm-ml-workshop-2017/blob/master/notebooks/01-Introduction.ipynb) slides). In order from most technical to least:

### 1: Clone the repository and run locally

You can either clone the repository (you'll need `git` installed) with the command:

    git clone git://github.com/eds-uga/acm-ml-workshop-2017.git

or you can click the green "Clone or download" button on the right side of the main repository window to download a ZIP of the files you'll need.

Next, you'll need to make sure you have the proper prerequisites installed. The easiest way to do this is with [conda](https://store.continuum.io/). Download and install [miniconda](http://conda.pydata.org/miniconda.html), then install the needed packages for your envrionment:

    conda install numpy scipy matplotlib scikit-learn jupyter seaborn

Finally, `cd` into the `notebooks` subdirectory of the files you checked out from GitHub, and run

    jupyter notebook

A browser window should pop up, and you should see a list of the `ipynb` files. Just click on one and go!

### 2: Spin up a Docker container

I've created a Docker container that automatically builds and stores everything you'll need; all you have to do is download the pre-built container from the Docker Hub, issue a single command, and you should be up and running.

First, you'll need to download the [version of Docker appropriate for your platform](https://www.docker.com/community-edition#/download).

Once you've installed Docker, fire up a command prompt. Run the following command to pull down the pre-built image:

    docker pull magsol/uga-acm-ml-workshop-2017

This might take some time; the image is nearly 2.5GB!

Once the pull is finished, use the following command to run it:

    docker run -it --rm -p 8888:8888 magsol/uga-acm-ml-workshop-2017

You should see some green text spill out, and then the prompt will hang, seemingly waiting. This should signal that the Jupyter server is up and running. To test this, open up a web browser, and direct it to `http://localhost:8888`.

If it worked, you should see a listing of the `ipynb` files. Click on one, and you should be good to go!

### 3: Download a pre-built VirtualBox VM

First (and hopefully obviously), you'll need to [download and install VirtualBox](https://www.virtualbox.org/wiki/Downloads). Like Docker, it runs on pretty much any operating system.

Once the VirtualBox interface is up and running, all you have to do is download the virtual machine image (VDI) and plug it into VirtualBox.

The image is located here (**you need to be connected to the UGA network to access**): [http://ridcully.cs.uga.edu/uga-acm-ml-workshop-2017.vdi](http://ridcully.cs.uga.edu/uga-acm-ml-workshop-2017.vdi). Be patient with this one; it's almost 8GB!

When you've downloaded the VM image, go to the main VirtualBox window and click the "New" icon in the upper left corner. This starts the process of creating a new VM. Give it whatever name you want; select "Linux" from the "Type" drop-down; select "Ubuntu (64-bit)" from the "Version" drop-down. Click "Next".

Set whatever memory size you'd like (4GB should work just fine). Click "Next".

**Here's the important step.** Choose "Use an existing virtual hard disk file", and click the icon on the far right to navigate to the VDI file you just downloaded. Select it, and hit the "Create" button. You should be done!

At this point, a new icon should appear on the main screen, with whatever name you gave it in the first step. Click this item, and select "Start" to boot it up.

Once you've booted up the VM, on the lefthand panel, right-click on the black square window-looking icon, and select "New Terminal". A black window with green text should pop up. Type:

    ./QUICKSTART.sh

and press `ENTER`. Firefox should open up in a few seconds, and you should see a list of the Jupyter notebooks. Click one and you should be good to go!

### 4: Use mybinder

The wonderful folks at [HHMI Janelia Farms](https://www.janelia.org/) have created a free service that can "containerize" any open GitHub repository. All you have to do is follow these two steps:

 1. Go to the main file listing in this GitHub repo, and click the `notebooks` folder.
 2. Scroll down to the text that says "Machine Learning Workshop Materials". Click the little "binder" button above it.

Give it a few minutes--these are free servers, after all--and you should see a listing of all the notebooks. Click one, and you're good to go!

# Acknowledgements

This material is based almost entirely on the content made available by Jake VanderPlas in his excellent [scikit-learn tutorial](https://github.com/jakevdp/sklearn_tutorial).

The original license is maintained. While some of the material may have been reorganized to follow a more traditional slide-based presentation, it is still nearly identical in substance.

Many thanks to Jake for this excellent resource, and all of his work furthering Open Science in general.
