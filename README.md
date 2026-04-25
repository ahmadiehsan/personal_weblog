# Personal Blog

Ehsan Ahmadi's Personal Blog

## Usage

```shell
git clone <this/repo/url>
cd <cloned_dir>

wget -O /tmp/hugo.deb https://github.com/gohugoio/hugo/releases/download/v0.130.0/hugo_extended_0.130.0_linux-amd64.deb && sudo dpkg -i /tmp/hugo.deb
curl -LsSf https://astral.sh/uv/0.11.7/install.sh | sh
uv tool install rust-just

just manage server
```

## Developers

```shell
just git init_hooks
just help
```
