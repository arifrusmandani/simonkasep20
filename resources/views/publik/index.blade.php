@extends('layouts.main_publik')
@section('content')

<!-- ============================================================== -->
<!-- Start Page Content -->
<!-- ============================================================== -->
<div class="fix-width">
    <div class="row banner-text">
        <div class="col-md-6 m-t-20">
            <div> <img src="{{ asset('assets/images/logo3.jpg')}}" alt="Logo simTKPLB" /> </div>
            <h1>SIMon<span class="text-info"> BanPem KaSeP</span> </h1>
            <h3>adalah laman Sistem Informasi Monitoring Bantuan Pemerintah
            Kepala Sekolah PPPPTK TK DAN PLB yang mengelola pelaporan dokumen bantuan pemerintah, menuju suatu pemerintahan yang berbasis elektronik (e-Government).</h3>

        </div>
        <div class="col-md-6">
        <img src="{{ asset('assets/images/bg-header.jpg')}}" alt="" width="100%">
            {{--
            <div class="hero-banner"> <img src="{{ asset('assets/images/material-admin-logo.png')}}" alt="Material Pro admin template" /> </div> --}}

            <!-- <div class="col-md-9 p-20">
                <div id="carouselExampleIndicators3" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#carouselExampleIndicators3" data-slide-to="0" class="active"></li>
                        <li data-target="#carouselExampleIndicators3" data-slide-to="1"></li>
                        <li data-target="#carouselExampleIndicators3" data-slide-to="2"></li>
                    </ol>
                    <div class="carousel-inner" role="listbox">
                        <div class="carousel-item active">
                            <a href="#" target="_blank">
                                                        <img class="img-responsive img-thumbnail" src="{{ asset('assets/images/big/img6.jpg') }}" alt="First slide">
                                                        <div class="carousel-caption d-none d-md-block">
                                                            <h3 class="text-white">First title goes here</h3>
                                                            <p>this is the subcontent you can use this</p>
                                                        </div>
                                                        </a>
                        </div>
                        <div class="carousel-item">
                            <a href="#" target="_blank">
                                <img class="img-responsive img-thumbnail" src="{{ asset('assets/images/big/img3.jpg') }}" alt="Second slide">
                                    <div class="carousel-caption d-none d-md-block">
                                        <h3 class="text-white">Second title goes here</h3>
                                        <p>this is the subcontent you can use this</p>
                                    </div>
                            </a>
                        </div>
                        <div class="carousel-item">
                            <a href="#" target="_blank">
                                                        <img class="img-responsive img-thumbnail" src="{{ asset('assets/images/big/img4.jpg') }}" alt="Third slide">
                                                        <div class="carousel-caption d-none d-md-block">
                                                            <h3 class="text-white">Third title goes here</h3>
                                                            <p>this is the subcontent you can use this</p>
                                                        </div>
                                                    </a>
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#carouselExampleIndicators3" role="button" data-slide="prev">
                                                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                                    <span class="sr-only">Previous</span>
                                                </a>
                    <a class="carousel-control-next" href="#carouselExampleIndicators3" role="button" data-slide="next">
                                                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                                    <span class="sr-only">Next</span>
                                                </a>
                </div>
            </div> -->
        </div>
    </div>
</div>
<!-- ============================================================== -->
<!-- SIM PELAYANAN -->
<!-- ============================================================== -->

