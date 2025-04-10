const  mcd = (n1, n2) => {
  return n2 === 0 ? n1 : mcd(n2, n1 % n2);
}

const mcm = (n1, n2) => {
  return Math.abs(n1 * n2) / mcd(n1, n2);
}

export const mcmArray = (arr: number[]) : number => {
  //console.log(arr);
  const result = arr.reduce((a, b) => (a * b) / mcm(a, b));
  //console.log("Salida mcmArray",result)
  return result;
};
  


