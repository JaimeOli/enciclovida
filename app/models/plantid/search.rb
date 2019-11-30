class Plantid::Search < Plantidabs

def self.bibliografia(search)
 if search
    Bibliografia.find(:all, :conditions => ['CitaCompleta LIKE ?', "%#{search}%"])
  else
    Bibliografia.find(:all)
  end
end

end
