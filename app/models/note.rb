class Note < ActiveRecord::Base
  # Remember to create a migration!

  def self.single_note(note_id)
    Note.find(note_id)
  end
end
