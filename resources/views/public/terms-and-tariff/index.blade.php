@extends('layouts._public');
@section('body')
<section class="bg-default page-next-level" style="background: url(images/bg/bg-page.png) center no-repeat;margin-top: 50px;">
    <div class="home-center">
        <div class="home-desc-center">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-12">
                        <div class="text-center">
                            <h3 class="title-pager mb-0">{{__("Terms and Tariff")}}</h3>
                        </div>
                        <ul class="page-next text-center mt-4 pt-2">
                            <li><a href="/" class="text-dark fs-6">{{__("Home")}}</a></li>
                            <li>
                                <span class="text-primary fs-6">{{__("Terms and Tariff")}}
                                </span>
                            </li>
                        </ul>
                    </div>
                    <!--end col-->
                </div>
                <!--end row-->
            </div>
            <!--end container-->
        </div>
    </div>
</section>
<!--end section-->
<section class="section bg-light">
<div class="container py-5">
    <!-- <h1 class="mb-4">Terms & Tariff</h1> -->

    <h2>{{__("Trade Finance - Fees and Commissions")}}</h2>

    
    <table class="table table-bordered">
        <thead>
            <tr>
                <th>S.No</th>
                <th>Types of Services</th>
                <th>Fee Basis & Currency</th>
                <th>Charges Collected From LCY (Birr) Account</th>
                <th>Charges Collected From Foreign Currency (FCY) Account</th>
                <th>Remark</th>
            </tr>
        </thead>
        <tbody>
            @foreach($data['import_letter_of_credit'] as $item)
                <tr>
                    <td>{{ $item['sno'] }}</td>
                    <td>{{ $item['label'] }}</td>
                    <td>{{ $item['fbc'] }}</td>
                    <td>{{ $item['ccl'] }}</td>
                    <td>{{ $item['ccf'] }}</td>
                    <td>{{ $item['rem'] }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>
    

    <p class="text-muted small">
        *All charges and interest rates are subject to change as per bank regulations.
    </p>
</div>
@endsection
