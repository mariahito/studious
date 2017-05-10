int fib(int index, int prev, int cur){
  if(index <= 1) return cur;
  else return fib(index - 1, cur,prev + cur);
}
