class Produto {
  String _codigo;
  String _nome;
  double _preco;

  static int totalDeProdutos = 0;

  Produto({required String codigo, required String nome, required double preco})
      : _codigo = codigo,
        _nome = nome,
        _preco = preco {
    totalDeProdutos++;
  }

  String get codigo => _codigo;
  String get nome => _nome;
  double get preco => _preco;

  set novoPreco(double valor) {
    if (valor > 0) {
      _preco = valor;
    } else {
      print(
          'Erro: O preço não pode ser negativo. O valor R\$ ${_preco.toStringAsFixed(2)} foi mantido.');
    }
  }

  void exibirDetalhes() {
    print('--- Detalhes do Produto ---');
    print('Código: $_codigo');
    print('Nome: $_nome');
    print('Preço: R\$ ${_preco.toStringAsFixed(2)}');
  }

  void aplicarDesconto(double percentual) {
    if (percentual > 0) {
      _preco -= _preco * (percentual / 100);
    }
  }
}

class CarrinhoDeCompras {
  final List<Produto> _produtos = [];

  void adicionarProduto(Produto produto) {
    _produtos.add(produto);
  }

  double calcularTotal() => _produtos.fold(0.0, (s, p) => s + p.preco);

  void exibirCarrinho() {
    print('--- Itens no Carrinho ---');
    for (var produto in _produtos) {
      print('- ${produto.nome}: R\$ ${produto.preco.toStringAsFixed(2)}');
    }
    print('-------------------------');
    print('Total do Carrinho: R\$ ${calcularTotal().toStringAsFixed(2)}');
  }
}

class ProdutoEletronico extends Produto {
  int garantiaMeses;

  ProdutoEletronico({
    required String codigo,
    required String nome,
    required double preco,
    required this.garantiaMeses,
  }) : super(codigo: codigo, nome: nome, preco: preco);

  @override
  void exibirDetalhes() {
    super.exibirDetalhes();
    print('Garantia: $garantiaMeses meses');
  }
}

class ProdutoAlimenticio extends Produto {
  String dataValidade;

  ProdutoAlimenticio({
    required String codigo,
    required String nome,
    required double preco,
    required this.dataValidade,
  }) : super(codigo: codigo, nome: nome, preco: preco);

  @override
  void exibirDetalhes() {
    super.exibirDetalhes();
    print('Data de Validade: $dataValidade');
  }
}
