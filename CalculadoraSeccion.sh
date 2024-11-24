 #!/data/data/com.termux/files/usr/bin/bash

# Función para calcular la corriente total
echo -e "\e[35mS̲E̲C̲T̲I̲O̲N̲ 
C̲a̲l̲c̲u̲l̲a̲t̲o̲r̲\e[0m"
echo -e "\e[31mCALCULADORA DE SECCIONES EN TRIFÁSICA\e[0m"

calcular_corriente_total() {
    local corriente_total=0
    for motor in "$@"; do
        local potencia=$(echo $motor | cut -d',' -f1)
        local voltaje=$(echo $motor | cut -d',' -f2)
        local factor_potencia=$(echo $motor | cut -d','>
        local corriente_motor=$((($potencia * 1000) / (>
        corriente_total=$((corriente_total + corriente_>
    done
    echo $corriente_total
}

# Función para calcular la sección del conductor
calcular_seccion_conductor() {
    local corriente_total=$1
    local coeficiente_seguridad=1.25
    local intensidad_max_admisible=100  # A (España)
    local seccion_conductor=$(echo "scale=2; ($corrient>
    echo $seccion_conductor                             }
                                                        # Constantes
                                                        
# Solicitar datos de los motores
echo "Ingresa los datos de los 4 motores:"
echo -n "Motor 1 (potencia,voltaje,factor_potencia): "
read motor1
echo -n "Motor 2 (potencia,voltaje,factor_potencia): "
read motor2
echo -n "Motor 3 (potencia,voltaje,factor_potencia): "
read motor3
echo -n "Motor 4 (potencia,voltaje,factor_potencia): "
read motor4

# Calcular la corriente total
corriente_total=$(calcular_corriente_total "$motor1" "$motor2" "$motor3" "$motor4")
echo "La corriente total es: $corriente_total A"
