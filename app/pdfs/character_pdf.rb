class CharacterPdf < Prawn::Document
  def initialize(character, view)
    img = Rails.root.join('app', 'assets', 'images', 'pdf_background_brown_ice.jpg').to_s

    super(top_margin: 25, left_margin: 25, right_margin: 25, background: img)
    @character = character
    @view = view

    character_header
    stats
  end

  def character_header
    text 'Character Sheet', align: :center, size: 30, style: :bold

    move_down 25
    table header_rows, position: :left, row_colors: ['E6E6E6', 'FFFFFF'] do
      column(0).font_style = :bold
    end
  end

  def header_rows
    [
      ['Character Name', @character.name],
      ['High Concept', @character.high_concept],
      ['Trouble', @character.trouble],
      ['Description', @character.description],
      ['Phase One', @character.phase_one],
      ['Phase Two', @character.phase_two],
      ['Phase Three', @character.phase_three] 
    ]
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
      row(0).background_color = 'FFFFFF'
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
      row(0).background_color = 'FFFFFF'
    end
  end

  def stunt_rows
    [['Name', 'Description']] +
    @character.stunts.map do |stunt|
      [stunt.name, stunt.description]
    end
  end
end