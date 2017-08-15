class Service

  def client
    Savon.client(wsdl: 'https://rxnav.nlm.nih.gov/RxNormDBService.xml')
  end

  def get_drugs(drug)
    message = {name: drug}
    response = client.call(:get_drugs, message: message)
    response.body
  end

  def find_cui(drug)
    message = {term: drug}
    response = client.call(:find_rxcui_by_string, message: message)
    response.body
  end

  def spelling_suggestions(drug)
    message = {term: drug}
    response = client.call(:get_spelling_suggestions, message: message)
    response.body
  end
end