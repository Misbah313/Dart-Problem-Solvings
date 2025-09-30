class ArmstrongNumbers {
  bool isArmstrongNumber(String input) {
    var digits = input.split('').map((c) => int.parse(c)).toList();
    var totalNumber = BigInt.from(0);
    
    for (var digit in digits) {
      totalNumber += BigInt.from(digit).pow(input.length);
    }
    
    var original = BigInt.parse(input);
    return totalNumber == original;
  }
}