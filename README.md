# LAOC-I
Repositório dedicado à disciplina de Arquitetura e Organização de Computadores I ministrada pelo professor Jefferson Figueiredo

**ModelSim-Altera Edition 13.0sp1**

# Para inciar um projeto

É importante criar uma pasta, com o nome desejado, no diretório do próprio ModelSim (*C:\altera\13.0sp1*). 
Em seguida, basta:

Selecionar *File* -> *New* -> *Project...*

![1](https://user-images.githubusercontent.com/42523044/76576520-113dda80-64a1-11ea-8516-3539b4c3e466.png)

Irá surgir essa caixa na tela. Em *Project Name* coloque o nome do projeto e em *Browse...* especifique a pasta onde o projeto será armazenado. Feito isso, clique em *ok*.

![2](https://user-images.githubusercontent.com/42523044/76576644-75609e80-64a1-11ea-9bd8-1f9bf30cfe3e.png)

Crie um arquivo.v dentro do projeto selecionando o *Create New File*.

![3](https://user-images.githubusercontent.com/42523044/76576752-d12b2780-64a1-11ea-8af3-0465d9cc2555.png)

Em *File Name* insira o nome do arquivo. Importante ressaltar que o nome desse arquivo deve ser o mesmo do módulo onde o código será descrito. Em *Add file as type* mude de **VHDL** para **Verilog**. Clique em *ok*.

![4](https://user-images.githubusercontent.com/42523044/76576943-7b0ab400-64a2-11ea-9486-b16fe002140a.png)

O arquivo ficara no canto superior esquerdo da tela.

![5](https://user-images.githubusercontent.com/42523044/76577132-0f751680-64a3-11ea-9df1-203efe37de0a.png)

# Para simular

Antes de simular o projeto, é necessário compilar. Clique com o botão direito sobre o arquivo, selecione *Compile* -> *Compile Selected*. O resultado surgira no campo *Transcript* no canto inferior esquerdo.

![6](https://user-images.githubusercontent.com/42523044/76577608-b73f1400-64a4-11ea-84b4-853b9c3635dd.png)

Se nenhum erro, vá em *Simulate* -> *Star Simulation* para iniciar os testes.

![7](https://user-images.githubusercontent.com/42523044/76577803-29175d80-64a5-11ea-8865-a7f86843dc48.png)

Na pasta *work*, selecione o arquivo que irá ser simulado e clique em *ok*.

![8](https://user-images.githubusercontent.com/42523044/76578019-f7eb5d00-64a5-11ea-834f-7e61091c6334.png)

Essas telas irão se abrir. A do meio é onde estão os objetos do projeto. Na janela preta, será onde as ondas irão ser simuladas. 

![9](https://user-images.githubusercontent.com/42523044/76578151-81029400-64a6-11ea-8018-4094a89588c4.png)
