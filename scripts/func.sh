#!/bin/sh

gem_info(){
echo $NAME_MESSAGE
read_info name
echo $SUMMARY_MESSAGE
read_info summary
echo $AUTHOR_MESSAGE
read_info authors
}


lib_base(){
mkdir -p $name/lib/$name
cd $name && touch lib/$name.rb
}

new_files(){
echo $GREEN;list_files;echo $NC;
}

gem_spec(){
touch ./$name.gemspec
cat > ./$name.gemspec << EOF
Gem::Specification.new do |s|
s.name '$name'
s.version '1.0.0'
s.summary '$summary'
s.author ['$authors']
end
EOF

gem build $name.gemspec
}
