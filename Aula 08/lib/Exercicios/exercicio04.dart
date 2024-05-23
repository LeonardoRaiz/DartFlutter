/*
Dada uma lista de elementos, clone esta lista e faça uma alteração em qualquer elemento da lista original. Imprima ambas as listas para mostrar que a lista clonada não foi modificada. Utilize o método copy para a clonagem.
 */


void Aula08_Exercicio04() {
  List<String> listaOriginal = ['a', 'b', 'c', 'd', 'e'];
  List<String> listaClonada = List.from(listaOriginal);

  // Modificando um elemento da lista original
  listaOriginal[2] = 'x';

  // Imprimindo ambas as listas
  print("Lista Original: $listaOriginal");
  print("Lista Clonada: $listaClonada");
}
