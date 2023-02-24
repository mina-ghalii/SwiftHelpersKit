Pod::Spec.new do |spec| 
  spec.name = 'SwiftHelpersKit' # name of the framework 
  spec.version = '1.0.0' # same as github tag version 
  spec.license = { :type => 'MinaGhali' }
  spec.homepage = 'https://mina-ghali.gitbook.io/swifthelperskit-v1.0.0/' # Website with details about pod or github repository link 
  spec.authors = { 'Mina Ghali' => 'mina.a.ghalii@gmail.com' } # name & email address of the framework author 
  spec.platform = :ios, "13.0" 
  spec.swift_versions = '5.0'
  spec.summary = 'This pod is to share and contribute swift helper classes'
  spec.source = { :git => 'https://github.com/mina-ghalii/SwiftHelpersKit.git', :tag => 'v1.0.0' } 
  spec.source_files = 'SwiftHelpersKit/**/*.swift'

end
