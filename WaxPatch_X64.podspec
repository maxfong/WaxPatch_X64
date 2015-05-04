Pod::Spec.new do |s|
    s.name = 'WaxPatch_X64'
    s.version = '0.0.1'
    s.license = 'MIT'
    s.summary = 'WaxPatch x64 arm64'
    s.homepage = 'https://github.com/maxfong/WaxPatch_X64'
    s.author = { 'maxfong' => 'maxfong'}
    s.source = { :git => 'https://github.com/maxfong/WaxPatch_X64.git'}
    s.platform = :ios
    s.requires_arc = false
    s.source_files = ['WaxPatch_X64/wax/**/*']
end
