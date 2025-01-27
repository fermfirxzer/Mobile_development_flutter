Future<double> getExchangeRate() async {
  await Future.delayed(Duration(seconds:2)); 
  final usdRate=35.1;
  return usdRate;
}

void main() async {
  print('1. start fetching data..');
  final exchangeRage =await getExchangeRate();
  print('2. exchange rate = $exchangeRage');

  double usd_to_thb = 100 * exchangeRage;
  print('3. 100 USD = $usd_to_thb');
} 
