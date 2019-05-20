Pod::Spec.new do |s|
  s.platform     = :ios, '7.0'
  s.name        = 'GData'
  s.version     = '1.12.9'
  s.author      = 'Google'
  s.license     = { :type => 'Apache License, Version 2.0',
                    :text => <<-LICENSE
                      Copyright (c) 2011 Google Inc.
                      Licensed under the Apache License, Version 2.0 (the "License");
                      you may not use this file except in compliance with the License.
                      You may obtain a copy of the License at
                          http://www.apache.org/licenses/LICENSE-2.0
                      Unless required by applicable law or agreed to in writing, software
                      distributed under the License is distributed on an "AS IS" BASIS,
                      WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
                      See the License for the specific language governing permissions and
                      limitations under the License.
                    LICENSE
                  }
  s.summary     = 'The Google data APIs provide a simple protocol for reading and writing data on the web. Many Google services provide a Google data API.'
  s.homepage    = 'https://code.google.com/p/gdata-objectivec-client'

  s.source = { :git => 'https://github.com/ramonvic/gdata-objectivec-client.git', :tag => s.version }

  s.default_subspec = 'Core'
  s.requires_arc = false

  s.subspec 'Core' do |s|
    
    s.source_files = [
      "Source/ACL/*.{h,m}",
      "Source/BaseClasses/*.{h,m}",
      "Source/Elements/*.{h,m}",
      "Source/Geo/*.{h,m}",
      "Source/Introspection/*.{h,m}",
      "Source/Media/*.{h,m}",
      "Source/Networking/*.{h,m}",
      "Source/XMLSupport/*.{h,m}",
      "Source/*.{h,m}",
      "Source/Clients/**/*.{h,m}"
    ]
    s.library = 'xml2'
    s.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2' }
    s.requires_arc = false

    s.dependency 'GTMOAuth2', '~> 1.0'
    s.dependency 'GTMSessionFetcher/Core', '~> 1.1'

  end

  s.subspec 'XMLNode' do |s|
    
    s.source_files = "Source/XMLSupport/*.{h,m}"
    s.library = 'xml2'
    s.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2' }
    s.requires_arc = false
  end
end
