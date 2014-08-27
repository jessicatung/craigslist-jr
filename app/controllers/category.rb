get '/categories/?' do
  @categories = Category.all.order("id ASC")
  erb :"categories/index"
end

get '/categories/:id' do
  @category = Category.find(params[:id])
  @articles = @category.articles
  erb :"categories/show"
end

