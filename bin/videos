#!/usr/bin/env ruby

# Ce script copie les fichiers JPG de 'source' à 'dest'
# en créant les répertoires dans 'dest' selon la date de chaque
# fichier.

source = "/Volumes/Untitled/MP_ROOT/**/*.MP4"
dest = "/Volumes/Video"

require 'date'

def pad2(n)
        n.to_s.rjust(2,'0')
end

# Liste tous les fichiers de l'extension
Dir.glob(source).each do |fullname|
        next if not fullname =~ /^.*\/(.*\.MP4)$/        
	fname = $1
        
        # Vérifier que c'est vraiment un fichier
        stat = File.stat(fullname)
        next if not stat.file?
        
        # Accéder au temps de modification
        d = Date.parse(stat.mtime.to_s)
        
        # Bâtir nom du répertoire
        folder = "#{dest}/#{d.year}-#{pad2(d.month)}-00"
        
        # Skip si le fichier existe déjà
        next if File.file? "#{folder}/#{fname}"
        
        # Créer le folder si nécessaire
        if not File.directory? folder
                system "mkdir #{folder}"
        end
        
        # Copier le fichier
        puts "#{fname} -> #{folder}"
        system "cp -p \"#{fullname}\" #{folder}"
end
