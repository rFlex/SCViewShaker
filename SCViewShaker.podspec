Pod::Spec.new do |s|

  s.name         = "SCViewShaker"
  s.version      = "1.0.1"
  s.summary      = "A highly configurable UIView category for shaking a view."

  s.description  = <<-DESC
  		   You start shaking your views with a one liner :). A lot of options are provided to easily customize the shake ffect.
                   DESC

  s.homepage     = "https://github.com/rFlex/SCViewShaker"
  s.license      = 'Apache License, Version 2.0'
  s.author             = { "Simon CORSIN" => "simon@corsin.me" }
  s.platform     = :ios, '6.0'
  s.source       = { :git => "https://github.com/rFlex/SCViewShaker.git", :tag => "v1.0.1" }
  s.source_files  = '*.{h,m}'
  s.public_header_files = '*.h'
  s.requires_arc = true

end
