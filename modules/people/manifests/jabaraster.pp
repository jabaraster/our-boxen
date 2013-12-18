
class people::jabaraster {
    include mou
    include virtualbox
    include vagrant
    include heroku
    include java
    include maven
    include postgresql
    include chrome
    include firefox

    package { 'GrandPerspective':
        source   => 'http://sourceforge.net/projects/grandperspectiv/files/grandperspective/1.5.1/GrandPerspective-1_5_1.dmg',
        provider => appdmg,
    }
    package { 'NoSleep':
        source   => 'https://macosx-nosleep-extension.googlecode.com/files/NoSleep-1.3.3.dmg',
        provider => pkgdmg,
    }

# OS X
    include osx::finder::show_hidden_files
    include osx::finder::unhide_library
    include osx::dock::autohide
    class { 'osx::dock::icon_size':
        size => 50
    }

# Grunt
    nodejs::module { 'grunt-cli':
      node_version => 'v0.4.2'
    }
}
