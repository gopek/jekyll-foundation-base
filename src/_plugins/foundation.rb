module JekyllResources
  class ResourcesCopy < Jekyll::Generator
    def generate(site)
    	foundation = site.config['foundation_dir']
    	Jekyll.logger.info "ResourcesCopy:", foundation
    	Jekyll.logger.info "ResourcesCopy Static files:", site.static_files

      # ongoing, done = Book.all.partition(&:ongoing?)

      # reading = site.pages.detect {|page| page.name == 'reading.html'}
      # reading.data['ongoing'] = ongoing
      # reading.data['done'] = done
    end
  end
end