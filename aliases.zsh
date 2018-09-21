alias a="php artisan"
alias ll='ls -lah'

alias cr="composer require"
alias crd="composer require --dev"

alias nah="git reset --hard && git clean -df"

composer-link() {
  repositoryName=${3:-local}

  composer config repositories.$repositoryName '{"type": "path", "url": "'$1'", "options": {"symlink": true}}' --file composer.json
  composer require $2 @dev
}
