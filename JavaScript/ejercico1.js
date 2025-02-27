//
const readline = require('readline-sync');

//funcion que devuelve un numero aleatorio
function generarnumeroaleatorio() {
    const numaleatorio =Math.floor(Math.random()*100+1); //nos gernera un valor aleatorio entre 1 y 100
    return numaleatorio;
}

//funcion que te muestra el menu y devuelve la oocpion elegida
function menu(){
    console.clear();
    console.log("------------Menú--------------");
    console.log("-----1. Adivina un número-----");
    console.log("-----2. Salir-----------------");
    const opcion=readline.question("Introduce una opcion: ");
    return opcion;
}

//funcion que me pausa el programa hasta que pausa Intro
function pausa(){
    console.log("Pulsa Intro para continuar...");
    readline.question(""); // Esto espera hasta que el usuario presione una tecla
}

let resultado;
do {
    resultado = menu();
    switch(resultado) {
        case '1': //entra para adivinar el numero
            let na=generarnumeroaleatorio();
            let num;
            do {
                num=parseInt(readline.question ("que numero crees que es?: "));
                if (num > na) console.log("Ese nmero es mayor.");
                else if (num < na) console.log("Ese numero es menor.");
                else console.log ("Acertaste.");
            }while (num !== na);
            pausa();            
            break;
        case '2': //nos salimos del programa 
            break;
        default: //en caso de q ue no se introduzca  un 1 o un 2 
            console.log("El valor introducido no es valido. Vuelva a intentarlo.");
            pausa();
    }
} while (resultado !== '2');


