<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Models\Post;

class ShowPosts extends Component
{
    //public $title;
    
    // public $titulo;

    // public function mount($title){
    //     $this->titulo = $title;
    // }


    // public $name;
    // public function mount($name){
    //     $this->name  = $name;
    // }

    //public $search = "Esto se buscará";
    public $search;
    public $sort = 'id';
    public $direction = 'desc';

    public function render()
    {
        
        //return view('livewire.show-posts');
        //->layout('layouts.base');
        
        //$posts = Post::all();
        $posts = Post::where('title', 'like', '%' . $this->search . '%')
                            ->orWhere('content', 'like', '%' . $this->search . '%')
                            ->orderBy($this->sort, $this->direction)
                            ->get();

        return view('livewire.show-posts', compact('posts')); 
    }
    public function order($sort){
        if ($this->sort == $sort) {
            if ($this->direction == 'desc') {
                $this->direction = 'asc';
            } else {
                $this->direction = 'desc';
            }
            
        } else {
            $this->sort = $sort;
            $this->direction = 'asc';
        }
        
        $this->sort = $sort;
    }
}
