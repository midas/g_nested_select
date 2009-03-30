# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{g_nested_select}
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["C. Jason Harrelson"]
  s.date = %q{2009-03-30}
  s.description = %q{A Guilded (http://github.com/midas/guilded/tree/master) Rails component that generates a select box and connects it to a parent  select box to facilitate a parent child relationship.}
  s.email = ["jason@lookforwardenterprises.com"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "PostInstall.txt", "README.rdoc"]
  s.files = [".git/COMMIT_EDITMSG", ".git/HEAD", ".git/config", ".git/description", ".git/hooks/applypatch-msg.sample", ".git/hooks/commit-msg.sample", ".git/hooks/post-commit.sample", ".git/hooks/post-receive.sample", ".git/hooks/post-update.sample", ".git/hooks/pre-applypatch.sample", ".git/hooks/pre-commit.sample", ".git/hooks/pre-rebase.sample", ".git/hooks/prepare-commit-msg.sample", ".git/hooks/update.sample", ".git/index", ".git/info/exclude", ".git/logs/HEAD", ".git/logs/refs/heads/master", ".git/logs/refs/remotes/origin/master", ".git/objects/01/d96a7e5c0a09a41d0dda1cbb961b236a2564a8", ".git/objects/03/8839990d8f83d5abe56f79280ea07872232cde", ".git/objects/07/905e147380a08c68e24335998de97e02929c95", ".git/objects/0a/2865c6d980b7aef584a0d8944c68564a31466b", ".git/objects/0c/76865799841137c9778004ca17925ea8c55518", ".git/objects/0f/6181a89d73a714113011c9e29886930d9dcb01", ".git/objects/15/d15e670a6617774b7bc8583d02909e8234e1a1", ".git/objects/23/be2fb9ec080443aeca37619cc72bfd600f8e8b", ".git/objects/24/15fa49cb1d3d84a29d0fa0c7ac098cb759977a", ".git/objects/34/1667b73a8a8c7113ab79c09e8aaf97bd4668ba", ".git/objects/3c/63520ed652f36b994796949fe911a69094dd0c", ".git/objects/40/fc96eff8150a8fb68872b9dc3b60cb4e0e1490", ".git/objects/42/2b697a12538e8cb9790964be2638a6fe40f95f", ".git/objects/52/b955d31b5d52462cf81a50d95c565dfb52cf10", ".git/objects/53/4d87c13df66351b857299cfc92449745043078", ".git/objects/53/b5186fd0bf292c0bb14f51c32507ade54ba48d", ".git/objects/5c/20d2b2c643e54bd64ac98e9ca6f7326b6deb93", ".git/objects/62/02b7ed056d4cd9025bdd1420c62406c908ead3", ".git/objects/63/1b09ac5892037453aa96c0f75fa28b36bdf161", ".git/objects/70/fe3ef894f9d9e489aa2f474a421c55c2c59775", ".git/objects/72/4c34cb3a566a4a114b7ac09e6b1ab80d1e8784", ".git/objects/77/78a561745349b3c546c90802cabfb6f2cbdc37", ".git/objects/7f/b045a9a66e00daabaddcefe332537daba4a40e", ".git/objects/a1/8a40e6d17abcfc419c321494d874c4ef9b109e", ".git/objects/a5/2055a59d0d28cb88c2e41c92753aa73ff67b3b", ".git/objects/ab/019b7804ba000e2861b27c52a13b20775bdea6", ".git/objects/ab/e9b588bacc4cdc7c7269244ee43b4740c304e3", ".git/objects/b6/87fc4d5c7993024e7baa75ea665d87e694e51d", ".git/objects/b7/763794a9ae518526b9162e47dabea1ea5c7d0b", ".git/objects/ba/489b909eaffe87d803663bc429bbe53128ac4d", ".git/objects/c2/7f6559350f7adb19d43742b55b2f91d07b6550", ".git/objects/cf/6add7ea568d3d90d6a1f8afb0898b0119b14ff", ".git/objects/e4/8464df56bf487e96e21ea99487330266dae3c9", ".git/objects/f8/1035ce52ed1448385badc8cccef62da38cd0fb", ".git/objects/fa/729053ee06fad7b044df1102960bf78b0bbf67", ".git/objects/ff/abaa7df8499c88f849ae6cfe8697994b41d030", ".git/refs/heads/master", ".git/refs/remotes/origin/master", "History.txt", "Manifest.txt", "PostInstall.txt", "README.rdoc", "Rakefile", "lib/g_nested_select.rb", "lib/g_nested_select/view_helpers.rb", "rails_generators/nested_select_assets/nested_select_assets_generator.rb", "rails_generators/nested_select_assets/templates/guilded.nested_select.js", "rails_generators/nested_select_assets/templates/guilded.nested_select.min.js", "rails_generators/nested_select_assets/templates/jquery-nested_select.js", "rails_generators/nested_select_assets/templates/jquery-nested_select.min.js", "script/console", "script/destroy", "script/generate", "spec/g_nested_select_spec.rb", "spec/spec.opts", "spec/spec_helper.rb", "tasks/rspec.rake"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/midas/g_nested_select/tree/master}
  s.post_install_message = %q{PostInstall.txt}
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{g_nested_select}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{A Guilded (http://github.com/midas/guilded/tree/master) Rails component that generates a select box and connects it to a parent  select box to facilitate a parent child relationship.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<newgem>, [">= 1.2.3"])
      s.add_development_dependency(%q<rails>, [">= 2.2.0"])
      s.add_development_dependency(%q<midas-guilded>, [">= 0.2.0"])
      s.add_development_dependency(%q<hoe>, [">= 1.8.0"])
    else
      s.add_dependency(%q<newgem>, [">= 1.2.3"])
      s.add_dependency(%q<rails>, [">= 2.2.0"])
      s.add_dependency(%q<midas-guilded>, [">= 0.2.0"])
      s.add_dependency(%q<hoe>, [">= 1.8.0"])
    end
  else
    s.add_dependency(%q<newgem>, [">= 1.2.3"])
    s.add_dependency(%q<rails>, [">= 2.2.0"])
    s.add_dependency(%q<midas-guilded>, [">= 0.2.0"])
    s.add_dependency(%q<hoe>, [">= 1.8.0"])
  end
end
