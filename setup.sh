echo "Hello humso! Let's get you set up."


# Create a folder for coding projects
echo "Create a folder for dev environent"
mkdir -p ~/_Apps


# Install homebrew https://brew.sh
echo "installing homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"


# Install Git
echo "Installing Git..."
brew install git
echo "Configuring Git..."
git config --global user.name "Humso"
git config --global user.email hello@humso.com


# Install Node.js
echo "Installing Node..."
brew install node


# Auto update homebrew
echo "autoupdating homebrew"
brew tap homebrew/autoupdate
brew install pinentry-mac # required by sudo
brew  autoupdate start 43200 --upgrade --cleanup --immediate --sudo


# Install XCode
echo "Installing xcode-stuff"
xcode-select --install


# Install Zsh
echo "Installing Zsh..."
brew install zsh


# Install Oh My Zsh
echo "Installing Oh My Zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


# Install Pure prompt theme
echo "Installing Pure prompt theme..."
brew install pure


# Set Zsh as the default shell
echo "Setting Zsh as the default shell..."
chsh -s $(which zsh)
echo "Zsh and Oh My Zsh have been set up successfully!"


# List of applications to install with Homebrew Cask
applications=(
    google-chrome
    google-drive
    1password
    visual-studio-code
    appcleaner
    cleanshot
    raycast
    insomnia
    moom
    notion
    figma
    spotify
    slack
    font-inter
    font-jetbrains-mono
    # Add more applications here
)


# Install each application
echo "Installing applications with Homebrew Cask..."
for app in "${applications[@]}"; do
  brew install --cask "$app"
done


# Complete
echo "All done!"
