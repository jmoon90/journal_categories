class JournalEntriesController < ApplicationController
  def index
    @journal_entries = JournalEntry.all
    @categories = Category.all
  end

  def new
    @journal_entry = JournalEntry.new
  end

  def create
    @journal_entry = JournalEntry.new(journal_params)
    if @journal_entry.save
    binding.pry
      flash[:success] = "Success"
      redirect_to journal_entries_path
    else
      flash[:error] = "Error"
      render :new
    end
  end

  def destroy
    @journal_entry = JournalEntry.find(params[:id])
    if @journal_entry.destroy
      flash[:success] = "Deleted successfully"
      redirect_to journal_entries_path
    end
  end

  private
  def journal_params
    params.require(:journal_entry).permit(:title, :description, :category_id)
  end
end
