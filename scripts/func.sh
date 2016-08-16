#!/bin/sh

gem_info(){
echo ""; echo $HEADER;
printf $NAME && read_info name
printf $SUMMARY && read_info summary;
printf $AUTHORS && read_info authors;
printf $EMAIL && read_info email;
printf $LICENSES && read_info licenses;
printf $HOMEPAGE && read_info homepage;
}


lib_base(){
str="$name";capitalize_str="$(tr '[:lower:]' '[:upper:]' <<< ${str:0:1})${str:1}"
mkdir -p $name/lib/$name
cd $name && touch lib/$name.rb
cat > ./lib/$name.rb << EOF
require "$name/version"

module $capitalize_str
end
EOF
}

new_files() {
echo $GREEN;list_files;echo $NC;
}

version_file() {
str="$name";capitalize_str="$(tr '[:lower:]' '[:upper:]' <<< ${str:0:1})${str:1}"
touch ./lib/$name/version.rb
cat > ./lib/$name/version.rb << EOF
module $capitalize_str
  VERSION = '0.0.1'
end
EOF
}

gem_spec() {
str="$name";capitalize_str="$(tr '[:lower:]' '[:upper:]' <<< ${str:0:1})${str:1}"
touch ./$name.gemspec
cat > ./$name.gemspec << EOF
require "./lib/$name/version"

Gem::Specification.new do |s|
  s.name        = "$name"
  s.version     = $capitalize_str::VERSION
  s.licenses    = ["$licenses"]
  s.summary     = "$summary"
  s.description = ""
  s.authors     = ["$authors"]
  s.email       = ["$email"]
  s.homepage    = "$homepage"
  s.files       = Dir["lib/**/*.rb"]
  s.add_dependency 'activesupport', '~> 5.0'
  s.add_development_dependency 'rspec', '~> 3.5', '>= 3.5.0'
end
EOF

gem build $name.gemspec
echo ""
}

push_gem() {
  gem push $name-0.0.1.gem
}
