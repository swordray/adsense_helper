require 'adsense_helper'

ActionView::Base.send :include, AdsenseHelper if defined? Rails
