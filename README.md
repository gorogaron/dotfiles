The dotfiles I use in Linux environment.
Add to Dockerfile:
```dockerfile
RUN git clone https://github.com/gorogaron/dotfiles.git /tmp/dotfiles && \
    /tmp/dotfiles/setup.sh --force && \
    rm -rf /tmp/dotfiles
```
