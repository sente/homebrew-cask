cask 'gitup' do
  version '1.0.5'
  sha256 'ca230886c4e808518b918530392ef2eb6aea5d11dcf4ea23a89a271d3d0ee3f1'

  # s3-us-west-2.amazonaws.com/gitup-builds was verified as official when first introduced to the cask
  url 'https://s3-us-west-2.amazonaws.com/gitup-builds/stable/GitUp.zip'
  appcast 'https://github.com/git-up/GitUp/releases.atom',
          checkpoint: '6d7967f3e3e93fce6596c760ed4ca3989b8c02077c7b0b18c4ff127e5723fda3'
  name 'GitUp'
  homepage 'http://gitup.co'
  license :gpl

  depends_on macos: '>= :mountain_lion'

  app 'GitUp.app'
  binary 'GitUp.app/Contents/SharedSupport/gitup'
end