<div class="card card-outline-inverse">
        <div class="card-header">
            <h4 class="m-b-0 text-white text-center">Menu SIMon KaSeP</h4></div>
        <div class="card-body bg-theme">
            <div class="row">
                <div class="col-xs-12 col-md-4">
                       <!--  <div class="card">

                            <div class="card-body">
                                <h4 class="card-title">Fasilitas</h4>
                                <div class="message-box">
                                    <div class="message-widget message-scroll">
                                        
                                        <a href="http://pustaka.p4tktkplb.kemdikbud.go.id/" target="_blank">
                                            <div class="user-img"> <span class="round">pstk</i></span> </div>
                                            <div class="mail-contnet">
                                                <h4>Pustaka TKPLB</h4> <span class="mail-desc">Perpustakaan Dalam Jaringan</span></div>
                                        </a>
                                        <a href="https://mail.kemdikbud.go.id/" target="_blank">
                                            <div class="user-img"> <span class="round">pos</i></span> </div>
                                            <div class="mail-contnet">
                                                <h4>Pos Elektronik Kemdikbud</h4> <span class="mail-desc">https://mail.kemdikbud.go.id/#1</span></div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div> -->

                    </div>
                    <div class="col-xs-12 col-md-4">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Petunjuk Penggunaan</h4>
                                <div class="message-box">
                                    <div class="message-widget message-scroll">
                                        <!-- Message -->
                                        <a href="#" target="_blank">
                                            <div class="user-img"> <span class="round">pnt</i></span> </div>
                                            <div class="mail-contnet">
                                                <h5>Tentang SIMon KaSeP</h5>
                                            </div>
                                        </a>
                                        <a href="/bapem" target="_blank">
                                            <div class="user-img"> <span class="round">msk</i></span> </div>
                                            <div class="mail-contnet">
                                                <h4>Masuk Ke Sistem Informasi Bantuan Pemerintah</h4> </div>
                                        </a>
                                        <a href="#" target="_blank">
                                            <div class="user-img"> <span class="round">reg</i></span> </div>
                                            <div class="mail-contnet">
                                                <h5>Bantuan Pemerintah</h5> </div>
                                        </a>

                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="col-xs-12 col-md-4">
                        <!-- <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Diklat Dalam Jaringan</h4>
                                <div class="message-box">
                                    <div class="message-widget message-scroll">
                                        
                                        <a href="http://etraining.p4tktkplb.kemdikbud.go.id/" target="_blank">
                                            <div class="user-img"> <span class="round">drng</i></span> </div>
                                            <div class="mail-contnet">
                                                <h5>e-Training</h5> <span class="mail-desc">http://etraining.p4tktkplb.kemdikbud.go.id/</span></div>
                                        </a>
                                        <a href="https://belajar.kemdikbud.go.id/Dashboard/" target="_blank">
                                            <div class="user-img"> <span class="round">bljr</i></span> </div>
                                            <div class="mail-contnet">
                                                <h4>Rumah Belajar Kemdikbud</h4> <span class="mail-desc">https://belajar.kemdikbud.go.id/Dashboard/</span></div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div> -->

                    </div>
                </div>
        </div>
    </div>

