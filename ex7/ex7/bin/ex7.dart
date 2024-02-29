import 'dart:io';

void main() {
  print('Digite a Quantidades de Alunos que existem em sua turma.');
  int alunos = int.parse(stdin.readLineSync()!);

  print('Digite a Quantidades de Provas que voce aplicou em sua turma:');
  int provas = int.parse(stdin.readLineSync()!);

  if (alunos > 80) {
    print("Infelizmente so e possivel obter 80 alunos em uma turma:");
    return;
  }

  if (provas > 5) {
    print("Infelizmente so e possivel aplicar 5 em uma turma:");
    return;
  }

  List<String> nomeAluno = [];
  List<double> mediasAluno = [];

  for (int i = 0; i < alunos; i++) {
    print("Digite o Nome do Aluno ${i + 1}");
    String nome = stdin.readLineSync()!;
    nomeAluno.add(nome);

    double somaDasNotas = 0;
    for (int j = 0; j < provas; j++) {
      print("Digite o Nota do  $nome na prova ${j + 1} ");
      double nota = double.parse(stdin.readLineSync()!);
      somaDasNotas += nota;
    }
    double media = somaDasNotas / provas;
    mediasAluno.add(media);
  }

  for (int i = 0; i < alunos; i++) {
    print("""
    Aluno ${i + 1}:
      Nome:${nomeAluno[i]}
      Media:${mediasAluno[i].round()}
""");
  }
}
