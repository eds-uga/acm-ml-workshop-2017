# UGA ACM Machine Learning Workshop

*Shannon Quinn*

- email: <squinn@cs.uga.edu>
- twitter: [@SpectralFilter](https://twitter.com/SpectralFilter)
- github
  - [EDS@UGA](https://github.com/eds-uga)
  - [Quinn Group](https://github.com/quinngroup)
  - [my github](https://github.com/magsol)

This repository contains notebooks and other files associated with the UGA ACM Machine Learning Workshop (based almost entirely on Jake VanderPlas' [scikit-learn tutorial](https://github.com/jakevdp/sklearn_tutorial); see "Acknowledgements" section at the end of this file).

## Installation and Setup

This tutorial requires the following packages:

- Python version 3.5+
- `numpy` version 1.12 or later: http://www.numpy.org/
- `scipy` version 0.19 or later: http://www.scipy.org/
- `matplotlib` version 2.0 or later: http://matplotlib.org/
- `scikit-learn` version 0.18 or later: http://scikit-learn.org
- `jupyter` version 2.0 or later, with notebook support: http://ipython.org
- `seaborn` version 0.7 or later

The easiest way to get these is to use the [conda](https://store.continuum.io/) environment manager. I suggest downloading and installing [miniconda](http://conda.pydata.org/miniconda.html).

Once this is installed, the following command will install all required packages in your Python environment:
```
$ conda install numpy scipy matplotlib scikit-learn jupyter seaborn
```

Alternatively, you can download and install the (very large) Anaconda software distribution, found at https://store.continuum.io/.

## Downloading the Tutorial Materials

I would highly recommend using git, not only for this tutorial, but for the
general betterment of your life.  Once git is installed, you can clone the
material in this tutorial by using the git address shown above:

    git clone git://github.com/eds-uga/acm-ml-workshop-2017.git

If you can't or don't want to install git, there is a link above to download
the contents of this repository as a zip file.

## Notebook Listing

You can [view the tutorial materials](http://nbviewer.ipython.org/github/eds-uga/acm-ml-workshop-2017/blob/master/notebooks/Index.ipynb) using the excellent nbviewer service.

Note, however, that you cannot modify or run the contents within nbviewer.
To modify them, first download the tutorial repository, change to the notebooks directory, and run ``ipython notebook``.
You should see the list in the ipython notebook launch page in your web browser.
For more information on the IPython notebook, see http://ipython.org/notebook.html

Note also that some of the code in these notebooks will not work outside the
directory structure of this tutorial, so it is important to clone the full
repository if possible.

# Acknowledgements

This material is based almost entirely on the content made available by Jake VanderPlas in his excellent [scikit-learn tutorial](https://github.com/jakevdp/sklearn_tutorial).

The original license is maintained. While some of the material may have been reorganized to follow a more traditional slide-based presentation, it is still nearly identical in substance.

Many thanks to Jake for this excellent resource, and all of his work furthering Open Science in general.