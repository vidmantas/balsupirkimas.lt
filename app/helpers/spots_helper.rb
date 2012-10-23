module SpotsHelper
  def trans(key)
  	I18n.t(key, :scope => [:activerecord, :attributes, :spot])
  end
end
