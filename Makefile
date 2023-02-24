# Configuration variables:
.DEFAULT_GOAL := project

export APP_NAME = XCodeGenExample
export BUNDLE_IDENTIFIER = com.new.appIdentifier
# Prepare Application workspace
project: # create the .xcodeproj file with xcodegen command
	xcodegen generate
	# add this line if you have a Podfile
	#pod install --repo-update

dependencies:
	bundle exec pod install --repo-update

update_dependencies:
	bundle exec pod update

# Reset the project for a clean build
clean:
	rm -rf *.xcodeproj
	rm -rf *.xcworkspace
	rm -rf Pods/
	
format:
	#swiftformat .
	swiftlint --fix 

setup: # run this to setup the project with command 'make setup' at the project directory
	make clean
	bundler install # install bundler will install the dependacies in the Gemfile
	brew bundle #install brew dependacies in the Brewfile
	make project



