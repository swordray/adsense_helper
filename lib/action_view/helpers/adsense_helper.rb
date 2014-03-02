require 'action_view/helpers'

module ActionView
  module Helpers
    # = Action View Google Adsense Helper
    module AdsenseHelper
      # Parameters:
      # 
      # client :: 16 digits
      # slot :: 10 digits
      # dimension :: "#{width}x#{height}", default is 336x280
      #
      # Example:
      # 
      #   adsense_tag(client: 0000000000000000, slot: 1111111111, dimension: '336x280')
      # 
      # Generated code:
      #
      #   <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
      #   <ins class="adsbygoogle"
      #        style="display:inline-block;width:336px;height:280px"
      #        data-ad-client="ca-pub-0000000000000000"
      #        data-ad-slot="1111111111"></ins>
      #   <script>
      #   (adsbygoogle = window.adsbygoogle || []).push({});
      #   </script>
      #
      def adsense_tag(options = {})
        defaults = { dimension: '336x280' }
        options = options.to_h.reverse_merge(defaults).with_indifferent_access
        width, height = options[:dimension].split('x').to_a
        
        raise 'Invalid ad client, should be 16 digits' unless options[:client].to_s[/^\d{16}$/]
        raise 'Invalid ad slot, should be 10 digits' unless options[:slot].to_s[/^\d{10}$/]
        raise 'Invalid ad dimension, should be "#{width}x#{height}"' unless width.to_s[/^\d+$/] && height.to_s[/^\d+$/]
        
        tags = [
          content_tag('script', '', async: '', src: '//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js'),
          content_tag('ins', '', class: 'adsbygoogle', style: "display:inline-block;width:#{width}px;height:#{height}px", 'data-ad-client' => "ca-pub-#{options[:client]}", 'data-ad-slot' => options[:slot]),
          content_tag('script', '(adsbygoogle = window.adsbygoogle || []).push({});'),
        ]
        
        safe_join(tags)
      end
    end
  end
end
