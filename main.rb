require 'yaml'
require 'logger'
require 'fileutils'
require 'date'

class RenameFiles

  CONFIG = YAML.load_file( 'config.yml' )
  INPUT_DIRECTORY = CONFIG["dir"]["input_dir"]
  OUTPUT_DIRECTORY = CONFIG["dir"]["output_dir"]
  BACKUP_DIRECTORY = CONFIG["dir"]["backup_dir"]
  STASH_DIRECTORY = CONFIG["dir"]["stash_dir"]
  LOG_DIRECTORY = CONFIG["dir"]["log_dir"]

  def measure_file_sizes
    files = Dir.glob(File.join(INPUT_DIRECTORY, '*.tif'))
    p files
    
  end

  def rename_file(file_name)
    facility_code = Dir.glob(BACKUP_DIRECTORY)
    p facility_code
    files = Dir.glob(File.join(INPUT_DIRECTORY, '*.text'))
    p files
  end
end

rename_files = RenameFiles.new
rename_files.rename_file(20180101120000_00001)
