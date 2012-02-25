module Admin
  class ShowsController < Admin::BaseController

    crudify :show,
            :title_attribute => 'name', :xhr_paging => true

  end
end
