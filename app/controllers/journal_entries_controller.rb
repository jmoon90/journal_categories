class JournalEntriesController < ApplicationController
  def index
    @journal_entries = JournalEntry.all
  end

  def new
    @journal_entry = JournalEntry.new
  end

  def create
    @journal_entry = JournalEntry.new(journal_params)
    if @journal_entry.save
      flash[:success] = "Success"
      redirect_to journal_entries_path
    else
      flash[:error] = "Error"
      render :new
    end
  end

  private
  def journal_params
    params.require(:journal_entry).permit(:title, :description)
  end
end
