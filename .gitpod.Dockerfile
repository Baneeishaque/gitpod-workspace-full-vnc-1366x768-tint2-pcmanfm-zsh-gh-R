FROM baneeishaque/gitpod-workspace-full-vnc-1366x768-tint2-pcmanfm-zsh-gh

RUN sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key E298A3A825C0D65DFD57CBB651716619E084DAB9 | tee /tmp/apt.log \
 && sudo apt-add-repository "deb https://cloud.r-project.org/bin/linux/ubuntu $(lsb_release -cs)-cran40/" -y | tee -a /tmp/apt.log \
 && sudo apt update | tee -a /tmp/apt.log \
 && sudo apt install -y \
     r-base-dev | tee -a /tmp/apt.log \
 && sudo rm -rf /var/lib/apt/lists/*
