get '/articles/?' do
  @articles = Article.all.order("id ASC")
  erb :"articles/index"
end

get '/articles/new' do
  erb :"articles/new"
end

get '/articles/edit/:id' do
  @article = Article.find(params[:id])
  @url_key = params[:url_key]
  erb :"articles/edit"
end

get "/articles/:id" do
  @article = Article.find(params[:id])
  erb :"/articles/show"
end

post '/articles' do
  Article.create(title: params[:title], category_name: params[:category_name], price: params[:price], description: params[:description], email: params[:email], secret_key: rand(1..9) * 429)

  redirect '/articles'
end

put '/articles/:id' do
  @article = Article.find(params[:id])
  @article.update(title: params[:title], category_name: params[:category_name], price: params[:price], description: params[:description], email: params[:email])
  redirect '/articles'
end


