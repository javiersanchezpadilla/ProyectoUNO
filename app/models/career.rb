class Career < ApplicationRecord
   
    # Validaciones de los campos
    validates :clave_carrera, presence: true
    validates :descripcion, presence: true
    has_many :plans, dependent: :destroy

    def self.jav_crea_import(archivo_en_pc)
    	spreadsheet = open_spreadsheet(archivo_en_pc)
    	header = spreadsheet.row(1)
    	(2..spreadsheet.last_row).each do |linea|
    		row = Hash[[header, spreadsheet.row(linea)].transpose]
    		params = ActionController::Parameters.new(row.to_hash)
    		careers = find_by(id: row["id"]) || new
      		careers.attributes = row.to_hash
    		careers.save!
    	end
    end

    def self.open_spreadsheet(archivo_en_pc)
    	extension = get_file_type(archivo_en_pc)
    	if extension.in?(%w(xls xlsx))
    		Roo::Spreadsheet.open(archivo_en_pc.path, extension: extension)
    	else
    		raise "La extension es invalida, tipo: #{archivo_en_pc.original_filename}"
    	end
    end

    def self.get_file_type(archivo_en_pc)
    	File.extname(archivo_en_pc.original_filename).gsub('.','')
    end
end
