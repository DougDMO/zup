
## Clone a repository

$ git clone 


----

## Install the Project


### Instalar rbenv ###
Execute o seguinte comando:
```shell
brew install rbenv
```

Inclua no ~/.bash_profile:
```shell
eval "$(rbenv init -)"
```

Listar as versões disponíveis:
```shell
rbenv install -l
```

Instalar uma versão, exemplo:
```shell
rbenv install 2.3.1
```

Verificar a versão do Ruby instalada:
```shell
ruby --version
```

### Instalando o bundler ###
Navegar para pasta desejada e executar o seguinte comando:
```shell
gem install bundler
```

### Instalando as gems ###
Execute o seguinte comando dentro da raiz do projeto:
```shell
bundle install
```

### Instalando ChromeDriver

Reference: https://github.com/SeleniumHQ/selenium/wiki/ChromeDriver

Mac users with Homebrew installed: 
brew tap homebrew/cask && brew cask install chromedriver

Debian based Linux distros: 
sudo apt-get install chromium-chromedriver

Windows users with Chocolatey installed: 
1. Install Chocolatey on cmd prompt:
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
2. Install Chrome Driver:
 choco install selenium-chrome-driver


## Run the Project

Execute the Project: 

Argumentos: [BROWSER,  PROFILE]

Example:
```shell
rake run[chrome,all]
``
Example:
```shell
rake run[chrome,carrinho]
``