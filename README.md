### Requisitos
Instale o SBCL [aqui](http://www.sbcl.org/platform-table.html).

### Uso
Após instalar o SBCL, rode o script no terminal assim:
```powershell
sbcl --script caesar.lisp [tipo_de_operação] [cifra_de_substituição] [mensagem] 
```

Por exemplo:
```powershell
$ sbcl --script caesar.lisp encrypt "agszhxpbcmtoekndvuwrjqyilf" "preciso de ajuda"
$ result: duhscwn zh amjza

$ sbcl --script caesar.lisp decrypt "agszhxpbcmtoekndvuwrjqyilf" "duhscwn zh amjza"
$ result: preciso de ajuda
```

### Regras
A mensagem não pode conter caracteres especiais, letras com acento ou números.

### Ferramentas
- [Um site que gera cifras de substituição](https://www.dcode.fr/deranged-alphabet-generator)
- [Cifra de César](https://pt.wikipedia.org/wiki/Cifra_de_C%C3%A9sar)
