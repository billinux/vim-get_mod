if exists('../../bundle/vim-unbundle')
    " load Ruby bundles if we're inside a Ruby project
    if !empty(globpath('.', '{Gemfile,Rakefile,*.gemspec,*.rb}'))
        call Unftbundle('ruby')
    end

    " load sh  bundles if we're inside a shell scripts project
    if !empty(globpath('.', '{*.sh}'))
        call Unftbundle('sh')
    end

     " load sh  bundles if we're inside a shell scripts project
    if !empty(globpath('.', '{*.html,*.php}'))
        call Unftbundle'{html,css,javascript}'
    end
endif

