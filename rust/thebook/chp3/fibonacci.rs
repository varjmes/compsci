fn main() {
  println!("The 0th fib is {}", fibn(0));
  println!("The 1st fib is {}", fibn(1));
  println!("The 2nd fib is {}", fibn(2));
  println!("The 8th fib is {}", fibn(8));
}

fn fibn(n: u64) -> u64 {
  // Gets the nth fibonacci number.
  if n == 0 || n == 1 {
    n
  } else {
    fibn(n - 1) + fibn(n - 2)
  }
}