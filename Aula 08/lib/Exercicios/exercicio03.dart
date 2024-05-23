/*
Defina duas listas, uma com os três primeiros meses do ano e outra com os três meses seguintes. Concatene as duas listas de duas maneiras:

Usando o operador + e imprima o resultado.
Usando o método extend e imprima a lista modificada.
 */

void Aula08_Exercicio03() {
  List<String> mesesIniciais = ['Janeiro', 'Fevereiro', 'Março'];
  List<String> mesesFinais = ['Abril', 'Maio', 'Junho'];

  // Concatenando as listas usando o operador +
  List<String> mesesConcatenados = [...mesesIniciais, ...mesesFinais];
  print("Concatenação com operador +: $mesesConcatenados");

  // Usando o método addAll para concatenar as listas
  mesesIniciais.addAll(mesesFinais);
  print("Concatenação com método addAll: $mesesIniciais");
}
