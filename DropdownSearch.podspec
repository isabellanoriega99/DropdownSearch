Pod::Spec.new do |spec|
  spec.name         = 'DropdownSearch'
  spec.version      = '1.0.1'
  spec.license      = { :type => 'MIT', :file => 'LICENSE' }
  spec.homepage     = 'https://github.com/isabellanoriega99/DropdownSearch'
  spec.authors      = { 'Isabella Noriega' => 'isabellanoriegaq@gmail.com' }
  spec.summary      = 'Dropdown menu with a UITextfield search filtering for iOS SwiftUI'
  spec.source       = { :git => 'https://github.com/isabellanoriega99/DropdownSearch.git', :tag => 'v1.0.0' }
  spec.swift_version = '5.8.1'
  spec.ios.deployment_target = '8.0'
  spec.platform = :ios, '16.0'
  spec.source_files = 'DropdownSearch/**/*.swift'
  spec.framework    = 'Foundation'
end

