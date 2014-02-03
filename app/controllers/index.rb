get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/all_notes' do
  
 
  erb :all_notes
end

post '/all_notes' do
  @note = Note.create!(title: params[:title], content: params[:content])
  @all_notes = Note.all
  erb :all_notes
end

get '/single_note/:note_id' do
   @note_id = params[:note_id]
   @note = Note.single_note(@note_id)
 erb :single_note
end

get '/update_note/:note_id' do
  @note_id = params[:note_id]
  @note = Note.find(@note_id)
  erb :update_note
end

post "/update/:note_id" do
  @note_id = params[:id]
  @note = Note.single_note(@note_id)

  erb :update_note
end

get '/delete' do
  erb :index
end

post '/delete/:note_id' do
  Note.destroy(params[:note_id])
  erb :all_notes
end


