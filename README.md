# dotfiles

## Windows Terminal
- Windows Terminal can be downloaded from this [link](https://www.microsoft.com/en-us/p/windows-terminal/9n0dx20hk701?activetab=pivot:overviewtab) or by searching "Windows Terminal" from the Microsoft Store.
- Windows Terminal source code is available [here](https://github.com/microsoft/terminal).

 ### PLEASE NOTE:
 - The configuration needs to be pasted to the following path:
 ``C:\Users\<USERNAME>\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState``.
 - To use the exact same configuration, you need [WSL2](https://docs.microsoft.com/en-us/windows/wsl/install-win10) with Ubuntu and Kali installed (they are included in the config, should work fine without them as well).

## scripts/
Here is some information about the scripts/ directory. Download links to dependencies can be opened by clicking the 64-bit options.

- beer_firefox.py
    - Dependencies:
        - Firefox [64-bit](https://www.mozilla.org/en-US/firefox/browsers/windows-64-bit/)
        - Geckodriver [64-bit](https://github.com/mozilla/geckodriver/releases/latest)
        - Python 3 (3.7.9 recommended) [64-bit](https://www.python.org/downloads/release/python-379/)
- beer_chrome.py
    - Dependencies:
        - Chrome / Chromium [64-bit](https://www.google.com/intl/fi_fi/chrome/)
        - Chromedriver [64-bit](https://chromedriver.chromium.org/downloads)
        - Python 3 (3.7.9 recommended) [64-bit](https://www.python.org/downloads/release/python-379/)

After downloading either of the webdrivers, move the executable to the scripts/ directory. They are gitignored by default. Then you should be good to go. If you run into any issues, feel free to open an issue about them.