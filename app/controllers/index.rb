get '/' do
  @notes = Note.all
  erb :index
end

get '/notes/new' do
  erb :new
end

post '/notes/new' do
  @note = params[:note]
  Note.create(title: @note["title"], content: @note["content"])
  redirect "/"
end

get '/notes/:note_id' do
  @note = Note.find(params[:note_id])
  erb :note
end

get '/notes/edit/:note_id' do
  @note = Note.find(params[:note_id])
  erb :edit
end

post '/notes/edit' do
  @note = params[:note]
  note = Note.find(@note["id"])
  note.title = @note["title"]
  note.content = @note["content"]
  note.save
  redirect "/notes/" + @note["id"]
end

get '/notes/delete/:note_id' do
  Note.find(params[:note_id]).destroy
  redirect "/"
end
