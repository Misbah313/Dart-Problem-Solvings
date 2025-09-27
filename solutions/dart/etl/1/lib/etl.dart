class Etl {
  Map<String, int> transform(Map<String, List<String>> legacy) {
    // create result map
    Map<String, int> result = {};

    // loop through legacy
    legacy.forEach((key, letters) {

      // transform key to int
      int score = int.parse(key);

      // loop through letters
      for(var letter in letters) {
        
      // lowercase + add to result
        result[letter.toLowerCase()] = score;
      }
      
    });

    // return result
    return result;
  }
  
}
