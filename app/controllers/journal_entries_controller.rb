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
      redirect_to journal_entries_path
    else
    binding.pry
      render :new
    end
  end

  private
  def journal_params
    params.require(:journal_entry).permit(:title, :description)
  end
end
