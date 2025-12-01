class Produto{
  String? nome;
  double? preco;

Produto (String nome, double preco){
  this.nome = nome;
  this.preco = preco;

}
}

main () {
  var p1 = Produto ('Caneta', 4.99);
  var p2 = Produto("Aiphon", 1.99);

  print(p1.nome); 
  print(p2.preco); 

}