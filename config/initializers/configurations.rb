# Se sim, não carrega recursos externos como fontes e notícias
OFFLINE = true

# Nome para ser apresentado no login e em outras telas
# SYSTEM_NAME = "Agata / GED"
SYSTEM_NAME = "Esmeralda / GPA"

# Nome da sub_uri para suprir os links das datatables
SUB_URI_NAME = "esmeralda"

# Cor da barra de título
# SYSTEM_COLOR = "#AE70AF"
SYSTEM_COLOR = "#18bc9c"

# Nome da instituição
INSTITUTION_NAME = "Assembleia Legislativa do Estado do Piauí"

# Nomenclatura do modelo Folder
# FOLDER_NAME = "Diretório"
FOLDER_NAME = "Processo"

# Se descomentados, vão limitar a nomenclatura de novas pastas
FOLDER_NAME_START = -6598
FOLDER_NAME_MASK = "{{CONTADOR}}/#{Date.today.year}"

# Deve ser igual ao Time Zone do servidor
DEFAULT_TIME_ZONE = "America/Fortaleza"

# Para exibir notícias no dashboard do usuário
RSS_TITLE = "Últimas Notícias no Piauí"
RSS_URL = "http://www.piaui.pi.gov.br/rss"
RSS_BASE_URL = "http://www.piaui.pi.gov.br"

# Chave para identificar a cidade do usuário. Ver http://weather.yahoo.com
WEATHER_KEY = 455835

# Campos em folders para pesquisa
SEARCH_FOLDER_PARAMS = %w(name description enquirers_name enquirers_trade_name enquirers_company_name enquirers_document enquirer detail)

# IMPORTANTE: tenha certeza de que esses diretórios estão acessíveis para o Apache

# Repositório de arquivos
PATH_FILES = "#{Rails.root}/../safira-files/#{Rails.env}"
FileUtils.makedirs(PATH_FILES)

DEFAULT_DOC_INITIAL = "DOCUMENTACAO INICIAL"

ROOT_LOGO_UF = "#{Rails.root}/app/assets/images/alepi.jpg"

# Pastas temporárias

path_cache_files = "#{Rails.root}/tmp/cache/application/#{Rails.env}"

PATH_CACHE_IMAGES = "#{path_cache_files}/images"
FileUtils.makedirs(PATH_CACHE_IMAGES)

PATH_CACHE_PDFS = "#{path_cache_files}/pdfs"
FileUtils.makedirs(PATH_CACHE_PDFS)

PATH_CACHE_RSS = "#{path_cache_files}/rss"
FileUtils.makedirs(PATH_CACHE_RSS)

PATH_CACHE_CARRIERWAVE = "#{path_cache_files}/carrierwave"
FileUtils.makedirs(PATH_CACHE_CARRIERWAVE)

PATH_CACHE_DOWNLOADS = "#{path_cache_files}/downloads"
FileUtils.makedirs(PATH_CACHE_DOWNLOADS)

API_TOKEN = 'AIzaSyDI82KDtnPz9qG1Ffy3AYlSc4WivCgeGnM'

FACEBOOK_APP_ID = '1359344874086495'
FACEBOOK_APP_SECRET = '1b5b61fbfb0ab3c12dd8c6084ed9b6fa'

