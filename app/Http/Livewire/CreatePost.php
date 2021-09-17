<?php

namespace App\Http\Livewire;


use Livewire\Component;
use App\Models\Post;

class CreatePost extends Component
{
    public $open = false;
    public $title, $content;

    protected $rules = [
        'title' => 'required|max:10',
        'content' => 'required|min:100',

    ];

    public function updated($protertyName){
        $this->validateOnly($protertyName);

    }

    public function render()
    {
        return view('livewire.create-post');
    }
    public function save(){

        $this->validate();

        Post::create([
            'title' => $this->title,
            'content' => $this->content
        ]);

        $this->reset(['open', 'title', 'content']);

        //emite un evento
        //$this->emit('render');
        $this->emitTo('show-posts', 'render');
        $this->emit('alert', 'el post se creo correctamente');
    }
}
