module Refinery
  module Products
    module Admin
      class ProductsController < ::Refinery::AdminController

        crudify :'refinery/products/product'

        private

        # Only allow a trusted parameter "white list" through.
        def product_params
          params.require(:product).permit(:title, :description, :image_id, :brochure_id)
        end
      end
    end
  end
end
