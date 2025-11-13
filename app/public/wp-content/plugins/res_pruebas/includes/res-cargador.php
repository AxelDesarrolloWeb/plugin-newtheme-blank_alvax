<?php 
class RES_Cargador{
    protected $actions;
    protected $filters;

    public function __construct() {
        $this->actions = [];
        $this->filters = [];
    }

    public function add($hooks, $hook, $component, $callback, $priority = 10, $accepted_args= 1) {
        $hooks[] = [
            'hook' => $hook,
            'component' => $component,
            'callback' => $callback,
            'priority' => $priority,
            'accepted_args' => $accepted_args
        ];

        return $hooks;
    }

    public function add_action($hook, $component, $callback, $priority = 10, $accepted_args = 1) {
        $this->actions = $this->add($this->actions, $hook, $component, $callback, $priority, $accepted_args);
    }

    public function add_filter( $hook, $component, $callback, $priority = 10, $accepted_args = 1 ) {
        // reutiliza la lógica de add_action existente
        $this->add_action( $hook, $component, $callback, $priority, $accepted_args );
    }

    // public function res_run() {
    //     foreach($this -> actions as $hook) {
    //         add_action($hook['hook'], [$hook['component'], $hook['callback']], $hook['priority'], $hook['accepted_args']);
    //     }
    // }

    public function res_run() {
        foreach($this -> actions as $hook_u) {
            extract($hook_u, EXTR_OVERWRITE);
            
            add_action($hook, [$component, $callback], $priority, $accepted_args);
        }

        foreach($this->filters as $hook_u) {
            extract($hook_u, EXTR_OVERWRITE);
            add_action($hook, [$component, $callback ], $priority, $accepted_args);
        }
    }
}