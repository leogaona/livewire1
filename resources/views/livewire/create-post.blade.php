<div>
    {{-- Knowing others is intelligence; knowing yourself is true wisdom. --}}
    <x-jet-danger-button wire:click="$set('open', true)">  
        Nuevo Post
    </x-jet-danger-button>

    <x-jet-dialog-modal wire:model="open">
        <x-slot name="title">
            crear nuevo post
        </x-slot>
        <x-slot name="content">
            <div class="mb-4">
                <x-jet-label value="titulo del post"/>
                <!-- <x-jet-input type="text" class="w-full" wire:model.defer="title"/> -->
                <x-jet-input type="text" class="w-full" wire:model="title"/>
                {{$title}}

                <x-jet-input-error for="title"/>

                <!-- @error('title')
                    <span>
                        {{$message}}
                    </span>
                @enderror -->

            </div>
            <div class="mb-4">
                <x-jet-label value="Contenido del post"/>
                <textarea  wire:model.defer="content"  class="form-control w-full" rows="6"></textarea>
                {{$content}}

                <x-jet-input-error for="content"/>

                <!-- @error('content')
                    <span>
                        {{$message}}
                    </span>
                @enderror -->

            </div>
        </x-slot>
        <x-slot name="footer">
            <x-jet-secondary-button wire:click="$set('open', false)">Cancel</x-jet-secondary-button>
            <x-jet-danger-button wire:click="save">Crear Post</x-jet-danger-button>
        </x-slot>
    </x-jet-dialog-modal>
</div>
