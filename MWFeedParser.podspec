Pod::Spec.new do |s|
  s.name             =  'MWFeedParser'
  s.version          =  '0.0.3'
  s.license          =  'MIT'
  s.summary          =  'An Objective-C RSS / Atom Feed Parser for iOS.'
  s.homepage         =  'https://github.com/dkonst/MWFeedParser'
  s.author           =  { 'Konstantin Dorodov' => 'konstantin@dorodov.com' }
  s.source           =  { :git => 'https://github.com/dkonst/MWFeedParser.git' , :commit => '38b1d075a3971ed239cb17c0f873d22e5e0f1e41' }
  # , :commit => 'commit hash'
  s.platform         =  :ios
  #s.compiler_flags   =  '-Wno-format', '-Wno-format-extra-args'
  s.framework        =  'Foundation'

  s.subspec 'NSString+MWHTML' do |ss|
    ss.source_files = 'Classes/NSString+HTML.{h,m}', 'Classes/GTMNSString+HTML.{h,m}'
  end

  s.subspec 'NSString+XMLEntities' do |ss|
    ss.source_files = 'Classes/NSString+XMLEntities.h{h,m}'
    dependencies = 'MWFeedParser/NSString+MWHTML'
  end

  s.subspec 'NSDate+InternetDateTime' do |ss|
    ss.source_files = 'Classes/NSDate+InternetDateTime.{h,m}'
  end

  s.subspec 'Feed' do |ss|
    ss.source_files =  'Classes/MWFeedInfo.{h,m}', 'Classes/MWFeedItemEnclosure.{h,m}', 'Classes/MWFeedItem.{h,m}', 'Classes/MWFeedParser.{h,m}', 'Classes/MWFeedParser_Private.h', 'Classes/MWFeedInfoProtocol.{h,m}', 'Classes/MWFeedItemProtocol.{h,m}'
    dependency = 'NSString+XMLEntities'
    dependency = 'NSDate+InternetDateTime'
  end
end