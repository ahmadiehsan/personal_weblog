# Personal Blog

Ehsan Ahmadi's Personal Blog

## Usage

```shell
git clone <this/repo/url>
cd <cloned_dir>

sudo snap install hugo

make manage.server
```

## Developers

```shell
npm install -g opencommit
oco config set OCO_API_URL="<llm/provider/api/url>"
oco config set OCO_API_KEY="<llm_provider_api_key>"
oco config set OCO_MODEL="<desired_llm_name>"

curl -LsSf https://astral.sh/uv/0.6.14/install.sh | sh

make git.init_hooks
make help
```
