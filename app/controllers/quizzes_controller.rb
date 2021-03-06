class QuizzesController < ApplicationController
  def show
    @quiz = Quiz.create
    session[:quiz_id] = @quiz.id
    render "quiz"
  end

  def update
    @quiz = session[:quiz_id] ? Quiz.find(session[:quiz_id]) : nil
    puts session[:quiz_id]
    puts params
    choice = params[:answer_id]
    if !@quiz || !choice
      render text: "You have not played or picked an answer!"
    else
      puts "choice is #{choice}"
      puts "correct answer is #{@quiz.answer}"
      @quiz.check_answer(choice)
      if @quiz.over?
        render "over"
      else
        flash[:notice] = "another one!"
        @quiz.new_question
        @quiz.save!
        render "quiz"
      end
    end
  end

end
