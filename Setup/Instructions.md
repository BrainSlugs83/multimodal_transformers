# Instructions

## Notes
**Note:** that there are a lot of SPECIFIC versions of software that must be installed; just installing the latest will definitely not work; and everything is a bit of a hot mess with these Python packages in general.

**Note:** This was tested with Conda 4.13.0, on June 26th, 2022.

**Note:** Although an `environment.yml` file is provided here, it is unlikely to work directly with conda, as some of these items have to be installed with special flags such as `--ignore-installed` or from specific git repo URLs, etc. -- The main purpose behind including this file is for troubleshooting, (e.g. if a specific component isn't working, this should list the version that did work in a "good" environment, so maybe it will help you track down the issue you're facing at some future date.)

## Pre-reqs
    
  - [Enable long paths in Windows 10](https://docs.microsoft.com/en-us/windows/win32/fileio/maximum-file-path-limitation?tabs=cmd#enable-long-paths-in-windows-10-version-1607-and-later)
    - tl;dr: just run the `long-file-paths.reg` file and then **reboot**.

  - Create a `Utils` folder on your PC (recommended: `C:\Utils\`)
    - Add this folder to your system `PATH` ([Tutorial](https://www.c-sharpcorner.com/article/add-a-directory-to-path-environment-variable-in-windows-10/)).
    - Copy the files from the provided `Utils` folder into your `C:\Utils` folder.
    - Note that because you have modified your `PATH` variable, any open shell/terminal sessions, jupyter books, python interpreters, etc. will all need to be closed and re-opened **(if in doubt, just reboot)**.

  - Follow the instructons from the [tensorflow-object-detection-api installation guide](https://tensorflow-object-detection-api-tutorial.readthedocs.io/en/latest/install.html):
    - For the CUDA & CuDNN installs you must install the specific versions that it wants.
      - After the install, you need to **reboot** again.
      - It's okay to install multiple versions of CUDA at once, but in the NVIDIA installer, make sure that ONLY the CUDA box is checked (e.g. do a custom installation).
    - When you get to the part about installing protobuff, you MUST use [version 3.19.4](https://github.com/protocolbuffers/protobuf/releases/tag/v3.19.4) -- this version has already been provided in the `Utils` folder, so you can just skip this setup in the guide.  (Note: if you use any newer version, you will run into cryptic failures later on in the guide.)

  - After you have completed the guide, manually install the following packages:
    ```
    conda install jupyter
    conda install -c conda-forge jupyterlab
    conda install numpy
    conda install matplotlib
    ```
  - Almost there, just make sure your pyparing is version 2.4.7 (anything 3.x will not work, you will run into errors).
    - To see the current version, run: `pip list | find "pyparsing"`
    - To downgrade, run: `pip install pyparsing==2.4.7 --force-reinstall`
    - Then check the version again (sometimes it will say it succeeded but the wrong version is still there!!)

  - Finally, run `test.bat` -- it may take a moment, but if that runs without errors, you are probably in good shape to run the Jupyter notebook (be sure to use the modified version from this repo!)





