class CharacterPdf < Prawn::Document
  def initialize(character)
    super(top_margin: 25)
    @character = character

    character_header
  end

  def character_header
    text 'Character Sheet', align: :center, size: 30, style: :bold

    move_down 25
    text "Character Name: #{@character.name}"
    text "High Concept: #{@character.high_concept}"
    text "Trouble: #{@character.trouble}"

    move_down 50
    text "Description: #{@character.description}"
  end
end