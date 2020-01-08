Jekyll::Hooks.register :site, :post_write do |site|
	resources = site.config['site_resources']
	resources.each { |r|
    	Jekyll.logger.info "ResourcesCopy copy:", r['name']
    	src = Jekyll.sanitized_path(site.source, r['src_base'])
    	Jekyll.logger.debug "ResourcesCopy source:", src
   		f = Jekyll::StaticFile.new(site, src, '', r['file'])
		dest = Jekyll.sanitized_path(site.dest, r['dest_base'])
		Jekyll.logger.debug "ResourcesCopy destination:", dest
		f.write(dest)
  	}
end