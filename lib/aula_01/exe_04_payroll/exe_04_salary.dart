class Payroll{
  double hourlyPay = 0;
  int workedHours = 0;

  Payroll.empty();
  Payroll(this.hourlyPay, this.workedHours);

  double calculateReceivable(){
      return hourlyPay * workedHours;
  }

}


class PayrollSeller extends Payroll{
  int totalSales = 0;
  double bonus = 0;


  PayrollSeller(double hourlyPay, int workedHours, this.totalSales, this.bonus)
  : super(hourlyPay, workedHours);



  @override
  double calculateReceivable() {
    double basicPay = super.calculateReceivable();
    double bonusPay = totalSales * bonus;
    return basicPay + bonusPay;
  }

  @override
  String toString() {
    return '{Total de vendas: $totalSales, bonus: $bonus}';
  }
}

void main(){
  Payroll pay = Payroll(10, 50);
  print(pay.calculateReceivable());


  PayrollSeller payrollSeller = PayrollSeller(10, 40, 100, .10);
  print(payrollSeller.calculateReceivable());


}

