read -p "app name:" app_name

APP_NAME="$app_name"
APP_EXEC=`which $APP_NAME`
DESKTOP_FILE="$HOME/.config/autostart/$APP_NAME.desktop"

# Crie o arquivo .desktop e escreva nele
echo "[Desktop Entry]" > $DESKTOP_FILE
echo "Type=Application" >> $DESKTOP_FILE
echo "Name=$APP_NAME" >> $DESKTOP_FILE
echo "Exec=$APP_EXEC" >> $DESKTOP_FILE

# Dê permissão de execução para o arquivo .desktop
chmod +x $DESKTOP_FILE

echo "O aplicativo $APP_NAME foi adicionado à inicialização automática."