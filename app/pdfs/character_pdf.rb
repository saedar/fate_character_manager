class CharacterPdf < Prawn::Document
  def initialize(character, view)
    super(top_margin: 25, left_margin: 25, right_margin: 25)
    @character = character
    @view = view

    character_header
    aspects
    stats
  end

  def character_header
    text 'Character Sheet', align: :center, size: 30, style: :bold

    move_down 25
    text "<b>Character Name:</b> #{@character.name}", inline_format: true
    text "<b>High Concept:</b> #{@character.high_concept}", inline_format: true
    text "<b>Trouble:</b> #{@character.trouble}", inline_format: true
    text "<b>Description:</b> #{@character.description}", inline_format: true
  end

  def aspects
    move_down 10
    text "<b>Phase One:</b> #{@character.phase_one}", inline_format: true
    text "<b>Phase Two:</b> #{@character.phase_two}", inline_format: true
    text "<b>Phase Three:</b> #{@character.phase_three}", inline_format: true
  end

  def stats
    move_down 25
    skill_table

    move_up 263
    stunt_table
  end

  def skill_table
    table skill_rows, header: true, position: :left, row_colors: ['E6E6E6', 'FFFFFF'] do
      row(0).font_style = :bold
    end
  end

  def skill_rows
    [['Skill', 'Level']] +
    @character.skill_assignments.sort_by{|s|-1 * s.level.to_i}.map do |skill|
      [@view.skill_assignment(skill.skill_id).name, skill.level]
    end
  end

  def stunt_table
    table stunt_rows, header: true, column_widths: [100, 325], position: :right, row_colors: ['E6E6E6', 'FFFFFF'] do
      row(0).font_style = :bold
    end
  end

  def stunt_rows
    [['Name', 'Description']] +
    @character.stunts.map do |stunt|
      [stunt.name, stunt.description]
    end
  end
end