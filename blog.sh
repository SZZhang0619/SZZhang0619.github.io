git init
git submodule add https://github.com/razonyang/hugo-theme-bootstrap themes/hugo-theme-bootstrap
git clone https://github.com/razonyang/hugo-theme-bootstrap-skeleton /tmp/hbs-skeleton
mkdir config
cp -a /tmp/hbs-skeleton/config/* ./config
cp -r /tmp/hbs-skeleton/content/* ./content
cp -r /tmp/hbs-skeleton/archetypes/* ./archetypes
cp -r /tmp/hbs-skeleton/static/* ./static
cp -r /tmp/hbs-skeleton/assets/* ./assets
sed -i "" "s/theme:.*/theme: hugo-theme-bootstrap/g" config/_default/config.yaml
hugo mod init github.com/SZZhang0619/SZZhang0619.github.io
hugo mod npm pack
npm install
hugo server