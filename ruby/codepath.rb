class CodePath

    VERSION='0.0.1'

    def codedir(current_dir, code_dir)
        if current_dir.include?(code_dir)
            current_dir[/#{code_dir}/]=""
            "#{code_dir}/#{current_dir.match(/^\/([^\/]+)/)[1]}"
        else
            current_dir
        end
    end

    def subdirs(path)
        Dir.glob(File.join(path,"**/*")).select { |f| File.directory?(f) }
    end  

end
