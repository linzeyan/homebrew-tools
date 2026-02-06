FORMULAS := formatter ops-cli redis-top-keys-analyzer pm
CASKS := rayui asdf-gui

.PHONY: all $(FORMULAS) $(CASKS) clean

all: $(FORMULAS) $(CASKS)

formatter:
	@./scripts/update.sh linzeyan/formatter Formula/formatter.rb

ops-cli:
	@./scripts/update.sh linzeyan/ops-cli Formula/ops-cli.rb

redis-top-keys-analyzer:
	@./scripts/update.sh linzeyan/redis-top-keys-analyzer Formula/redis-top-keys-analyzer.rb

pm:
	@./scripts/update.sh linzeyan/proxy-manager Formula/pm.rb

rayui:
	@./scripts/update-cask.sh linzeyan/RayUI Casks/rayui.rb

asdf-gui:
	@./scripts/update-cask.sh linzeyan/asdf-gui Casks/asdf-gui.rb

clean:
	@echo "Nothing to clean"
