# encoding: utf-8
module StatisticsHelper
  def parties_stat_array(list)
    clear(list)
    raw([['Partija', 'Pranešimų']] + list.to_a)
  end

  def districts_stat_array(list)
    clear(list)
    raw([['Partija', 'Pranešimų']] + list.to_a)
  end

  def clear(list)
    list['Nenurodyta'] = list[nil]
    list.delete(nil)

    list.select{|k, v| v == nil }.each{|k, v| list[k] = 0 }

    list
  end
end
