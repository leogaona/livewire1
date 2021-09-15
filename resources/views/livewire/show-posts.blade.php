<div>
    {{-- The Master doesn't talk, he acts. --}}

    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Dashboard') }}
        </h2>
    </x-slot>
    {{-- $search --}}
    <!--<h1>Hola Mundo</h1> -->
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8  py-12">
        <!-- This example requires Tailwind CSS v2.0+ -->
        <x-table>

            <div class="px-6 py-4">
                {{--<input type="text" wire:model="search">--}}
                <x-jet-input class="w-full" placeholder="Escriba que quiere buscar" type="text" wire:model="search" />
            </div>

            @if ($posts->count())
                
           
            <table class="min-w-full divide-y divide-gray-200">
                <thead class="bg-gray-50">
                    <tr>
                        <th scope="col"
                            class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                            Name
                        </th>
                        <th scope="col"
                            class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                            Title
                        </th>
                        <th scope="col"
                            class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                            Status
                        </th>

                        <th scope="col" class="relative px-6 py-3">
                            <span class="sr-only">Edit</span>
                        </th>
                    </tr>
                </thead>
                <tbody class="bg-white divide-y divide-gray-200">
                    @foreach ($posts as $post)
                        <tr>

                            <td class="px-6 py-4">
                                <div class="text-sm text-gray-900">{{ $post->id }}</div>

                            </td>
                            <td class="px-6 py-4">
                                <div class="text-sm text-gray-900">{{ $post->title }}</div>
                            </td>
                            <td class="px-6 py-4 text-sm text-gray-500">
                                <div class="text-sm text-gray-900">{{ $post->content }}</div>
                            </td>
                            <td class="px-6 py-4 whitespace-nowrap text-right text-sm font-medium">
                                <a href="#" class="text-indigo-600 hover:text-indigo-900">Edit</a>
                            </td>
                        </tr>
                    @endforeach



                    <!-- More people... -->
                </tbody>
            </table>
            @else
              <div class="px-6 py-4">
                  No existe ningun registro coincidente
              </div>
            @endif


        </x-table>
    </div>


</div>