<!-- ============================================================== -->
<!-- SIM TKPLB -->
<!-- ============================================================== -->
<hr>
   <!--  <div class="card card-outline-inverse">
            <div class="card-header">
                <h4 class="m-b-0 text-white text-center">Sistem Informasi Manajemen di Lingkungan PPPPTK TK DAN PLB</h4></div>
            <div class="card-body bg-warning">
                <div class="row">
                        <div class="col-xs-12 col-md-4">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="card-title">Bidang Program dan Informasi</h4>
                                        <div class="message-box">
                                            <div class="message-widget message-scroll">
                                                
                                                <a href="#" target="_blank">
                                                    <div class="user-img"> <span class="round">pkp</i></span> </div>
                                                    <div class="mail-contnet">
                                                        <h4>e-PKP</h4> <span class="mail-desc">Sistem Kendali Program dan Kegiatan.</span></div>
                                                </a>
                                                <a href="/home" target="_blank">
                                                    <div class="user-img"> <span class="round">ptk</i></span> </div>
                                                    <div class="mail-contnet">
                                                        <h5>SIMPTK</h5> <span class="mail-desc">SIM Pendidik dan Tenaga Kependidikan.</span></div>
                                                </a>
                                                <a href="http://file.p4tktkplb.kemdikbud.go.id" target="_blank">
                                                    <div class="user-img"> <span class="round">file</i></span> </div>
                                                    <div class="mail-contnet">
                                                        <h5>File Server</h5> <span class="mail-desc">http://file.p4tktkplb.kemdikbud.go.id</span></div>
                                                </a>
                                                <a href="http://file.p4tktkplb.kemdikbud.go.id/sigpkp/" target="_blank">
                                                    <div class="user-img"> <span class="round">sig</i></span> </div>
                                                    <div class="mail-contnet">
                                                        <h5>SIG TKPLB</h5> <span class="mail-desc">Sistem Informasi Geografis Data PTK</span></div>
                                                </a>
                                                <a href="http://sms.tkplb.net" target="_blank">
                                                    <div class="user-img"> <span class="round">sms</i></span> </div>
                                                    <div class="mail-contnet">
                                                        <h5>SMS Server</h5> <span class="mail-desc">http://sms.tkplb.net</span></div>
                                                </a>

                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <div class="col-xs-12 col-md-4">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="card-title">Bidang Fasilitasi Peningkatan Kompetensi</h4>
                                        <div class="message-box">
                                            <div class="message-widget message-scroll">
                                                
                                                <a href="http://fasningkomtkplb.id/" target="_blank">
                                                    <div class="user-img"> <span class="round">dklt</i></span> </div>
                                                    <div class="mail-contnet">
                                                        <h4>SIMDIKLAT Peserta</h4> <span class="mail-desc">http://fasningkomtkplb.id/</span></div>
                                                </a>
                                                <a href="http://fasningkomtkplb.id/panitia/" target="_blank">
                                                    <div class="user-img"> <span class="round">pkls</i></span> </div>
                                                    <div class="mail-contnet">
                                                        <h5>Simdiklat Panitia</h5> <span class="mail-desc">http://fasningkomtkplb.id/panitia/</span></div>
                                                </a>
                                                <a href="http://fasningkomtkplb.id/panitiakelas/" target="_blank">
                                                    <div class="user-img"> <span class="round">pnt</i></span> </div>
                                                    <div class="mail-contnet">
                                                        <h5>SIMDIKLAT Panitia Kelas</h5> <span class="mail-desc">http://fasningkomtkplb.id/panitiakelas/</span></div>
                                                </a>

                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <div class="col-xs-12 col-md-4">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="card-title">Bagian Umum</h4>
                                        <div class="message-box">
                                            <div class="message-widget message-scroll">
                                                
                                                <a href="http://kepegawaian.tkplb.net/" target="_blank">
                                                    <div class="user-img"> <span class="round">peg</i></span> </div>
                                                    <div class="mail-contnet">
                                                        <h5>SIMPEG Online</h5> <span class="mail-desc">http://kepegawaian.tkplb.net/</span></div>
                                                    <a href="http://43.247.33.58/presensi/" target="_blank">
                                                        <div class="user-img"> <span class="round">pre</i></span> </div>
                                                        <div class="mail-contnet">
                                                            <h5>Presensi GTK</h5> <span class="mail-desc">http://43.247.33.58/presensi/</span></div>
                                                    </a>
                                                    <a href="http://skp.sdm.kemdikbud.go.id/skp/" target="_blank">
                                                        <div class="user-img"> <span class="round">skp</i></span> </div>
                                                        <div class="mail-contnet">
                                                            <h4>SKP Kemdikbud</h4> <span class="mail-desc">SPK Online http://skp.sdm.kemdikbud.go.id/skp/</span></div>
                                                    </a>
                                                    <a href="http://43.247.33.146/login" target="_blank">
                                                        <div class="user-img"> <span class="round">mao</i></span> </div>
                                                        <div class="mail-contnet">
                                                            <h5>MAO Tukin</h5> <span class="mail-desc">http://43.247.33.146/login</span></div>
                                                    </a>
                                                    <a href="https://persuratan.kemdikbud.go.id/" target="_blank">
                                                        <div class="user-img"> <span class="round">eof</i></span> </div>
                                                        <div class="mail-contnet">
                                                            <h5>e-Office</h5> <span class="mail-desc">Aplikasi Perkantoran Elektronik Kemdikbud</span></div>
                                                    </a>


                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                </div>
            </div>
        </div> -->

