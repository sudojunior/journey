require 'jekyll'

def run(cmd)
	system cmd	
end

task :default => :serve

task :build do
	run("jekyll build --profile")
end

task :clean do
	run("jekyll clean")
end

task :serve do
	run("jekyll serve --watch")
end

task :debug do
	run("jekyll serve --watch --profile")
end