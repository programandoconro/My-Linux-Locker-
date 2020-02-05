# Ve a la configuración del teléfono Android y activa las opciones de desarrollador (ABOUT DEVICE ---- toca 7 veces la opción de BUILD NUMBER)
# Ahora, en linux, conectamos por USB a Anrdorid.

lsusb

# Encuerta el dispositivo y copia los primeros 4 valores del ID, por ejemplo, 04e8. 

echo 'SUBSYSTEM=="usb", ATTR{idVendor}=="04e8", MODE="0666", GROUP="plugdev"' | sudo tee /etc/udev/rules.d/51-android-usb.rules

apt install adb -y

adb devices

#Habilita la conexión en tu teléfono.
#Instala npm 

apt install npm nodejs -y

# Instala React

npm install -g create-react-app

# Instala expo y arranca el proyecto

npm install -g expo-cli
expo init AwesomeProject
cd AwesomeProject
npm start # o expo start

# Modificamos el archivo App.js

nano App.js

# La app cambiara inmediatemente en nuestro dispositivo.

# En caso de error ENOSPC watchers limit 

echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p
