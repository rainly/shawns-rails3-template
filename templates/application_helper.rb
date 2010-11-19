module ApplicationHelper
  def body_classes
    "#{params[:controller]} #{params[:controller]}_#{params[:action]}"
  end
  
  def google_analytics(ga_id)
    content_tag :script do
      %{ var _gaq = _gaq || []; _gaq.push(['_setAccount', '#{ga_id}']); _gaq.push(['_trackPageview']); (function() {var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true; ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js'; (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(ga);})(); }
    end  
  end
  
end