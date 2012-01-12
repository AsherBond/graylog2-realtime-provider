class Configuration

  def self.parse(config_path)
    YAML.load_file(config_path)
  end

end
