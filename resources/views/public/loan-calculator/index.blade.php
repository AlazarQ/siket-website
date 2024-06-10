@extends('layouts._public');
@section('body')
 <!-- Start Section -->
 <section class="section mb-0" style="padding-top: 180px;">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-8 col-12 mb-4">
                <div class="rounded p-4 shadow border">
                    <div class="row">
                        <div class="col-12"><h3 class="title mb-4">Loan Calculator</h3></div>
                        <div class="col-12">
                            <div class="primary-form mt-3">
                                <form method="post" id="loan-calculator-form" name="myForm" action="/">
                                    <p class="mb-0" id="error-msg"></p>
                                    <div id="simple-msg"></div>
                                    <div class="row">
                                        <div class="col-md-4">
                                            <label class="form-label fs-6">Loan Amount</label>
                                                    <input name="loanAmount" id="loan-amount" type="number"  class="form-control ps-5 fs-6"
                                                    placeholder="0.000" required>
                                        </div>

                                        <div class="col-md-4">

                                            <label class="form-label fs-6">Number of Months</label>
                                                    <input name="monthNumber" id="monthNumber" type="number"  class="form-control ps-5 fs-6"
                                                    placeholder="0" required>
                                        </div>
                                        <!--end col-->

                                        <div class="col-md-4">
                                            <label class="form-label fs-6 mb-1">Interest Rate(%)</label>
                                            <input name="annualInterestRate" id="annualInterestRate" type="number"  class="form-control ps-5 fs-6"
                                            placeholder="0" required>
                                        </div>
                                        <!--end col-->
{{--
                                        <div class="col-6">
                                            <label class="form-label fs-6 mt-3 mb-1">Payment Method</label>
                                            <select name="paymentMethod" class="form-control" id="paymentMethod">
                                                <option value="End Of Period">End Of Period</option>
                                                <option value="End Of Period">Start Of Period</option>
                                            </select>
                                        </div> --}}
                                        <hr class="m-0 my-3">
                                        <div class="col-md-4">
                                            <label class="form-label fs-6 mb-1">Monthly Payment</label>                                            </label>
                                            <input name="monthlyPayment" id="monthlyPayment" value="0" class="form-control ps-5 fs-6" readonly
                                            placeholder="0">
                                        </div>
                                        <!--end col-->
                                        <div class="col-md-4">
                                            <label class="form-label fs-6 mb-1">Total Interest</label>                                            </label>
                                            <input name="totalInterest" id="totalInterest" class="form-control ps-5 fs-6" readonly
                                            placeholder="0">
                                        </div>
                                        <!--end col-->
                                        <div class="col-md-4">
                                            <label class="form-label fs-6  mb-1">Total Principal & Interest </label>                                           </label>
                                            <input name="totalPrincipalInterest" id="totalPrincipalInterest" readonly class="form-control ps-5 fs-6"
                                            placeholder="0">
                                        </div>
                                        <!--end col-->
                                    </div>
                                    <!-- end row -->
                                    <div class="row mt-3">
                                        <div class="col-12 fs-6 mt-3">
                                            <button type="submit" id="submit" name="send" class="btn btn-primary">Calculate</button>
                                            <button type="reset" id="submit" name="send" class="btn btn-primary">Clear</button>

                                        </div>
                                        <!--end col-->
                                    </div>
                                    <!--end row-->
                                </form>
                                <!-- end form -->

                            </div>
                            <!--end primary-form-->
                        </div>
                        <!--end col-->
                    </div>
                    <!--end row-->
                </div>
            </div>
            <!--end col-->
        </div>
        <!--end row-->
    </div>
    <!--end container-->

</section>
<!--end section-->
<!-- End Section -->
@endsection
