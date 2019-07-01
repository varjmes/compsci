fn main() {
  to_celsius(64.0);
  to_fahrenheit(17.77777777777778);
}

fn to_celsius(fahrenheit: f64) {
  // Converts temperature in fahrenheit to degrees celsius.
  let celsius = (fahrenheit - 32.0) / 1.8;
  println!("{} degrees fahrenheit is {} degrees celsius", fahrenheit, celsius);
}

fn to_fahrenheit(celsius: f64) {
  // Converts temperature in celsius, to degrees fahrenheit.
  let fahrenheit = (celsius * 1.8) + 32.0;
  println!("{} degrees celsius is {} degrees fahrenheit", celsius, fahrenheit);
}