FORMULAS := formatter ops-cli redis-top-keys-analyzer pm apitool poly gowebp
CASKS := rayui asdf-gui assistant marknote dbclient
SCOOP := litebrowser macshot macshot-offline

.PHONY: all $(FORMULAS) $(CASKS) $(SCOOP) clean

all: $(FORMULAS) $(CASKS) $(SCOOP)

formatter:
	@./scripts/update.sh linzeyan/formatter Formula/formatter.rb

ops-cli:
	@./scripts/update.sh linzeyan/ops-cli Formula/ops-cli.rb
	@./scripts/update-scoop.sh linzeyan/ops-cli bucket/ops-cli.json

redis-top-keys-analyzer:
	@./scripts/update.sh linzeyan/redis-top-keys-analyzer Formula/redis-top-keys-analyzer.rb
	@./scripts/update-scoop.sh linzeyan/redis-top-keys-analyzer bucket/redis-top-keys-analyzer.json

pm:
	@./scripts/update.sh linzeyan/proxy-manager Formula/pm.rb
	@./scripts/update-scoop.sh linzeyan/proxy-manager bucket/pm.json

apitool:
	@./scripts/update.sh linzeyan/testing Formula/apitool.rb
	@./scripts/update-scoop.sh linzeyan/testing bucket/apitool.json

poly:
	@./scripts/update.sh linzeyan/vscode-syntax Formula/poly.rb
	@./scripts/update-scoop.sh linzeyan/vscode-syntax bucket/poly.json

gowebp:
	@./scripts/update.sh linzeyan/webp-go Formula/gowebp.rb
	@./scripts/update-scoop.sh linzeyan/webp-go bucket/gowebp.json

rayui:
	@./scripts/update-cask.sh linzeyan/RayUI Casks/rayui.rb
	@./scripts/update-scoop.sh linzeyan/RayUI bucket/rayui.json

asdf-gui:
	@./scripts/update-cask.sh linzeyan/asdf-gui Casks/asdf-gui.rb
	@./scripts/update-scoop.sh linzeyan/asdf-gui bucket/asdf-gui.json

assistant:
	@./scripts/update-cask.sh linzeyan/assistant Casks/assistant.rb

marknote:
	@./scripts/update-cask.sh Cacao-s/marknote-official Casks/marknote.rb
	@./scripts/update-scoop.sh Cacao-s/marknote-official bucket/marknote.json

dbclient:
	@./scripts/update-cask.sh linzeyan/dbeaver Casks/dbclient.rb

litebrowser:
	@./scripts/update-scoop.sh linzeyan/LiteBrowser bucket/litebrowser.json

macshot:
	@./scripts/update-scoop.sh linzeyan/macshot bucket/macshot.json

macshot-offline:
	@./scripts/update-scoop.sh linzeyan/macshot bucket/macshot-offline.json

clean:
	@echo "Nothing to clean"
