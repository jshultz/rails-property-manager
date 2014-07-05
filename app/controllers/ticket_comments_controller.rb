class TicketCommentsController < ApplicationController
  before_action :set_ticket_comment, only: [:show, :edit, :update, :destroy]

  # GET /ticket_comments
  # GET /ticket_comments.json
  def index
    @ticket_comments = TicketComment.all
  end

  # GET /ticket_comments/1
  # GET /ticket_comments/1.json
  def show
  end

  # GET /ticket_comments/new
  def new
    @ticket_comment = TicketComment.new
  end

  # GET /ticket_comments/1/edit
  def edit
  end

  # POST /ticket_comments
  # POST /ticket_comments.json
  def create
    @ticket_comment = TicketComment.new(ticket_comment_params)

    respond_to do |format|
      if @ticket_comment.save
        format.html { redirect_to :back, notice: 'Ticket comment was successfully created.' }
        format.json { render :show, status: :created, location: @ticket_comment }
      else
        format.html { render :new }
        format.json { render json: @ticket_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ticket_comments/1
  # PATCH/PUT /ticket_comments/1.json
  def update
    respond_to do |format|
      if @ticket_comment.update(ticket_comment_params)
        format.html { redirect_to @ticket_comment, notice: 'Ticket comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @ticket_comment }
      else
        format.html { render :edit }
        format.json { render json: @ticket_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ticket_comments/1
  # DELETE /ticket_comments/1.json
  def destroy
    @ticket_comment.destroy
    respond_to do |format|
      format.html { redirect_to ticket_comments_url, notice: 'Ticket comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ticket_comment
      @ticket_comment = TicketComment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ticket_comment_params
      params.require(:ticket_comment).permit(:comment, :ticket_id, :user_id)
    end
end
