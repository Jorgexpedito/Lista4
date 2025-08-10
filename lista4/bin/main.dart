import '../lib/lista4.dart';

void main() {
  final produto1 = Produto(codigo: '12345', nome: 'Smartphone Modelo X', preco: 1999.90);
  final produto2 = Produto(codigo: '67890', nome: 'Fone de Ouvido Bluetooth', preco: 299.50);

  produto1.exibirDetalhes();
  produto2.exibirDetalhes();

  produto1.aplicarDesconto(15.0);
  produto1.exibirDetalhes();

  print('Total de produtos criados: ${Produto.totalDeProdutos}\n');

  final teclado = Produto(codigo: '777', nome: 'Teclado Mecânico', preco: 350.0);
  teclado.novoPreco = -50;
  print('Preço atual: R\$ ${teclado.preco}');
  teclado.novoPreco = 400.0;
  print('Preço atualizado: R\$ ${teclado.preco}\n');

  final p1 = Produto(codigo: '111', nome: 'Mouse Gamer', preco: 150.0);
  final p2 = Produto(codigo: '222', nome: 'Monitor 24"', preco: 950.0);
  final p3 = Produto(codigo: '333', nome: 'Cadeira Gamer', preco: 1200.0);

  final carrinho = CarrinhoDeCompras();
  carrinho.adicionarProduto(p1);
  carrinho.adicionarProduto(p2);
  carrinho.adicionarProduto(p3);
  carrinho.exibirCarrinho();

  final eletronico = ProdutoEletronico(
    codigo: 'E01',
    nome: 'Smart TV 50"',
    preco: 2800.0,
    garantiaMeses: 12,
  );

  final alimento = ProdutoAlimenticio(
    codigo: 'A01',
    nome: 'Caixa de Leite',
    preco: 4.50,
    dataValidade: '25/12/2025',
  );

  eletronico.exibirDetalhes();
  alimento.exibirDetalhes();
}
