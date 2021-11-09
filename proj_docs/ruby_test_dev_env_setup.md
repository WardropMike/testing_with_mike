Setup
Local Dev Environment
  1. Terminal iterm2 -v3 & OhMyZSH
    .zshc/
    https://iterm2.com/version3.html
  2. Dev Environment: Acknowledging GCP - Setup Instructions until this guides path deviates -
        https://cloud.google.com/ruby/docs/setup
    xcode install
          Command-line tools * Note:
            https://developer.apple.com/library/archive/technotes/tn2339/_index.html
          Downloading command-line tools is not available in Xcode for macOS 10.9. How can I install them on my machine?
          In macOS 10.9 and later, the Downloads pane of Xcode Preferences does not support downloading command-line tools.
          Use any of the following methods to install command-line tools on your system:
            Install Xcode
              If Xcode is installed on your machine, then there is no need to install them. Xcode comes bundled with all your
              command-line tools. macOS 10.9 and later includes shims or wrapper executables. These shims, installed in /usr/bin,
              can map any tool included in /usr/bin to the corresponding one inside Xcode. xcrun is one of such shims, which allows
              you to find or run any tool inside Xcode from the command line. Use it to invoke any tool within Xcode from the
              command line as shown in Listing 1.
      install homebrew [https://brew.sh]
      install rbenv - https://github.com/rbenv/rbenv#installation
        brew install rbenv
        brew upgrade rbenv ruby-build
      Setup rbenv in your shell
        rbenv init
      Groom Ruby environment:
      -https://github.com/rbenv/rbenv#how-rbenv-hooks-into-your-shell
      -Installing Ruby versions
        -https://github.com/rbenv/rbenv#installing-ruby-versions
        Check Latest ruby-build versions
        if decide to us it (Reason)
        -rbenv install 3.0.2
          Make sure you document the path output: /Users/{User.Name-Comp}/.rbenv/versions/3.0.2
          This will be needed to update the bash or zshrc profile
            export PATH="/.rbenv/versions/3.0.2/bin:$PATH"
        -rbenv local 3.0.2
        https://github.com/rbenv/rbenv#command-reference
          As soon as export PATH="~/.rbenv/shims:$PATH" is added it points "which ruby" to the rught ruby
          *Important as this is how a fresh install should complete.
            Install new ruby version:
              rbenv install 2.0.0-p247 - Install the new version.
              Update: export PATH="/.rbenv/versions/3.0.2/bin:$PATH" in zshrc
              Set the Ruby Version: rbenv global 2.0.0-p247 or rbenv local 2.0.0-p247
              **3.0.2 (set by /Users/[User Name]/.ruby-version)
        -Installing Ruby gems
        gem install bundler
        gem env - check location of where gems are being installed.
        gem env home
        gem update system
    By here you will have setup your ruby dev env and have the base system you need.
    Per Project:
      bundle install
      bundle exec ruby app.rb
    -* Setup Chromedriver
      brew install Chromedriver
        Set system permissions to allow it to run.
    Then Start Your Project
      Setting up Gemfile and Gemlfile.lock
    Then Install Cloud SDK
      Install Cloud Client Library for Ruby
  Out put should look something like:
    RubyGems Environment:
  - RUBYGEMS VERSION: 3.2.22
  - RUBY VERSION: 3.0.2 (2021-07-07 patchlevel 107) [x86_64-darwin20]
  - INSTALLATION DIRECTORY: /Users/wardrop.mike/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0
  - USER INSTALLATION DIRECTORY: /Users/wardrop.mike/.local/share/gem/ruby/3.0.0
  - RUBY EXECUTABLE: /Users/wardrop.mike/.rbenv/versions/3.0.2/bin/ruby
  - GIT EXECUTABLE: /usr/bin/git
  - EXECUTABLE DIRECTORY: /Users/wardrop.mike/.rbenv/versions/3.0.2/bin
  - SPEC CACHE DIRECTORY: /Users/wardrop.mike/.local/share/gem/specs
  - SYSTEM CONFIGURATION DIRECTORY: /Users/wardrop.mike/.rbenv/versions/3.0.2/etc
  - RUBYGEMS PLATFORMS:
     - ruby
     - x86_64-darwin-20
  - GEM PATHS:
     - /Users/wardrop.mike/.rbenv/versions/3.0.2/lib/ruby/gems/3.0.0
     - /Users/wardrop.mike/.local/share/gem/ruby/3.0.0
  - GEM CONFIGURATION:
     - :update_sources => true
     - :verbose => true
     - :backtrace => false
     - :bulk_threshold => 1000
  - REMOTE SOURCES:
     - https://rubygems.org/
  - SHELL PATH:
     - /Users/wardrop.mike/.rbenv/versions/3.0.2/bin
     - /usr/local/Cellar/rbenv/1.1.2/libexec
     - /.rbenv/versions/3.0.2/bin
     - ~/.rbenv/completions/rbenv.zsh
     - ~/.rbenv/shims
     - /Users/wardrop.mike/.rbenv/shims
     - /usr/local/bin
     - /usr/local/bin
     - /usr/bin
     - /bin
     - /usr/sbin
     - /sbin
     - /Library/Apple/usr/bin
