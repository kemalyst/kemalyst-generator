require "teeplate"
require "./field.cr"

module Kemalyst::Generator
  class Controller < Teeplate::FileTree
    directory "#{__DIR__}/controller"

    @name : String
    @fields : Array(Field)
    @language : String

    def initialize(@name, fields)
      @language = language
      @fields = fields.map { |field| Field.new(field) }
      add_views
    end

    KGEN_YML = ".kgen.yml"

    def language
      if File.exists?(KGEN_YML) &&
         (yaml = YAML.parse(File.read KGEN_YML)) &&
         (language = yaml["language"]?)
        language.to_s
      else
        return "slang"
      end
    end

    def add_views
      @fields.each do |f|
        `mkdir -p src/views/#{@name}`
        `touch src/views/#{@name}/#{f.name}.#{language}`
      end
    end
  end
end
