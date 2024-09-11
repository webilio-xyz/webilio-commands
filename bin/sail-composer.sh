phpVersion="${1:-83}"
docker run --rm -u "$(id -u):$(id -g)" -v "$(pwd):/var/www/html" -w /var/www/html laravelsail/php$phpVersion-composer:latest composer install --ignore-platform-reqs