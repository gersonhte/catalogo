# programa para mover de un directorio los ficheros mas viejos
# ejecutar como ejemplo "mueve_archivos_antiguos.sh /home1/sigma/logs/ 365"

case $# in

0) echo "Falta argumentos, debe ponerse el directorio y la cantidad de d�as"

exit 1;;

1) echo "Falta 1 argumento, debe ponerse el directorio y la cantidad de d�as"

exit 1;;

esac

cd $1
mkdir tmp
find . -name "*" -type f -mtime +$2 -exec ls {} \; > salida.txt
cant=`cat salida.txt | wc -l`
cont=1
while [ $cont -le $cant ] ; do
      arch=`head -$cont salida.txt | tail -1`
      mv $arch $1'/tmp'
#      compress -v $1'/tmp/'$arch
      cont=`expr $cont + 1`;
done
#cd $1
#cd tmp
#compress -v *.log
#cd $1
rm salida.txt
