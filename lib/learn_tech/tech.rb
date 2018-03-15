require 'active_model'
require 'pry-byebug'

module LearnTech
  class Tech
    include ActiveModel::Model

    STREAMS = [ 'WEBDEVELOPMENT',
    'JAVA',
    'RUBY',
    'GROOVY',
    'BASH',
    'DEVOPS',
    'DATASCIENCE',
    'MACHINELEARNING' ]

    JAVA_RESOURCES = [ 'https://docs.oracle.com/javase/tutorial/index.html',
                       'professional java server programming by subbu allamaraju',
                       'github.com java and spring based open source projects',
                       'maven and gradle based builds, plugins, tests and packaging',
                       'Take a look on Groovy, Play, JRuby, Kotlin which provide JVM - dynamic programming']
    RUBY_RESOURCES = ['https://rubygems.org',
                      'http://rubgy.org/',
                      'Ruby API DOC',
                      'RSpec and BDD',
                      'Functional Programming',
                      'Rails Documentation'].freeze

    def list_all_tech
      STREAMS
    end

    def get_stack_resources(stack)
      raise "stack - #{stack}\is not available yet" unless STREAMS.include? stack
      case "#{stack}"
      when 'JAVA'
        print_java_resources
      when 'RUBY'
        print_ruby_resources
      end
    end

    def get_topic_resources(stack, topic)
      stack_topic=get_topics_of_stack(stack)
      raise 'topic is currently not included please try other ones' unless stack_topic.include? topic
      puts "This topic content needs to be added"

    end

    private

    def print_java_resources
       JAVA_RESOURCES
    end

    def print_ruby_resources
       RUBY_RESOURCES
    end

    def get_topics_of_stack stack
      case "#{stack}"
      when 'JAVA'
        ['GENERICS', 'COLLECTIONS', 'OOP', 'LAMBDA', 'FUNCTIONAL', 'STREAMS', 'REFLECTIONS']
      end
    end
  end
end
