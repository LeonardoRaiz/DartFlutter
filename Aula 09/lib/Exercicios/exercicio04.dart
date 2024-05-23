/*
Objetivo: Clonar um mapa e fazer uma modificação na cópia, verificando que a original não foi alterada.

Crie um mapa chamado alunos com os seguintes nomes e notas:

Ana: 8.5
Bruno: 7.0
Carla: 9.0
Clone o mapa para uma nova variável chamada alunosClonados.

Modifique a nota de "Ana" para 9.5 no mapa alunosClonados.

Imprima ambos os mapas para verificar que a original não foi alterada.
 */

void main() {
  var alunos = {
    'Ana': 8.5,
    'Bruno': 7.0,
    'Carla': 9.0,
  };

  // Clonando o mapa
  var alunosClonados = Map.from(alunos);

  // Modificando a nota de "Ana" na cópia
  alunosClonados['Ana'] = 9.5;

  // Imprimindo ambos os mapas
  print("Alunos Originais: $alunos");
  print("Alunos Clonados: $alunosClonados");
}

