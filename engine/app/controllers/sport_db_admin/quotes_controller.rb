# encoding: utf-8

### todo/fix:
#  move into its own subfolder?
#   optional controller for market plugin/addon

module SportDbAdmin

class QuotesController < SportDbAdminController

  # GET /quotes
  def index
    @quotes = Quote.joins( :game ).order( 'games.play_at desc' ).all
  end


end # class QuotesController

end # module SportDbAdmin
