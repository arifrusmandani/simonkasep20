<aside class="left-sidebar">
            <!-- Sidebar scroll-->
            <div class="scroll-sidebar">
                <!-- User profile -->
                <div class="user-profile" style="background: url({{asset('assets/images/background/user-info.jpg')}}) no-repeat;">
                    <!-- User profile image -->
                    <div class="profile-img"> <img src="{{asset('avatar/'.Auth::User()->foto)}}" alt="user" /> </div>
                    <!-- User profile text-->
                    <div class="profile-text"> <a href="#" class="dropdown-toggle u-dropdown" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="true">{{Auth::User()->name}}</a>
                        <div class="dropdown-menu animated flipInY"> <a href="{{ route('users.edit', Auth::user()->id) }}" class="dropdown-item"><i class="ti-user"></i> Edit Profile</a> 
                            
                            <div class="dropdown-divider"></div> <a href="{{ route('logout') }}" class="dropdown-item"><i class="fa fa-power-off"></i> Logout</a> </div>
                    </div>
                </div>
                <!-- End User profile text-->
                <!-- Sidebar navigation-->
                <nav class="sidebar-nav">
                    <ul id="sidebarnav">
                        @role('administrator')
                        <li class="nav-small-cap">ADMINISTRATOR</li>
                        @endrole
                        @role('pengguna')
                        <li class="nav-small-cap">USER MENU</li>
                        @endrole
                        {{-- <li> <a class="waves-effect waves-dark" href="{{route('home')}}" aria-expanded="false"><i class="mdi mdi-gauge"></i><span class="hide-menu">Home </span></a>
                         </li> --}}
                        <!-- <li> <a class="has-arrow waves-effect waves-dark" href="#" aria-expanded="false"><i class="mdi mdi-gauge"></i><span class="hide-menu">Dashboard </span></a>
                            <ul aria-expanded="false" class="collapse">
                                <li><a href="index.html">Menu 1</a></li>
                                <li><a href="index2.html">Menu 2</a></li>
                                <li><a href="index3.html">Menu 3</a></li>
                            </ul>
                        </li> -->
                        @role('administrator')
                        <li> <a class="has-arrow waves-effect waves-dark" href="#" aria-expanded="false"><i class="mdi mdi-account-settings-variant"></i><span class="hide-menu">Kelola User</span></a>
                            <ul aria-expanded="false" class="collapse">
                                <li><a href="{{ route('users.create') }}">+Add User</a></li>
                                <li><a href="{{ route('users.index') }}">List User</a></li>
                                <li><a href="{{ route('role.index')}}">Role</a></li>
                                {{-- <li><a href="{{ route('users.roles_permission') }}">Role Permission</a></li> --}}
                            </ul>
                        </li>
                        <li> <a class="waves-effect waves-dark" href="/dokumen" aria-expanded="false"><i class="mdi mdi-folder-multiple"></i><span class="hide-menu">Kelola Dokumen</span></a>
                        </li>
                        @endrole
                        {{-- <li> <a class="has-arrow waves-effect waves-dark" href="#" aria-expanded="false"><i class="mdi mdi-laptop-windows"></i><span class="hide-menu">Kelola Bapem </span></a>
                            <ul aria-expanded="false" class="collapse">
                                <li><a href="{{action ('PersonelController@index')}}">Personel</a></li>
                                <li><a href="{{ route('sasaran.index') }}">Sasaran</a></li>
                                <li><a href="/dokumen">Dokumen</a></li>
                            </ul>
                        </li> --}}
                        <li> <a class="waves-effect waves-dark" href="{{ route('bapem.index') }}" aria-expanded="false"><i class="mdi mdi-laptop-windows"></i><span class="hide-menu">Kelola Bapem </span></a>
                        

                        
                                              
                    </ul>
                </nav>
                <!-- End Sidebar navigation -->
            </div>
            <!-- End Sidebar scroll-->
            <!-- Bottom points-->
            <div class="sidebar-footer">
                <!-- item--><a href="" class="link" data-toggle="tooltip" title="Settings"><i class="ti-settings"></i></a>
                <!-- item--><a href="" class="link" data-toggle="tooltip" title="Email"><i class="mdi mdi-gmail"></i></a>
                <!-- item--><a href="" class="link" data-toggle="tooltip" title="Logout"><i class="mdi mdi-power"></i></a> </div>
            <!-- End Bottom points-->
        </aside>