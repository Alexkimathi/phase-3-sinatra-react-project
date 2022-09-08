class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  #http://localhost:9292/arts
  get '/arts' do
    arts = Art.all
    arts.to_json
    arts.to_json(include: { reviews: { include: :user } })
  end

  get '/arts/:id' do
    arts = Art.find(params[:id])
    arts.to_json(include: { reviews: { include: :user } })
  end

  delete '/arts/:id' do
    arts = Art.find(params[:id])
    arts.destroy
    arts.to_json
  end

  post '/arts' do
    arts = Art.create(
      title:params[:title],
      author:params[:author],
      image_url:params[:image_url],
      description:params[:description],
      contact:params[:contact])
    arts.to_json
  end

  patch 'arts/:id' do
    arts = Art.find(params[:id])
    arts.update(
      title:params[:title],
      author:params[:author],
      image_url:params[:image_url],
      description:params[:description],
      contact:params[:contact])
    arts.to_json
  end  


  #Review
  #http://localhost:9292/reviews
  get '/reviews' do
    reviews = Review.all.limit(5)
    reviews.to_json
  end

  get '/reviews/:id' do
    reviews = Review.find(params[:id])
    reviews.to_json
  end

  delete '/reviews/:id' do
    reviews = Review.find(params[:id])
    reviews.destroy
    reviews.to_json
  end

  post '/reviews' do
    reviews = Review.create(
      rating:params[:rating],
      comment:params[:comment],
      art_id:params[:art_id],
      user_id:params[:user_id])
    reviews.to_json
  end


  patch '/reviews/:id' do
    reviews = Review.find(params[:id])
    reviews.update(
      rating:params[:rating],
      comment:params[:comment],
      art_id:params[:art_id],
      user_id:params[:user_id])
      reviews.to_json
  end 


  ##user
  #http://localhost:9292/users
  get '/users' do
    users = User.all.limit(5)
    users.to_json
  end

  get '/users/:id' do
    users = User.find(params[:id])
    users.to_json
  end

  delete '/users/:id' do
    users = User.find(params[:id])
    users.destroy
    users.to_json
  end

  post '/users' do
    users = User.create(
      name:params[:name])
    reviews.to_json
  end

  patch '/users/:id' do
    users = User.find(params[:id])
    users.update(
      name:params[:name])
      users.to_json
  end 



  

end
