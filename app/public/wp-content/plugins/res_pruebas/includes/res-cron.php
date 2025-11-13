<?php

class RES_Cron
{
    public function intervalos($intervalos)
    {
        $intervalos['cinco_segundos'] = [
            'interval' => 5,
            'display' => 'cada 5 segundos'
        ];

        $intervalos['cinco_minutos'] = [
            'interval' => 300,
            'display' => 'cada 5 minutos'
        ];
        return $intervalos;
    }

    public function inicializador() {

        // $args = [
        //     'arg1' => 150,
        //     'arg2' => 750
        // ];

        // if (!wp_next_scheduled('res_prueba01', $args)) {
        //     wp_schedule_event(
        //         time()+10,
        //         'cinco_segundos',
        //         'res_prueba01',
        //         $args
        //     );
        // };

        // delete_option('cron');
    }

    public function evento01( $arg1, $arg2 ) {
        echo "Ejecutando el evento de la tarea 01 <br>";
        
        var_dump($arg1);
        echo "Ejecutando el evento de la tarea 02 <br>";
        echo "Ejecutando el evento de la tarea 02 <br>";
        var_dump($arg2);

    }
}
