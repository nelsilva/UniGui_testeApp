object UniServerModule: TUniServerModule
  OldCreateOrder = False
  TempFolder = 'temp\'
  Title = 'API Loja 2.0'
  SuppressErrors = []
  Bindings = <>
  MainFormDisplayMode = mfPage
  CustomCSS.Strings = (
    '.menu_selected {'
    '  border:  1px solid #4a4a4a !important; '
    '}'
    '.red_borders {'
    '  border:  1px solid #ff8282 !important; '
    '  outline: 1px solid #ff2121;'
    '}'
    '.blue_borders {'
    '  border:  1px solid #90d2f4 !important; '
    '  outline: 1px solid #39afea;'
    '}'
    '.orange_borders {'
    '  border:  1px solid #facc70 !important; '
    '  outline: 1px solid #f9aa0b;'
    '}'
    '.green_borders {'
    '  border:  1px solid #9dd478 !important; '
    '  outline: 1px solid #61a434;'
    '}'
    '.gray_borders {'
    '  border:  1px solid #fdfdfd !important; '
    '  outline: 1px solid #d4d4d4;'
    '}'
    '.title {'
    '  font-size:2.0vw !important;'
    '  margin-top:0.5vw !important;'
    '}'
    '.subtitle {'
    '  font-size:0.90vw !important;'
    '  margin-top:1.1vw !important;'
    '}'
    '.info {'
    '  font-size:0.75vw !important;'
    '  margin-top:1.0vw !important;  '
    '}'
    '.subtitlegray {'
    '  font-size:0.80vw !important; '
    '}'
    '.graphtitle {'
    ' font-size:0.80vw !important;'
    ' line-height: 180%;'
    '}'
    '.chrome {'
    ' font: 1.70vw Arial, Helvetica, sans-serif;'
    ' font-weight:bold;'
    '}'
    '.chrome35 {'
    ' font: 1.20vw Arial, Helvetica, sans-serif;'
    ' font-weight:normal;'
    '}'
    '#ext-sprite-1325 {'
    ' stroke:#d8d8d8;'
    '}'
    '#ext-sprite-1339 {'
    ' stroke:#d8d8d8;'
    '}'
    '.degree {  '
    '  font: 1.50vw Arial, Helvetica, sans-serif !important;'
    '  font-weight:normal;'
    '}'
    '.subtitleweather {  '
    '  font: 0.90vw Arial, Helvetica, sans-serif !important;'
    '  font-weight:normal;'
    '}'
    '.infoweather {'
    '  font: 0.70vw Arial, Helvetica, sans-serif !important;'
    '}'
    '.social {'
    '  font: bold 1.00vw Arial, Helvetica, sans-serif !important;'
    '}'
    '.social_img {'
    '  width:   100% !important;'
    '  text-align:center;  '
    '  vertical-align: middle;'
    '}')
  CustomMeta.Strings = (
    
      '<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/d' +
      'ist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gi' +
      'JF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" ' +
      'crossorigin="anonymous">'
    
      '<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/' +
      'dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa' +
      '4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin' +
      '="anonymous"></script>'
    
      '<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/d' +
      'ist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u' +
      '/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymou' +
      's"></script>'
    
      '<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/' +
      'dist/js/bootstrap.min.js" integrity="sha384-pQQkAEnwaBkjpqZ8RU1f' +
      'F1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj" crossorigin="anony' +
      'mous"></script>'
    ''
    '<style>'
    '.btn-crud { '
    '    cursor: pointer;'
    '    min-width: 100px;'
    '    max-height: 30px;'
    '    padding: 0px;'
    '    font-size: 0.8em;'
    '  }'
    '  '
    '.x-grid-row-selected .x-grid-cell-inner {'
    '  font-weight: bold;'
    '  background-color:green;'
    '}'
    '</style>')
  SSL.SSLOptions.RootCertFile = 'root.pem'
  SSL.SSLOptions.CertFile = 'cert.pem'
  SSL.SSLOptions.KeyFile = 'key.pem'
  SSL.SSLOptions.Method = sslvTLSv1_1
  SSL.SSLOptions.SSLVersions = [sslvTLSv1_1]
  SSL.SSLOptions.Mode = sslmUnassigned
  SSL.SSLOptions.VerifyMode = []
  SSL.SSLOptions.VerifyDepth = 0
  ConnectionFailureRecovery.ErrorMessage = 'Connection Error'
  ConnectionFailureRecovery.RetryMessage = 'Retrying...'
  Height = 150
  Width = 215
end
