# Panda.configure(YAML.load_file(Rails.root.join("config/panda.yml"))[Rails.env])
Panda.configure(ENV['PANDASTREAM_URL'])