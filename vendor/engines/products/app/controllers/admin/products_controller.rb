module Admin
  class ProductsController < Admin::BaseController

    crudify :product,
            :title_attribute => 'catalog_number', :xhr_paging => true

  end
end