<!-- ============================================================== -->
<!-- SIM PUSAT -->
<!-- ============================================================== -->


    <!-- <div class="card card-outline-inverse">
            <div class="card-header">
                <h4 class="m-b-0 text-white text-center">Sistem Informasi Manajemen GTK/Pusat</h4></div>
            <div class="card-body bg-theme">
                <div class="row">
                        <div class="col-xs-12 col-md-4">
                                <div class="card">

                                    <div class="card-body">
                                        <h4 class="card-title">Guru</h4>
                                        <div class="message-box">
                                            <div class="message-widget message-scroll">
                                                
                                                <a href="https://app.simpkb.id" target="_blank">
                                                    <div class="user-img"> <span class="round">pkb</i></span> </div>
                                                    <div class="mail-contnet">
                                                        <h4>SIM PKB</h4> <span class="mail-desc">http://app.simpkb.id</span></div>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <div class="col-xs-12 col-md-4">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="card-title">Kepala Sekolah</h4>
                                        <div class="message-box">
                                            <div class="message-widget message-scroll">
                                               
                                                <a href="https://sim.tendik.kemdikbud.go.id/penguatanks/login/index/pd" target="_blank">
                                                    <div class="user-img"> <span class="round">pks</i></span> </div>
                                                    <div class="mail-contnet">
                                                        <h5>Penguatan KS</h5> <span class="mail-desc">https://sim.tendik.kemdikbud.go.id/penguatanks/</span></div>
                                                </a>
                                                <a href="https://sim.tendik.kemdikbud.go.id/cakep/" target="_blank">
                                                    <div class="user-img"> <span class="round">cks</i></span> </div>
                                                    <div class="mail-contnet">
                                                        <h4>Sim Tendik Calon Kepala Sekolah</h4> <span class="mail-desc">https://sim.tendik.kemdikbud.go.id/cakep/</span></div>
                                                </a>

                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <div class="col-xs-12 col-md-4">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="card-title">Pengawas Sekolah</h4>
                                        <div class="message-box">
                                            <div class="message-widget message-scroll">
                                               
                                                <a href="https://sim.tendik.kemdikbud.go.id/diklat/login" target="_blank">
                                                    <div class="user-img"> <span class="round">pps</i></span> </div>
                                                    <div class="mail-contnet">
                                                        <h5>SIM Tendik Penguatas</h5> <span class="mail-desc">https://sim.tendik.kemdikbud.go.id/diklat/login</span></div>
                                                </a>
                                                <a href="https://sim.tendik.kemdikbud.go.id/cawas/" target="_blank">
                                                    <div class="user-img"> <span class="round">cwas</i></span> </div>
                                                    <div class="mail-contnet">
                                                        <h4>SIM Tendik Cawas</h4> <span class="mail-desc">https://sim.tendik.kemdikbud.go.id/cawas/</span></div>
                                                </a>


                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                </div>
            </div>
        </div>
 -->



<!-- ============================================================== -->
<!-- Feature with Icons -->
<!-- ============================================================== -->

<!-- ============================================================== -->
<!-- Testimonial -->
<!-- ============================================================== -->
<!-- <div class="row light-blue">
    <div class="col-md-12">
        <div class="fix-width text-center"> <small class="text-info">Segera Hadir</small>
             <h2 class="display-7">What Real Buyers have to <br/>Say about MaterialPro Admin</h2>
                                <div class="tesimonial-box owl-carousel owl-theme" id="owl-demo2">
                                    <div class="item">
                                        <p class="testimonial-text"><b class="font-500">The free version is incredible and it had everything I needed, however I bought this full template to support the developer. It’s a great, lightweight template which has loads of awesome little features and pre-made layouts to help kick-start your next admin panel, CMS, or CRM system. Keep up the good work!</b>                                        </p>
                                        <div class="username"><b>Nick Stanbridge<br/><small class="text-danger"><i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i></small></b></div>
                                    </div>
                                    <div class="item">
                                        <p class="testimonial-text"><b class="font-500">This front-end templates are very nice, very suitable for my background to do now, provide a lot of components for my use. Customer service is also very patient, very good, did not download the success of the beginning, and later also help me download finished, it is worth!</b>                                        </p>
                                        <div class="username"><b>Shinwu Ch<br/><small class="text-danger"><i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i></small></b></div>
                                    </div>
                                    <div class="item">
                                        <p class="testimonial-text"><b class="font-500">in my opinion, MaterialPro Admin is a professional light-weight theme that will suit multiple projects types including MVC web-projects & dashboard-type user interface. I am yet to take a deep dive into the many features it offers. But from a first-hand experience, I would say it is really worth the money you pay for it… Go ahead & give it a try</b>                                        </p>
                                        <div class="username"><b>Mohammed Shameem<br/><small class="text-danger"><i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i></small></b></div>
                                    </div>
                                </div>
        </div>
    </div>
</div>-->
<!-- ============================================================== -->
<!-- Call to action bar -->
<!-- ============================================================== -->
<!-- <div class="row">
    <div class="col-md-12 call-to-action bg-success">
        <div class="fix-width">
            <div class="row">
                <div class="col-md-6 m-t-20 m-b-20"><span>Bagaimana Pendapat Anda mengenai Laman siBapem?</span></div>
                <div class="col-md-6 align-self-center text-right"><a href="#" target="_blank" class="btn btn-outline btn-rounded btn-default buy-btn m-t-10 m-b-10">Isi Survey Laman siBapem </a></div>
            </div>
        </div>
    </div>
</div> -->
<!-- ============================================================== -->
<!-- End Page Content -->
<!-- ============================================================== -->
<!-- ============================================================== -->

@endsection
