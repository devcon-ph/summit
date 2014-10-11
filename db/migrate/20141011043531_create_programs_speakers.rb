class CreateProgramsSpeakers < ActiveRecord::Migration
  def change
    create_table :programs_speakers do |t|
      t.integer :program_id
      t.integer :speaker_id
    end
  end
end
