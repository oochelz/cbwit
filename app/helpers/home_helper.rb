module HomeHelper
  def lunch_bunches
    bunches = Array.new

    group = Group.new(1)
    group.add('Alex')
    group.add('Chelsea')
    group.add('Caila')
    bunches << group

    group = Group.new(2)
    group.add('Monica')
    group.add('Michelle')
    group.add('Amber')
    bunches << group

    group = Group.new(3)
    group.add('Allison')
    group.add('Loretta')
    group.add('Lora')
    bunches << group

    group = Group.new(4)
    group.add('Tonya')
    group.add('Corrine')
    group.add('Sarah')
    bunches << group

    group = Group.new(5)
    group.add('LaToya')
    group.add('Tiffany')
    group.add('Brooke')
    bunches << group

    group = Group.new(6)
    group.add('Keanna')
    group.add('Christina')
    group.add('Tala')
    bunches << group

    bunches
  end
end
