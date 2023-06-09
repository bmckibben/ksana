class ProductsController < InheritedResources::Base

  private

    def product_params
      params.require(:product).permit(:name, :client_id, :description)
    end

end
