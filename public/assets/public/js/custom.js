$(document).ready(function () {
    $("#loan-calculator-form").submit(function (e) {
        e.preventDefault();
        $("#monthlyPayment").val("");
        let loanAmount = $("#loan-amount").val();
        let numberOfMonth = $("#monthNumber").val();
        let interesetRate = $("#annualInterestRate").val();
        let interest = interesetRate / 100 / 12;
        let monthlyPayment =
            (loanAmount * interest * Math.pow(1 + interest, numberOfMonth)) /
            (Math.pow(1 + interest, numberOfMonth) - 1);
        let totalAmountWithInterest = monthlyPayment * numberOfMonth;
        let totalInterest = totalAmountWithInterest - loanAmount;
        $("#monthlyPayment").val(monthlyPayment.toFixed(2));
        $("#totalPrincipalInterest").val(totalAmountWithInterest.toFixed(2));
        $("#totalInterest").val(totalInterest.toFixed(2));
    });
    $("#service-read-more-btn").click(function () {
        $(this).hide();
        $(".about-content").addClass("d-none");
        $(".about-content-detail").removeClass("d-none");
    });
});
