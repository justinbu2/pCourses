class NotesController < ApplicationController
  def new
    @new_note = Note.new
    @lesson = Lesson.find(params[:id])
  end

  def create
    @note = Note.new note_params

    if @note.save
      redirect_to @note
    else
      flash[:error] = @lesson.errors.full_messages.to_sentence
      render 'new'
    end
  end

  def show
    @note = Note.find(params[:id])
  end

  def edit
    @note = Note.find(params[:id])
  end

  def update
    @note = User.find(params[:id])
    @note.update(note_params)
  end

  def destroy
    note = Note.find(params[:id])
    note.destroy
    redirect_to lesson_path(current_user)
  end


  private
    def note_params
      params.require(:note).permit(:title, :content, :Lesson_id)
    end

    def new_params
      params[:lesson]
    end
end
