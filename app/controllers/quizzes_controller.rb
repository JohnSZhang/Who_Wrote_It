class QuizzesController < ApplicationController
  def show
    @quiz = Quiz.new
    session[:quiz_id] = @quiz.id
    @quiz.save
    render "quiz"
  end

  def update
    puts "post received"
    quiz = session[:quiz_id] ? Quiz.find(session[:quiz_id]) : nil
    choice = params[:answer]
    if !quiz || !choice
      render text: "You have not played or picked an answer!"
    else
      quiz.check_answer(choice)
      if @quiz.over?
        @quiz.save
        render "over"
      else
        @quiz.save
        flash[:notice] = "another one!"
        render "quiz"
      end
    end
  end

end
