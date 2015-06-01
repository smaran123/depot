class ProductsController < ApplicationController
	before_action :set_product, :except=>[:index,:new,:create]

	def index
		@products = Product.all
	end

	def new
		@product = Product.new
	end

	def show
	end

	def edit
	end

	def create
		@product = Product.new(product_params)
		if @product.save
			redirect_to products_path
		else
			render "new"
		end
	end

	def update
		if @product.update(product_params)
			redirect_to products_path
		else
			render "edit"
		end
	end

	def destroy
		if @product.destroy
			redirect_to products_path
		end
	end

	def set_product
		@product = Product.find(params[:id])
	end

	private

	def product_params
		params.require(:product).permit!
	end

end
