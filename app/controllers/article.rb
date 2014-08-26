get '/articles/?' do
  @articles = Article.all
  erb :"articles/index"
end

get '/articles/new' do

  erb :"articles/new"
end

get '/articles/edit' do
  erb :"articles/edit"
end

get '/articles/:id' do
  @article = Article.find(params[:id])
  erb :"/articles/show"
end

post '/articles' do

  # redirect
end

put '/articles/:id' do

  # redirect
end


