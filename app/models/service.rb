class Service
  require 'savon'

  def client
    Savon.client(wsdl: 'https://rxnav.nlm.nih.gov/RxNormDBService.xml')
  end

  def get_drugs(drug)
    message = {name: drug}
    response = client.call(:get_drugs, message: message)
    response.body
  end



end