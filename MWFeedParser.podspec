Pod::Spec.new do |s|
  s.name             =  'MWFeedParser'
  s.version          =  '0.0.2'
  s.license          =  'MIT'
  s.summary          =  'An Objective-C RSS / Atom Feed Parser for iOS.'
  s.homepage         =  'https://github.com/dkonst/MWFeedParser'
  s.author           =  { 'Konstantin Dorodov' => 'konstantin@dorodov.com' }
  s.source           =  { :git => 'https://github.com/dkonst/MWFeedParser.git' , :commit => '2fe859144378520d455d80a91afc5a3f0258d83d' }
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
    ss.source_files =  'Classes/MWFeedInfo.{h,m}', 'Classes/MWFeedItemEnclosure.{h,m}', 'Classes/MWFeedItem.{h,m}', 'Classes/MWFeedParser.{h,m}', 'Classes/MWFeedParser_Private.h'
    dependency = 'NSString+XMLEntities'
    dependency = 'NSDate+InternetDateTime'
  end
end