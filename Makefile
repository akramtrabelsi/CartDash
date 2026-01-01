up:
	./vendor/bin/sail up -d

down:
	./vendor/bin/sail down

bbash:
	./vendor/bin/sail bash

watch: up
	./vendor/bin/sail npm run dev

pint:
	./vendor/bin/sail pint --dirty

stan:
	./vendor/bin/sail composer analyze
ci:
	./vendor/bin/sail pint --parallel
	./vendor/bin/sail composer analyze

migrate:
	./vendor/bin/sail artisan migrate

test:
	./vendor/bin/sail artisan test --coverage-html=coverage

logs:
	./vendor/bin/sail artisan pail -vv

reset-db:
	./vendor/bin/sail artisan migrate:fresh --seed
helper:
	./vendor/bin/sail artisan ide-helper:generate
	./vendor/bin/sail artisan ide-helper:models
	./vendor/bin/sail artisan ide-helper:meta
expose:
	expose share --subdomain=ils --server=eu-1 http://localhost

clean-zone-files:
	@echo "Removing Windows Zone.Identifier files..."
	find . -name "*Zone.Identifier" -type f -delete
	@echo "Zone.Identifier files removed."
