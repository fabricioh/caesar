### Requisitos
- **SBCL** (Download: [aqui](http://www.sbcl.org/platform-table.html))

### Uso
Após instalar o SBCL, rode o script no terminal assim:
```powershell
sbcl --script caesar.lisp [tipo_de_operação] [cifra_de_substituição] [mensagem] 
```
- `tipo_de_operação`: `encrypt` ou `decrypt`
- `cifra_de_substituição`: uma cifra de substituição é simplesmente um alfabeto embaralhado que servirá para codificar a sua mensagem
- `mensagem`: a mensagem a ser codificada ou descodificada

Por exemplo:
```powershell
$ sbcl --script caesar.lisp encrypt "agszhxpbcmtoekndvuwrjqyilf" "preciso de ajuda"
$ result: duhscwn zh amjza

$ sbcl --script caesar.lisp decrypt "agszhxpbcmtoekndvuwrjqyilf" "duhscwn zh amjza"
$ result: preciso de ajuda
```

### Regras
A mensagem e a cifra não podem conter caracteres especiais, letras com acento ou números.

### Ferramentas
- [Um site que gera cifras de substituição](https://www.dcode.fr/deranged-alphabet-generator)
- [Cifra de César](https://pt.wikipedia.org/wiki/Cifra_de_C%C3%A9sar)
