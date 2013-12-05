class people::jabaraster {
    include mou
    include virtualbox
    include vagrant
    include heroku
    include java

    package { 'GrandPerspective':
        source   => 'http://sourceforge.net/projects/grandperspectiv/files/grandperspective/1.5.1/GrandPerspective-1_5_1.dmg',
        provider => appdmg,
    }
}
