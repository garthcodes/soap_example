class Service
  require 'savon'

  def client
    Savon.client(wsdl: 'https://rxnav.nlm.nih.gov/RxNormDBService.xml')
  end

  

end