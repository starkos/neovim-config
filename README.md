# Industrious Neovim Configuration

My [Neovim][1] configuration, based on `nvim v0.11` and [AstroNvim][2].

## Setup

Start with [the AstroNvim requirements][3].

Install or update Neovim to 0.11+ (I haven't tried 0.12 yet though).

```sh
# For Linux, have to install from GitHub releases
$ curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
$ sudo rf -rf /opt/nvim-linux-x86_64
$ sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz
$ sudo ln -s /opt/nvim-linux-x86_64/bin/nvim

# For macOS, Homebrew is tracking the latest releases
$ brew install neovim

# For Windows, I dunno, don't really use it
```

Install the language servers.

```
$ rustup component add rust-analyzer
```

[1]: https://neovim.io/
[2]: https://astronvim.com/
[3]: https://docs.astronvim.com/#-requirements

