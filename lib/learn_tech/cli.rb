require 'thor'
require 'learn_tech'

module LearnTech
  # Public: LearnTech CLI
  class CLI < Thor

    # map so --version and -v also call version
    map %w[--version -v] => :version

    desc 'version', 'Show version'
    # Public: Print the current version
    def version
      puts LearnTech::VERSION
    end

    desc 'list', 'lists the technologies'
    #public: list command
    #
    # returns: lists all the technologies
    def list
    puts  tech.list_all_tech
    end

    # public: tech
    # ##learn_tech tech java
    # returns resources for technology
    desc 'technology [stream] [topic]', 'learning resources to the technology given as option'
    method_option :stack, :default => 'java',
                  :desc => 'print resources on technology'
    method_option :topic, :default => '',
                  :desc => 'print resources on technology'
    def technology(stream)
      raise 'not a valid stream' unless isValid? stream.upcase
      if options[:stack].present?
        puts tech.get_stack_resources(options[:stack].upcase)
      end
      if options[:topic].present?
        puts tech.get_topic_resources(stream.upcase,options[:topic].upcase)
      end
    end


    private

    # private: tech
    #
    #  returns an instance for tech
    def tech
      tech = LearnTech::Tech.new
    end

    def isValid?(stream)
      LearnTech::Tech::STREAMS.include? stream
    end
  end
end
