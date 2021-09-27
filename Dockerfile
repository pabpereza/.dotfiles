FROM debian

RUN apt update && apt install -y nodejs npm python vim stow git

RUN cd /root && git clone https://github.com/pabpereza/.dotfiles

RUN cd /root/.dotfiles && stow lnx
