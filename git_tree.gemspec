require_relative 'lib/git_tree/version'

Gem::Specification.new do |spec| # rubocop:disable Metrics/BlockLength
  github = 'https://github.com/mslinn/git_tree'

  spec.authors = ['Mike Slinn']
  spec.bindir = 'bindir'
  spec.description = <<~END_OF_DESC
    Installs two commands that scan a git directory tree and write out scripts.
    Directories containing a file called .ignore are ignored.
    The git_tree_replicate command writes a script that clones the repos in the tree,
    and adds any defined remotes.
    The git_tree_evars command writes a script that defines environment variables pointing to git repos.
  END_OF_DESC
  spec.email = ['mslinn@mslinn.com']
  spec.executables = %w[git_tree_evars git_tree_replicate]
  spec.files = Dir[
    '{bindir,lib}/**/*',
    '.rubocop.yml',
    'LICENSE.*',
    'Rakefile',
    '*.gemspec',
    '*.md'
  ]
  spec.homepage = 'https://www.mslinn.com/git/1100-git-tree.html'
  spec.license = 'MIT'
  spec.metadata = {
    'allowed_push_host' => 'https://rubygems.org',
    'bug_tracker_uri'   => "#{github}/issues",
    'changelog_uri'     => "#{github}/CHANGELOG.md",
    'homepage_uri'      => spec.homepage,
    'source_code_uri'   => github,
  }
  spec.name = 'git_tree'
  spec.post_install_message = <<~END_MESSAGE

    Thanks for installing #{spec.name}!

  END_MESSAGE
  spec.required_ruby_version = '>= 2.6.0'
  spec.summary = 'Installs two commands that scan a git directory tree and write out scripts for replication.'
  spec.version = GitUrlsVersion::VERSION

  spec.add_dependency 'rugged'
end
