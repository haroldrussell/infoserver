#!/bin/bash
clear
echo "

 _|_|_|    _|_|_|    _|_|_|  _|_|_|  _|      _|  _|_|_|  _|      _|                                  
 _|    _|    _|    _|          _|    _|_|  _|_|    _|    _|_|    _|                                  
 _|    _|    _|    _|  _|_|    _|    _|  _|  _|    _|    _|  _|  _|                                  
 _|    _|    _|    _|    _|    _|    _|      _|    _|    _|    _|_|                                  
 _|_|_|    _|_|_|    _|_|_|  _|_|_|  _|      _|  _|_|_|  _|      _|                                  
 _|                _|_|                                                                              
     _|_|_|      _|        _|_|          _|_|_|    _|_|    _|  _|_|  _|      _|    _|_|    _|  _|_|  
 _|  _|    _|  _|_|_|_|  _|    _|      _|_|      _|_|_|_|  _|_|      _|      _|  _|_|_|_|  _|_|      
 _|  _|    _|    _|      _|    _|          _|_|  _|        _|          _|  _|    _|        _|        
 _|  _|    _|    _|        _|_|    _|  _|_|_|      _|_|_|  _|            _|        _|_|_|  _|

  ~ Creada por Cadete & Ruso         

                                                ";

echo "[✔] Verificando directorios...";
if [ -d "/usr/share/doc/infoserver" ] ;
then
echo "[◉] El directorio infoserver fue hallado! Quieres cambiarlo? [Y/n]:" ; 
read mama
if [ $mama == "y" ] ; 
then
 rm -R "/usr/share/doc/infoserver"
else
 exit
fi
fi

 echo "[✔] Instalando ...";
 echo "";
 git clone https://github.com/haroldrussell/infoserver.git /usr/share/doc/infoserver;
 echo "#!/bin/bash 
 python /usr/share/doc/infoserver/infoserver.py" '${1+"$@"}' > infoserver;
 chmod +x infoserver;
 sudo cp infoserver /usr/bin/;
 rm infoserver;


if [ -d "/usr/share/doc/infoserver" ] ;
then
echo "";
echo "[✔]Herramienta instalada exitosamente![✔]";
echo "";
  echo "[✔]====================================================================[✔]";
  echo "[✔] ✔✔✔  Todo listo!! Puede utilizar la herramienta  !     ✔✔✔ [✔]"; 
  echo "[✔]====================================================================[✔]";
  echo "";
else
  echo "[✘] Installation faid![✘] ";
  exit
fi
