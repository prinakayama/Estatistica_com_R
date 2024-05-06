{
 "cells": [
  {
   "cell_type": "markdown",
   "id": "49347b9d",
   "metadata": {
    "id": "WvMflodMjQKe",
    "papermill": {
     "duration": 0.066246,
     "end_time": "2024-05-06T12:52:07.045651",
     "exception": false,
     "start_time": "2024-05-06T12:52:06.979405",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "***\n",
    "# <font color=green size=10>CURSO DE ESTATÍSTICA - PARTE 2</font>\n",
    "***"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "9dd97e9f",
   "metadata": {
    "id": "cVgsZ_E3jQKg",
    "papermill": {
     "duration": 0.062799,
     "end_time": "2024-05-06T12:52:07.173203",
     "exception": false,
     "start_time": "2024-05-06T12:52:07.110404",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# <font color=green>1 CONHECENDO OS DADOS</font>\n",
    "***"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "e7313a6a",
   "metadata": {
    "id": "TDjqYYNojQKh",
    "papermill": {
     "duration": 0.063472,
     "end_time": "2024-05-06T12:52:07.298396",
     "exception": false,
     "start_time": "2024-05-06T12:52:07.234924",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## <font color=green>1.1 Dataset do projeto</font>\n",
    "***"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "d317a16f",
   "metadata": {
    "id": "iN1gIbaKjQKh",
    "papermill": {
     "duration": 0.061912,
     "end_time": "2024-05-06T12:52:07.422053",
     "exception": false,
     "start_time": "2024-05-06T12:52:07.360141",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Pesquisa Nacional por Amostra de Domicílios - 2015\n",
    "\n",
    "A **Pesquisa Nacional por Amostra de Domicílios - PNAD** investiga anualmente, de forma permanente, características gerais da população, de educação, trabalho, rendimento e habitação e outras, com periodicidade variável, de acordo com as necessidades de informação para o país, como as características sobre migração, fecundidade, nupcialidade, saúde, segurança alimentar, entre outros temas. O levantamento dessas estatísticas constitui, ao longo dos 49 anos de realização da pesquisa, um importante instrumento para formulação, validação e avaliação de políticas orientadas para o desenvolvimento socioeconômico e a melhoria das condições de vida no Brasil."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "cc0bbbcb",
   "metadata": {
    "id": "U6V7br1RjQKi",
    "papermill": {
     "duration": 0.062968,
     "end_time": "2024-05-06T12:52:07.584756",
     "exception": false,
     "start_time": "2024-05-06T12:52:07.521788",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Fonte dos Dados\n",
    "\n",
    "https://ww2.ibge.gov.br/home/estatistica/populacao/trabalhoerendimento/pnad2015/microdados.shtm"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "7ee7b2e6",
   "metadata": {
    "id": "r0Fe_qnzjQKj",
    "papermill": {
     "duration": 0.063109,
     "end_time": "2024-05-06T12:52:07.710255",
     "exception": false,
     "start_time": "2024-05-06T12:52:07.647146",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Variáveis utilizadas\n",
    "\n",
    "> ### Renda\n",
    "> ***\n",
    "\n",
    "Rendimento mensal do trabalho principal para pessoas de 10 anos ou mais de idade.\n",
    "\n",
    "> ### Idade\n",
    "> ***\n",
    "\n",
    "Idade do morador na data de referência em anos.\n",
    "\n",
    "> ### Altura (elaboração própria)\n",
    "> ***\n",
    "\n",
    "Altura do morador em metros.\n",
    "\n",
    "> ### UF\n",
    "> ***\n",
    "\n",
    "|Código|Descrição|\n",
    "|---|---|\n",
    "|11|Rondônia|\n",
    "|12|Acre|\n",
    "|13|Amazonas|\n",
    "|14|Roraima|\n",
    "|15|Pará|\n",
    "|16|Amapá|\n",
    "|17|Tocantins|\n",
    "|21|Maranhão|\n",
    "|22|Piauí|\n",
    "|23|Ceará|\n",
    "|24|Rio Grande do Norte|\n",
    "|25|Paraíba|\n",
    "|26|Pernambuco|\n",
    "|27|Alagoas|\n",
    "|28|Sergipe|\n",
    "|29|Bahia|\n",
    "|31|Minas Gerais|\n",
    "|32|Espírito Santo|\n",
    "|33|Rio de Janeiro|\n",
    "|35|São Paulo|\n",
    "|41|Paraná|\n",
    "|42|Santa Catarina|\n",
    "|43|Rio Grande do Sul|\n",
    "|50|Mato Grosso do Sul|\n",
    "|51|Mato Grosso|\n",
    "|52|Goiás|\n",
    "|53|Distrito Federal|\n",
    "\n",
    "> ### Sexo\t\n",
    "> ***\n",
    "\n",
    "|Código|Descrição|\n",
    "|---|---|\n",
    "|0|Masculino|\n",
    "|1|Feminino|\n",
    "\n",
    "> ### Anos de Estudo\n",
    "> ***\n",
    "\n",
    "|Código|Descrição|\n",
    "|---|---|\n",
    "|1|Sem instrução e menos de 1 ano|\n",
    "|2|1 ano|\n",
    "|3|2 anos|\n",
    "|4|3 anos|\n",
    "|5|4 anos|\n",
    "|6|5 anos|\n",
    "|7|6 anos|\n",
    "|8|7 anos|\n",
    "|9|8 anos|\n",
    "|10|9 anos|\n",
    "|11|10 anos|\n",
    "|12|11 anos|\n",
    "|13|12 anos|\n",
    "|14|13 anos|\n",
    "|15|14 anos|\n",
    "|16|15 anos ou mais|\n",
    "|17|Não determinados| \n",
    "||Não aplicável|\n",
    "\n",
    "> ### Cor\n",
    "> ***\n",
    "\n",
    "|Código|Descrição|\n",
    "|---|---|\n",
    "|0|Indígena|\n",
    "|2|Branca|\n",
    "|4|Preta|\n",
    "|6|Amarela|\n",
    "|8|Parda|\n",
    "|9|Sem declaração|"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "3a899193",
   "metadata": {
    "id": "OK1IQH5cX7Gb",
    "papermill": {
     "duration": 0.062335,
     "end_time": "2024-05-06T12:52:07.834729",
     "exception": false,
     "start_time": "2024-05-06T12:52:07.772394",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "#### <font color='red'>Observação</font>\n",
    "***\n",
    "> Os seguintes tratamentos foram realizados nos dados originais:\n",
    "> 1. Foram eliminados os registros onde a **Renda** era inválida (999 999 999 999);\n",
    "> 2. Foram eliminados os registros onde a **Renda** era missing;\n",
    "> 3. Foram considerados somente os registros das **Pessoas de Referência** de cada domicílio (responsável pelo domicílio)."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "43faddd0",
   "metadata": {
    "papermill": {
     "duration": 0.062482,
     "end_time": "2024-05-06T12:52:07.960401",
     "exception": false,
     "start_time": "2024-05-06T12:52:07.897919",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Configurações"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 1,
   "id": "b1e9807b",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:52:08.091894Z",
     "iopub.status.busy": "2024-05-06T12:52:08.089475Z",
     "iopub.status.idle": "2024-05-06T12:52:08.431750Z",
     "shell.execute_reply": "2024-05-06T12:52:08.429681Z"
    },
    "papermill": {
     "duration": 0.411508,
     "end_time": "2024-05-06T12:52:08.434612",
     "exception": false,
     "start_time": "2024-05-06T12:52:08.023104",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "library(ggplot2)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 2,
   "id": "494e6a9a",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:52:08.650645Z",
     "iopub.status.busy": "2024-05-06T12:52:08.561427Z",
     "iopub.status.idle": "2024-05-06T12:52:08.663807Z",
     "shell.execute_reply": "2024-05-06T12:52:08.661794Z"
    },
    "papermill": {
     "duration": 0.286303,
     "end_time": "2024-05-06T12:52:08.783093",
     "exception": false,
     "start_time": "2024-05-06T12:52:08.496790",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "options(repr.plot.width = 7, repr.plot.height = 4)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "6cee3f1d",
   "metadata": {
    "id": "8Rw70V6ojQKk",
    "papermill": {
     "duration": 0.062859,
     "end_time": "2024-05-06T12:52:08.908365",
     "exception": false,
     "start_time": "2024-05-06T12:52:08.845506",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Importando dataset do projeto"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 3,
   "id": "ef597440",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:52:09.039208Z",
     "iopub.status.busy": "2024-05-06T12:52:09.037606Z",
     "iopub.status.idle": "2024-05-06T12:52:09.302799Z",
     "shell.execute_reply": "2024-05-06T12:52:09.300812Z"
    },
    "id": "ufRZ7TLwjQKo",
    "papermill": {
     "duration": 0.333157,
     "end_time": "2024-05-06T12:52:09.305575",
     "exception": false,
     "start_time": "2024-05-06T12:52:08.972418",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "dados <- read.csv(\"/kaggle/input/curso-est1/dados.csv\")"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 4,
   "id": "76815258",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:52:09.436648Z",
     "iopub.status.busy": "2024-05-06T12:52:09.434871Z",
     "iopub.status.idle": "2024-05-06T12:52:09.473067Z",
     "shell.execute_reply": "2024-05-06T12:52:09.471107Z"
    },
    "id": "GsC_WhLFjQKq",
    "outputId": "36b6565f-bb67-47b7-ea64-8d2695c60e6b",
    "papermill": {
     "duration": 0.106766,
     "end_time": "2024-05-06T12:52:09.475867",
     "exception": false,
     "start_time": "2024-05-06T12:52:09.369101",
     "status": "completed"
    },
    "scrolled": true,
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 5 × 7</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>UF</th><th scope=col>Sexo</th><th scope=col>Idade</th><th scope=col>Cor</th><th scope=col>Anos.de.Estudo</th><th scope=col>Renda</th><th scope=col>Altura</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>1</th><td>11</td><td>0</td><td>23</td><td>8</td><td>12</td><td> 800</td><td>1.603808</td></tr>\n",
       "\t<tr><th scope=row>2</th><td>11</td><td>1</td><td>23</td><td>2</td><td>12</td><td>1150</td><td>1.739790</td></tr>\n",
       "\t<tr><th scope=row>3</th><td>11</td><td>1</td><td>35</td><td>8</td><td>15</td><td> 880</td><td>1.760444</td></tr>\n",
       "\t<tr><th scope=row>4</th><td>11</td><td>0</td><td>46</td><td>2</td><td> 6</td><td>3500</td><td>1.783158</td></tr>\n",
       "\t<tr><th scope=row>5</th><td>11</td><td>1</td><td>47</td><td>8</td><td> 9</td><td> 150</td><td>1.690631</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 5 × 7\n",
       "\\begin{tabular}{r|lllllll}\n",
       "  & UF & Sexo & Idade & Cor & Anos.de.Estudo & Renda & Altura\\\\\n",
       "  & <int> & <int> & <int> & <int> & <int> & <int> & <dbl>\\\\\n",
       "\\hline\n",
       "\t1 & 11 & 0 & 23 & 8 & 12 &  800 & 1.603808\\\\\n",
       "\t2 & 11 & 1 & 23 & 2 & 12 & 1150 & 1.739790\\\\\n",
       "\t3 & 11 & 1 & 35 & 8 & 15 &  880 & 1.760444\\\\\n",
       "\t4 & 11 & 0 & 46 & 2 &  6 & 3500 & 1.783158\\\\\n",
       "\t5 & 11 & 1 & 47 & 8 &  9 &  150 & 1.690631\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 5 × 7\n",
       "\n",
       "| <!--/--> | UF &lt;int&gt; | Sexo &lt;int&gt; | Idade &lt;int&gt; | Cor &lt;int&gt; | Anos.de.Estudo &lt;int&gt; | Renda &lt;int&gt; | Altura &lt;dbl&gt; |\n",
       "|---|---|---|---|---|---|---|---|\n",
       "| 1 | 11 | 0 | 23 | 8 | 12 |  800 | 1.603808 |\n",
       "| 2 | 11 | 1 | 23 | 2 | 12 | 1150 | 1.739790 |\n",
       "| 3 | 11 | 1 | 35 | 8 | 15 |  880 | 1.760444 |\n",
       "| 4 | 11 | 0 | 46 | 2 |  6 | 3500 | 1.783158 |\n",
       "| 5 | 11 | 1 | 47 | 8 |  9 |  150 | 1.690631 |\n",
       "\n"
      ],
      "text/plain": [
       "  UF Sexo Idade Cor Anos.de.Estudo Renda Altura  \n",
       "1 11 0    23    8   12              800  1.603808\n",
       "2 11 1    23    2   12             1150  1.739790\n",
       "3 11 1    35    8   15              880  1.760444\n",
       "4 11 0    46    2    6             3500  1.783158\n",
       "5 11 1    47    8    9              150  1.690631"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "head(dados, 5)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "87919a97",
   "metadata": {
    "id": "-z3bLQIUG3Hv",
    "papermill": {
     "duration": 0.063024,
     "end_time": "2024-05-06T12:52:09.602802",
     "exception": false,
     "start_time": "2024-05-06T12:52:09.539778",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "---"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "265b295a",
   "metadata": {
    "id": "tL9xVLwTX07g",
    "papermill": {
     "duration": 0.062927,
     "end_time": "2024-05-06T12:52:09.729585",
     "exception": false,
     "start_time": "2024-05-06T12:52:09.666658",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# <font color=green>2 DISTRIBUIÇÕES DE PROBABILIDADE</font>\n",
    "***"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "8d77fc47",
   "metadata": {
    "id": "3nlvC-5qG3Bj",
    "papermill": {
     "duration": 0.064579,
     "end_time": "2024-05-06T12:52:09.856624",
     "exception": false,
     "start_time": "2024-05-06T12:52:09.792045",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## <font color=red>Problema</font>\n",
    "***"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "e346eed9",
   "metadata": {
    "id": "8CclIz9oG3Bk",
    "papermill": {
     "duration": 0.063481,
     "end_time": "2024-05-06T12:52:09.982774",
     "exception": false,
     "start_time": "2024-05-06T12:52:09.919293",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Em um concurso para preencher uma vaga de cientista de dados temos um total de **10 questões** de múltipla escolha com **3 alternativas possíveis** em cada questão. **Cada questão tem o mesmo valor.** Suponha que um candidato resolva se aventurar sem ter estudado absolutamente nada. Ele resolve fazer a prova de olhos vendados e chutar todas as resposta. Assumindo que a prova **vale 10 pontos e a nota de corte seja 5**, obtenha a probabilidade deste candidato **acertar 5 questões** e também a probabilidade deste candidato **passar para a próxima etapa do processo seletivo**."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "162f9f2a",
   "metadata": {
    "id": "KJxd2KFSYLML",
    "papermill": {
     "duration": 0.064487,
     "end_time": "2024-05-06T12:52:10.109963",
     "exception": false,
     "start_time": "2024-05-06T12:52:10.045476",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## <font color=green>2.1 Distribuição Binomial</font>\n",
    "***"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "c3063d9e",
   "metadata": {
    "id": "mcbl3KbnG3Bq",
    "papermill": {
     "duration": 0.062923,
     "end_time": "2024-05-06T12:52:10.236151",
     "exception": false,
     "start_time": "2024-05-06T12:52:10.173228",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Um evento **binomial** é caracterizado pela possibilidade de ocorrência de apenas duas categorias. Estas categorias somadas representam todo o espaço amostral, sendo também mutuamente excludentes, ou seja, a ocorrência de uma implica na não ocorrência da outra.\n",
    "\n",
    "Em análises estatísticas o uso mais comum da distribuição binomial é na solução de problemas que envolvem situações de **sucesso** e **fracasso**."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "2ad7801f",
   "metadata": {
    "id": "iLoYAuJ9G3Bs",
    "papermill": {
     "duration": 0.063107,
     "end_time": "2024-05-06T12:52:10.363015",
     "exception": false,
     "start_time": "2024-05-06T12:52:10.299908",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# $$P(k)=\\binom{n}{k} p^k q^{n-k}$$\n",
    "\n",
    "Onde:\n",
    "\n",
    "$p$ = probabilidade de sucesso\n",
    "\n",
    "$q = (1 - p)$ = probabilidade de fracasso\n",
    "\n",
    "$n$ = número de eventos estudados\n",
    "\n",
    "$k$ = número de eventos desejados que tenham sucesso"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "b4b2be59",
   "metadata": {
    "id": "PxEgWbFdG3Bt",
    "papermill": {
     "duration": 0.062675,
     "end_time": "2024-05-06T12:52:10.488879",
     "exception": false,
     "start_time": "2024-05-06T12:52:10.426204",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Experimento Binomial"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "e4beed38",
   "metadata": {
    "id": "eqQK3Ny-G3Bv",
    "papermill": {
     "duration": 0.063579,
     "end_time": "2024-05-06T12:52:10.614793",
     "exception": false,
     "start_time": "2024-05-06T12:52:10.551214",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "1. Realização de $n$ ensaios idênticos.\n",
    "\n",
    "2. Os ensaios são independentes.\n",
    "\n",
    "3. Somente dois resultados são possíveis, exemplo: Verdadeiro ou falso; Cara ou coroa; Sucesso ou fracasso.\n",
    "\n",
    "4. A probabilidade de sucesso é representada por $p$ e a de fracasso por $1-p=q$. Estas probabilidades não se modificam de ensaio para ensaio."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "527b8423",
   "metadata": {
    "id": "mT77udQ0G3Bx",
    "papermill": {
     "duration": 0.062514,
     "end_time": "2024-05-06T12:52:10.740840",
     "exception": false,
     "start_time": "2024-05-06T12:52:10.678326",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Média da distribuição binomial"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "99ca1111",
   "metadata": {
    "id": "EGiuemgqG3By",
    "papermill": {
     "duration": 0.063065,
     "end_time": "2024-05-06T12:52:10.866205",
     "exception": false,
     "start_time": "2024-05-06T12:52:10.803140",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "O valor esperado ou a média da distribuição binomial é igual ao número de experimentos realizados multiplicado pela chance de ocorrência do evento.\n",
    "\n",
    "# $$\\mu = n \\times p$$"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "1969ae28",
   "metadata": {
    "id": "1fDLi96OG3Bz",
    "papermill": {
     "duration": 0.063275,
     "end_time": "2024-05-06T12:52:10.992178",
     "exception": false,
     "start_time": "2024-05-06T12:52:10.928903",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Desvio padrão da distribuição binomial"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "94187c39",
   "metadata": {
    "id": "EZojizotG3B1",
    "papermill": {
     "duration": 0.064385,
     "end_time": "2024-05-06T12:52:11.119460",
     "exception": false,
     "start_time": "2024-05-06T12:52:11.055075",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "O desvio padrão é o produto entre o número de experimentos, a probabilidade de sucesso e a probabilidade de fracasso.\n",
    "\n",
    "# $$\\sigma = \\sqrt{n \\times p \\times q}$$"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "0daa2b7f",
   "metadata": {
    "id": "MxxuJNSwG3B7",
    "papermill": {
     "duration": 0.063418,
     "end_time": "2024-05-06T12:52:11.245657",
     "exception": false,
     "start_time": "2024-05-06T12:52:11.182239",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Combinações\n",
    "\n",
    "Número de combinações de $n$ objetos, tomados $k$ a cada vez, é:\n",
    "\n",
    "# $$C_{k}^{n} = \\binom{n}{k} = \\frac{n!}{k!(n - k)!}$$\n",
    "\n",
    "Onde\n",
    "\n",
    "## $$n! = n\\times(n-1)\\times(n-2)\\times...\\times(2)\\times(1)$$\n",
    "## $$k! = k\\times(k-1)\\times(k-2)\\times...\\times(2)\\times(1)$$\n",
    "\n",
    "Por definição\n",
    "\n",
    "## $$0! = 1$$\n",
    "\n",
    "#### <font color=red>Documentações:\n",
    "\n",
    "- [**choose**](https://www.rdocumentation.org/packages/base/versions/3.6.1/topics/Special)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "33b34072",
   "metadata": {
    "id": "Udz87Pq3G3B8",
    "papermill": {
     "duration": 0.063394,
     "end_time": "2024-05-06T12:52:11.373781",
     "exception": false,
     "start_time": "2024-05-06T12:52:11.310387",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## <font color='blue'>Exemplo: Mega Sena</font>"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "331a9e65",
   "metadata": {
    "id": "h1Mo9AxyG3B8",
    "papermill": {
     "duration": 0.062345,
     "end_time": "2024-05-06T12:52:11.498701",
     "exception": false,
     "start_time": "2024-05-06T12:52:11.436356",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Em um volante de loteria da Mega Sena temos um total de **60 números** para escolher onde a aposta mínima é de **seis números**. Você que é curiosa(o) resolve calcular a probabilidade de se acertar na Mega Sena com apenas **um jogo**. Para isso precisamos saber quantas **combinações de seis números podem ser formadas com os 60 números disponíveis**.\n",
    "\n",
    "### $$C_{6}^{60} = \\binom{60}{6} = \\frac{60!}{6!(60 - 6)!}$$"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 5,
   "id": "79a4cecd",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:52:11.629306Z",
     "iopub.status.busy": "2024-05-06T12:52:11.627568Z",
     "iopub.status.idle": "2024-05-06T12:52:11.653204Z",
     "shell.execute_reply": "2024-05-06T12:52:11.651282Z"
    },
    "papermill": {
     "duration": 0.094355,
     "end_time": "2024-05-06T12:52:11.655983",
     "exception": false,
     "start_time": "2024-05-06T12:52:11.561628",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "50063860"
      ],
      "text/latex": [
       "50063860"
      ],
      "text/markdown": [
       "50063860"
      ],
      "text/plain": [
       "[1] 50063860"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "combinacoes <- choose(60, 6)\n",
    "combinacoes"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 6,
   "id": "527e3d2d",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:52:11.788003Z",
     "iopub.status.busy": "2024-05-06T12:52:11.785944Z",
     "iopub.status.idle": "2024-05-06T12:52:11.813453Z",
     "shell.execute_reply": "2024-05-06T12:52:11.811113Z"
    },
    "id": "LpioeTSXG3CB",
    "outputId": "d1e0ab82-be84-423c-e206-a9f8e1437df4",
    "papermill": {
     "duration": 0.097528,
     "end_time": "2024-05-06T12:52:11.816819",
     "exception": false,
     "start_time": "2024-05-06T12:52:11.719291",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "1.99744885831816e-08"
      ],
      "text/latex": [
       "1.99744885831816e-08"
      ],
      "text/markdown": [
       "1.99744885831816e-08"
      ],
      "text/plain": [
       "[1] 1.997449e-08"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "probabilidade <- 1 / combinacoes\n",
    "probabilidade"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "22ed6291",
   "metadata": {
    "id": "t1rA1yJpG3CF",
    "papermill": {
     "duration": 0.063124,
     "end_time": "2024-05-06T12:52:11.943346",
     "exception": false,
     "start_time": "2024-05-06T12:52:11.880222",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## <font color='blue'>Exemplo: Concurso para cientista de dados</font>"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "d140b084",
   "metadata": {
    "id": "K0DPDD37G3CG",
    "papermill": {
     "duration": 0.063427,
     "end_time": "2024-05-06T12:52:12.070054",
     "exception": false,
     "start_time": "2024-05-06T12:52:12.006627",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Em um concurso para preencher uma vaga de cientista de dados temos um total de **10 questões** de múltipla escolha com **3 alternativas possíveis** em cada questão. **Cada questão tem o mesmo valor.** Suponha que um candidato resolva se aventurar sem ter estudado absolutamente nada. Ele resolve fazer a prova de olhos vendados e chutar todas as resposta. Assumindo que a prova **vale 10 pontos e a nota de corte seja 5**, obtenha a probabilidade deste candidato **acertar 5 questões** e também a probabilidade deste candidato **passar para a próxima etapa do processo seletivo**."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "34ff18a4",
   "metadata": {
    "id": "sf-NMPfxG3CH",
    "papermill": {
     "duration": 0.063639,
     "end_time": "2024-05-06T12:52:12.198613",
     "exception": false,
     "start_time": "2024-05-06T12:52:12.134974",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Qual o número de ensaios ($n$)?"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 7,
   "id": "a8934d24",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:52:12.330363Z",
     "iopub.status.busy": "2024-05-06T12:52:12.328333Z",
     "iopub.status.idle": "2024-05-06T12:52:12.354737Z",
     "shell.execute_reply": "2024-05-06T12:52:12.351917Z"
    },
    "id": "WmnjMTnYG3CH",
    "outputId": "859f37e5-992a-4ccf-fbfb-4e2cf52c4373",
    "papermill": {
     "duration": 0.096312,
     "end_time": "2024-05-06T12:52:12.357969",
     "exception": false,
     "start_time": "2024-05-06T12:52:12.261657",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "10"
      ],
      "text/latex": [
       "10"
      ],
      "text/markdown": [
       "10"
      ],
      "text/plain": [
       "[1] 10"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "n <- 10\n",
    "n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "086cc89f",
   "metadata": {
    "id": "1USf9Ro8G3CK",
    "papermill": {
     "duration": 0.063526,
     "end_time": "2024-05-06T12:52:12.485767",
     "exception": false,
     "start_time": "2024-05-06T12:52:12.422241",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Os ensaios são independentes?"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "6d903331",
   "metadata": {
    "id": "82xf2XIkG3CM",
    "papermill": {
     "duration": 0.063412,
     "end_time": "2024-05-06T12:52:12.612953",
     "exception": false,
     "start_time": "2024-05-06T12:52:12.549541",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Sim. A opção escolhida em uma questão não influencia em nada a opção escolhida em outra questão."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "f70184af",
   "metadata": {
    "id": "7jN0H5e7G3CN",
    "papermill": {
     "duration": 0.06435,
     "end_time": "2024-05-06T12:52:12.740669",
     "exception": false,
     "start_time": "2024-05-06T12:52:12.676319",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Somente dois resultados são possíveis em cada ensaio?"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "2a680626",
   "metadata": {
    "id": "gGxcY7K8G3CO",
    "papermill": {
     "duration": 0.098661,
     "end_time": "2024-05-06T12:52:12.902604",
     "exception": false,
     "start_time": "2024-05-06T12:52:12.803943",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Sim. O candidato tem duas possibilidades, ACERTA ou ERRAR uma questão. "
   ]
  },
  {
   "cell_type": "markdown",
   "id": "fabdbf36",
   "metadata": {
    "id": "MZw2LDQjG3CR",
    "papermill": {
     "duration": 0.063532,
     "end_time": "2024-05-06T12:52:13.029458",
     "exception": false,
     "start_time": "2024-05-06T12:52:12.965926",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Qual a probabilidade de sucesso ($p$)?"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 8,
   "id": "f71cf178",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:52:13.185528Z",
     "iopub.status.busy": "2024-05-06T12:52:13.182231Z",
     "iopub.status.idle": "2024-05-06T12:52:13.223244Z",
     "shell.execute_reply": "2024-05-06T12:52:13.220855Z"
    },
    "id": "AazGDtt0G3CS",
    "outputId": "ccb9e561-0413-43c8-c462-ebea4b6c1097",
    "papermill": {
     "duration": 0.122075,
     "end_time": "2024-05-06T12:52:13.227960",
     "exception": false,
     "start_time": "2024-05-06T12:52:13.105885",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "0.333333333333333"
      ],
      "text/latex": [
       "0.333333333333333"
      ],
      "text/markdown": [
       "0.333333333333333"
      ],
      "text/plain": [
       "[1] 0.3333333"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "numero_de_alternativas_por_questao <- 3\n",
    "p <- 1 / numero_de_alternativas_por_questao\n",
    "p"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "7e04195b",
   "metadata": {
    "id": "KPCw41OlG3CX",
    "papermill": {
     "duration": 0.064723,
     "end_time": "2024-05-06T12:52:13.359517",
     "exception": false,
     "start_time": "2024-05-06T12:52:13.294794",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Qual a probabilidade de fracasso ($q$)?"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 9,
   "id": "e4c3de9e",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:52:13.501848Z",
     "iopub.status.busy": "2024-05-06T12:52:13.499127Z",
     "iopub.status.idle": "2024-05-06T12:52:13.528122Z",
     "shell.execute_reply": "2024-05-06T12:52:13.525782Z"
    },
    "id": "FRhmjCnpG3CZ",
    "outputId": "f521f041-ecf4-4c4c-b696-da7b949d657a",
    "papermill": {
     "duration": 0.10753,
     "end_time": "2024-05-06T12:52:13.531194",
     "exception": false,
     "start_time": "2024-05-06T12:52:13.423664",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "0.666666666666667"
      ],
      "text/latex": [
       "0.666666666666667"
      ],
      "text/markdown": [
       "0.666666666666667"
      ],
      "text/plain": [
       "[1] 0.6666667"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "q <- 1 - p\n",
    "q"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "45385835",
   "metadata": {
    "id": "W2htpmzaG3Ce",
    "papermill": {
     "duration": 0.06381,
     "end_time": "2024-05-06T12:52:13.658990",
     "exception": false,
     "start_time": "2024-05-06T12:52:13.595180",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Qual o total de eventos que se deseja obter sucesso ($k$)?"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 10,
   "id": "8e4900ec",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:52:13.791925Z",
     "iopub.status.busy": "2024-05-06T12:52:13.789702Z",
     "iopub.status.idle": "2024-05-06T12:52:13.815665Z",
     "shell.execute_reply": "2024-05-06T12:52:13.812818Z"
    },
    "id": "MmHpiIIuG3Cj",
    "outputId": "6975cb4f-5cd3-4234-f7b0-b5d01ceb0430",
    "papermill": {
     "duration": 0.09554,
     "end_time": "2024-05-06T12:52:13.818847",
     "exception": false,
     "start_time": "2024-05-06T12:52:13.723307",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "5"
      ],
      "text/latex": [
       "5"
      ],
      "text/markdown": [
       "5"
      ],
      "text/plain": [
       "[1] 5"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "k <- 5\n",
    "k"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "b0e7b8e2",
   "metadata": {
    "id": "r8TZ6DSuG3Cm",
    "papermill": {
     "duration": 0.064981,
     "end_time": "2024-05-06T12:52:13.959833",
     "exception": false,
     "start_time": "2024-05-06T12:52:13.894852",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Solução 1"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 11,
   "id": "40541ba9",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:52:14.094012Z",
     "iopub.status.busy": "2024-05-06T12:52:14.092010Z",
     "iopub.status.idle": "2024-05-06T12:52:14.120714Z",
     "shell.execute_reply": "2024-05-06T12:52:14.117890Z"
    },
    "papermill": {
     "duration": 0.099796,
     "end_time": "2024-05-06T12:52:14.124908",
     "exception": false,
     "start_time": "2024-05-06T12:52:14.025112",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "0.136564548087182"
      ],
      "text/latex": [
       "0.136564548087182"
      ],
      "text/markdown": [
       "0.136564548087182"
      ],
      "text/plain": [
       "[1] 0.1365645"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "probabilidade <- choose(n, k) * (p ** k) * (q ** (n - k))\n",
    "probabilidade"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "69357e57",
   "metadata": {
    "id": "hvj2sYaSG3Ct",
    "papermill": {
     "duration": 0.063992,
     "end_time": "2024-05-06T12:52:14.252747",
     "exception": false,
     "start_time": "2024-05-06T12:52:14.188755",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Solução 2\n",
    "\n",
    "#### <font color=red>Documentações:\n",
    "\n",
    "- [**dbinom**](https://www.rdocumentation.org/packages/stats/versions/3.6.1/topics/Binomial)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 12,
   "id": "b9756274",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:52:14.387717Z",
     "iopub.status.busy": "2024-05-06T12:52:14.385467Z",
     "iopub.status.idle": "2024-05-06T12:52:14.427607Z",
     "shell.execute_reply": "2024-05-06T12:52:14.424915Z"
    },
    "papermill": {
     "duration": 0.114602,
     "end_time": "2024-05-06T12:52:14.431206",
     "exception": false,
     "start_time": "2024-05-06T12:52:14.316604",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "0.136564548087182"
      ],
      "text/latex": [
       "0.136564548087182"
      ],
      "text/markdown": [
       "0.136564548087182"
      ],
      "text/plain": [
       "[1] 0.1365645"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "dbinom(x = k, size = n, prob = p)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "1a47338d",
   "metadata": {
    "papermill": {
     "duration": 0.064615,
     "end_time": "2024-05-06T12:52:14.561260",
     "exception": false,
     "start_time": "2024-05-06T12:52:14.496645",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Obter a probabilidade do candidato passar"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "1af6a691",
   "metadata": {
    "papermill": {
     "duration": 0.064027,
     "end_time": "2024-05-06T12:52:14.689440",
     "exception": false,
     "start_time": "2024-05-06T12:52:14.625413",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### $$P(acertar > 4) = P(5) + P(6) + P(7) + P(8) + P(9) + P(10)$$"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 13,
   "id": "a8336f91",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:52:14.841392Z",
     "iopub.status.busy": "2024-05-06T12:52:14.839732Z",
     "iopub.status.idle": "2024-05-06T12:52:14.859086Z",
     "shell.execute_reply": "2024-05-06T12:52:14.857015Z"
    },
    "papermill": {
     "duration": 0.107905,
     "end_time": "2024-05-06T12:52:14.861941",
     "exception": false,
     "start_time": "2024-05-06T12:52:14.754036",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "0.213128080069095"
      ],
      "text/latex": [
       "0.213128080069095"
      ],
      "text/markdown": [
       "0.213128080069095"
      ],
      "text/plain": [
       "[1] 0.2131281"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "dbinom(x = 5, size = n, prob = p) + \n",
    "dbinom(x = 6, size = n, prob = p) + \n",
    "dbinom(x = 7, size = n, prob = p) + \n",
    "dbinom(x = 8, size = n, prob = p) + \n",
    "dbinom(x = 9, size = n, prob = p) + \n",
    "dbinom(x = 10, size = n, prob = p)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 14,
   "id": "d36f349a",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:52:15.006203Z",
     "iopub.status.busy": "2024-05-06T12:52:15.004543Z",
     "iopub.status.idle": "2024-05-06T12:52:15.022758Z",
     "shell.execute_reply": "2024-05-06T12:52:15.020946Z"
    },
    "papermill": {
     "duration": 0.088733,
     "end_time": "2024-05-06T12:52:15.025331",
     "exception": false,
     "start_time": "2024-05-06T12:52:14.936598",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "0.213128080069095"
      ],
      "text/latex": [
       "0.213128080069095"
      ],
      "text/markdown": [
       "0.213128080069095"
      ],
      "text/plain": [
       "[1] 0.2131281"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "sum(dbinom(x = 5:10, size = n, prob = p))"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 15,
   "id": "bf20fa4b",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:52:15.165990Z",
     "iopub.status.busy": "2024-05-06T12:52:15.164101Z",
     "iopub.status.idle": "2024-05-06T12:52:15.185747Z",
     "shell.execute_reply": "2024-05-06T12:52:15.183127Z"
    },
    "papermill": {
     "duration": 0.094907,
     "end_time": "2024-05-06T12:52:15.189078",
     "exception": false,
     "start_time": "2024-05-06T12:52:15.094171",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "0.213128080069095"
      ],
      "text/latex": [
       "0.213128080069095"
      ],
      "text/markdown": [
       "0.213128080069095"
      ],
      "text/plain": [
       "[1] 0.2131281"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "pbinom(q = 4, size = n, prob = p, lower.tail = F)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "376e45d6",
   "metadata": {
    "id": "7hAZ4XkMG3Cx",
    "papermill": {
     "duration": 0.065722,
     "end_time": "2024-05-06T12:52:15.328202",
     "exception": false,
     "start_time": "2024-05-06T12:52:15.262480",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## <font color='blue'>Exemplo: Gincana</font>"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "f9538d09",
   "metadata": {
    "id": "l42alRhOG3Cy",
    "papermill": {
     "duration": 0.06754,
     "end_time": "2024-05-06T12:52:15.463214",
     "exception": false,
     "start_time": "2024-05-06T12:52:15.395674",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Uma cidade do interior realiza todos os anos uma gincana para arrecadar fundos para o hospital da cidade. Na última gincana se sabe que a **proporção de participantes do sexo feminino foi de 60%**. **O total de equipes, com 12 integrantes, inscritas na gincana deste ano é de 30**. Com as informações acima responda: Quantas equipes deverão ser formadas por **8 mulheres**?"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "afb19ad6",
   "metadata": {
    "id": "dqBGf6d7G3C0",
    "papermill": {
     "duration": 0.06597,
     "end_time": "2024-05-06T12:52:15.596143",
     "exception": false,
     "start_time": "2024-05-06T12:52:15.530173",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Solução"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 16,
   "id": "090932a1",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:52:15.733667Z",
     "iopub.status.busy": "2024-05-06T12:52:15.731894Z",
     "iopub.status.idle": "2024-05-06T12:52:15.754783Z",
     "shell.execute_reply": "2024-05-06T12:52:15.752268Z"
    },
    "id": "Xw9b6ch3G3C1",
    "outputId": "b4bb8b11-5113-4cc9-bac1-59e9acaf67e6",
    "papermill": {
     "duration": 0.096244,
     "end_time": "2024-05-06T12:52:15.757979",
     "exception": false,
     "start_time": "2024-05-06T12:52:15.661735",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "0.6"
      ],
      "text/latex": [
       "0.6"
      ],
      "text/markdown": [
       "0.6"
      ],
      "text/plain": [
       "[1] 0.6"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "p <- 0.6\n",
    "p"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 17,
   "id": "2b12a381",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:52:15.894418Z",
     "iopub.status.busy": "2024-05-06T12:52:15.892619Z",
     "iopub.status.idle": "2024-05-06T12:52:15.915328Z",
     "shell.execute_reply": "2024-05-06T12:52:15.912760Z"
    },
    "id": "R3-RaxP5G3C3",
    "outputId": "180b09ba-666e-47c9-b476-224c71fdd5c0",
    "papermill": {
     "duration": 0.094365,
     "end_time": "2024-05-06T12:52:15.918513",
     "exception": false,
     "start_time": "2024-05-06T12:52:15.824148",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "12"
      ],
      "text/latex": [
       "12"
      ],
      "text/markdown": [
       "12"
      ],
      "text/plain": [
       "[1] 12"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "n <- 12\n",
    "n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 18,
   "id": "4e8fcdc0",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:52:16.055830Z",
     "iopub.status.busy": "2024-05-06T12:52:16.054117Z",
     "iopub.status.idle": "2024-05-06T12:52:16.074393Z",
     "shell.execute_reply": "2024-05-06T12:52:16.072392Z"
    },
    "id": "otBHHyD0G3C6",
    "outputId": "c3bdd1ab-763a-43db-ec2e-fb890aa78e3f",
    "papermill": {
     "duration": 0.090632,
     "end_time": "2024-05-06T12:52:16.077063",
     "exception": false,
     "start_time": "2024-05-06T12:52:15.986431",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "8"
      ],
      "text/latex": [
       "8"
      ],
      "text/markdown": [
       "8"
      ],
      "text/plain": [
       "[1] 8"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "k <- 8\n",
    "k"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 19,
   "id": "18e6260d",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:52:16.214966Z",
     "iopub.status.busy": "2024-05-06T12:52:16.213291Z",
     "iopub.status.idle": "2024-05-06T12:52:16.233469Z",
     "shell.execute_reply": "2024-05-06T12:52:16.231588Z"
    },
    "papermill": {
     "duration": 0.091207,
     "end_time": "2024-05-06T12:52:16.236147",
     "exception": false,
     "start_time": "2024-05-06T12:52:16.144940",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "0.21284093952"
      ],
      "text/latex": [
       "0.21284093952"
      ],
      "text/markdown": [
       "0.21284093952"
      ],
      "text/plain": [
       "[1] 0.2128409"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "probabilidade <- dbinom(x = k, size = n, prob = p)\n",
    "probabilidade"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 20,
   "id": "182f2a5e",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:52:16.374622Z",
     "iopub.status.busy": "2024-05-06T12:52:16.372812Z",
     "iopub.status.idle": "2024-05-06T12:52:16.396087Z",
     "shell.execute_reply": "2024-05-06T12:52:16.393531Z"
    },
    "id": "Tg53uGL4G3DA",
    "outputId": "cf68634d-68fd-41c5-a9a1-98c5ead8b548",
    "papermill": {
     "duration": 0.09654,
     "end_time": "2024-05-06T12:52:16.399443",
     "exception": false,
     "start_time": "2024-05-06T12:52:16.302903",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "6.3852281856"
      ],
      "text/latex": [
       "6.3852281856"
      ],
      "text/markdown": [
       "6.3852281856"
      ],
      "text/plain": [
       "[1] 6.385228"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "equipes <- 30 * probabilidade\n",
    "equipes"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "9a699490",
   "metadata": {
    "id": "49TiCQRvG3DC",
    "papermill": {
     "duration": 0.065892,
     "end_time": "2024-05-06T12:52:16.532009",
     "exception": false,
     "start_time": "2024-05-06T12:52:16.466117",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "---"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "1ed67cd1",
   "metadata": {
    "id": "X6bYonAZG3DE",
    "papermill": {
     "duration": 0.066778,
     "end_time": "2024-05-06T12:52:16.665518",
     "exception": false,
     "start_time": "2024-05-06T12:52:16.598740",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## <font color=red>Problema</font>\n",
    "***"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "5b45cbf7",
   "metadata": {
    "id": "Ccx-Bc9oG3DH",
    "papermill": {
     "duration": 0.067614,
     "end_time": "2024-05-06T12:52:16.800778",
     "exception": false,
     "start_time": "2024-05-06T12:52:16.733164",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Um restaurante recebe em média **20 pedidos por hora**. Qual a chance de que, em determinada hora escolhida ao acaso, o restaurante receba **15 pedidos**?"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "1427ebe2",
   "metadata": {
    "id": "k-uV7bgsmand",
    "papermill": {
     "duration": 0.066443,
     "end_time": "2024-05-06T12:52:16.934166",
     "exception": false,
     "start_time": "2024-05-06T12:52:16.867723",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## <font color=green>2.2 Distribuição Poisson</font>\n",
    "***"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "54117a57",
   "metadata": {
    "id": "H0jPtJICG3DM",
    "papermill": {
     "duration": 0.06644,
     "end_time": "2024-05-06T12:52:17.067303",
     "exception": false,
     "start_time": "2024-05-06T12:52:17.000863",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "É empregada para descrever o número de ocorrências em um intervalo de tempo ou espaço específico. Os eventos são caracterizados pela possibilidade de contagem dos sucessos, mas a não possibilidade de contagem dos fracassos.\n",
    "\n",
    "Como exemplos de processos onde podemos aplicar a distribuição de Poisson temos a determinação do número de clientes que entram em uma loja em determinada hora, o número de carros que chegam em um drive-thru de uma lanchonete na hora do almoço, a determinação do número de acidentes registrados em um trecho de estrada etc."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "5a2195b8",
   "metadata": {
    "id": "O_XqwANJG3DN",
    "papermill": {
     "duration": 0.066161,
     "end_time": "2024-05-06T12:52:17.202295",
     "exception": false,
     "start_time": "2024-05-06T12:52:17.136134",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# $$P(k) = \\frac{e^{-\\mu}(\\mu)^k}{k!}$$\n",
    "\n",
    "Onde:\n",
    "\n",
    "$e$ = constante cujo valor aproximado é 2,718281828459045\n",
    "\n",
    "$\\mu$ = representa o número médio de ocorrências em um determinado intervalo de tempo ou espaço\n",
    "\n",
    "$k$ = número de sucessos no intervalo desejado"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "ad9975aa",
   "metadata": {
    "id": "FqquU8wOG3DO",
    "papermill": {
     "duration": 0.06601,
     "end_time": "2024-05-06T12:52:17.334443",
     "exception": false,
     "start_time": "2024-05-06T12:52:17.268433",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Experimento Poisson"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "a7befad1",
   "metadata": {
    "id": "ir2odEW3G3DO",
    "papermill": {
     "duration": 0.067306,
     "end_time": "2024-05-06T12:52:17.469310",
     "exception": false,
     "start_time": "2024-05-06T12:52:17.402004",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "1. A probabilidade de uma ocorrência é a mesma em todo o intervalo observado.\n",
    "\n",
    "2. O número de ocorrências em determinado intervalo é independente do número de ocorrências em outros intervalos.\n",
    "\n",
    "3. A probabilidade de uma ocorrência é a mesma em intervalos de igual comprimento."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "af68f502",
   "metadata": {
    "id": "2INlWMa0G3DP",
    "papermill": {
     "duration": 0.066452,
     "end_time": "2024-05-06T12:52:17.602232",
     "exception": false,
     "start_time": "2024-05-06T12:52:17.535780",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Média da distribuição Poisson"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "371bdb22",
   "metadata": {
    "id": "xywTsniCG3DP",
    "papermill": {
     "duration": 0.068307,
     "end_time": "2024-05-06T12:52:17.737318",
     "exception": false,
     "start_time": "2024-05-06T12:52:17.669011",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# $$\\mu$$"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "05d5a8ed",
   "metadata": {
    "id": "7-Lh-LpfG3DQ",
    "papermill": {
     "duration": 0.066982,
     "end_time": "2024-05-06T12:52:17.911144",
     "exception": false,
     "start_time": "2024-05-06T12:52:17.844162",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Desvio padrão da distribuição Poisson"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "4bec8bd6",
   "metadata": {
    "id": "61uStWUsG3DQ",
    "papermill": {
     "duration": 0.066796,
     "end_time": "2024-05-06T12:52:18.044390",
     "exception": false,
     "start_time": "2024-05-06T12:52:17.977594",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# $$\\sigma = \\sqrt{\\mu}$$"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "8499959d",
   "metadata": {
    "id": "vniBmzIMG3DR",
    "papermill": {
     "duration": 0.068026,
     "end_time": "2024-05-06T12:52:18.180977",
     "exception": false,
     "start_time": "2024-05-06T12:52:18.112951",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "#### <font color=red>Documentações:\n",
    "\n",
    "- [**exp**](https://www.rdocumentation.org/packages/base/versions/3.6.1/topics/log)\n",
    "- [**factorial**](https://www.rdocumentation.org/packages/base/versions/3.6.1/topics/Special)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 21,
   "id": "b67028d3",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:52:18.317919Z",
     "iopub.status.busy": "2024-05-06T12:52:18.316246Z",
     "iopub.status.idle": "2024-05-06T12:52:18.336372Z",
     "shell.execute_reply": "2024-05-06T12:52:18.333915Z"
    },
    "papermill": {
     "duration": 0.092185,
     "end_time": "2024-05-06T12:52:18.339541",
     "exception": false,
     "start_time": "2024-05-06T12:52:18.247356",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "2.71828182845905"
      ],
      "text/latex": [
       "2.71828182845905"
      ],
      "text/markdown": [
       "2.71828182845905"
      ],
      "text/plain": [
       "[1] 2.718282"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "exp(1)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "93f7330b",
   "metadata": {
    "id": "RKQWuVgMG3DW",
    "papermill": {
     "duration": 0.067281,
     "end_time": "2024-05-06T12:52:18.475119",
     "exception": false,
     "start_time": "2024-05-06T12:52:18.407838",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## <font color='blue'>Exemplo: Delivery</font>"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "556df827",
   "metadata": {
    "id": "ZKc__49bG3DX",
    "papermill": {
     "duration": 0.066717,
     "end_time": "2024-05-06T12:52:18.608272",
     "exception": false,
     "start_time": "2024-05-06T12:52:18.541555",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Um restaurante recebe em média **20 pedidos por hora**. Qual a chance de que, em determinada hora escolhida ao acaso, o restaurante receba **15 pedidos**?"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "feb9e7a9",
   "metadata": {
    "id": "W-MJ4XBkG3DX",
    "papermill": {
     "duration": 0.066099,
     "end_time": "2024-05-06T12:52:18.740957",
     "exception": false,
     "start_time": "2024-05-06T12:52:18.674858",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Qual o número médio de ocorrências por hora ($\\mu$)?"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 22,
   "id": "331255de",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:52:18.878741Z",
     "iopub.status.busy": "2024-05-06T12:52:18.876976Z",
     "iopub.status.idle": "2024-05-06T12:52:18.899922Z",
     "shell.execute_reply": "2024-05-06T12:52:18.897397Z"
    },
    "id": "2fVfJxdSG3DY",
    "outputId": "5f93f4cb-eef7-459d-836c-eb825cf3f1d5",
    "papermill": {
     "duration": 0.100818,
     "end_time": "2024-05-06T12:52:18.908683",
     "exception": false,
     "start_time": "2024-05-06T12:52:18.807865",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "20"
      ],
      "text/latex": [
       "20"
      ],
      "text/markdown": [
       "20"
      ],
      "text/plain": [
       "[1] 20"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "media <- 20\n",
    "media"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "a535cc1e",
   "metadata": {
    "id": "3SagRtPvG3Da",
    "papermill": {
     "duration": 0.06681,
     "end_time": "2024-05-06T12:52:19.042181",
     "exception": false,
     "start_time": "2024-05-06T12:52:18.975371",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Qual o número de ocorrências que queremos obter no período ($k$)?"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 23,
   "id": "54cebba6",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:52:19.180569Z",
     "iopub.status.busy": "2024-05-06T12:52:19.178898Z",
     "iopub.status.idle": "2024-05-06T12:52:19.200929Z",
     "shell.execute_reply": "2024-05-06T12:52:19.198352Z"
    },
    "id": "yXB3QhWyG3Da",
    "outputId": "70e860fe-353f-43ba-98e9-0976282de023",
    "papermill": {
     "duration": 0.096036,
     "end_time": "2024-05-06T12:52:19.204194",
     "exception": false,
     "start_time": "2024-05-06T12:52:19.108158",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "15"
      ],
      "text/latex": [
       "15"
      ],
      "text/markdown": [
       "15"
      ],
      "text/plain": [
       "[1] 15"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "k <- 15\n",
    "k"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "f07ea509",
   "metadata": {
    "id": "3wFh3lFCG3De",
    "papermill": {
     "duration": 0.066641,
     "end_time": "2024-05-06T12:52:19.337469",
     "exception": false,
     "start_time": "2024-05-06T12:52:19.270828",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Solução 1"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 24,
   "id": "4e2a22f2",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:52:19.476385Z",
     "iopub.status.busy": "2024-05-06T12:52:19.474684Z",
     "iopub.status.idle": "2024-05-06T12:52:19.497407Z",
     "shell.execute_reply": "2024-05-06T12:52:19.494812Z"
    },
    "papermill": {
     "duration": 0.096233,
     "end_time": "2024-05-06T12:52:19.500896",
     "exception": false,
     "start_time": "2024-05-06T12:52:19.404663",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "0.0516488535317584"
      ],
      "text/latex": [
       "0.0516488535317584"
      ],
      "text/markdown": [
       "0.0516488535317584"
      ],
      "text/plain": [
       "[1] 0.05164885"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "probabilidade <- ((exp(1) ** (-media)) * (media ** k)) / (factorial(k))\n",
    "probabilidade"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "45ba443f",
   "metadata": {
    "id": "yAyXh0euG3Dk",
    "papermill": {
     "duration": 0.069698,
     "end_time": "2024-05-06T12:52:19.637974",
     "exception": false,
     "start_time": "2024-05-06T12:52:19.568276",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Solução 2\n",
    "\n",
    "#### <font color=red>Documentações:\n",
    "\n",
    "- [**Poisson**](https://www.rdocumentation.org/packages/stats/versions/3.6.1/topics/Poisson)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 25,
   "id": "957ae220",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:52:19.777827Z",
     "iopub.status.busy": "2024-05-06T12:52:19.776138Z",
     "iopub.status.idle": "2024-05-06T12:52:19.798915Z",
     "shell.execute_reply": "2024-05-06T12:52:19.796357Z"
    },
    "papermill": {
     "duration": 0.095453,
     "end_time": "2024-05-06T12:52:19.802131",
     "exception": false,
     "start_time": "2024-05-06T12:52:19.706678",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "0.0516488535317583"
      ],
      "text/latex": [
       "0.0516488535317583"
      ],
      "text/markdown": [
       "0.0516488535317583"
      ],
      "text/plain": [
       "[1] 0.05164885"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "probabilidade <- dpois(x = k, lambda = media)\n",
    "probabilidade"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "7a7ea88e",
   "metadata": {
    "id": "g3ng8tQFG3Do",
    "papermill": {
     "duration": 0.067353,
     "end_time": "2024-05-06T12:52:19.936722",
     "exception": false,
     "start_time": "2024-05-06T12:52:19.869369",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "---"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "d143c265",
   "metadata": {
    "id": "tVPUT9kEG3Dp",
    "papermill": {
     "duration": 0.067463,
     "end_time": "2024-05-06T12:52:20.071733",
     "exception": false,
     "start_time": "2024-05-06T12:52:20.004270",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## <font color=red>Problema</font>\n",
    "***"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "f5f58c36",
   "metadata": {
    "id": "j7zVDN0kG3Dq",
    "papermill": {
     "duration": 0.067554,
     "end_time": "2024-05-06T12:52:20.208663",
     "exception": false,
     "start_time": "2024-05-06T12:52:20.141109",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Em um estudo sobre as alturas dos moradores de uma cidade verificou-se que o conjunto de dados segue uma **distribuição aproximadamente normal**, com **média 1,70** e **desvio padrão de 0,1**. Com estas informações obtenha o seguinte conjunto de probabilidades:\n",
    "\n",
    "> **A.** probabilidade de uma pessoa, selecionada ao acaso, ter menos de 1,80 metros.\n",
    ">\n",
    "> **B.** probabilidade de uma pessoa, selecionada ao acaso, ter entre 1,60 metros e 1,80 metros.    \n",
    ">\n",
    "> **C.** probabilidade de uma pessoa, selecionada ao acaso, ter mais de 1,90 metros."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "00ae1aac",
   "metadata": {
    "id": "AowcVaKqpvf2",
    "papermill": {
     "duration": 0.068891,
     "end_time": "2024-05-06T12:52:20.345126",
     "exception": false,
     "start_time": "2024-05-06T12:52:20.276235",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## <font color=green>2.3 Distribuição Normal</font>\n",
    "***"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "ab9999e2",
   "metadata": {
    "id": "YOBD21hGG3Dw",
    "papermill": {
     "duration": 0.068206,
     "end_time": "2024-05-06T12:52:20.483304",
     "exception": false,
     "start_time": "2024-05-06T12:52:20.415098",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "A distribuição normal é uma das mais utilizadas em estatística. É uma distribuição contínua, onde a distribuição de frequências de uma variável quantitativa apresenta a forma de sino e é simétrica em relação a sua média."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "2a489913",
   "metadata": {
    "id": "kbPy2ORqqKJA",
    "papermill": {
     "duration": 0.068931,
     "end_time": "2024-05-06T12:52:20.619698",
     "exception": false,
     "start_time": "2024-05-06T12:52:20.550767",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "![Normal](https://caelum-online-public.s3.amazonaws.com/1178-estatistica-parte2/01/img001.png)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "0f1303e2",
   "metadata": {
    "id": "J3eKESHTG3Dx",
    "papermill": {
     "duration": 0.068775,
     "end_time": "2024-05-06T12:52:20.756762",
     "exception": false,
     "start_time": "2024-05-06T12:52:20.687987",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Características importantes"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "19969014",
   "metadata": {
    "id": "z8GxAzWZG3Dx",
    "papermill": {
     "duration": 0.068819,
     "end_time": "2024-05-06T12:52:20.894204",
     "exception": false,
     "start_time": "2024-05-06T12:52:20.825385",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "1. É simétrica em torno da média;\n",
    "\n",
    "2. A área sob a curva corresponde à proporção 1 ou 100%;\n",
    "\n",
    "3. As medidas de tendência central (média, mediana e moda) apresentam o mesmo valor;\n",
    "\n",
    "4. Os extremos da curva tendem ao infinito em ambas as direções e, teoricamente, jamais tocam o eixo $x$;\n",
    "\n",
    "5. O desvio padrão define o achatamento e largura da distribuição. Curvas mais largas e mais achatadas apresentam valores maiores de desvio padrão;\n",
    "\n",
    "6. A distribuição é definida por sua média e desvio padrão;\n",
    "\n",
    "7. A probabilidade sempre será igual à área sob a curva, delimitada pelos limites inferior e superior."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "f0ba84d5",
   "metadata": {
    "id": "hoWLlOiwG3Dy",
    "papermill": {
     "duration": 0.067836,
     "end_time": "2024-05-06T12:52:21.029660",
     "exception": false,
     "start_time": "2024-05-06T12:52:20.961824",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# $$f(x) = \\frac{1}{\\sqrt{2\\pi\\sigma}}e^{-\\frac{1}{2}\\left(\\frac{x-\\mu}{\\sigma}\\right)^2}$$\n",
    "\n",
    "Onde:\n",
    "\n",
    "$x$ = variável normal\n",
    "\n",
    "$\\sigma$ = desvio padrão\n",
    "\n",
    "$\\mu$ = média"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "0ce412bf",
   "metadata": {
    "id": "8n03Z0VlG3Dz",
    "papermill": {
     "duration": 0.070062,
     "end_time": "2024-05-06T12:52:21.166915",
     "exception": false,
     "start_time": "2024-05-06T12:52:21.096853",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "A probabilidade é obtida a partir da área sob a curva, delimitada pelos limites inferior e superior especificados. Um exemplo pode ser visto na figura abaixo."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "69c8f057",
   "metadata": {
    "id": "X1UgmFoxG3Dz",
    "papermill": {
     "duration": 0.068678,
     "end_time": "2024-05-06T12:52:21.304565",
     "exception": false,
     "start_time": "2024-05-06T12:52:21.235887",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "![alt text](https://caelum-online-public.s3.amazonaws.com/1178-estatistica-parte2/01/img002.png)\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "3437e0b1",
   "metadata": {
    "id": "rtKiApHLG3D0",
    "papermill": {
     "duration": 0.068959,
     "end_time": "2024-05-06T12:52:21.441263",
     "exception": false,
     "start_time": "2024-05-06T12:52:21.372304",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Para obter a área acima basta calcular a integral da função para os intervalos determinados. Conforme equação abaixo:"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "219bcd9d",
   "metadata": {
    "id": "0r_9CbSOG3D0",
    "papermill": {
     "duration": 0.067267,
     "end_time": "2024-05-06T12:52:21.577286",
     "exception": false,
     "start_time": "2024-05-06T12:52:21.510019",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# $$P(L_i<x<L_s) = \\int_{L_i}^{L_s}\\frac{1}{\\sqrt{2\\pi\\sigma}}e^{-\\frac{1}{2}\\left(\\frac{x-\\mu}{\\sigma}\\right)^2}$$\n",
    "\n",
    "Onde:\n",
    "\n",
    "$x$ = variável normal\n",
    "\n",
    "$\\sigma$ = desvio padrão\n",
    "\n",
    "$\\mu$ = média\n",
    "\n",
    "$L_i$ = limite inferior\n",
    "\n",
    "$L_s$ = limite superior"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "5c9d4ecf",
   "metadata": {
    "id": "qP-Ye-leG3D1",
    "papermill": {
     "duration": 0.068012,
     "end_time": "2024-05-06T12:52:21.713642",
     "exception": false,
     "start_time": "2024-05-06T12:52:21.645630",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Tabelas padronizadas"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "065ca7b0",
   "metadata": {
    "id": "Z1VnLK11G3D1",
    "papermill": {
     "duration": 0.067191,
     "end_time": "2024-05-06T12:52:21.848667",
     "exception": false,
     "start_time": "2024-05-06T12:52:21.781476",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "As tabelas padronizadas foram criadas para facilitar a obtenção dos valores das áreas sob a curva normal e eliminar a necessidade de solucionar integrais definidas.\n",
    "\n",
    "Para consultarmos os valores em uma tabela padronizada basta transformarmos nossa variável em uma variável padronizada $Z$.\n",
    "\n",
    "Esta variável $Z$ representa o afastamento em desvios padrões de um valor da variável original em relação à média."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "80dea074",
   "metadata": {
    "id": "HJcdgdsgG3D2",
    "papermill": {
     "duration": 0.067565,
     "end_time": "2024-05-06T12:52:21.984974",
     "exception": false,
     "start_time": "2024-05-06T12:52:21.917409",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# $$Z = \\frac{x-\\mu}{\\sigma}$$\n",
    "\n",
    "Onde:\n",
    "\n",
    "$x$ = variável normal com média $\\mu$ e desvio padrão $\\sigma$\n",
    "\n",
    "$\\sigma$ = desvio padrão\n",
    "\n",
    "$\\mu$ = média"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "c678dc83",
   "metadata": {
    "papermill": {
     "duration": 0.068025,
     "end_time": "2024-05-06T12:52:22.120541",
     "exception": false,
     "start_time": "2024-05-06T12:52:22.052516",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "#### <font color=red>Documentações:\n",
    "\n",
    "- [**Normal**](https://www.rdocumentation.org/packages/stats/versions/3.6.1/topics/Normal)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "fdf9a866",
   "metadata": {
    "id": "hUrVKJH3G3D2",
    "papermill": {
     "duration": 0.06937,
     "end_time": "2024-05-06T12:52:22.259932",
     "exception": false,
     "start_time": "2024-05-06T12:52:22.190562",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Construindo tabela normal padronizada"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 26,
   "id": "3a9102dc",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:52:22.442887Z",
     "iopub.status.busy": "2024-05-06T12:52:22.441112Z",
     "iopub.status.idle": "2024-05-06T12:52:22.526533Z",
     "shell.execute_reply": "2024-05-06T12:52:22.523722Z"
    },
    "papermill": {
     "duration": 0.20237,
     "end_time": "2024-05-06T12:52:22.529936",
     "exception": false,
     "start_time": "2024-05-06T12:52:22.327566",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A matrix: 40 × 10 of type dbl</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>0.00</th><th scope=col>0.01</th><th scope=col>0.02</th><th scope=col>0.03</th><th scope=col>0.04</th><th scope=col>0.05</th><th scope=col>0.06</th><th scope=col>0.07</th><th scope=col>0.08</th><th scope=col>0.09</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>0.00</th><td>0.5000000</td><td>0.5039894</td><td>0.5079783</td><td>0.5119665</td><td>0.5159534</td><td>0.5199388</td><td>0.5239222</td><td>0.5279032</td><td>0.5318814</td><td>0.5358564</td></tr>\n",
       "\t<tr><th scope=row>0.10</th><td>0.5398278</td><td>0.5437953</td><td>0.5477584</td><td>0.5517168</td><td>0.5556700</td><td>0.5596177</td><td>0.5635595</td><td>0.5674949</td><td>0.5714237</td><td>0.5753454</td></tr>\n",
       "\t<tr><th scope=row>0.20</th><td>0.5792597</td><td>0.5831662</td><td>0.5870644</td><td>0.5909541</td><td>0.5948349</td><td>0.5987063</td><td>0.6025681</td><td>0.6064199</td><td>0.6102612</td><td>0.6140919</td></tr>\n",
       "\t<tr><th scope=row>0.30</th><td>0.6179114</td><td>0.6217195</td><td>0.6255158</td><td>0.6293000</td><td>0.6330717</td><td>0.6368307</td><td>0.6405764</td><td>0.6443088</td><td>0.6480273</td><td>0.6517317</td></tr>\n",
       "\t<tr><th scope=row>0.40</th><td>0.6554217</td><td>0.6590970</td><td>0.6627573</td><td>0.6664022</td><td>0.6700314</td><td>0.6736448</td><td>0.6772419</td><td>0.6808225</td><td>0.6843863</td><td>0.6879331</td></tr>\n",
       "\t<tr><th scope=row>0.50</th><td>0.6914625</td><td>0.6949743</td><td>0.6984682</td><td>0.7019440</td><td>0.7054015</td><td>0.7088403</td><td>0.7122603</td><td>0.7156612</td><td>0.7190427</td><td>0.7224047</td></tr>\n",
       "\t<tr><th scope=row>0.60</th><td>0.7257469</td><td>0.7290691</td><td>0.7323711</td><td>0.7356527</td><td>0.7389137</td><td>0.7421539</td><td>0.7453731</td><td>0.7485711</td><td>0.7517478</td><td>0.7549029</td></tr>\n",
       "\t<tr><th scope=row>0.70</th><td>0.7580363</td><td>0.7611479</td><td>0.7642375</td><td>0.7673049</td><td>0.7703500</td><td>0.7733726</td><td>0.7763727</td><td>0.7793501</td><td>0.7823046</td><td>0.7852361</td></tr>\n",
       "\t<tr><th scope=row>0.80</th><td>0.7881446</td><td>0.7910299</td><td>0.7938919</td><td>0.7967306</td><td>0.7995458</td><td>0.8023375</td><td>0.8051055</td><td>0.8078498</td><td>0.8105703</td><td>0.8132671</td></tr>\n",
       "\t<tr><th scope=row>0.90</th><td>0.8159399</td><td>0.8185887</td><td>0.8212136</td><td>0.8238145</td><td>0.8263912</td><td>0.8289439</td><td>0.8314724</td><td>0.8339768</td><td>0.8364569</td><td>0.8389129</td></tr>\n",
       "\t<tr><th scope=row>1.00</th><td>0.8413447</td><td>0.8437524</td><td>0.8461358</td><td>0.8484950</td><td>0.8508300</td><td>0.8531409</td><td>0.8554277</td><td>0.8576903</td><td>0.8599289</td><td>0.8621434</td></tr>\n",
       "\t<tr><th scope=row>1.10</th><td>0.8643339</td><td>0.8665005</td><td>0.8686431</td><td>0.8707619</td><td>0.8728568</td><td>0.8749281</td><td>0.8769756</td><td>0.8789995</td><td>0.8809999</td><td>0.8829768</td></tr>\n",
       "\t<tr><th scope=row>1.20</th><td>0.8849303</td><td>0.8868606</td><td>0.8887676</td><td>0.8906514</td><td>0.8925123</td><td>0.8943502</td><td>0.8961653</td><td>0.8979577</td><td>0.8997274</td><td>0.9014747</td></tr>\n",
       "\t<tr><th scope=row>1.30</th><td>0.9031995</td><td>0.9049021</td><td>0.9065825</td><td>0.9082409</td><td>0.9098773</td><td>0.9114920</td><td>0.9130850</td><td>0.9146565</td><td>0.9162067</td><td>0.9177356</td></tr>\n",
       "\t<tr><th scope=row>1.40</th><td>0.9192433</td><td>0.9207302</td><td>0.9221962</td><td>0.9236415</td><td>0.9250663</td><td>0.9264707</td><td>0.9278550</td><td>0.9292191</td><td>0.9305634</td><td>0.9318879</td></tr>\n",
       "\t<tr><th scope=row>1.50</th><td>0.9331928</td><td>0.9344783</td><td>0.9357445</td><td>0.9369916</td><td>0.9382198</td><td>0.9394292</td><td>0.9406201</td><td>0.9417924</td><td>0.9429466</td><td>0.9440826</td></tr>\n",
       "\t<tr><th scope=row>1.60</th><td>0.9452007</td><td>0.9463011</td><td>0.9473839</td><td>0.9484493</td><td>0.9494974</td><td>0.9505285</td><td>0.9515428</td><td>0.9525403</td><td>0.9535213</td><td>0.9544860</td></tr>\n",
       "\t<tr><th scope=row>1.70</th><td>0.9554345</td><td>0.9563671</td><td>0.9572838</td><td>0.9581849</td><td>0.9590705</td><td>0.9599408</td><td>0.9607961</td><td>0.9616364</td><td>0.9624620</td><td>0.9632730</td></tr>\n",
       "\t<tr><th scope=row>1.80</th><td>0.9640697</td><td>0.9648521</td><td>0.9656205</td><td>0.9663750</td><td>0.9671159</td><td>0.9678432</td><td>0.9685572</td><td>0.9692581</td><td>0.9699460</td><td>0.9706210</td></tr>\n",
       "\t<tr><th scope=row>1.90</th><td>0.9712834</td><td>0.9719334</td><td>0.9725711</td><td>0.9731966</td><td>0.9738102</td><td>0.9744119</td><td>0.9750021</td><td>0.9755808</td><td>0.9761482</td><td>0.9767045</td></tr>\n",
       "\t<tr><th scope=row>2.00</th><td>0.9772499</td><td>0.9777844</td><td>0.9783083</td><td>0.9788217</td><td>0.9793248</td><td>0.9798178</td><td>0.9803007</td><td>0.9807738</td><td>0.9812372</td><td>0.9816911</td></tr>\n",
       "\t<tr><th scope=row>2.10</th><td>0.9821356</td><td>0.9825708</td><td>0.9829970</td><td>0.9834142</td><td>0.9838226</td><td>0.9842224</td><td>0.9846137</td><td>0.9849966</td><td>0.9853713</td><td>0.9857379</td></tr>\n",
       "\t<tr><th scope=row>2.20</th><td>0.9860966</td><td>0.9864474</td><td>0.9867906</td><td>0.9871263</td><td>0.9874545</td><td>0.9877755</td><td>0.9880894</td><td>0.9883962</td><td>0.9886962</td><td>0.9889893</td></tr>\n",
       "\t<tr><th scope=row>2.30</th><td>0.9892759</td><td>0.9895559</td><td>0.9898296</td><td>0.9900969</td><td>0.9903581</td><td>0.9906133</td><td>0.9908625</td><td>0.9911060</td><td>0.9913437</td><td>0.9915758</td></tr>\n",
       "\t<tr><th scope=row>2.40</th><td>0.9918025</td><td>0.9920237</td><td>0.9922397</td><td>0.9924506</td><td>0.9926564</td><td>0.9928572</td><td>0.9930531</td><td>0.9932443</td><td>0.9934309</td><td>0.9936128</td></tr>\n",
       "\t<tr><th scope=row>2.50</th><td>0.9937903</td><td>0.9939634</td><td>0.9941323</td><td>0.9942969</td><td>0.9944574</td><td>0.9946139</td><td>0.9947664</td><td>0.9949151</td><td>0.9950600</td><td>0.9952012</td></tr>\n",
       "\t<tr><th scope=row>2.60</th><td>0.9953388</td><td>0.9954729</td><td>0.9956035</td><td>0.9957308</td><td>0.9958547</td><td>0.9959754</td><td>0.9960930</td><td>0.9962074</td><td>0.9963189</td><td>0.9964274</td></tr>\n",
       "\t<tr><th scope=row>2.70</th><td>0.9965330</td><td>0.9966358</td><td>0.9967359</td><td>0.9968333</td><td>0.9969280</td><td>0.9970202</td><td>0.9971099</td><td>0.9971972</td><td>0.9972821</td><td>0.9973646</td></tr>\n",
       "\t<tr><th scope=row>2.80</th><td>0.9974449</td><td>0.9975229</td><td>0.9975988</td><td>0.9976726</td><td>0.9977443</td><td>0.9978140</td><td>0.9978818</td><td>0.9979476</td><td>0.9980116</td><td>0.9980738</td></tr>\n",
       "\t<tr><th scope=row>2.90</th><td>0.9981342</td><td>0.9981929</td><td>0.9982498</td><td>0.9983052</td><td>0.9983589</td><td>0.9984111</td><td>0.9984618</td><td>0.9985110</td><td>0.9985588</td><td>0.9986051</td></tr>\n",
       "\t<tr><th scope=row>3.00</th><td>0.9986501</td><td>0.9986938</td><td>0.9987361</td><td>0.9987772</td><td>0.9988171</td><td>0.9988558</td><td>0.9988933</td><td>0.9989297</td><td>0.9989650</td><td>0.9989992</td></tr>\n",
       "\t<tr><th scope=row>3.10</th><td>0.9990324</td><td>0.9990646</td><td>0.9990957</td><td>0.9991260</td><td>0.9991553</td><td>0.9991836</td><td>0.9992112</td><td>0.9992378</td><td>0.9992636</td><td>0.9992886</td></tr>\n",
       "\t<tr><th scope=row>3.20</th><td>0.9993129</td><td>0.9993363</td><td>0.9993590</td><td>0.9993810</td><td>0.9994024</td><td>0.9994230</td><td>0.9994429</td><td>0.9994623</td><td>0.9994810</td><td>0.9994991</td></tr>\n",
       "\t<tr><th scope=row>3.30</th><td>0.9995166</td><td>0.9995335</td><td>0.9995499</td><td>0.9995658</td><td>0.9995811</td><td>0.9995959</td><td>0.9996103</td><td>0.9996242</td><td>0.9996376</td><td>0.9996505</td></tr>\n",
       "\t<tr><th scope=row>3.40</th><td>0.9996631</td><td>0.9996752</td><td>0.9996869</td><td>0.9996982</td><td>0.9997091</td><td>0.9997197</td><td>0.9997299</td><td>0.9997398</td><td>0.9997493</td><td>0.9997585</td></tr>\n",
       "\t<tr><th scope=row>3.50</th><td>0.9997674</td><td>0.9997759</td><td>0.9997842</td><td>0.9997922</td><td>0.9997999</td><td>0.9998074</td><td>0.9998146</td><td>0.9998215</td><td>0.9998282</td><td>0.9998347</td></tr>\n",
       "\t<tr><th scope=row>3.60</th><td>0.9998409</td><td>0.9998469</td><td>0.9998527</td><td>0.9998583</td><td>0.9998637</td><td>0.9998689</td><td>0.9998739</td><td>0.9998787</td><td>0.9998834</td><td>0.9998879</td></tr>\n",
       "\t<tr><th scope=row>3.70</th><td>0.9998922</td><td>0.9998964</td><td>0.9999004</td><td>0.9999043</td><td>0.9999080</td><td>0.9999116</td><td>0.9999150</td><td>0.9999184</td><td>0.9999216</td><td>0.9999247</td></tr>\n",
       "\t<tr><th scope=row>3.80</th><td>0.9999277</td><td>0.9999305</td><td>0.9999333</td><td>0.9999359</td><td>0.9999385</td><td>0.9999409</td><td>0.9999433</td><td>0.9999456</td><td>0.9999478</td><td>0.9999499</td></tr>\n",
       "\t<tr><th scope=row>3.90</th><td>0.9999519</td><td>0.9999539</td><td>0.9999557</td><td>0.9999575</td><td>0.9999593</td><td>0.9999609</td><td>0.9999625</td><td>0.9999641</td><td>0.9999655</td><td>0.9999670</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A matrix: 40 × 10 of type dbl\n",
       "\\begin{tabular}{r|llllllllll}\n",
       "  & 0.00 & 0.01 & 0.02 & 0.03 & 0.04 & 0.05 & 0.06 & 0.07 & 0.08 & 0.09\\\\\n",
       "\\hline\n",
       "\t0.00 & 0.5000000 & 0.5039894 & 0.5079783 & 0.5119665 & 0.5159534 & 0.5199388 & 0.5239222 & 0.5279032 & 0.5318814 & 0.5358564\\\\\n",
       "\t0.10 & 0.5398278 & 0.5437953 & 0.5477584 & 0.5517168 & 0.5556700 & 0.5596177 & 0.5635595 & 0.5674949 & 0.5714237 & 0.5753454\\\\\n",
       "\t0.20 & 0.5792597 & 0.5831662 & 0.5870644 & 0.5909541 & 0.5948349 & 0.5987063 & 0.6025681 & 0.6064199 & 0.6102612 & 0.6140919\\\\\n",
       "\t0.30 & 0.6179114 & 0.6217195 & 0.6255158 & 0.6293000 & 0.6330717 & 0.6368307 & 0.6405764 & 0.6443088 & 0.6480273 & 0.6517317\\\\\n",
       "\t0.40 & 0.6554217 & 0.6590970 & 0.6627573 & 0.6664022 & 0.6700314 & 0.6736448 & 0.6772419 & 0.6808225 & 0.6843863 & 0.6879331\\\\\n",
       "\t0.50 & 0.6914625 & 0.6949743 & 0.6984682 & 0.7019440 & 0.7054015 & 0.7088403 & 0.7122603 & 0.7156612 & 0.7190427 & 0.7224047\\\\\n",
       "\t0.60 & 0.7257469 & 0.7290691 & 0.7323711 & 0.7356527 & 0.7389137 & 0.7421539 & 0.7453731 & 0.7485711 & 0.7517478 & 0.7549029\\\\\n",
       "\t0.70 & 0.7580363 & 0.7611479 & 0.7642375 & 0.7673049 & 0.7703500 & 0.7733726 & 0.7763727 & 0.7793501 & 0.7823046 & 0.7852361\\\\\n",
       "\t0.80 & 0.7881446 & 0.7910299 & 0.7938919 & 0.7967306 & 0.7995458 & 0.8023375 & 0.8051055 & 0.8078498 & 0.8105703 & 0.8132671\\\\\n",
       "\t0.90 & 0.8159399 & 0.8185887 & 0.8212136 & 0.8238145 & 0.8263912 & 0.8289439 & 0.8314724 & 0.8339768 & 0.8364569 & 0.8389129\\\\\n",
       "\t1.00 & 0.8413447 & 0.8437524 & 0.8461358 & 0.8484950 & 0.8508300 & 0.8531409 & 0.8554277 & 0.8576903 & 0.8599289 & 0.8621434\\\\\n",
       "\t1.10 & 0.8643339 & 0.8665005 & 0.8686431 & 0.8707619 & 0.8728568 & 0.8749281 & 0.8769756 & 0.8789995 & 0.8809999 & 0.8829768\\\\\n",
       "\t1.20 & 0.8849303 & 0.8868606 & 0.8887676 & 0.8906514 & 0.8925123 & 0.8943502 & 0.8961653 & 0.8979577 & 0.8997274 & 0.9014747\\\\\n",
       "\t1.30 & 0.9031995 & 0.9049021 & 0.9065825 & 0.9082409 & 0.9098773 & 0.9114920 & 0.9130850 & 0.9146565 & 0.9162067 & 0.9177356\\\\\n",
       "\t1.40 & 0.9192433 & 0.9207302 & 0.9221962 & 0.9236415 & 0.9250663 & 0.9264707 & 0.9278550 & 0.9292191 & 0.9305634 & 0.9318879\\\\\n",
       "\t1.50 & 0.9331928 & 0.9344783 & 0.9357445 & 0.9369916 & 0.9382198 & 0.9394292 & 0.9406201 & 0.9417924 & 0.9429466 & 0.9440826\\\\\n",
       "\t1.60 & 0.9452007 & 0.9463011 & 0.9473839 & 0.9484493 & 0.9494974 & 0.9505285 & 0.9515428 & 0.9525403 & 0.9535213 & 0.9544860\\\\\n",
       "\t1.70 & 0.9554345 & 0.9563671 & 0.9572838 & 0.9581849 & 0.9590705 & 0.9599408 & 0.9607961 & 0.9616364 & 0.9624620 & 0.9632730\\\\\n",
       "\t1.80 & 0.9640697 & 0.9648521 & 0.9656205 & 0.9663750 & 0.9671159 & 0.9678432 & 0.9685572 & 0.9692581 & 0.9699460 & 0.9706210\\\\\n",
       "\t1.90 & 0.9712834 & 0.9719334 & 0.9725711 & 0.9731966 & 0.9738102 & 0.9744119 & 0.9750021 & 0.9755808 & 0.9761482 & 0.9767045\\\\\n",
       "\t2.00 & 0.9772499 & 0.9777844 & 0.9783083 & 0.9788217 & 0.9793248 & 0.9798178 & 0.9803007 & 0.9807738 & 0.9812372 & 0.9816911\\\\\n",
       "\t2.10 & 0.9821356 & 0.9825708 & 0.9829970 & 0.9834142 & 0.9838226 & 0.9842224 & 0.9846137 & 0.9849966 & 0.9853713 & 0.9857379\\\\\n",
       "\t2.20 & 0.9860966 & 0.9864474 & 0.9867906 & 0.9871263 & 0.9874545 & 0.9877755 & 0.9880894 & 0.9883962 & 0.9886962 & 0.9889893\\\\\n",
       "\t2.30 & 0.9892759 & 0.9895559 & 0.9898296 & 0.9900969 & 0.9903581 & 0.9906133 & 0.9908625 & 0.9911060 & 0.9913437 & 0.9915758\\\\\n",
       "\t2.40 & 0.9918025 & 0.9920237 & 0.9922397 & 0.9924506 & 0.9926564 & 0.9928572 & 0.9930531 & 0.9932443 & 0.9934309 & 0.9936128\\\\\n",
       "\t2.50 & 0.9937903 & 0.9939634 & 0.9941323 & 0.9942969 & 0.9944574 & 0.9946139 & 0.9947664 & 0.9949151 & 0.9950600 & 0.9952012\\\\\n",
       "\t2.60 & 0.9953388 & 0.9954729 & 0.9956035 & 0.9957308 & 0.9958547 & 0.9959754 & 0.9960930 & 0.9962074 & 0.9963189 & 0.9964274\\\\\n",
       "\t2.70 & 0.9965330 & 0.9966358 & 0.9967359 & 0.9968333 & 0.9969280 & 0.9970202 & 0.9971099 & 0.9971972 & 0.9972821 & 0.9973646\\\\\n",
       "\t2.80 & 0.9974449 & 0.9975229 & 0.9975988 & 0.9976726 & 0.9977443 & 0.9978140 & 0.9978818 & 0.9979476 & 0.9980116 & 0.9980738\\\\\n",
       "\t2.90 & 0.9981342 & 0.9981929 & 0.9982498 & 0.9983052 & 0.9983589 & 0.9984111 & 0.9984618 & 0.9985110 & 0.9985588 & 0.9986051\\\\\n",
       "\t3.00 & 0.9986501 & 0.9986938 & 0.9987361 & 0.9987772 & 0.9988171 & 0.9988558 & 0.9988933 & 0.9989297 & 0.9989650 & 0.9989992\\\\\n",
       "\t3.10 & 0.9990324 & 0.9990646 & 0.9990957 & 0.9991260 & 0.9991553 & 0.9991836 & 0.9992112 & 0.9992378 & 0.9992636 & 0.9992886\\\\\n",
       "\t3.20 & 0.9993129 & 0.9993363 & 0.9993590 & 0.9993810 & 0.9994024 & 0.9994230 & 0.9994429 & 0.9994623 & 0.9994810 & 0.9994991\\\\\n",
       "\t3.30 & 0.9995166 & 0.9995335 & 0.9995499 & 0.9995658 & 0.9995811 & 0.9995959 & 0.9996103 & 0.9996242 & 0.9996376 & 0.9996505\\\\\n",
       "\t3.40 & 0.9996631 & 0.9996752 & 0.9996869 & 0.9996982 & 0.9997091 & 0.9997197 & 0.9997299 & 0.9997398 & 0.9997493 & 0.9997585\\\\\n",
       "\t3.50 & 0.9997674 & 0.9997759 & 0.9997842 & 0.9997922 & 0.9997999 & 0.9998074 & 0.9998146 & 0.9998215 & 0.9998282 & 0.9998347\\\\\n",
       "\t3.60 & 0.9998409 & 0.9998469 & 0.9998527 & 0.9998583 & 0.9998637 & 0.9998689 & 0.9998739 & 0.9998787 & 0.9998834 & 0.9998879\\\\\n",
       "\t3.70 & 0.9998922 & 0.9998964 & 0.9999004 & 0.9999043 & 0.9999080 & 0.9999116 & 0.9999150 & 0.9999184 & 0.9999216 & 0.9999247\\\\\n",
       "\t3.80 & 0.9999277 & 0.9999305 & 0.9999333 & 0.9999359 & 0.9999385 & 0.9999409 & 0.9999433 & 0.9999456 & 0.9999478 & 0.9999499\\\\\n",
       "\t3.90 & 0.9999519 & 0.9999539 & 0.9999557 & 0.9999575 & 0.9999593 & 0.9999609 & 0.9999625 & 0.9999641 & 0.9999655 & 0.9999670\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A matrix: 40 × 10 of type dbl\n",
       "\n",
       "| <!--/--> | 0.00 | 0.01 | 0.02 | 0.03 | 0.04 | 0.05 | 0.06 | 0.07 | 0.08 | 0.09 |\n",
       "|---|---|---|---|---|---|---|---|---|---|---|\n",
       "| 0.00 | 0.5000000 | 0.5039894 | 0.5079783 | 0.5119665 | 0.5159534 | 0.5199388 | 0.5239222 | 0.5279032 | 0.5318814 | 0.5358564 |\n",
       "| 0.10 | 0.5398278 | 0.5437953 | 0.5477584 | 0.5517168 | 0.5556700 | 0.5596177 | 0.5635595 | 0.5674949 | 0.5714237 | 0.5753454 |\n",
       "| 0.20 | 0.5792597 | 0.5831662 | 0.5870644 | 0.5909541 | 0.5948349 | 0.5987063 | 0.6025681 | 0.6064199 | 0.6102612 | 0.6140919 |\n",
       "| 0.30 | 0.6179114 | 0.6217195 | 0.6255158 | 0.6293000 | 0.6330717 | 0.6368307 | 0.6405764 | 0.6443088 | 0.6480273 | 0.6517317 |\n",
       "| 0.40 | 0.6554217 | 0.6590970 | 0.6627573 | 0.6664022 | 0.6700314 | 0.6736448 | 0.6772419 | 0.6808225 | 0.6843863 | 0.6879331 |\n",
       "| 0.50 | 0.6914625 | 0.6949743 | 0.6984682 | 0.7019440 | 0.7054015 | 0.7088403 | 0.7122603 | 0.7156612 | 0.7190427 | 0.7224047 |\n",
       "| 0.60 | 0.7257469 | 0.7290691 | 0.7323711 | 0.7356527 | 0.7389137 | 0.7421539 | 0.7453731 | 0.7485711 | 0.7517478 | 0.7549029 |\n",
       "| 0.70 | 0.7580363 | 0.7611479 | 0.7642375 | 0.7673049 | 0.7703500 | 0.7733726 | 0.7763727 | 0.7793501 | 0.7823046 | 0.7852361 |\n",
       "| 0.80 | 0.7881446 | 0.7910299 | 0.7938919 | 0.7967306 | 0.7995458 | 0.8023375 | 0.8051055 | 0.8078498 | 0.8105703 | 0.8132671 |\n",
       "| 0.90 | 0.8159399 | 0.8185887 | 0.8212136 | 0.8238145 | 0.8263912 | 0.8289439 | 0.8314724 | 0.8339768 | 0.8364569 | 0.8389129 |\n",
       "| 1.00 | 0.8413447 | 0.8437524 | 0.8461358 | 0.8484950 | 0.8508300 | 0.8531409 | 0.8554277 | 0.8576903 | 0.8599289 | 0.8621434 |\n",
       "| 1.10 | 0.8643339 | 0.8665005 | 0.8686431 | 0.8707619 | 0.8728568 | 0.8749281 | 0.8769756 | 0.8789995 | 0.8809999 | 0.8829768 |\n",
       "| 1.20 | 0.8849303 | 0.8868606 | 0.8887676 | 0.8906514 | 0.8925123 | 0.8943502 | 0.8961653 | 0.8979577 | 0.8997274 | 0.9014747 |\n",
       "| 1.30 | 0.9031995 | 0.9049021 | 0.9065825 | 0.9082409 | 0.9098773 | 0.9114920 | 0.9130850 | 0.9146565 | 0.9162067 | 0.9177356 |\n",
       "| 1.40 | 0.9192433 | 0.9207302 | 0.9221962 | 0.9236415 | 0.9250663 | 0.9264707 | 0.9278550 | 0.9292191 | 0.9305634 | 0.9318879 |\n",
       "| 1.50 | 0.9331928 | 0.9344783 | 0.9357445 | 0.9369916 | 0.9382198 | 0.9394292 | 0.9406201 | 0.9417924 | 0.9429466 | 0.9440826 |\n",
       "| 1.60 | 0.9452007 | 0.9463011 | 0.9473839 | 0.9484493 | 0.9494974 | 0.9505285 | 0.9515428 | 0.9525403 | 0.9535213 | 0.9544860 |\n",
       "| 1.70 | 0.9554345 | 0.9563671 | 0.9572838 | 0.9581849 | 0.9590705 | 0.9599408 | 0.9607961 | 0.9616364 | 0.9624620 | 0.9632730 |\n",
       "| 1.80 | 0.9640697 | 0.9648521 | 0.9656205 | 0.9663750 | 0.9671159 | 0.9678432 | 0.9685572 | 0.9692581 | 0.9699460 | 0.9706210 |\n",
       "| 1.90 | 0.9712834 | 0.9719334 | 0.9725711 | 0.9731966 | 0.9738102 | 0.9744119 | 0.9750021 | 0.9755808 | 0.9761482 | 0.9767045 |\n",
       "| 2.00 | 0.9772499 | 0.9777844 | 0.9783083 | 0.9788217 | 0.9793248 | 0.9798178 | 0.9803007 | 0.9807738 | 0.9812372 | 0.9816911 |\n",
       "| 2.10 | 0.9821356 | 0.9825708 | 0.9829970 | 0.9834142 | 0.9838226 | 0.9842224 | 0.9846137 | 0.9849966 | 0.9853713 | 0.9857379 |\n",
       "| 2.20 | 0.9860966 | 0.9864474 | 0.9867906 | 0.9871263 | 0.9874545 | 0.9877755 | 0.9880894 | 0.9883962 | 0.9886962 | 0.9889893 |\n",
       "| 2.30 | 0.9892759 | 0.9895559 | 0.9898296 | 0.9900969 | 0.9903581 | 0.9906133 | 0.9908625 | 0.9911060 | 0.9913437 | 0.9915758 |\n",
       "| 2.40 | 0.9918025 | 0.9920237 | 0.9922397 | 0.9924506 | 0.9926564 | 0.9928572 | 0.9930531 | 0.9932443 | 0.9934309 | 0.9936128 |\n",
       "| 2.50 | 0.9937903 | 0.9939634 | 0.9941323 | 0.9942969 | 0.9944574 | 0.9946139 | 0.9947664 | 0.9949151 | 0.9950600 | 0.9952012 |\n",
       "| 2.60 | 0.9953388 | 0.9954729 | 0.9956035 | 0.9957308 | 0.9958547 | 0.9959754 | 0.9960930 | 0.9962074 | 0.9963189 | 0.9964274 |\n",
       "| 2.70 | 0.9965330 | 0.9966358 | 0.9967359 | 0.9968333 | 0.9969280 | 0.9970202 | 0.9971099 | 0.9971972 | 0.9972821 | 0.9973646 |\n",
       "| 2.80 | 0.9974449 | 0.9975229 | 0.9975988 | 0.9976726 | 0.9977443 | 0.9978140 | 0.9978818 | 0.9979476 | 0.9980116 | 0.9980738 |\n",
       "| 2.90 | 0.9981342 | 0.9981929 | 0.9982498 | 0.9983052 | 0.9983589 | 0.9984111 | 0.9984618 | 0.9985110 | 0.9985588 | 0.9986051 |\n",
       "| 3.00 | 0.9986501 | 0.9986938 | 0.9987361 | 0.9987772 | 0.9988171 | 0.9988558 | 0.9988933 | 0.9989297 | 0.9989650 | 0.9989992 |\n",
       "| 3.10 | 0.9990324 | 0.9990646 | 0.9990957 | 0.9991260 | 0.9991553 | 0.9991836 | 0.9992112 | 0.9992378 | 0.9992636 | 0.9992886 |\n",
       "| 3.20 | 0.9993129 | 0.9993363 | 0.9993590 | 0.9993810 | 0.9994024 | 0.9994230 | 0.9994429 | 0.9994623 | 0.9994810 | 0.9994991 |\n",
       "| 3.30 | 0.9995166 | 0.9995335 | 0.9995499 | 0.9995658 | 0.9995811 | 0.9995959 | 0.9996103 | 0.9996242 | 0.9996376 | 0.9996505 |\n",
       "| 3.40 | 0.9996631 | 0.9996752 | 0.9996869 | 0.9996982 | 0.9997091 | 0.9997197 | 0.9997299 | 0.9997398 | 0.9997493 | 0.9997585 |\n",
       "| 3.50 | 0.9997674 | 0.9997759 | 0.9997842 | 0.9997922 | 0.9997999 | 0.9998074 | 0.9998146 | 0.9998215 | 0.9998282 | 0.9998347 |\n",
       "| 3.60 | 0.9998409 | 0.9998469 | 0.9998527 | 0.9998583 | 0.9998637 | 0.9998689 | 0.9998739 | 0.9998787 | 0.9998834 | 0.9998879 |\n",
       "| 3.70 | 0.9998922 | 0.9998964 | 0.9999004 | 0.9999043 | 0.9999080 | 0.9999116 | 0.9999150 | 0.9999184 | 0.9999216 | 0.9999247 |\n",
       "| 3.80 | 0.9999277 | 0.9999305 | 0.9999333 | 0.9999359 | 0.9999385 | 0.9999409 | 0.9999433 | 0.9999456 | 0.9999478 | 0.9999499 |\n",
       "| 3.90 | 0.9999519 | 0.9999539 | 0.9999557 | 0.9999575 | 0.9999593 | 0.9999609 | 0.9999625 | 0.9999641 | 0.9999655 | 0.9999670 |\n",
       "\n"
      ],
      "text/plain": [
       "     0.00      0.01      0.02      0.03      0.04      0.05      0.06     \n",
       "0.00 0.5000000 0.5039894 0.5079783 0.5119665 0.5159534 0.5199388 0.5239222\n",
       "0.10 0.5398278 0.5437953 0.5477584 0.5517168 0.5556700 0.5596177 0.5635595\n",
       "0.20 0.5792597 0.5831662 0.5870644 0.5909541 0.5948349 0.5987063 0.6025681\n",
       "0.30 0.6179114 0.6217195 0.6255158 0.6293000 0.6330717 0.6368307 0.6405764\n",
       "0.40 0.6554217 0.6590970 0.6627573 0.6664022 0.6700314 0.6736448 0.6772419\n",
       "0.50 0.6914625 0.6949743 0.6984682 0.7019440 0.7054015 0.7088403 0.7122603\n",
       "0.60 0.7257469 0.7290691 0.7323711 0.7356527 0.7389137 0.7421539 0.7453731\n",
       "0.70 0.7580363 0.7611479 0.7642375 0.7673049 0.7703500 0.7733726 0.7763727\n",
       "0.80 0.7881446 0.7910299 0.7938919 0.7967306 0.7995458 0.8023375 0.8051055\n",
       "0.90 0.8159399 0.8185887 0.8212136 0.8238145 0.8263912 0.8289439 0.8314724\n",
       "1.00 0.8413447 0.8437524 0.8461358 0.8484950 0.8508300 0.8531409 0.8554277\n",
       "1.10 0.8643339 0.8665005 0.8686431 0.8707619 0.8728568 0.8749281 0.8769756\n",
       "1.20 0.8849303 0.8868606 0.8887676 0.8906514 0.8925123 0.8943502 0.8961653\n",
       "1.30 0.9031995 0.9049021 0.9065825 0.9082409 0.9098773 0.9114920 0.9130850\n",
       "1.40 0.9192433 0.9207302 0.9221962 0.9236415 0.9250663 0.9264707 0.9278550\n",
       "1.50 0.9331928 0.9344783 0.9357445 0.9369916 0.9382198 0.9394292 0.9406201\n",
       "1.60 0.9452007 0.9463011 0.9473839 0.9484493 0.9494974 0.9505285 0.9515428\n",
       "1.70 0.9554345 0.9563671 0.9572838 0.9581849 0.9590705 0.9599408 0.9607961\n",
       "1.80 0.9640697 0.9648521 0.9656205 0.9663750 0.9671159 0.9678432 0.9685572\n",
       "1.90 0.9712834 0.9719334 0.9725711 0.9731966 0.9738102 0.9744119 0.9750021\n",
       "2.00 0.9772499 0.9777844 0.9783083 0.9788217 0.9793248 0.9798178 0.9803007\n",
       "2.10 0.9821356 0.9825708 0.9829970 0.9834142 0.9838226 0.9842224 0.9846137\n",
       "2.20 0.9860966 0.9864474 0.9867906 0.9871263 0.9874545 0.9877755 0.9880894\n",
       "2.30 0.9892759 0.9895559 0.9898296 0.9900969 0.9903581 0.9906133 0.9908625\n",
       "2.40 0.9918025 0.9920237 0.9922397 0.9924506 0.9926564 0.9928572 0.9930531\n",
       "2.50 0.9937903 0.9939634 0.9941323 0.9942969 0.9944574 0.9946139 0.9947664\n",
       "2.60 0.9953388 0.9954729 0.9956035 0.9957308 0.9958547 0.9959754 0.9960930\n",
       "2.70 0.9965330 0.9966358 0.9967359 0.9968333 0.9969280 0.9970202 0.9971099\n",
       "2.80 0.9974449 0.9975229 0.9975988 0.9976726 0.9977443 0.9978140 0.9978818\n",
       "2.90 0.9981342 0.9981929 0.9982498 0.9983052 0.9983589 0.9984111 0.9984618\n",
       "3.00 0.9986501 0.9986938 0.9987361 0.9987772 0.9988171 0.9988558 0.9988933\n",
       "3.10 0.9990324 0.9990646 0.9990957 0.9991260 0.9991553 0.9991836 0.9992112\n",
       "3.20 0.9993129 0.9993363 0.9993590 0.9993810 0.9994024 0.9994230 0.9994429\n",
       "3.30 0.9995166 0.9995335 0.9995499 0.9995658 0.9995811 0.9995959 0.9996103\n",
       "3.40 0.9996631 0.9996752 0.9996869 0.9996982 0.9997091 0.9997197 0.9997299\n",
       "3.50 0.9997674 0.9997759 0.9997842 0.9997922 0.9997999 0.9998074 0.9998146\n",
       "3.60 0.9998409 0.9998469 0.9998527 0.9998583 0.9998637 0.9998689 0.9998739\n",
       "3.70 0.9998922 0.9998964 0.9999004 0.9999043 0.9999080 0.9999116 0.9999150\n",
       "3.80 0.9999277 0.9999305 0.9999333 0.9999359 0.9999385 0.9999409 0.9999433\n",
       "3.90 0.9999519 0.9999539 0.9999557 0.9999575 0.9999593 0.9999609 0.9999625\n",
       "     0.07      0.08      0.09     \n",
       "0.00 0.5279032 0.5318814 0.5358564\n",
       "0.10 0.5674949 0.5714237 0.5753454\n",
       "0.20 0.6064199 0.6102612 0.6140919\n",
       "0.30 0.6443088 0.6480273 0.6517317\n",
       "0.40 0.6808225 0.6843863 0.6879331\n",
       "0.50 0.7156612 0.7190427 0.7224047\n",
       "0.60 0.7485711 0.7517478 0.7549029\n",
       "0.70 0.7793501 0.7823046 0.7852361\n",
       "0.80 0.8078498 0.8105703 0.8132671\n",
       "0.90 0.8339768 0.8364569 0.8389129\n",
       "1.00 0.8576903 0.8599289 0.8621434\n",
       "1.10 0.8789995 0.8809999 0.8829768\n",
       "1.20 0.8979577 0.8997274 0.9014747\n",
       "1.30 0.9146565 0.9162067 0.9177356\n",
       "1.40 0.9292191 0.9305634 0.9318879\n",
       "1.50 0.9417924 0.9429466 0.9440826\n",
       "1.60 0.9525403 0.9535213 0.9544860\n",
       "1.70 0.9616364 0.9624620 0.9632730\n",
       "1.80 0.9692581 0.9699460 0.9706210\n",
       "1.90 0.9755808 0.9761482 0.9767045\n",
       "2.00 0.9807738 0.9812372 0.9816911\n",
       "2.10 0.9849966 0.9853713 0.9857379\n",
       "2.20 0.9883962 0.9886962 0.9889893\n",
       "2.30 0.9911060 0.9913437 0.9915758\n",
       "2.40 0.9932443 0.9934309 0.9936128\n",
       "2.50 0.9949151 0.9950600 0.9952012\n",
       "2.60 0.9962074 0.9963189 0.9964274\n",
       "2.70 0.9971972 0.9972821 0.9973646\n",
       "2.80 0.9979476 0.9980116 0.9980738\n",
       "2.90 0.9985110 0.9985588 0.9986051\n",
       "3.00 0.9989297 0.9989650 0.9989992\n",
       "3.10 0.9992378 0.9992636 0.9992886\n",
       "3.20 0.9994623 0.9994810 0.9994991\n",
       "3.30 0.9996242 0.9996376 0.9996505\n",
       "3.40 0.9997398 0.9997493 0.9997585\n",
       "3.50 0.9998215 0.9998282 0.9998347\n",
       "3.60 0.9998787 0.9998834 0.9998879\n",
       "3.70 0.9999184 0.9999216 0.9999247\n",
       "3.80 0.9999456 0.9999478 0.9999499\n",
       "3.90 0.9999641 0.9999655 0.9999670"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "Z <- seq(0, 3.99, by=0.01)\n",
    "probabilidade <- pnorm(Z)\n",
    "tabela_normal_padronizada <- matrix(probabilidade, ncol=10, byrow=TRUE)\n",
    "colnames(tabela_normal_padronizada) <- format(seq(0.00, 0.09, by=0.01))\n",
    "rownames(tabela_normal_padronizada) <- format(seq(0.00, 3.90, by=0.10), digits = 2, nsmall = 2)\n",
    "tabela_normal_padronizada"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "ddd9455f",
   "metadata": {
    "id": "XHYeMaN3G3D9",
    "papermill": {
     "duration": 0.070862,
     "end_time": "2024-05-06T12:52:22.670263",
     "exception": false,
     "start_time": "2024-05-06T12:52:22.599401",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "<img src='https://caelum-online-public.s3.amazonaws.com/1178-estatistica-parte2/01/img003.png' width='250px'>\n",
    "\n",
    "A tabela acima fornece a área sob a curva entre $-\\infty$ e $Z$ desvios padrão acima da média. Lembrando que por se tratar de valores padronizados temos $\\mu = 0$."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "de37a265",
   "metadata": {
    "id": "Bs-KyZAJG3D-",
    "papermill": {
     "duration": 0.069726,
     "end_time": "2024-05-06T12:52:22.809999",
     "exception": false,
     "start_time": "2024-05-06T12:52:22.740273",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## <font color='blue'>Exemplo: Qual sua altura?</font>"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "3beddf57",
   "metadata": {
    "id": "8PFIjXejG3EA",
    "papermill": {
     "duration": 0.068278,
     "end_time": "2024-05-06T12:52:22.947144",
     "exception": false,
     "start_time": "2024-05-06T12:52:22.878866",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Em um estudo sobre as alturas dos moradores de uma cidade verificou-se que o conjunto de dados segue uma **distribuição aproximadamente normal**, com **média 1,70** e **desvio padrão de 0,1**. Com estas informações obtenha o seguinte conjunto de probabilidades:\n",
    "\n",
    "> **A.** probabilidade de uma pessoa, selecionada ao acaso, ter menos de 1,80 metros.\n",
    ">\n",
    "> **B.** probabilidade de uma pessoa, selecionada ao acaso, ter entre 1,60 metros e 1,80 metros.    \n",
    ">\n",
    "> **C.** probabilidade de uma pessoa, selecionada ao acaso, ter mais de 1,90 metros."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "daae0276",
   "metadata": {
    "id": "aHpZLwt1G3EC",
    "papermill": {
     "duration": 0.071115,
     "end_time": "2024-05-06T12:52:23.085822",
     "exception": false,
     "start_time": "2024-05-06T12:52:23.014707",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Problema A - Identificação da área sob a curva"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "4797f3b8",
   "metadata": {
    "id": "V1eC7tydG3EF",
    "papermill": {
     "duration": 0.086589,
     "end_time": "2024-05-06T12:52:23.242149",
     "exception": false,
     "start_time": "2024-05-06T12:52:23.155560",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "<img style='float: left' src='https://caelum-online-public.s3.amazonaws.com/1178-estatistica-parte2/01/img004.png' width='350px'>"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "20858a06",
   "metadata": {
    "id": "X61wEuRrG3EI",
    "papermill": {
     "duration": 0.068076,
     "end_time": "2024-05-06T12:52:23.378401",
     "exception": false,
     "start_time": "2024-05-06T12:52:23.310325",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Obter a variável padronizada $Z$"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 27,
   "id": "756e7780",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:52:23.521208Z",
     "iopub.status.busy": "2024-05-06T12:52:23.519372Z",
     "iopub.status.idle": "2024-05-06T12:52:23.542523Z",
     "shell.execute_reply": "2024-05-06T12:52:23.539918Z"
    },
    "id": "gNSNIMvZG3EK",
    "outputId": "2d4048a7-4c0a-4f51-c964-2f063cbdf092",
    "papermill": {
     "duration": 0.097372,
     "end_time": "2024-05-06T12:52:23.545921",
     "exception": false,
     "start_time": "2024-05-06T12:52:23.448549",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "1.7"
      ],
      "text/latex": [
       "1.7"
      ],
      "text/markdown": [
       "1.7"
      ],
      "text/plain": [
       "[1] 1.7"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "media <- 1.7\n",
    "media"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 28,
   "id": "f31afdc3",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:52:23.687694Z",
     "iopub.status.busy": "2024-05-06T12:52:23.685891Z",
     "iopub.status.idle": "2024-05-06T12:52:23.709306Z",
     "shell.execute_reply": "2024-05-06T12:52:23.706297Z"
    },
    "id": "E_f2lycRG3ES",
    "outputId": "7bb0daf7-7f86-4bdd-f195-429e7b68d239",
    "papermill": {
     "duration": 0.097823,
     "end_time": "2024-05-06T12:52:23.712820",
     "exception": false,
     "start_time": "2024-05-06T12:52:23.614997",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "0.1"
      ],
      "text/latex": [
       "0.1"
      ],
      "text/markdown": [
       "0.1"
      ],
      "text/plain": [
       "[1] 0.1"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "desvio_padrao <- 0.1\n",
    "desvio_padrao"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 29,
   "id": "4ba2598e",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:52:23.874145Z",
     "iopub.status.busy": "2024-05-06T12:52:23.872152Z",
     "iopub.status.idle": "2024-05-06T12:52:23.895478Z",
     "shell.execute_reply": "2024-05-06T12:52:23.892925Z"
    },
    "id": "xnsCkUb6G3EX",
    "outputId": "b3f57dbb-4c23-4b9f-e89d-d8c35383a2d2",
    "papermill": {
     "duration": 0.117651,
     "end_time": "2024-05-06T12:52:23.898573",
     "exception": false,
     "start_time": "2024-05-06T12:52:23.780922",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "1"
      ],
      "text/latex": [
       "1"
      ],
      "text/markdown": [
       "1"
      ],
      "text/plain": [
       "[1] 1"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "Z <- (1.8 - media) / desvio_padrao\n",
    "Z"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "976449d7",
   "metadata": {
    "id": "oj9sgHbkG3Eb",
    "papermill": {
     "duration": 0.069325,
     "end_time": "2024-05-06T12:52:24.037769",
     "exception": false,
     "start_time": "2024-05-06T12:52:23.968444",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Solução 1 - Utilizando tabela"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 30,
   "id": "81841819",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:52:24.180909Z",
     "iopub.status.busy": "2024-05-06T12:52:24.179191Z",
     "iopub.status.idle": "2024-05-06T12:52:24.202050Z",
     "shell.execute_reply": "2024-05-06T12:52:24.199456Z"
    },
    "id": "ReDTH3WgG3Ec",
    "outputId": "ec542c14-9cd4-405d-a899-dfa92493aa84",
    "papermill": {
     "duration": 0.099237,
     "end_time": "2024-05-06T12:52:24.205379",
     "exception": false,
     "start_time": "2024-05-06T12:52:24.106142",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "0.8413447"
      ],
      "text/latex": [
       "0.8413447"
      ],
      "text/markdown": [
       "0.8413447"
      ],
      "text/plain": [
       "[1] 0.8413447"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "probabilidade <- 0.8413447\n",
    "probabilidade"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "8cc6679d",
   "metadata": {
    "id": "4ud0OnQOG3Eh",
    "papermill": {
     "duration": 0.068835,
     "end_time": "2024-05-06T12:52:24.343716",
     "exception": false,
     "start_time": "2024-05-06T12:52:24.274881",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Solução 2 - Utilizando função"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 31,
   "id": "679498ba",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:52:24.487352Z",
     "iopub.status.busy": "2024-05-06T12:52:24.485591Z",
     "iopub.status.idle": "2024-05-06T12:52:24.506425Z",
     "shell.execute_reply": "2024-05-06T12:52:24.503776Z"
    },
    "id": "sx7riZVlG3Ei",
    "outputId": "c321c9f8-a1a8-44f8-977b-492d2ec65152",
    "papermill": {
     "duration": 0.097242,
     "end_time": "2024-05-06T12:52:24.509972",
     "exception": false,
     "start_time": "2024-05-06T12:52:24.412730",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "0.841344746068543"
      ],
      "text/latex": [
       "0.841344746068543"
      ],
      "text/markdown": [
       "0.841344746068543"
      ],
      "text/plain": [
       "[1] 0.8413447"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "pnorm(Z)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "8e81f1a5",
   "metadata": {
    "id": "ZsnMjGzJG3Ep",
    "papermill": {
     "duration": 0.069624,
     "end_time": "2024-05-06T12:52:24.648966",
     "exception": false,
     "start_time": "2024-05-06T12:52:24.579342",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Problema B - Identificação da área sob a curva"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "2444e8f7",
   "metadata": {
    "id": "LN2HY-UCG3Ep",
    "papermill": {
     "duration": 0.069431,
     "end_time": "2024-05-06T12:52:24.787963",
     "exception": false,
     "start_time": "2024-05-06T12:52:24.718532",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "<img style='float: left' src='https://caelum-online-public.s3.amazonaws.com/1178-estatistica-parte2/01/img005.png' width='350px'>"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "37bb6977",
   "metadata": {
    "id": "FS6WNg88G3Eq",
    "papermill": {
     "duration": 0.069464,
     "end_time": "2024-05-06T12:52:24.926651",
     "exception": false,
     "start_time": "2024-05-06T12:52:24.857187",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Obter a variável padronizada $Z$"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 32,
   "id": "c09bafc3",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:52:25.069871Z",
     "iopub.status.busy": "2024-05-06T12:52:25.068116Z",
     "iopub.status.idle": "2024-05-06T12:52:25.091668Z",
     "shell.execute_reply": "2024-05-06T12:52:25.089105Z"
    },
    "id": "mxPsPIOYG3Er",
    "outputId": "d86de31f-1ca0-443c-8ed6-81edfe5d36f4",
    "papermill": {
     "duration": 0.098774,
     "end_time": "2024-05-06T12:52:25.094994",
     "exception": false,
     "start_time": "2024-05-06T12:52:24.996220",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "-1"
      ],
      "text/latex": [
       "-1"
      ],
      "text/markdown": [
       "-1"
      ],
      "text/plain": [
       "[1] -1"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "Z_inferior <- (1.6 - media) / desvio_padrao\n",
    "round(Z_inferior, 2)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 33,
   "id": "bb60ea9e",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:52:25.238497Z",
     "iopub.status.busy": "2024-05-06T12:52:25.236833Z",
     "iopub.status.idle": "2024-05-06T12:52:25.258927Z",
     "shell.execute_reply": "2024-05-06T12:52:25.256419Z"
    },
    "id": "s0Vf0GXHG3Et",
    "outputId": "5237e5e2-547b-4cbf-a5da-52bd4933f6a1",
    "papermill": {
     "duration": 0.096464,
     "end_time": "2024-05-06T12:52:25.262175",
     "exception": false,
     "start_time": "2024-05-06T12:52:25.165711",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "1"
      ],
      "text/latex": [
       "1"
      ],
      "text/markdown": [
       "1"
      ],
      "text/plain": [
       "[1] 1"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "Z_superior <- (1.8 - media) / desvio_padrao\n",
    "round(Z_superior, 2)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "e846354e",
   "metadata": {
    "id": "MseXjmZ7G3E0",
    "papermill": {
     "duration": 0.069713,
     "end_time": "2024-05-06T12:52:25.402359",
     "exception": false,
     "start_time": "2024-05-06T12:52:25.332646",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Solução 1 - Utilizando tabela"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 34,
   "id": "454e157a",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:52:25.548972Z",
     "iopub.status.busy": "2024-05-06T12:52:25.547040Z",
     "iopub.status.idle": "2024-05-06T12:52:25.571705Z",
     "shell.execute_reply": "2024-05-06T12:52:25.568952Z"
    },
    "id": "swZ6SVQGG3E0",
    "outputId": "53e30c74-5ec5-4737-f928-600388bfe570",
    "papermill": {
     "duration": 0.101151,
     "end_time": "2024-05-06T12:52:25.575389",
     "exception": false,
     "start_time": "2024-05-06T12:52:25.474238",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "0.6826894"
      ],
      "text/latex": [
       "0.6826894"
      ],
      "text/markdown": [
       "0.6826894"
      ],
      "text/plain": [
       "[1] 0.6826894"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "probabilidade <- (0.8413447 - 0.5) * 2\n",
    "probabilidade"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 35,
   "id": "b9e4a519",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:52:25.720249Z",
     "iopub.status.busy": "2024-05-06T12:52:25.718463Z",
     "iopub.status.idle": "2024-05-06T12:52:25.740898Z",
     "shell.execute_reply": "2024-05-06T12:52:25.738435Z"
    },
    "id": "oNfZZRBdGy2G",
    "outputId": "408ee333-2e8e-4058-fe74-a75b715eedf8",
    "papermill": {
     "duration": 0.097764,
     "end_time": "2024-05-06T12:52:25.744149",
     "exception": false,
     "start_time": "2024-05-06T12:52:25.646385",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "0.6826894"
      ],
      "text/latex": [
       "0.6826894"
      ],
      "text/markdown": [
       "0.6826894"
      ],
      "text/plain": [
       "[1] 0.6826894"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "probabilidade <- 0.8413447 - (1 - 0.8413447)\n",
    "probabilidade"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "c3327af0",
   "metadata": {
    "id": "y5e4zAifG3E2",
    "papermill": {
     "duration": 0.071779,
     "end_time": "2024-05-06T12:52:25.885438",
     "exception": false,
     "start_time": "2024-05-06T12:52:25.813659",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Solução 2 - Utilizando função"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 36,
   "id": "7fb09bff",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:52:26.030681Z",
     "iopub.status.busy": "2024-05-06T12:52:26.028995Z",
     "iopub.status.idle": "2024-05-06T12:52:26.051117Z",
     "shell.execute_reply": "2024-05-06T12:52:26.048583Z"
    },
    "id": "hcps6lkNG3E3",
    "outputId": "c8de38f1-8411-408c-862c-7aa6e099e43f",
    "papermill": {
     "duration": 0.098021,
     "end_time": "2024-05-06T12:52:26.053971",
     "exception": false,
     "start_time": "2024-05-06T12:52:25.955950",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "0.682689492137086"
      ],
      "text/latex": [
       "0.682689492137086"
      ],
      "text/markdown": [
       "0.682689492137086"
      ],
      "text/plain": [
       "[1] 0.6826895"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "probabilidade <- pnorm(Z_superior) - (1 - pnorm(Z_superior))\n",
    "probabilidade"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 37,
   "id": "bafc8886",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:52:26.202224Z",
     "iopub.status.busy": "2024-05-06T12:52:26.200535Z",
     "iopub.status.idle": "2024-05-06T12:52:26.221046Z",
     "shell.execute_reply": "2024-05-06T12:52:26.219146Z"
    },
    "id": "MjEfhnQEG3E5",
    "outputId": "4a6241c6-1b04-4c5f-b62d-9e98f412f3ad",
    "papermill": {
     "duration": 0.098817,
     "end_time": "2024-05-06T12:52:26.223713",
     "exception": false,
     "start_time": "2024-05-06T12:52:26.124896",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "0.682689492137086"
      ],
      "text/latex": [
       "0.682689492137086"
      ],
      "text/markdown": [
       "0.682689492137086"
      ],
      "text/plain": [
       "[1] 0.6826895"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "probabilidade <- pnorm(Z_superior) - pnorm(Z_inferior)\n",
    "probabilidade"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "0f859b13",
   "metadata": {
    "id": "05sqVgdaG3E-",
    "papermill": {
     "duration": 0.070448,
     "end_time": "2024-05-06T12:52:26.364539",
     "exception": false,
     "start_time": "2024-05-06T12:52:26.294091",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Problema C - Identificação da área sob a curva"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "b29a9095",
   "metadata": {
    "id": "EPKhGTEkG3E_",
    "papermill": {
     "duration": 0.072309,
     "end_time": "2024-05-06T12:52:26.507182",
     "exception": false,
     "start_time": "2024-05-06T12:52:26.434873",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "<img style='float: left' src='https://caelum-online-public.s3.amazonaws.com/1178-estatistica-parte2/01/img006.png' width='350px'>"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "6706594b",
   "metadata": {
    "id": "BA6jYbsSG3E_",
    "papermill": {
     "duration": 0.070904,
     "end_time": "2024-05-06T12:52:26.649073",
     "exception": false,
     "start_time": "2024-05-06T12:52:26.578169",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Obter a variável padronizada $Z$"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 38,
   "id": "ac9dd082",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:52:26.796174Z",
     "iopub.status.busy": "2024-05-06T12:52:26.794405Z",
     "iopub.status.idle": "2024-05-06T12:52:26.815164Z",
     "shell.execute_reply": "2024-05-06T12:52:26.813182Z"
    },
    "id": "3OVj60MzG3E_",
    "outputId": "71f57b74-bc13-4493-f8ba-6f05a2a07041",
    "papermill": {
     "duration": 0.096896,
     "end_time": "2024-05-06T12:52:26.817871",
     "exception": false,
     "start_time": "2024-05-06T12:52:26.720975",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "2"
      ],
      "text/latex": [
       "2"
      ],
      "text/markdown": [
       "2"
      ],
      "text/plain": [
       "[1] 2"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "Z <- (1.9 - media) / desvio_padrao\n",
    "Z"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "17a39356",
   "metadata": {
    "id": "hCiiWAm_G3FC",
    "papermill": {
     "duration": 0.070675,
     "end_time": "2024-05-06T12:52:26.959434",
     "exception": false,
     "start_time": "2024-05-06T12:52:26.888759",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Solução 1 - Utilizando tabela"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 39,
   "id": "d625eb8d",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:52:27.106396Z",
     "iopub.status.busy": "2024-05-06T12:52:27.104675Z",
     "iopub.status.idle": "2024-05-06T12:52:27.130355Z",
     "shell.execute_reply": "2024-05-06T12:52:27.128524Z"
    },
    "papermill": {
     "duration": 0.101781,
     "end_time": "2024-05-06T12:52:27.132886",
     "exception": false,
     "start_time": "2024-05-06T12:52:27.031105",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "0.0227501"
      ],
      "text/latex": [
       "0.0227501"
      ],
      "text/markdown": [
       "0.0227501"
      ],
      "text/plain": [
       "[1] 0.0227501"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "probabilidade <- 1 - 0.9772499\n",
    "probabilidade"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "acc2db6e",
   "metadata": {
    "id": "QCyoVXOdG3FF",
    "papermill": {
     "duration": 0.072334,
     "end_time": "2024-05-06T12:52:27.278210",
     "exception": false,
     "start_time": "2024-05-06T12:52:27.205876",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Solução 2 - Utilizando função"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 40,
   "id": "fd5d4f88",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:52:27.424119Z",
     "iopub.status.busy": "2024-05-06T12:52:27.422325Z",
     "iopub.status.idle": "2024-05-06T12:52:27.443269Z",
     "shell.execute_reply": "2024-05-06T12:52:27.441391Z"
    },
    "id": "caIE-t83G3FF",
    "outputId": "224b72ff-7edd-4b66-a24e-a1f89e4685c9",
    "papermill": {
     "duration": 0.09683,
     "end_time": "2024-05-06T12:52:27.445774",
     "exception": false,
     "start_time": "2024-05-06T12:52:27.348944",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "0.0227501319481792"
      ],
      "text/latex": [
       "0.0227501319481792"
      ],
      "text/markdown": [
       "0.0227501319481792"
      ],
      "text/plain": [
       "[1] 0.02275013"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "probabilidade <- 1 - pnorm(Z)\n",
    "probabilidade"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 41,
   "id": "1653e5c4",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:52:27.630380Z",
     "iopub.status.busy": "2024-05-06T12:52:27.628586Z",
     "iopub.status.idle": "2024-05-06T12:52:27.649196Z",
     "shell.execute_reply": "2024-05-06T12:52:27.647234Z"
    },
    "id": "wKjqQGgMG3FI",
    "outputId": "7ef30837-195e-4f5b-9bef-68fceaff2397",
    "papermill": {
     "duration": 0.134401,
     "end_time": "2024-05-06T12:52:27.651877",
     "exception": false,
     "start_time": "2024-05-06T12:52:27.517476",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "0.0227501319481792"
      ],
      "text/latex": [
       "0.0227501319481792"
      ],
      "text/markdown": [
       "0.0227501319481792"
      ],
      "text/plain": [
       "[1] 0.02275013"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "probabilidade <- pnorm(-Z)\n",
    "probabilidade"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "7646f0a6",
   "metadata": {
    "id": "GmmzChE2t4wW",
    "papermill": {
     "duration": 0.071294,
     "end_time": "2024-05-06T12:52:27.794241",
     "exception": false,
     "start_time": "2024-05-06T12:52:27.722947",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# <font color=green>3 AMOSTRAGEM</font>\n",
    "***"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "95b0083b",
   "metadata": {
    "id": "g8PbtmQZt4Wv",
    "papermill": {
     "duration": 0.072401,
     "end_time": "2024-05-06T12:52:27.938432",
     "exception": false,
     "start_time": "2024-05-06T12:52:27.866031",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## <font color=green>3.1 População e Amostra</font>\n",
    "***"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "fb51b023",
   "metadata": {
    "id": "sedD5gB9G3FV",
    "papermill": {
     "duration": 0.071585,
     "end_time": "2024-05-06T12:52:28.081256",
     "exception": false,
     "start_time": "2024-05-06T12:52:28.009671",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### População\n",
    "Conjunto de todos os elementos de interesse em um estudo. Diversos elementos podem compor uma população, por exemplo: pessoas, idades, alturas, carros etc.\n",
    "\n",
    "Com relação ao tamanho, as populações podem ser limitadas (populações finitas) ou ilimitadas (populações infinitas)."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "74aaff7c",
   "metadata": {
    "id": "XBFhAWNcG3FW",
    "papermill": {
     "duration": 0.072716,
     "end_time": "2024-05-06T12:52:28.224975",
     "exception": false,
     "start_time": "2024-05-06T12:52:28.152259",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Populações finitas\n",
    "\n",
    "Permitem a contagem de seus elementos. Como exemplos temos o número de funcionário de uma empresa, a quantidade de alunos em uma escola etc."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "a93b35ad",
   "metadata": {
    "id": "YT8V2GB1G3FW",
    "papermill": {
     "duration": 0.071612,
     "end_time": "2024-05-06T12:52:28.368757",
     "exception": false,
     "start_time": "2024-05-06T12:52:28.297145",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Populações infinitas\n",
    "\n",
    "Não é possível contar seus elementos. Como exemplos temos a quantidade de porções que se pode extrair da água do mar para uma análise, temperatura medida em cada ponto de um território etc.\n",
    "\n",
    "<font color=red>Quando os elementos de uma população puderem ser contados, porém apresentando uma quantidade muito grande, assume-se a população como infinita.</font>."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "44dc7f22",
   "metadata": {
    "id": "a-WtAXv1G3FX",
    "papermill": {
     "duration": 0.072386,
     "end_time": "2024-05-06T12:52:28.513005",
     "exception": false,
     "start_time": "2024-05-06T12:52:28.440619",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Amostra\n",
    "Subconjunto representativo da população."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "cbd685f0",
   "metadata": {
    "id": "QWnDYpPSG3FX",
    "papermill": {
     "duration": 0.07173,
     "end_time": "2024-05-06T12:52:28.656561",
     "exception": false,
     "start_time": "2024-05-06T12:52:28.584831",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Os atributos numéricos de uma população como sua média, variância e desvio padrão, são conhecidos como **parâmetros**. O principal foco da inferência estatística é justamente gerar estimativas e testar hipóteses sobre os parâmetros populacionais utilizando as informações de amostras."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "222f143b",
   "metadata": {
    "id": "dDz6vFbDG3FZ",
    "papermill": {
     "duration": 0.07129,
     "end_time": "2024-05-06T12:52:28.799209",
     "exception": false,
     "start_time": "2024-05-06T12:52:28.727919",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## <font color=green>3.2 Quando utilizar uma amostra?</font>\n",
    "***"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "a1602bcd",
   "metadata": {
    "id": "5X1YwCGlG3Fe",
    "papermill": {
     "duration": 0.071591,
     "end_time": "2024-05-06T12:52:28.942419",
     "exception": false,
     "start_time": "2024-05-06T12:52:28.870828",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Populações infinitas\n",
    "\n",
    "O estudo não chegaria nunca ao fim. Não é possível investigar todos os elementos da população."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "a1b77204",
   "metadata": {
    "id": "jHLtG8HSG3Ff",
    "papermill": {
     "duration": 0.071198,
     "end_time": "2024-05-06T12:52:29.084751",
     "exception": false,
     "start_time": "2024-05-06T12:52:29.013553",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Testes destrutivos\n",
    "\n",
    "Estudos onde os elementos avaliados são totalmente consumidos ou destruídos. Exemplo: testes de vida útil, testes de segurança contra colisões em automóveis."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "4bcf2a62",
   "metadata": {
    "id": "lxYxepmdG3Ff",
    "papermill": {
     "duration": 0.07321,
     "end_time": "2024-05-06T12:52:29.229058",
     "exception": false,
     "start_time": "2024-05-06T12:52:29.155848",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Resultados rápidos\n",
    "\n",
    "Pesquisas que precisam de mais agilidade na divulgação. Exemplo: pesquisas de opinião, pesquisas que envolvam problemas de saúde pública."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "c0899506",
   "metadata": {
    "id": "PeUCGL5nG3Fj",
    "papermill": {
     "duration": 0.072175,
     "end_time": "2024-05-06T12:52:29.374069",
     "exception": false,
     "start_time": "2024-05-06T12:52:29.301894",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Custos elevados\n",
    "\n",
    "Quando a população é finita mas muito numerosa, o custo de um censo pode tornar o processo inviável."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "ef25d92e",
   "metadata": {
    "id": "1sbJeMpSG3Fj",
    "papermill": {
     "duration": 0.072673,
     "end_time": "2024-05-06T12:52:29.519511",
     "exception": false,
     "start_time": "2024-05-06T12:52:29.446838",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## <font color=green>3.3 Amostragem Aleatória Simples</font>\n",
    "***"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "37aa7fc8",
   "metadata": {
    "id": "Kiq9cYMYG3Fp",
    "papermill": {
     "duration": 0.071872,
     "end_time": "2024-05-06T12:52:29.662906",
     "exception": false,
     "start_time": "2024-05-06T12:52:29.591034",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "É uma das principais maneiras de se extrair uma amostra de uma população. A exigência fundamental deste tipo de abordagem é que cada elemento da população tenha a mesma chance de ser selecionado para fazer parte da amostra."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "21e06bf4",
   "metadata": {
    "papermill": {
     "duration": 0.071316,
     "end_time": "2024-05-06T12:52:29.806301",
     "exception": false,
     "start_time": "2024-05-06T12:52:29.734985",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "#### <font color=red>Documentações:\n",
    "\n",
    "- [**sample**](https://www.rdocumentation.org/packages/dplyr/versions/0.7.8/topics/sample)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 42,
   "id": "0f2f0825",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:52:29.954297Z",
     "iopub.status.busy": "2024-05-06T12:52:29.952634Z",
     "iopub.status.idle": "2024-05-06T12:52:29.990161Z",
     "shell.execute_reply": "2024-05-06T12:52:29.987993Z"
    },
    "papermill": {
     "duration": 0.115256,
     "end_time": "2024-05-06T12:52:29.993332",
     "exception": false,
     "start_time": "2024-05-06T12:52:29.878076",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "\n",
      "Attaching package: ‘dplyr’\n",
      "\n",
      "\n",
      "The following objects are masked from ‘package:stats’:\n",
      "\n",
      "    filter, lag\n",
      "\n",
      "\n",
      "The following objects are masked from ‘package:base’:\n",
      "\n",
      "    intersect, setdiff, setequal, union\n",
      "\n",
      "\n"
     ]
    }
   ],
   "source": [
    "library(dplyr)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 43,
   "id": "c2c192e0",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:52:30.142998Z",
     "iopub.status.busy": "2024-05-06T12:52:30.141240Z",
     "iopub.status.idle": "2024-05-06T12:52:30.160317Z",
     "shell.execute_reply": "2024-05-06T12:52:30.158362Z"
    },
    "id": "NtQ8HOYdG3Fq",
    "outputId": "d746a965-c212-4b99-ac1f-a7741b13544f",
    "papermill": {
     "duration": 0.097501,
     "end_time": "2024-05-06T12:52:30.163902",
     "exception": false,
     "start_time": "2024-05-06T12:52:30.066401",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "76840"
      ],
      "text/latex": [
       "76840"
      ],
      "text/markdown": [
       "76840"
      ],
      "text/plain": [
       "[1] 76840"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "nrow(dados)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 44,
   "id": "d86f82f2",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:52:30.313225Z",
     "iopub.status.busy": "2024-05-06T12:52:30.311536Z",
     "iopub.status.idle": "2024-05-06T12:52:30.330668Z",
     "shell.execute_reply": "2024-05-06T12:52:30.328805Z"
    },
    "id": "DsXJHWhMG3Fs",
    "outputId": "b5e5d083-2d89-4f31-e8dd-5ae48375a81c",
    "papermill": {
     "duration": 0.096206,
     "end_time": "2024-05-06T12:52:30.333180",
     "exception": false,
     "start_time": "2024-05-06T12:52:30.236974",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "2000.38319885476"
      ],
      "text/latex": [
       "2000.38319885476"
      ],
      "text/markdown": [
       "2000.38319885476"
      ],
      "text/plain": [
       "[1] 2000.383"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "mean(dados$Renda)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 45,
   "id": "49ac2c5b",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:52:30.483552Z",
     "iopub.status.busy": "2024-05-06T12:52:30.481787Z",
     "iopub.status.idle": "2024-05-06T12:52:30.513403Z",
     "shell.execute_reply": "2024-05-06T12:52:30.511213Z"
    },
    "papermill": {
     "duration": 0.110279,
     "end_time": "2024-05-06T12:52:30.516366",
     "exception": false,
     "start_time": "2024-05-06T12:52:30.406087",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "set.seed(2811)\n",
    "amostra <- sample_n(dados, 1000)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 46,
   "id": "dcd572c4",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:52:30.670468Z",
     "iopub.status.busy": "2024-05-06T12:52:30.668785Z",
     "iopub.status.idle": "2024-05-06T12:52:30.686500Z",
     "shell.execute_reply": "2024-05-06T12:52:30.684690Z"
    },
    "papermill": {
     "duration": 0.095675,
     "end_time": "2024-05-06T12:52:30.689056",
     "exception": false,
     "start_time": "2024-05-06T12:52:30.593381",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "1000"
      ],
      "text/latex": [
       "1000"
      ],
      "text/markdown": [
       "1000"
      ],
      "text/plain": [
       "[1] 1000"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "nrow(amostra)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 47,
   "id": "50648ab7",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:52:30.841033Z",
     "iopub.status.busy": "2024-05-06T12:52:30.839316Z",
     "iopub.status.idle": "2024-05-06T12:52:30.858165Z",
     "shell.execute_reply": "2024-05-06T12:52:30.856249Z"
    },
    "papermill": {
     "duration": 0.099204,
     "end_time": "2024-05-06T12:52:30.861114",
     "exception": false,
     "start_time": "2024-05-06T12:52:30.761910",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "1884.602"
      ],
      "text/latex": [
       "1884.602"
      ],
      "text/markdown": [
       "1884.602"
      ],
      "text/plain": [
       "[1] 1884.602"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "mean(amostra$Renda)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 48,
   "id": "96023bf1",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:52:31.012907Z",
     "iopub.status.busy": "2024-05-06T12:52:31.011270Z",
     "iopub.status.idle": "2024-05-06T12:52:31.036888Z",
     "shell.execute_reply": "2024-05-06T12:52:31.034937Z"
    },
    "papermill": {
     "duration": 0.105091,
     "end_time": "2024-05-06T12:52:31.039703",
     "exception": false,
     "start_time": "2024-05-06T12:52:30.934612",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "\n",
       "        0         1 \n",
       "0.6929984 0.3070016 "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "prop.table(table(dados$Sexo))"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 49,
   "id": "f6aa4586",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:52:31.195165Z",
     "iopub.status.busy": "2024-05-06T12:52:31.193351Z",
     "iopub.status.idle": "2024-05-06T12:52:31.219783Z",
     "shell.execute_reply": "2024-05-06T12:52:31.217560Z"
    },
    "id": "WGZT_wnjSgPy",
    "outputId": "f905ff8a-84f8-45d5-d232-927630754b70",
    "papermill": {
     "duration": 0.108499,
     "end_time": "2024-05-06T12:52:31.222470",
     "exception": false,
     "start_time": "2024-05-06T12:52:31.113971",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "\n",
       "    0     1 \n",
       "0.679 0.321 "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "prop.table(table(amostra$Sexo))"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "fafb2a4d",
   "metadata": {
    "id": "stcKhnJBG3F7",
    "papermill": {
     "duration": 0.073875,
     "end_time": "2024-05-06T12:52:31.370312",
     "exception": false,
     "start_time": "2024-05-06T12:52:31.296437",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## <font color=green>3.4 Amostragem Estratificada</font>\n",
    "***"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "05b707e6",
   "metadata": {
    "id": "W1uEZMRIG3GA",
    "papermill": {
     "duration": 0.073621,
     "end_time": "2024-05-06T12:52:31.517598",
     "exception": false,
     "start_time": "2024-05-06T12:52:31.443977",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "É uma melhoria do processo de amostragem aleatória simples. Neste método é proposta a divisão da população em subgrupos de elementos com características similares, ou seja, grupos mais homogêneos. Com estes subgrupos separados, aplica-se a técnica de amostragem aleatória simples dentro de cada subgrupo individualmente."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "ad45fb08",
   "metadata": {
    "id": "xRjUHDAbG3GB",
    "papermill": {
     "duration": 0.07342,
     "end_time": "2024-05-06T12:52:31.665385",
     "exception": false,
     "start_time": "2024-05-06T12:52:31.591965",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## <font color=green>3.5 Amostragem por Conglomerados</font>\n",
    "***"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "01f0c113",
   "metadata": {
    "id": "sW9IuaL9G3GH",
    "papermill": {
     "duration": 0.073663,
     "end_time": "2024-05-06T12:52:31.812043",
     "exception": false,
     "start_time": "2024-05-06T12:52:31.738380",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Também visa melhorar o critério de amostragem aleatória simples. Na amostragem por conglomerados são também criados subgrupos, porém não serão homogêneas como na amostragem estratificada. Na amostragem por conglomerados os subgrupos serão heterogêneos, onde, em seguida, serão aplicadas a amostragem aleatória simples ou estratificada.\n",
    "\n",
    "Um exemplo bastante comum de aplicação deste tipo de técnica é na divisão da população em grupos territoriais, onde os elementos investigados terão características bastante variadas."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "71babb00",
   "metadata": {
    "id": "2LNJT4FEuzO4",
    "papermill": {
     "duration": 0.073024,
     "end_time": "2024-05-06T12:52:31.958704",
     "exception": false,
     "start_time": "2024-05-06T12:52:31.885680",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# <font color=green>4 ESTIMAÇÃO</font>\n",
    "***"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "e5018495",
   "metadata": {
    "id": "z69W2sVGmybS",
    "papermill": {
     "duration": 0.073373,
     "end_time": "2024-05-06T12:52:32.105207",
     "exception": false,
     "start_time": "2024-05-06T12:52:32.031834",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## <font color='red'>Problema </font>"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "6a98422d",
   "metadata": {
    "id": "ytP6VpismwDY",
    "papermill": {
     "duration": 0.07455,
     "end_time": "2024-05-06T12:52:32.254765",
     "exception": false,
     "start_time": "2024-05-06T12:52:32.180215",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Suponha que os pesos dos sacos de arroz de uma indústria alimentícia se distribuem aproximadamente como uma normal de **desvio padrão populacional igual a 150 g**. Selecionada uma **amostra aleatório de 20 sacos** de um lote específico, obteve-se um **peso médio de 5.050 g**. Construa um **intervalo de confiança para a média populacional** assumindo um **nível de significância de 5%**."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "c50f8b0c",
   "metadata": {
    "id": "PCqEvJMOwvUf",
    "papermill": {
     "duration": 0.073641,
     "end_time": "2024-05-06T12:52:32.403095",
     "exception": false,
     "start_time": "2024-05-06T12:52:32.329454",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "---"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "92d089b6",
   "metadata": {
    "id": "HU578SXBG3GN",
    "papermill": {
     "duration": 0.075596,
     "end_time": "2024-05-06T12:52:32.554171",
     "exception": false,
     "start_time": "2024-05-06T12:52:32.478575",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "É a forma de se fazer suposições generalizadas sobre os parâmetros de uma população tendo como base as informações de uma amostra.\n",
    "\n",
    "- **Parâmetros** são os atributos numéricos de uma população, tal como a média, desvio padrão etc.\n",
    "\n",
    "- **Estimativa** é o valor obtido para determinado parâmetro a partir dos dados de uma amostra da população."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "c7dfef65",
   "metadata": {
    "id": "klWVkoUDG3GR",
    "papermill": {
     "duration": 0.077824,
     "end_time": "2024-05-06T12:52:32.708163",
     "exception": false,
     "start_time": "2024-05-06T12:52:32.630339",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## <font color=green>4.1 Teorema do limite central</font>\n",
    "***"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "c325fd3b",
   "metadata": {
    "id": "QpgTvbISG3GU",
    "papermill": {
     "duration": 0.076593,
     "end_time": "2024-05-06T12:52:32.858141",
     "exception": false,
     "start_time": "2024-05-06T12:52:32.781548",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "> O **Teorema do Limite Central** afirma que, com o aumento do tamanho da amostra, a distribuição das médias amostrais se aproxima de uma distribuição normal com média igual à média da população e desvio padrão igual ao desvio padrão da variável original dividido pela raiz quadrada do tamanho da amostra. Este fato é assegurado para $n$ maior ou igual a 30."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "e00b1dfb",
   "metadata": {
    "id": "ZIAr6is3wEMp",
    "papermill": {
     "duration": 0.074989,
     "end_time": "2024-05-06T12:52:33.046409",
     "exception": false,
     "start_time": "2024-05-06T12:52:32.971420",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# $$\\sigma_\\bar{x} = \\frac{\\sigma}{\\sqrt{n}}$$\n",
    "\n",
    "O desvio padrão das médias amostrais é conhecido como **erro padrão da média**\n",
    "\n",
    "#### <font color=red>Documentações:\n",
    "\n",
    "- [**colMeans**](https://www.rdocumentation.org/packages/base/versions/3.6.1/topics/colSums)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "c3e3550a",
   "metadata": {
    "id": "eFtSo6H0iz7z",
    "papermill": {
     "duration": 0.093523,
     "end_time": "2024-05-06T12:52:33.219983",
     "exception": false,
     "start_time": "2024-05-06T12:52:33.126460",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Entendendo o Teorema do Limite Central"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 50,
   "id": "68836ddf",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:52:33.378083Z",
     "iopub.status.busy": "2024-05-06T12:52:33.376266Z",
     "iopub.status.idle": "2024-05-06T12:52:33.394314Z",
     "shell.execute_reply": "2024-05-06T12:52:33.392364Z"
    },
    "id": "S3q73XpnizTi",
    "papermill": {
     "duration": 0.096513,
     "end_time": "2024-05-06T12:52:33.397257",
     "exception": false,
     "start_time": "2024-05-06T12:52:33.300744",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "n <- 2000\n",
    "total_de_amostras <- 1500"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 51,
   "id": "198ed55b",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:52:33.550235Z",
     "iopub.status.busy": "2024-05-06T12:52:33.548317Z",
     "iopub.status.idle": "2024-05-06T12:52:35.183834Z",
     "shell.execute_reply": "2024-05-06T12:52:35.180363Z"
    },
    "id": "tXa7XKhKTyMu",
    "outputId": "2fe05b86-ecc8-48af-be13-17e8c7c235ce",
    "papermill": {
     "duration": 1.71573,
     "end_time": "2024-05-06T12:52:35.187466",
     "exception": false,
     "start_time": "2024-05-06T12:52:33.471736",
     "status": "completed"
    },
    "scrolled": true,
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 2000 × 1500</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>Amostra_1</th><th scope=col>Amostra_ 2</th><th scope=col>Amostra_ 3</th><th scope=col>Amostra_ 4</th><th scope=col>Amostra_ 5</th><th scope=col>Amostra_ 6</th><th scope=col>Amostra_ 7</th><th scope=col>Amostra_ 8</th><th scope=col>Amostra_ 9</th><th scope=col>Amostra_ 10</th><th scope=col>⋯</th><th scope=col>Amostra_ 1491</th><th scope=col>Amostra_ 1492</th><th scope=col>Amostra_ 1493</th><th scope=col>Amostra_ 1494</th><th scope=col>Amostra_ 1495</th><th scope=col>Amostra_ 1496</th><th scope=col>Amostra_ 1497</th><th scope=col>Amostra_ 1498</th><th scope=col>Amostra_ 1499</th><th scope=col>Amostra_ 1500</th></tr>\n",
       "\t<tr><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>⋯</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>41</td><td>57</td><td>31</td><td>37</td><td>49</td><td>22</td><td>64</td><td>56</td><td>68</td><td>29</td><td>⋯</td><td>32</td><td>51</td><td>58</td><td>62</td><td>29</td><td>65</td><td>20</td><td>65</td><td>56</td><td>45</td></tr>\n",
       "\t<tr><td>51</td><td>45</td><td>49</td><td>21</td><td>38</td><td>56</td><td>55</td><td>26</td><td>50</td><td>66</td><td>⋯</td><td>39</td><td>42</td><td>50</td><td>34</td><td>61</td><td>28</td><td>54</td><td>64</td><td>43</td><td>39</td></tr>\n",
       "\t<tr><td>23</td><td>39</td><td>49</td><td>37</td><td>40</td><td>45</td><td>44</td><td>30</td><td>31</td><td>28</td><td>⋯</td><td>43</td><td>28</td><td>25</td><td>36</td><td>56</td><td>47</td><td>30</td><td>49</td><td>68</td><td>46</td></tr>\n",
       "\t<tr><td>28</td><td>42</td><td>23</td><td>30</td><td>36</td><td>39</td><td>45</td><td>39</td><td>37</td><td>28</td><td>⋯</td><td>43</td><td>47</td><td>44</td><td>60</td><td>37</td><td>26</td><td>32</td><td>61</td><td>38</td><td>65</td></tr>\n",
       "\t<tr><td>25</td><td>42</td><td>57</td><td>38</td><td>57</td><td>46</td><td>37</td><td>35</td><td>45</td><td>65</td><td>⋯</td><td>44</td><td>65</td><td>45</td><td>46</td><td>18</td><td>54</td><td>58</td><td>41</td><td>37</td><td>45</td></tr>\n",
       "\t<tr><td>44</td><td>39</td><td>59</td><td>49</td><td>32</td><td>54</td><td>59</td><td>29</td><td>31</td><td>22</td><td>⋯</td><td>40</td><td>54</td><td>38</td><td>29</td><td>38</td><td>62</td><td>65</td><td>55</td><td>36</td><td>49</td></tr>\n",
       "\t<tr><td>28</td><td>70</td><td>40</td><td>27</td><td>64</td><td>49</td><td>53</td><td>38</td><td>40</td><td>46</td><td>⋯</td><td>53</td><td>47</td><td>37</td><td>51</td><td>41</td><td>59</td><td>40</td><td>50</td><td>33</td><td>58</td></tr>\n",
       "\t<tr><td>28</td><td>59</td><td>37</td><td>32</td><td>40</td><td>42</td><td>43</td><td>45</td><td>50</td><td>39</td><td>⋯</td><td>53</td><td>33</td><td>54</td><td>35</td><td>33</td><td>69</td><td>42</td><td>38</td><td>65</td><td>40</td></tr>\n",
       "\t<tr><td>36</td><td>62</td><td>27</td><td>47</td><td>53</td><td>58</td><td>54</td><td>49</td><td>36</td><td>41</td><td>⋯</td><td>32</td><td>23</td><td>55</td><td>23</td><td>29</td><td>42</td><td>40</td><td>35</td><td>54</td><td>32</td></tr>\n",
       "\t<tr><td>55</td><td>36</td><td>43</td><td>37</td><td>49</td><td>23</td><td>36</td><td>33</td><td>47</td><td>48</td><td>⋯</td><td>56</td><td>35</td><td>48</td><td>67</td><td>44</td><td>51</td><td>30</td><td>49</td><td>68</td><td>49</td></tr>\n",
       "\t<tr><td>47</td><td>30</td><td>57</td><td>53</td><td>22</td><td>45</td><td>48</td><td>62</td><td>50</td><td>57</td><td>⋯</td><td>52</td><td>55</td><td>55</td><td>32</td><td>23</td><td>47</td><td>26</td><td>44</td><td>31</td><td>50</td></tr>\n",
       "\t<tr><td>50</td><td>65</td><td>41</td><td>56</td><td>50</td><td>34</td><td>37</td><td>36</td><td>24</td><td>27</td><td>⋯</td><td>31</td><td>42</td><td>28</td><td>24</td><td>33</td><td>36</td><td>32</td><td>54</td><td>55</td><td>53</td></tr>\n",
       "\t<tr><td>36</td><td>48</td><td>59</td><td>41</td><td>57</td><td>29</td><td>58</td><td>31</td><td>33</td><td>29</td><td>⋯</td><td>57</td><td>51</td><td>33</td><td>47</td><td>50</td><td>33</td><td>48</td><td>37</td><td>35</td><td>37</td></tr>\n",
       "\t<tr><td>62</td><td>24</td><td>55</td><td>55</td><td>47</td><td>40</td><td>64</td><td>32</td><td>81</td><td>28</td><td>⋯</td><td>65</td><td>38</td><td>37</td><td>51</td><td>56</td><td>47</td><td>67</td><td>30</td><td>49</td><td>41</td></tr>\n",
       "\t<tr><td>40</td><td>57</td><td>48</td><td>29</td><td>61</td><td>56</td><td>43</td><td>42</td><td>37</td><td>54</td><td>⋯</td><td>32</td><td>32</td><td>41</td><td>45</td><td>50</td><td>40</td><td>84</td><td>53</td><td>46</td><td>28</td></tr>\n",
       "\t<tr><td>28</td><td>21</td><td>47</td><td>41</td><td>44</td><td>56</td><td>41</td><td>71</td><td>78</td><td>75</td><td>⋯</td><td>25</td><td>27</td><td>73</td><td>51</td><td>60</td><td>62</td><td>50</td><td>46</td><td>58</td><td>37</td></tr>\n",
       "\t<tr><td>30</td><td>33</td><td>58</td><td>46</td><td>65</td><td>55</td><td>40</td><td>48</td><td>53</td><td>34</td><td>⋯</td><td>47</td><td>72</td><td>37</td><td>62</td><td>39</td><td>48</td><td>30</td><td>29</td><td>74</td><td>43</td></tr>\n",
       "\t<tr><td>31</td><td>51</td><td>73</td><td>52</td><td>51</td><td>46</td><td>39</td><td>59</td><td>22</td><td>46</td><td>⋯</td><td>64</td><td>34</td><td>43</td><td>20</td><td>53</td><td>33</td><td>42</td><td>53</td><td>40</td><td>54</td></tr>\n",
       "\t<tr><td>32</td><td>27</td><td>53</td><td>23</td><td>62</td><td>40</td><td>60</td><td>58</td><td>48</td><td>37</td><td>⋯</td><td>52</td><td>39</td><td>55</td><td>63</td><td>33</td><td>62</td><td>40</td><td>32</td><td>30</td><td>32</td></tr>\n",
       "\t<tr><td>60</td><td>70</td><td>53</td><td>37</td><td>32</td><td>50</td><td>28</td><td>50</td><td>44</td><td>69</td><td>⋯</td><td>41</td><td>45</td><td>56</td><td>26</td><td>43</td><td>55</td><td>73</td><td>67</td><td>50</td><td>56</td></tr>\n",
       "\t<tr><td>41</td><td>42</td><td>31</td><td>51</td><td>55</td><td>54</td><td>38</td><td>31</td><td>43</td><td>58</td><td>⋯</td><td>34</td><td>34</td><td>62</td><td>31</td><td>56</td><td>55</td><td>48</td><td>37</td><td>63</td><td>48</td></tr>\n",
       "\t<tr><td>35</td><td>59</td><td>29</td><td>49</td><td>46</td><td>37</td><td>24</td><td>29</td><td>43</td><td>36</td><td>⋯</td><td>44</td><td>55</td><td>38</td><td>56</td><td>45</td><td>21</td><td>68</td><td>36</td><td>61</td><td>42</td></tr>\n",
       "\t<tr><td>43</td><td>44</td><td>58</td><td>32</td><td>32</td><td>35</td><td>31</td><td>63</td><td>29</td><td>50</td><td>⋯</td><td>42</td><td>53</td><td>32</td><td>56</td><td>38</td><td>47</td><td>31</td><td>36</td><td>46</td><td>67</td></tr>\n",
       "\t<tr><td>51</td><td>40</td><td>67</td><td>30</td><td>21</td><td>45</td><td>30</td><td>65</td><td>46</td><td>56</td><td>⋯</td><td>46</td><td>59</td><td>59</td><td>41</td><td>67</td><td>51</td><td>46</td><td>38</td><td>47</td><td>38</td></tr>\n",
       "\t<tr><td>74</td><td>48</td><td>59</td><td>30</td><td>43</td><td>29</td><td>37</td><td>41</td><td>25</td><td>49</td><td>⋯</td><td>38</td><td>36</td><td>80</td><td>42</td><td>43</td><td>29</td><td>64</td><td>42</td><td>53</td><td>44</td></tr>\n",
       "\t<tr><td>60</td><td>54</td><td>34</td><td>53</td><td>28</td><td>38</td><td>51</td><td>24</td><td>45</td><td>26</td><td>⋯</td><td>33</td><td>37</td><td>28</td><td>22</td><td>40</td><td>31</td><td>50</td><td>35</td><td>25</td><td>33</td></tr>\n",
       "\t<tr><td>27</td><td>47</td><td>41</td><td>43</td><td>47</td><td>47</td><td>33</td><td>43</td><td>61</td><td>57</td><td>⋯</td><td>48</td><td>39</td><td>54</td><td>27</td><td>43</td><td>28</td><td>38</td><td>24</td><td>48</td><td>39</td></tr>\n",
       "\t<tr><td>69</td><td>52</td><td>26</td><td>35</td><td>45</td><td>63</td><td>65</td><td>28</td><td>35</td><td>39</td><td>⋯</td><td>49</td><td>55</td><td>45</td><td>52</td><td>55</td><td>30</td><td>31</td><td>43</td><td>41</td><td>37</td></tr>\n",
       "\t<tr><td>36</td><td>45</td><td>45</td><td>32</td><td>91</td><td>71</td><td>39</td><td>40</td><td>51</td><td>40</td><td>⋯</td><td>50</td><td>57</td><td>41</td><td>49</td><td>44</td><td>51</td><td>54</td><td>54</td><td>57</td><td>27</td></tr>\n",
       "\t<tr><td>53</td><td>22</td><td>62</td><td>58</td><td>26</td><td>32</td><td>54</td><td>41</td><td>51</td><td>63</td><td>⋯</td><td>25</td><td>34</td><td>56</td><td>53</td><td>51</td><td>54</td><td>39</td><td>30</td><td>67</td><td>36</td></tr>\n",
       "\t<tr><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋱</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td></tr>\n",
       "\t<tr><td>35</td><td>67</td><td>38</td><td>45</td><td>47</td><td>27</td><td>42</td><td>65</td><td>44</td><td>50</td><td>⋯</td><td>37</td><td>35</td><td>18</td><td>58</td><td>31</td><td>61</td><td>37</td><td>68</td><td>35</td><td>52</td></tr>\n",
       "\t<tr><td>22</td><td>62</td><td>42</td><td>69</td><td>57</td><td>50</td><td>55</td><td>57</td><td>62</td><td>46</td><td>⋯</td><td>36</td><td>46</td><td>26</td><td>22</td><td>62</td><td>34</td><td>68</td><td>53</td><td>38</td><td>33</td></tr>\n",
       "\t<tr><td>24</td><td>52</td><td>46</td><td>42</td><td>32</td><td>39</td><td>40</td><td>45</td><td>52</td><td>49</td><td>⋯</td><td>72</td><td>53</td><td>41</td><td>34</td><td>48</td><td>35</td><td>47</td><td>77</td><td>24</td><td>49</td></tr>\n",
       "\t<tr><td>36</td><td>54</td><td>48</td><td>60</td><td>44</td><td>41</td><td>60</td><td>40</td><td>40</td><td>25</td><td>⋯</td><td>42</td><td>42</td><td>57</td><td>29</td><td>51</td><td>49</td><td>28</td><td>43</td><td>49</td><td>62</td></tr>\n",
       "\t<tr><td>58</td><td>44</td><td>39</td><td>64</td><td>25</td><td>44</td><td>28</td><td>36</td><td>35</td><td>41</td><td>⋯</td><td>75</td><td>63</td><td>52</td><td>41</td><td>50</td><td>30</td><td>41</td><td>48</td><td>40</td><td>56</td></tr>\n",
       "\t<tr><td>19</td><td>67</td><td>56</td><td>25</td><td>45</td><td>28</td><td>43</td><td>45</td><td>51</td><td>17</td><td>⋯</td><td>46</td><td>36</td><td>35</td><td>49</td><td>55</td><td>53</td><td>39</td><td>58</td><td>54</td><td>52</td></tr>\n",
       "\t<tr><td>52</td><td>40</td><td>50</td><td>51</td><td>18</td><td>54</td><td>64</td><td>44</td><td>59</td><td>29</td><td>⋯</td><td>39</td><td>56</td><td>56</td><td>26</td><td>44</td><td>62</td><td>39</td><td>42</td><td>49</td><td>32</td></tr>\n",
       "\t<tr><td>58</td><td>57</td><td>67</td><td>39</td><td>30</td><td>53</td><td>43</td><td>45</td><td>32</td><td>40</td><td>⋯</td><td>31</td><td>37</td><td>55</td><td>41</td><td>31</td><td>27</td><td>37</td><td>29</td><td>49</td><td>40</td></tr>\n",
       "\t<tr><td>34</td><td>29</td><td>41</td><td>29</td><td>38</td><td>70</td><td>67</td><td>55</td><td>31</td><td>43</td><td>⋯</td><td>20</td><td>44</td><td>30</td><td>51</td><td>39</td><td>54</td><td>44</td><td>42</td><td>77</td><td>52</td></tr>\n",
       "\t<tr><td>40</td><td>37</td><td>53</td><td>48</td><td>55</td><td>33</td><td>24</td><td>37</td><td>54</td><td>26</td><td>⋯</td><td>59</td><td>50</td><td>48</td><td>44</td><td>49</td><td>22</td><td>38</td><td>34</td><td>35</td><td>63</td></tr>\n",
       "\t<tr><td>53</td><td>43</td><td>62</td><td>68</td><td>34</td><td>52</td><td>28</td><td>31</td><td>38</td><td>30</td><td>⋯</td><td>42</td><td>40</td><td>38</td><td>45</td><td>46</td><td>42</td><td>36</td><td>46</td><td>66</td><td>51</td></tr>\n",
       "\t<tr><td>60</td><td>61</td><td>52</td><td>56</td><td>38</td><td>46</td><td>38</td><td>27</td><td>40</td><td>67</td><td>⋯</td><td>34</td><td>52</td><td>62</td><td>25</td><td>52</td><td>30</td><td>67</td><td>51</td><td>61</td><td>48</td></tr>\n",
       "\t<tr><td>40</td><td>58</td><td>41</td><td>29</td><td>30</td><td>49</td><td>23</td><td>57</td><td>41</td><td>41</td><td>⋯</td><td>50</td><td>50</td><td>59</td><td>41</td><td>63</td><td>46</td><td>70</td><td>52</td><td>57</td><td>48</td></tr>\n",
       "\t<tr><td>38</td><td>26</td><td>34</td><td>51</td><td>42</td><td>33</td><td>72</td><td>26</td><td>38</td><td>32</td><td>⋯</td><td>53</td><td>25</td><td>45</td><td>31</td><td>40</td><td>29</td><td>49</td><td>60</td><td>26</td><td>44</td></tr>\n",
       "\t<tr><td>56</td><td>54</td><td>32</td><td>30</td><td>57</td><td>48</td><td>45</td><td>49</td><td>65</td><td>55</td><td>⋯</td><td>28</td><td>22</td><td>60</td><td>28</td><td>58</td><td>20</td><td>52</td><td>54</td><td>64</td><td>48</td></tr>\n",
       "\t<tr><td>24</td><td>52</td><td>58</td><td>50</td><td>55</td><td>39</td><td>45</td><td>50</td><td>59</td><td>30</td><td>⋯</td><td>56</td><td>44</td><td>25</td><td>49</td><td>55</td><td>28</td><td>57</td><td>56</td><td>46</td><td>44</td></tr>\n",
       "\t<tr><td>29</td><td>27</td><td>57</td><td>55</td><td>49</td><td>68</td><td>32</td><td>25</td><td>27</td><td>47</td><td>⋯</td><td>51</td><td>23</td><td>54</td><td>49</td><td>37</td><td>32</td><td>30</td><td>58</td><td>45</td><td>38</td></tr>\n",
       "\t<tr><td>41</td><td>32</td><td>44</td><td>36</td><td>27</td><td>58</td><td>47</td><td>30</td><td>25</td><td>48</td><td>⋯</td><td>43</td><td>24</td><td>29</td><td>30</td><td>56</td><td>57</td><td>36</td><td>35</td><td>36</td><td>36</td></tr>\n",
       "\t<tr><td>41</td><td>52</td><td>41</td><td>33</td><td>44</td><td>46</td><td>80</td><td>33</td><td>36</td><td>43</td><td>⋯</td><td>64</td><td>27</td><td>48</td><td>59</td><td>53</td><td>38</td><td>48</td><td>63</td><td>55</td><td>47</td></tr>\n",
       "\t<tr><td>43</td><td>28</td><td>41</td><td>45</td><td>57</td><td>71</td><td>60</td><td>66</td><td>67</td><td>39</td><td>⋯</td><td>64</td><td>41</td><td>43</td><td>51</td><td>48</td><td>26</td><td>36</td><td>47</td><td>61</td><td>37</td></tr>\n",
       "\t<tr><td>47</td><td>33</td><td>55</td><td>52</td><td>28</td><td>44</td><td>28</td><td>35</td><td>43</td><td>34</td><td>⋯</td><td>27</td><td>51</td><td>34</td><td>43</td><td>58</td><td>53</td><td>45</td><td>50</td><td>44</td><td>45</td></tr>\n",
       "\t<tr><td>60</td><td>49</td><td>32</td><td>40</td><td>51</td><td>36</td><td>49</td><td>48</td><td>52</td><td>40</td><td>⋯</td><td>58</td><td>30</td><td>51</td><td>58</td><td>41</td><td>52</td><td>80</td><td>65</td><td>54</td><td>23</td></tr>\n",
       "\t<tr><td>36</td><td>69</td><td>51</td><td>37</td><td>37</td><td>30</td><td>48</td><td>54</td><td>45</td><td>42</td><td>⋯</td><td>23</td><td>25</td><td>56</td><td>37</td><td>31</td><td>22</td><td>44</td><td>59</td><td>27</td><td>40</td></tr>\n",
       "\t<tr><td>58</td><td>43</td><td>42</td><td>32</td><td>42</td><td>27</td><td>35</td><td>62</td><td>52</td><td>37</td><td>⋯</td><td>47</td><td>27</td><td>35</td><td>38</td><td>28</td><td>30</td><td>37</td><td>54</td><td>20</td><td>43</td></tr>\n",
       "\t<tr><td>38</td><td>44</td><td>49</td><td>33</td><td>37</td><td>24</td><td>33</td><td>48</td><td>36</td><td>23</td><td>⋯</td><td>45</td><td>48</td><td>45</td><td>30</td><td>51</td><td>29</td><td>36</td><td>39</td><td>37</td><td>53</td></tr>\n",
       "\t<tr><td>41</td><td>56</td><td>45</td><td>57</td><td>42</td><td>46</td><td>29</td><td>35</td><td>28</td><td>30</td><td>⋯</td><td>50</td><td>52</td><td>46</td><td>36</td><td>24</td><td>49</td><td>50</td><td>42</td><td>58</td><td>42</td></tr>\n",
       "\t<tr><td>33</td><td>53</td><td>36</td><td>28</td><td>35</td><td>38</td><td>46</td><td>38</td><td>48</td><td>31</td><td>⋯</td><td>35</td><td>62</td><td>34</td><td>48</td><td>48</td><td>27</td><td>28</td><td>47</td><td>32</td><td>35</td></tr>\n",
       "\t<tr><td>42</td><td>30</td><td>52</td><td>57</td><td>51</td><td>41</td><td>57</td><td>56</td><td>60</td><td>58</td><td>⋯</td><td>74</td><td>46</td><td>73</td><td>48</td><td>67</td><td>26</td><td>47</td><td>60</td><td>36</td><td>39</td></tr>\n",
       "\t<tr><td>47</td><td>39</td><td>54</td><td>50</td><td>45</td><td>64</td><td>50</td><td>54</td><td>30</td><td>49</td><td>⋯</td><td>45</td><td>59</td><td>44</td><td>37</td><td>43</td><td>49</td><td>32</td><td>42</td><td>32</td><td>61</td></tr>\n",
       "\t<tr><td>41</td><td>33</td><td>55</td><td>35</td><td>64</td><td>57</td><td>57</td><td>38</td><td>58</td><td>36</td><td>⋯</td><td>27</td><td>27</td><td>19</td><td>37</td><td>44</td><td>47</td><td>48</td><td>41</td><td>56</td><td>33</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 2000 × 1500\n",
       "\\begin{tabular}{lllllllllllllllllllll}\n",
       " Amostra\\_1 & Amostra\\_ 2 & Amostra\\_ 3 & Amostra\\_ 4 & Amostra\\_ 5 & Amostra\\_ 6 & Amostra\\_ 7 & Amostra\\_ 8 & Amostra\\_ 9 & Amostra\\_ 10 & ⋯ & Amostra\\_ 1491 & Amostra\\_ 1492 & Amostra\\_ 1493 & Amostra\\_ 1494 & Amostra\\_ 1495 & Amostra\\_ 1496 & Amostra\\_ 1497 & Amostra\\_ 1498 & Amostra\\_ 1499 & Amostra\\_ 1500\\\\\n",
       " <int> & <int> & <int> & <int> & <int> & <int> & <int> & <int> & <int> & <int> & ⋯ & <int> & <int> & <int> & <int> & <int> & <int> & <int> & <int> & <int> & <int>\\\\\n",
       "\\hline\n",
       "\t 41 & 57 & 31 & 37 & 49 & 22 & 64 & 56 & 68 & 29 & ⋯ & 32 & 51 & 58 & 62 & 29 & 65 & 20 & 65 & 56 & 45\\\\\n",
       "\t 51 & 45 & 49 & 21 & 38 & 56 & 55 & 26 & 50 & 66 & ⋯ & 39 & 42 & 50 & 34 & 61 & 28 & 54 & 64 & 43 & 39\\\\\n",
       "\t 23 & 39 & 49 & 37 & 40 & 45 & 44 & 30 & 31 & 28 & ⋯ & 43 & 28 & 25 & 36 & 56 & 47 & 30 & 49 & 68 & 46\\\\\n",
       "\t 28 & 42 & 23 & 30 & 36 & 39 & 45 & 39 & 37 & 28 & ⋯ & 43 & 47 & 44 & 60 & 37 & 26 & 32 & 61 & 38 & 65\\\\\n",
       "\t 25 & 42 & 57 & 38 & 57 & 46 & 37 & 35 & 45 & 65 & ⋯ & 44 & 65 & 45 & 46 & 18 & 54 & 58 & 41 & 37 & 45\\\\\n",
       "\t 44 & 39 & 59 & 49 & 32 & 54 & 59 & 29 & 31 & 22 & ⋯ & 40 & 54 & 38 & 29 & 38 & 62 & 65 & 55 & 36 & 49\\\\\n",
       "\t 28 & 70 & 40 & 27 & 64 & 49 & 53 & 38 & 40 & 46 & ⋯ & 53 & 47 & 37 & 51 & 41 & 59 & 40 & 50 & 33 & 58\\\\\n",
       "\t 28 & 59 & 37 & 32 & 40 & 42 & 43 & 45 & 50 & 39 & ⋯ & 53 & 33 & 54 & 35 & 33 & 69 & 42 & 38 & 65 & 40\\\\\n",
       "\t 36 & 62 & 27 & 47 & 53 & 58 & 54 & 49 & 36 & 41 & ⋯ & 32 & 23 & 55 & 23 & 29 & 42 & 40 & 35 & 54 & 32\\\\\n",
       "\t 55 & 36 & 43 & 37 & 49 & 23 & 36 & 33 & 47 & 48 & ⋯ & 56 & 35 & 48 & 67 & 44 & 51 & 30 & 49 & 68 & 49\\\\\n",
       "\t 47 & 30 & 57 & 53 & 22 & 45 & 48 & 62 & 50 & 57 & ⋯ & 52 & 55 & 55 & 32 & 23 & 47 & 26 & 44 & 31 & 50\\\\\n",
       "\t 50 & 65 & 41 & 56 & 50 & 34 & 37 & 36 & 24 & 27 & ⋯ & 31 & 42 & 28 & 24 & 33 & 36 & 32 & 54 & 55 & 53\\\\\n",
       "\t 36 & 48 & 59 & 41 & 57 & 29 & 58 & 31 & 33 & 29 & ⋯ & 57 & 51 & 33 & 47 & 50 & 33 & 48 & 37 & 35 & 37\\\\\n",
       "\t 62 & 24 & 55 & 55 & 47 & 40 & 64 & 32 & 81 & 28 & ⋯ & 65 & 38 & 37 & 51 & 56 & 47 & 67 & 30 & 49 & 41\\\\\n",
       "\t 40 & 57 & 48 & 29 & 61 & 56 & 43 & 42 & 37 & 54 & ⋯ & 32 & 32 & 41 & 45 & 50 & 40 & 84 & 53 & 46 & 28\\\\\n",
       "\t 28 & 21 & 47 & 41 & 44 & 56 & 41 & 71 & 78 & 75 & ⋯ & 25 & 27 & 73 & 51 & 60 & 62 & 50 & 46 & 58 & 37\\\\\n",
       "\t 30 & 33 & 58 & 46 & 65 & 55 & 40 & 48 & 53 & 34 & ⋯ & 47 & 72 & 37 & 62 & 39 & 48 & 30 & 29 & 74 & 43\\\\\n",
       "\t 31 & 51 & 73 & 52 & 51 & 46 & 39 & 59 & 22 & 46 & ⋯ & 64 & 34 & 43 & 20 & 53 & 33 & 42 & 53 & 40 & 54\\\\\n",
       "\t 32 & 27 & 53 & 23 & 62 & 40 & 60 & 58 & 48 & 37 & ⋯ & 52 & 39 & 55 & 63 & 33 & 62 & 40 & 32 & 30 & 32\\\\\n",
       "\t 60 & 70 & 53 & 37 & 32 & 50 & 28 & 50 & 44 & 69 & ⋯ & 41 & 45 & 56 & 26 & 43 & 55 & 73 & 67 & 50 & 56\\\\\n",
       "\t 41 & 42 & 31 & 51 & 55 & 54 & 38 & 31 & 43 & 58 & ⋯ & 34 & 34 & 62 & 31 & 56 & 55 & 48 & 37 & 63 & 48\\\\\n",
       "\t 35 & 59 & 29 & 49 & 46 & 37 & 24 & 29 & 43 & 36 & ⋯ & 44 & 55 & 38 & 56 & 45 & 21 & 68 & 36 & 61 & 42\\\\\n",
       "\t 43 & 44 & 58 & 32 & 32 & 35 & 31 & 63 & 29 & 50 & ⋯ & 42 & 53 & 32 & 56 & 38 & 47 & 31 & 36 & 46 & 67\\\\\n",
       "\t 51 & 40 & 67 & 30 & 21 & 45 & 30 & 65 & 46 & 56 & ⋯ & 46 & 59 & 59 & 41 & 67 & 51 & 46 & 38 & 47 & 38\\\\\n",
       "\t 74 & 48 & 59 & 30 & 43 & 29 & 37 & 41 & 25 & 49 & ⋯ & 38 & 36 & 80 & 42 & 43 & 29 & 64 & 42 & 53 & 44\\\\\n",
       "\t 60 & 54 & 34 & 53 & 28 & 38 & 51 & 24 & 45 & 26 & ⋯ & 33 & 37 & 28 & 22 & 40 & 31 & 50 & 35 & 25 & 33\\\\\n",
       "\t 27 & 47 & 41 & 43 & 47 & 47 & 33 & 43 & 61 & 57 & ⋯ & 48 & 39 & 54 & 27 & 43 & 28 & 38 & 24 & 48 & 39\\\\\n",
       "\t 69 & 52 & 26 & 35 & 45 & 63 & 65 & 28 & 35 & 39 & ⋯ & 49 & 55 & 45 & 52 & 55 & 30 & 31 & 43 & 41 & 37\\\\\n",
       "\t 36 & 45 & 45 & 32 & 91 & 71 & 39 & 40 & 51 & 40 & ⋯ & 50 & 57 & 41 & 49 & 44 & 51 & 54 & 54 & 57 & 27\\\\\n",
       "\t 53 & 22 & 62 & 58 & 26 & 32 & 54 & 41 & 51 & 63 & ⋯ & 25 & 34 & 56 & 53 & 51 & 54 & 39 & 30 & 67 & 36\\\\\n",
       "\t ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋱ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮\\\\\n",
       "\t 35 & 67 & 38 & 45 & 47 & 27 & 42 & 65 & 44 & 50 & ⋯ & 37 & 35 & 18 & 58 & 31 & 61 & 37 & 68 & 35 & 52\\\\\n",
       "\t 22 & 62 & 42 & 69 & 57 & 50 & 55 & 57 & 62 & 46 & ⋯ & 36 & 46 & 26 & 22 & 62 & 34 & 68 & 53 & 38 & 33\\\\\n",
       "\t 24 & 52 & 46 & 42 & 32 & 39 & 40 & 45 & 52 & 49 & ⋯ & 72 & 53 & 41 & 34 & 48 & 35 & 47 & 77 & 24 & 49\\\\\n",
       "\t 36 & 54 & 48 & 60 & 44 & 41 & 60 & 40 & 40 & 25 & ⋯ & 42 & 42 & 57 & 29 & 51 & 49 & 28 & 43 & 49 & 62\\\\\n",
       "\t 58 & 44 & 39 & 64 & 25 & 44 & 28 & 36 & 35 & 41 & ⋯ & 75 & 63 & 52 & 41 & 50 & 30 & 41 & 48 & 40 & 56\\\\\n",
       "\t 19 & 67 & 56 & 25 & 45 & 28 & 43 & 45 & 51 & 17 & ⋯ & 46 & 36 & 35 & 49 & 55 & 53 & 39 & 58 & 54 & 52\\\\\n",
       "\t 52 & 40 & 50 & 51 & 18 & 54 & 64 & 44 & 59 & 29 & ⋯ & 39 & 56 & 56 & 26 & 44 & 62 & 39 & 42 & 49 & 32\\\\\n",
       "\t 58 & 57 & 67 & 39 & 30 & 53 & 43 & 45 & 32 & 40 & ⋯ & 31 & 37 & 55 & 41 & 31 & 27 & 37 & 29 & 49 & 40\\\\\n",
       "\t 34 & 29 & 41 & 29 & 38 & 70 & 67 & 55 & 31 & 43 & ⋯ & 20 & 44 & 30 & 51 & 39 & 54 & 44 & 42 & 77 & 52\\\\\n",
       "\t 40 & 37 & 53 & 48 & 55 & 33 & 24 & 37 & 54 & 26 & ⋯ & 59 & 50 & 48 & 44 & 49 & 22 & 38 & 34 & 35 & 63\\\\\n",
       "\t 53 & 43 & 62 & 68 & 34 & 52 & 28 & 31 & 38 & 30 & ⋯ & 42 & 40 & 38 & 45 & 46 & 42 & 36 & 46 & 66 & 51\\\\\n",
       "\t 60 & 61 & 52 & 56 & 38 & 46 & 38 & 27 & 40 & 67 & ⋯ & 34 & 52 & 62 & 25 & 52 & 30 & 67 & 51 & 61 & 48\\\\\n",
       "\t 40 & 58 & 41 & 29 & 30 & 49 & 23 & 57 & 41 & 41 & ⋯ & 50 & 50 & 59 & 41 & 63 & 46 & 70 & 52 & 57 & 48\\\\\n",
       "\t 38 & 26 & 34 & 51 & 42 & 33 & 72 & 26 & 38 & 32 & ⋯ & 53 & 25 & 45 & 31 & 40 & 29 & 49 & 60 & 26 & 44\\\\\n",
       "\t 56 & 54 & 32 & 30 & 57 & 48 & 45 & 49 & 65 & 55 & ⋯ & 28 & 22 & 60 & 28 & 58 & 20 & 52 & 54 & 64 & 48\\\\\n",
       "\t 24 & 52 & 58 & 50 & 55 & 39 & 45 & 50 & 59 & 30 & ⋯ & 56 & 44 & 25 & 49 & 55 & 28 & 57 & 56 & 46 & 44\\\\\n",
       "\t 29 & 27 & 57 & 55 & 49 & 68 & 32 & 25 & 27 & 47 & ⋯ & 51 & 23 & 54 & 49 & 37 & 32 & 30 & 58 & 45 & 38\\\\\n",
       "\t 41 & 32 & 44 & 36 & 27 & 58 & 47 & 30 & 25 & 48 & ⋯ & 43 & 24 & 29 & 30 & 56 & 57 & 36 & 35 & 36 & 36\\\\\n",
       "\t 41 & 52 & 41 & 33 & 44 & 46 & 80 & 33 & 36 & 43 & ⋯ & 64 & 27 & 48 & 59 & 53 & 38 & 48 & 63 & 55 & 47\\\\\n",
       "\t 43 & 28 & 41 & 45 & 57 & 71 & 60 & 66 & 67 & 39 & ⋯ & 64 & 41 & 43 & 51 & 48 & 26 & 36 & 47 & 61 & 37\\\\\n",
       "\t 47 & 33 & 55 & 52 & 28 & 44 & 28 & 35 & 43 & 34 & ⋯ & 27 & 51 & 34 & 43 & 58 & 53 & 45 & 50 & 44 & 45\\\\\n",
       "\t 60 & 49 & 32 & 40 & 51 & 36 & 49 & 48 & 52 & 40 & ⋯ & 58 & 30 & 51 & 58 & 41 & 52 & 80 & 65 & 54 & 23\\\\\n",
       "\t 36 & 69 & 51 & 37 & 37 & 30 & 48 & 54 & 45 & 42 & ⋯ & 23 & 25 & 56 & 37 & 31 & 22 & 44 & 59 & 27 & 40\\\\\n",
       "\t 58 & 43 & 42 & 32 & 42 & 27 & 35 & 62 & 52 & 37 & ⋯ & 47 & 27 & 35 & 38 & 28 & 30 & 37 & 54 & 20 & 43\\\\\n",
       "\t 38 & 44 & 49 & 33 & 37 & 24 & 33 & 48 & 36 & 23 & ⋯ & 45 & 48 & 45 & 30 & 51 & 29 & 36 & 39 & 37 & 53\\\\\n",
       "\t 41 & 56 & 45 & 57 & 42 & 46 & 29 & 35 & 28 & 30 & ⋯ & 50 & 52 & 46 & 36 & 24 & 49 & 50 & 42 & 58 & 42\\\\\n",
       "\t 33 & 53 & 36 & 28 & 35 & 38 & 46 & 38 & 48 & 31 & ⋯ & 35 & 62 & 34 & 48 & 48 & 27 & 28 & 47 & 32 & 35\\\\\n",
       "\t 42 & 30 & 52 & 57 & 51 & 41 & 57 & 56 & 60 & 58 & ⋯ & 74 & 46 & 73 & 48 & 67 & 26 & 47 & 60 & 36 & 39\\\\\n",
       "\t 47 & 39 & 54 & 50 & 45 & 64 & 50 & 54 & 30 & 49 & ⋯ & 45 & 59 & 44 & 37 & 43 & 49 & 32 & 42 & 32 & 61\\\\\n",
       "\t 41 & 33 & 55 & 35 & 64 & 57 & 57 & 38 & 58 & 36 & ⋯ & 27 & 27 & 19 & 37 & 44 & 47 & 48 & 41 & 56 & 33\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 2000 × 1500\n",
       "\n",
       "| Amostra_1 &lt;int&gt; | Amostra_ 2 &lt;int&gt; | Amostra_ 3 &lt;int&gt; | Amostra_ 4 &lt;int&gt; | Amostra_ 5 &lt;int&gt; | Amostra_ 6 &lt;int&gt; | Amostra_ 7 &lt;int&gt; | Amostra_ 8 &lt;int&gt; | Amostra_ 9 &lt;int&gt; | Amostra_ 10 &lt;int&gt; | ⋯ ⋯ | Amostra_ 1491 &lt;int&gt; | Amostra_ 1492 &lt;int&gt; | Amostra_ 1493 &lt;int&gt; | Amostra_ 1494 &lt;int&gt; | Amostra_ 1495 &lt;int&gt; | Amostra_ 1496 &lt;int&gt; | Amostra_ 1497 &lt;int&gt; | Amostra_ 1498 &lt;int&gt; | Amostra_ 1499 &lt;int&gt; | Amostra_ 1500 &lt;int&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|\n",
       "| 41 | 57 | 31 | 37 | 49 | 22 | 64 | 56 | 68 | 29 | ⋯ | 32 | 51 | 58 | 62 | 29 | 65 | 20 | 65 | 56 | 45 |\n",
       "| 51 | 45 | 49 | 21 | 38 | 56 | 55 | 26 | 50 | 66 | ⋯ | 39 | 42 | 50 | 34 | 61 | 28 | 54 | 64 | 43 | 39 |\n",
       "| 23 | 39 | 49 | 37 | 40 | 45 | 44 | 30 | 31 | 28 | ⋯ | 43 | 28 | 25 | 36 | 56 | 47 | 30 | 49 | 68 | 46 |\n",
       "| 28 | 42 | 23 | 30 | 36 | 39 | 45 | 39 | 37 | 28 | ⋯ | 43 | 47 | 44 | 60 | 37 | 26 | 32 | 61 | 38 | 65 |\n",
       "| 25 | 42 | 57 | 38 | 57 | 46 | 37 | 35 | 45 | 65 | ⋯ | 44 | 65 | 45 | 46 | 18 | 54 | 58 | 41 | 37 | 45 |\n",
       "| 44 | 39 | 59 | 49 | 32 | 54 | 59 | 29 | 31 | 22 | ⋯ | 40 | 54 | 38 | 29 | 38 | 62 | 65 | 55 | 36 | 49 |\n",
       "| 28 | 70 | 40 | 27 | 64 | 49 | 53 | 38 | 40 | 46 | ⋯ | 53 | 47 | 37 | 51 | 41 | 59 | 40 | 50 | 33 | 58 |\n",
       "| 28 | 59 | 37 | 32 | 40 | 42 | 43 | 45 | 50 | 39 | ⋯ | 53 | 33 | 54 | 35 | 33 | 69 | 42 | 38 | 65 | 40 |\n",
       "| 36 | 62 | 27 | 47 | 53 | 58 | 54 | 49 | 36 | 41 | ⋯ | 32 | 23 | 55 | 23 | 29 | 42 | 40 | 35 | 54 | 32 |\n",
       "| 55 | 36 | 43 | 37 | 49 | 23 | 36 | 33 | 47 | 48 | ⋯ | 56 | 35 | 48 | 67 | 44 | 51 | 30 | 49 | 68 | 49 |\n",
       "| 47 | 30 | 57 | 53 | 22 | 45 | 48 | 62 | 50 | 57 | ⋯ | 52 | 55 | 55 | 32 | 23 | 47 | 26 | 44 | 31 | 50 |\n",
       "| 50 | 65 | 41 | 56 | 50 | 34 | 37 | 36 | 24 | 27 | ⋯ | 31 | 42 | 28 | 24 | 33 | 36 | 32 | 54 | 55 | 53 |\n",
       "| 36 | 48 | 59 | 41 | 57 | 29 | 58 | 31 | 33 | 29 | ⋯ | 57 | 51 | 33 | 47 | 50 | 33 | 48 | 37 | 35 | 37 |\n",
       "| 62 | 24 | 55 | 55 | 47 | 40 | 64 | 32 | 81 | 28 | ⋯ | 65 | 38 | 37 | 51 | 56 | 47 | 67 | 30 | 49 | 41 |\n",
       "| 40 | 57 | 48 | 29 | 61 | 56 | 43 | 42 | 37 | 54 | ⋯ | 32 | 32 | 41 | 45 | 50 | 40 | 84 | 53 | 46 | 28 |\n",
       "| 28 | 21 | 47 | 41 | 44 | 56 | 41 | 71 | 78 | 75 | ⋯ | 25 | 27 | 73 | 51 | 60 | 62 | 50 | 46 | 58 | 37 |\n",
       "| 30 | 33 | 58 | 46 | 65 | 55 | 40 | 48 | 53 | 34 | ⋯ | 47 | 72 | 37 | 62 | 39 | 48 | 30 | 29 | 74 | 43 |\n",
       "| 31 | 51 | 73 | 52 | 51 | 46 | 39 | 59 | 22 | 46 | ⋯ | 64 | 34 | 43 | 20 | 53 | 33 | 42 | 53 | 40 | 54 |\n",
       "| 32 | 27 | 53 | 23 | 62 | 40 | 60 | 58 | 48 | 37 | ⋯ | 52 | 39 | 55 | 63 | 33 | 62 | 40 | 32 | 30 | 32 |\n",
       "| 60 | 70 | 53 | 37 | 32 | 50 | 28 | 50 | 44 | 69 | ⋯ | 41 | 45 | 56 | 26 | 43 | 55 | 73 | 67 | 50 | 56 |\n",
       "| 41 | 42 | 31 | 51 | 55 | 54 | 38 | 31 | 43 | 58 | ⋯ | 34 | 34 | 62 | 31 | 56 | 55 | 48 | 37 | 63 | 48 |\n",
       "| 35 | 59 | 29 | 49 | 46 | 37 | 24 | 29 | 43 | 36 | ⋯ | 44 | 55 | 38 | 56 | 45 | 21 | 68 | 36 | 61 | 42 |\n",
       "| 43 | 44 | 58 | 32 | 32 | 35 | 31 | 63 | 29 | 50 | ⋯ | 42 | 53 | 32 | 56 | 38 | 47 | 31 | 36 | 46 | 67 |\n",
       "| 51 | 40 | 67 | 30 | 21 | 45 | 30 | 65 | 46 | 56 | ⋯ | 46 | 59 | 59 | 41 | 67 | 51 | 46 | 38 | 47 | 38 |\n",
       "| 74 | 48 | 59 | 30 | 43 | 29 | 37 | 41 | 25 | 49 | ⋯ | 38 | 36 | 80 | 42 | 43 | 29 | 64 | 42 | 53 | 44 |\n",
       "| 60 | 54 | 34 | 53 | 28 | 38 | 51 | 24 | 45 | 26 | ⋯ | 33 | 37 | 28 | 22 | 40 | 31 | 50 | 35 | 25 | 33 |\n",
       "| 27 | 47 | 41 | 43 | 47 | 47 | 33 | 43 | 61 | 57 | ⋯ | 48 | 39 | 54 | 27 | 43 | 28 | 38 | 24 | 48 | 39 |\n",
       "| 69 | 52 | 26 | 35 | 45 | 63 | 65 | 28 | 35 | 39 | ⋯ | 49 | 55 | 45 | 52 | 55 | 30 | 31 | 43 | 41 | 37 |\n",
       "| 36 | 45 | 45 | 32 | 91 | 71 | 39 | 40 | 51 | 40 | ⋯ | 50 | 57 | 41 | 49 | 44 | 51 | 54 | 54 | 57 | 27 |\n",
       "| 53 | 22 | 62 | 58 | 26 | 32 | 54 | 41 | 51 | 63 | ⋯ | 25 | 34 | 56 | 53 | 51 | 54 | 39 | 30 | 67 | 36 |\n",
       "| ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋱ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ |\n",
       "| 35 | 67 | 38 | 45 | 47 | 27 | 42 | 65 | 44 | 50 | ⋯ | 37 | 35 | 18 | 58 | 31 | 61 | 37 | 68 | 35 | 52 |\n",
       "| 22 | 62 | 42 | 69 | 57 | 50 | 55 | 57 | 62 | 46 | ⋯ | 36 | 46 | 26 | 22 | 62 | 34 | 68 | 53 | 38 | 33 |\n",
       "| 24 | 52 | 46 | 42 | 32 | 39 | 40 | 45 | 52 | 49 | ⋯ | 72 | 53 | 41 | 34 | 48 | 35 | 47 | 77 | 24 | 49 |\n",
       "| 36 | 54 | 48 | 60 | 44 | 41 | 60 | 40 | 40 | 25 | ⋯ | 42 | 42 | 57 | 29 | 51 | 49 | 28 | 43 | 49 | 62 |\n",
       "| 58 | 44 | 39 | 64 | 25 | 44 | 28 | 36 | 35 | 41 | ⋯ | 75 | 63 | 52 | 41 | 50 | 30 | 41 | 48 | 40 | 56 |\n",
       "| 19 | 67 | 56 | 25 | 45 | 28 | 43 | 45 | 51 | 17 | ⋯ | 46 | 36 | 35 | 49 | 55 | 53 | 39 | 58 | 54 | 52 |\n",
       "| 52 | 40 | 50 | 51 | 18 | 54 | 64 | 44 | 59 | 29 | ⋯ | 39 | 56 | 56 | 26 | 44 | 62 | 39 | 42 | 49 | 32 |\n",
       "| 58 | 57 | 67 | 39 | 30 | 53 | 43 | 45 | 32 | 40 | ⋯ | 31 | 37 | 55 | 41 | 31 | 27 | 37 | 29 | 49 | 40 |\n",
       "| 34 | 29 | 41 | 29 | 38 | 70 | 67 | 55 | 31 | 43 | ⋯ | 20 | 44 | 30 | 51 | 39 | 54 | 44 | 42 | 77 | 52 |\n",
       "| 40 | 37 | 53 | 48 | 55 | 33 | 24 | 37 | 54 | 26 | ⋯ | 59 | 50 | 48 | 44 | 49 | 22 | 38 | 34 | 35 | 63 |\n",
       "| 53 | 43 | 62 | 68 | 34 | 52 | 28 | 31 | 38 | 30 | ⋯ | 42 | 40 | 38 | 45 | 46 | 42 | 36 | 46 | 66 | 51 |\n",
       "| 60 | 61 | 52 | 56 | 38 | 46 | 38 | 27 | 40 | 67 | ⋯ | 34 | 52 | 62 | 25 | 52 | 30 | 67 | 51 | 61 | 48 |\n",
       "| 40 | 58 | 41 | 29 | 30 | 49 | 23 | 57 | 41 | 41 | ⋯ | 50 | 50 | 59 | 41 | 63 | 46 | 70 | 52 | 57 | 48 |\n",
       "| 38 | 26 | 34 | 51 | 42 | 33 | 72 | 26 | 38 | 32 | ⋯ | 53 | 25 | 45 | 31 | 40 | 29 | 49 | 60 | 26 | 44 |\n",
       "| 56 | 54 | 32 | 30 | 57 | 48 | 45 | 49 | 65 | 55 | ⋯ | 28 | 22 | 60 | 28 | 58 | 20 | 52 | 54 | 64 | 48 |\n",
       "| 24 | 52 | 58 | 50 | 55 | 39 | 45 | 50 | 59 | 30 | ⋯ | 56 | 44 | 25 | 49 | 55 | 28 | 57 | 56 | 46 | 44 |\n",
       "| 29 | 27 | 57 | 55 | 49 | 68 | 32 | 25 | 27 | 47 | ⋯ | 51 | 23 | 54 | 49 | 37 | 32 | 30 | 58 | 45 | 38 |\n",
       "| 41 | 32 | 44 | 36 | 27 | 58 | 47 | 30 | 25 | 48 | ⋯ | 43 | 24 | 29 | 30 | 56 | 57 | 36 | 35 | 36 | 36 |\n",
       "| 41 | 52 | 41 | 33 | 44 | 46 | 80 | 33 | 36 | 43 | ⋯ | 64 | 27 | 48 | 59 | 53 | 38 | 48 | 63 | 55 | 47 |\n",
       "| 43 | 28 | 41 | 45 | 57 | 71 | 60 | 66 | 67 | 39 | ⋯ | 64 | 41 | 43 | 51 | 48 | 26 | 36 | 47 | 61 | 37 |\n",
       "| 47 | 33 | 55 | 52 | 28 | 44 | 28 | 35 | 43 | 34 | ⋯ | 27 | 51 | 34 | 43 | 58 | 53 | 45 | 50 | 44 | 45 |\n",
       "| 60 | 49 | 32 | 40 | 51 | 36 | 49 | 48 | 52 | 40 | ⋯ | 58 | 30 | 51 | 58 | 41 | 52 | 80 | 65 | 54 | 23 |\n",
       "| 36 | 69 | 51 | 37 | 37 | 30 | 48 | 54 | 45 | 42 | ⋯ | 23 | 25 | 56 | 37 | 31 | 22 | 44 | 59 | 27 | 40 |\n",
       "| 58 | 43 | 42 | 32 | 42 | 27 | 35 | 62 | 52 | 37 | ⋯ | 47 | 27 | 35 | 38 | 28 | 30 | 37 | 54 | 20 | 43 |\n",
       "| 38 | 44 | 49 | 33 | 37 | 24 | 33 | 48 | 36 | 23 | ⋯ | 45 | 48 | 45 | 30 | 51 | 29 | 36 | 39 | 37 | 53 |\n",
       "| 41 | 56 | 45 | 57 | 42 | 46 | 29 | 35 | 28 | 30 | ⋯ | 50 | 52 | 46 | 36 | 24 | 49 | 50 | 42 | 58 | 42 |\n",
       "| 33 | 53 | 36 | 28 | 35 | 38 | 46 | 38 | 48 | 31 | ⋯ | 35 | 62 | 34 | 48 | 48 | 27 | 28 | 47 | 32 | 35 |\n",
       "| 42 | 30 | 52 | 57 | 51 | 41 | 57 | 56 | 60 | 58 | ⋯ | 74 | 46 | 73 | 48 | 67 | 26 | 47 | 60 | 36 | 39 |\n",
       "| 47 | 39 | 54 | 50 | 45 | 64 | 50 | 54 | 30 | 49 | ⋯ | 45 | 59 | 44 | 37 | 43 | 49 | 32 | 42 | 32 | 61 |\n",
       "| 41 | 33 | 55 | 35 | 64 | 57 | 57 | 38 | 58 | 36 | ⋯ | 27 | 27 | 19 | 37 | 44 | 47 | 48 | 41 | 56 | 33 |\n",
       "\n"
      ],
      "text/plain": [
       "     Amostra_1 Amostra_ 2 Amostra_ 3 Amostra_ 4 Amostra_ 5 Amostra_ 6\n",
       "1    41        57         31         37         49         22        \n",
       "2    51        45         49         21         38         56        \n",
       "3    23        39         49         37         40         45        \n",
       "4    28        42         23         30         36         39        \n",
       "5    25        42         57         38         57         46        \n",
       "6    44        39         59         49         32         54        \n",
       "7    28        70         40         27         64         49        \n",
       "8    28        59         37         32         40         42        \n",
       "9    36        62         27         47         53         58        \n",
       "10   55        36         43         37         49         23        \n",
       "11   47        30         57         53         22         45        \n",
       "12   50        65         41         56         50         34        \n",
       "13   36        48         59         41         57         29        \n",
       "14   62        24         55         55         47         40        \n",
       "15   40        57         48         29         61         56        \n",
       "16   28        21         47         41         44         56        \n",
       "17   30        33         58         46         65         55        \n",
       "18   31        51         73         52         51         46        \n",
       "19   32        27         53         23         62         40        \n",
       "20   60        70         53         37         32         50        \n",
       "21   41        42         31         51         55         54        \n",
       "22   35        59         29         49         46         37        \n",
       "23   43        44         58         32         32         35        \n",
       "24   51        40         67         30         21         45        \n",
       "25   74        48         59         30         43         29        \n",
       "26   60        54         34         53         28         38        \n",
       "27   27        47         41         43         47         47        \n",
       "28   69        52         26         35         45         63        \n",
       "29   36        45         45         32         91         71        \n",
       "30   53        22         62         58         26         32        \n",
       "⋮    ⋮         ⋮          ⋮          ⋮          ⋮          ⋮         \n",
       "1971 35        67         38         45         47         27        \n",
       "1972 22        62         42         69         57         50        \n",
       "1973 24        52         46         42         32         39        \n",
       "1974 36        54         48         60         44         41        \n",
       "1975 58        44         39         64         25         44        \n",
       "1976 19        67         56         25         45         28        \n",
       "1977 52        40         50         51         18         54        \n",
       "1978 58        57         67         39         30         53        \n",
       "1979 34        29         41         29         38         70        \n",
       "1980 40        37         53         48         55         33        \n",
       "1981 53        43         62         68         34         52        \n",
       "1982 60        61         52         56         38         46        \n",
       "1983 40        58         41         29         30         49        \n",
       "1984 38        26         34         51         42         33        \n",
       "1985 56        54         32         30         57         48        \n",
       "1986 24        52         58         50         55         39        \n",
       "1987 29        27         57         55         49         68        \n",
       "1988 41        32         44         36         27         58        \n",
       "1989 41        52         41         33         44         46        \n",
       "1990 43        28         41         45         57         71        \n",
       "1991 47        33         55         52         28         44        \n",
       "1992 60        49         32         40         51         36        \n",
       "1993 36        69         51         37         37         30        \n",
       "1994 58        43         42         32         42         27        \n",
       "1995 38        44         49         33         37         24        \n",
       "1996 41        56         45         57         42         46        \n",
       "1997 33        53         36         28         35         38        \n",
       "1998 42        30         52         57         51         41        \n",
       "1999 47        39         54         50         45         64        \n",
       "2000 41        33         55         35         64         57        \n",
       "     Amostra_ 7 Amostra_ 8 Amostra_ 9 Amostra_ 10 ⋯ Amostra_ 1491 Amostra_ 1492\n",
       "1    64         56         68         29          ⋯ 32            51           \n",
       "2    55         26         50         66          ⋯ 39            42           \n",
       "3    44         30         31         28          ⋯ 43            28           \n",
       "4    45         39         37         28          ⋯ 43            47           \n",
       "5    37         35         45         65          ⋯ 44            65           \n",
       "6    59         29         31         22          ⋯ 40            54           \n",
       "7    53         38         40         46          ⋯ 53            47           \n",
       "8    43         45         50         39          ⋯ 53            33           \n",
       "9    54         49         36         41          ⋯ 32            23           \n",
       "10   36         33         47         48          ⋯ 56            35           \n",
       "11   48         62         50         57          ⋯ 52            55           \n",
       "12   37         36         24         27          ⋯ 31            42           \n",
       "13   58         31         33         29          ⋯ 57            51           \n",
       "14   64         32         81         28          ⋯ 65            38           \n",
       "15   43         42         37         54          ⋯ 32            32           \n",
       "16   41         71         78         75          ⋯ 25            27           \n",
       "17   40         48         53         34          ⋯ 47            72           \n",
       "18   39         59         22         46          ⋯ 64            34           \n",
       "19   60         58         48         37          ⋯ 52            39           \n",
       "20   28         50         44         69          ⋯ 41            45           \n",
       "21   38         31         43         58          ⋯ 34            34           \n",
       "22   24         29         43         36          ⋯ 44            55           \n",
       "23   31         63         29         50          ⋯ 42            53           \n",
       "24   30         65         46         56          ⋯ 46            59           \n",
       "25   37         41         25         49          ⋯ 38            36           \n",
       "26   51         24         45         26          ⋯ 33            37           \n",
       "27   33         43         61         57          ⋯ 48            39           \n",
       "28   65         28         35         39          ⋯ 49            55           \n",
       "29   39         40         51         40          ⋯ 50            57           \n",
       "30   54         41         51         63          ⋯ 25            34           \n",
       "⋮    ⋮          ⋮          ⋮          ⋮           ⋱ ⋮             ⋮            \n",
       "1971 42         65         44         50          ⋯ 37            35           \n",
       "1972 55         57         62         46          ⋯ 36            46           \n",
       "1973 40         45         52         49          ⋯ 72            53           \n",
       "1974 60         40         40         25          ⋯ 42            42           \n",
       "1975 28         36         35         41          ⋯ 75            63           \n",
       "1976 43         45         51         17          ⋯ 46            36           \n",
       "1977 64         44         59         29          ⋯ 39            56           \n",
       "1978 43         45         32         40          ⋯ 31            37           \n",
       "1979 67         55         31         43          ⋯ 20            44           \n",
       "1980 24         37         54         26          ⋯ 59            50           \n",
       "1981 28         31         38         30          ⋯ 42            40           \n",
       "1982 38         27         40         67          ⋯ 34            52           \n",
       "1983 23         57         41         41          ⋯ 50            50           \n",
       "1984 72         26         38         32          ⋯ 53            25           \n",
       "1985 45         49         65         55          ⋯ 28            22           \n",
       "1986 45         50         59         30          ⋯ 56            44           \n",
       "1987 32         25         27         47          ⋯ 51            23           \n",
       "1988 47         30         25         48          ⋯ 43            24           \n",
       "1989 80         33         36         43          ⋯ 64            27           \n",
       "1990 60         66         67         39          ⋯ 64            41           \n",
       "1991 28         35         43         34          ⋯ 27            51           \n",
       "1992 49         48         52         40          ⋯ 58            30           \n",
       "1993 48         54         45         42          ⋯ 23            25           \n",
       "1994 35         62         52         37          ⋯ 47            27           \n",
       "1995 33         48         36         23          ⋯ 45            48           \n",
       "1996 29         35         28         30          ⋯ 50            52           \n",
       "1997 46         38         48         31          ⋯ 35            62           \n",
       "1998 57         56         60         58          ⋯ 74            46           \n",
       "1999 50         54         30         49          ⋯ 45            59           \n",
       "2000 57         38         58         36          ⋯ 27            27           \n",
       "     Amostra_ 1493 Amostra_ 1494 Amostra_ 1495 Amostra_ 1496 Amostra_ 1497\n",
       "1    58            62            29            65            20           \n",
       "2    50            34            61            28            54           \n",
       "3    25            36            56            47            30           \n",
       "4    44            60            37            26            32           \n",
       "5    45            46            18            54            58           \n",
       "6    38            29            38            62            65           \n",
       "7    37            51            41            59            40           \n",
       "8    54            35            33            69            42           \n",
       "9    55            23            29            42            40           \n",
       "10   48            67            44            51            30           \n",
       "11   55            32            23            47            26           \n",
       "12   28            24            33            36            32           \n",
       "13   33            47            50            33            48           \n",
       "14   37            51            56            47            67           \n",
       "15   41            45            50            40            84           \n",
       "16   73            51            60            62            50           \n",
       "17   37            62            39            48            30           \n",
       "18   43            20            53            33            42           \n",
       "19   55            63            33            62            40           \n",
       "20   56            26            43            55            73           \n",
       "21   62            31            56            55            48           \n",
       "22   38            56            45            21            68           \n",
       "23   32            56            38            47            31           \n",
       "24   59            41            67            51            46           \n",
       "25   80            42            43            29            64           \n",
       "26   28            22            40            31            50           \n",
       "27   54            27            43            28            38           \n",
       "28   45            52            55            30            31           \n",
       "29   41            49            44            51            54           \n",
       "30   56            53            51            54            39           \n",
       "⋮    ⋮             ⋮             ⋮             ⋮             ⋮            \n",
       "1971 18            58            31            61            37           \n",
       "1972 26            22            62            34            68           \n",
       "1973 41            34            48            35            47           \n",
       "1974 57            29            51            49            28           \n",
       "1975 52            41            50            30            41           \n",
       "1976 35            49            55            53            39           \n",
       "1977 56            26            44            62            39           \n",
       "1978 55            41            31            27            37           \n",
       "1979 30            51            39            54            44           \n",
       "1980 48            44            49            22            38           \n",
       "1981 38            45            46            42            36           \n",
       "1982 62            25            52            30            67           \n",
       "1983 59            41            63            46            70           \n",
       "1984 45            31            40            29            49           \n",
       "1985 60            28            58            20            52           \n",
       "1986 25            49            55            28            57           \n",
       "1987 54            49            37            32            30           \n",
       "1988 29            30            56            57            36           \n",
       "1989 48            59            53            38            48           \n",
       "1990 43            51            48            26            36           \n",
       "1991 34            43            58            53            45           \n",
       "1992 51            58            41            52            80           \n",
       "1993 56            37            31            22            44           \n",
       "1994 35            38            28            30            37           \n",
       "1995 45            30            51            29            36           \n",
       "1996 46            36            24            49            50           \n",
       "1997 34            48            48            27            28           \n",
       "1998 73            48            67            26            47           \n",
       "1999 44            37            43            49            32           \n",
       "2000 19            37            44            47            48           \n",
       "     Amostra_ 1498 Amostra_ 1499 Amostra_ 1500\n",
       "1    65            56            45           \n",
       "2    64            43            39           \n",
       "3    49            68            46           \n",
       "4    61            38            65           \n",
       "5    41            37            45           \n",
       "6    55            36            49           \n",
       "7    50            33            58           \n",
       "8    38            65            40           \n",
       "9    35            54            32           \n",
       "10   49            68            49           \n",
       "11   44            31            50           \n",
       "12   54            55            53           \n",
       "13   37            35            37           \n",
       "14   30            49            41           \n",
       "15   53            46            28           \n",
       "16   46            58            37           \n",
       "17   29            74            43           \n",
       "18   53            40            54           \n",
       "19   32            30            32           \n",
       "20   67            50            56           \n",
       "21   37            63            48           \n",
       "22   36            61            42           \n",
       "23   36            46            67           \n",
       "24   38            47            38           \n",
       "25   42            53            44           \n",
       "26   35            25            33           \n",
       "27   24            48            39           \n",
       "28   43            41            37           \n",
       "29   54            57            27           \n",
       "30   30            67            36           \n",
       "⋮    ⋮             ⋮             ⋮            \n",
       "1971 68            35            52           \n",
       "1972 53            38            33           \n",
       "1973 77            24            49           \n",
       "1974 43            49            62           \n",
       "1975 48            40            56           \n",
       "1976 58            54            52           \n",
       "1977 42            49            32           \n",
       "1978 29            49            40           \n",
       "1979 42            77            52           \n",
       "1980 34            35            63           \n",
       "1981 46            66            51           \n",
       "1982 51            61            48           \n",
       "1983 52            57            48           \n",
       "1984 60            26            44           \n",
       "1985 54            64            48           \n",
       "1986 56            46            44           \n",
       "1987 58            45            38           \n",
       "1988 35            36            36           \n",
       "1989 63            55            47           \n",
       "1990 47            61            37           \n",
       "1991 50            44            45           \n",
       "1992 65            54            23           \n",
       "1993 59            27            40           \n",
       "1994 54            20            43           \n",
       "1995 39            37            53           \n",
       "1996 42            58            42           \n",
       "1997 47            32            35           \n",
       "1998 60            36            39           \n",
       "1999 42            32            61           \n",
       "2000 41            56            33           "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "for (i in 1:total_de_amostras){\n",
    "    if(i==1){\n",
    "        amostras <- data.frame('Amostra_1' = sample(dados$Idade, n))\n",
    "    }else{\n",
    "        amostras[paste('Amostra_', i)] <- sample(dados$Idade, n)\n",
    "    }\n",
    "}\n",
    "amostras"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 52,
   "id": "61875e85",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:52:35.341975Z",
     "iopub.status.busy": "2024-05-06T12:52:35.340160Z",
     "iopub.status.idle": "2024-05-06T12:52:35.436903Z",
     "shell.execute_reply": "2024-05-06T12:52:35.434908Z"
    },
    "id": "v5Q-rnS_izNd",
    "outputId": "5097951e-8900-42f8-894a-539ad7d51f76",
    "papermill": {
     "duration": 0.178907,
     "end_time": "2024-05-06T12:52:35.441506",
     "exception": false,
     "start_time": "2024-05-06T12:52:35.262599",
     "status": "completed"
    },
    "scrolled": true,
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".dl-inline {width: auto; margin:0; padding: 0}\n",
       ".dl-inline>dt, .dl-inline>dd {float: none; width: auto; display: inline-block}\n",
       ".dl-inline>dt::after {content: \":\\0020\"; padding-right: .5ex}\n",
       ".dl-inline>dt:not(:first-of-type) {padding-left: .5ex}\n",
       "</style><dl class=dl-inline><dt>Amostra_1</dt><dd>43.863</dd><dt>Amostra_ 2</dt><dd>44.521</dd><dt>Amostra_ 3</dt><dd>43.7675</dd><dt>Amostra_ 4</dt><dd>43.4315</dd><dt>Amostra_ 5</dt><dd>43.925</dd><dt>Amostra_ 6</dt><dd>43.913</dd><dt>Amostra_ 7</dt><dd>44.3235</dd><dt>Amostra_ 8</dt><dd>44.607</dd><dt>Amostra_ 9</dt><dd>43.9155</dd><dt>Amostra_ 10</dt><dd>43.5045</dd><dt>Amostra_ 11</dt><dd>43.8375</dd><dt>Amostra_ 12</dt><dd>43.9435</dd><dt>Amostra_ 13</dt><dd>43.67</dd><dt>Amostra_ 14</dt><dd>44.1435</dd><dt>Amostra_ 15</dt><dd>44.04</dd><dt>Amostra_ 16</dt><dd>44.405</dd><dt>Amostra_ 17</dt><dd>43.9625</dd><dt>Amostra_ 18</dt><dd>43.873</dd><dt>Amostra_ 19</dt><dd>44.085</dd><dt>Amostra_ 20</dt><dd>44.359</dd><dt>Amostra_ 21</dt><dd>43.7365</dd><dt>Amostra_ 22</dt><dd>43.753</dd><dt>Amostra_ 23</dt><dd>43.863</dd><dt>Amostra_ 24</dt><dd>44.474</dd><dt>Amostra_ 25</dt><dd>44.094</dd><dt>Amostra_ 26</dt><dd>44.4615</dd><dt>Amostra_ 27</dt><dd>44.199</dd><dt>Amostra_ 28</dt><dd>44.0075</dd><dt>Amostra_ 29</dt><dd>43.831</dd><dt>Amostra_ 30</dt><dd>44.0135</dd><dt>Amostra_ 31</dt><dd>44.1795</dd><dt>Amostra_ 32</dt><dd>44.569</dd><dt>Amostra_ 33</dt><dd>43.5745</dd><dt>Amostra_ 34</dt><dd>44.5545</dd><dt>Amostra_ 35</dt><dd>43.1915</dd><dt>Amostra_ 36</dt><dd>43.9195</dd><dt>Amostra_ 37</dt><dd>44.366</dd><dt>Amostra_ 38</dt><dd>43.6615</dd><dt>Amostra_ 39</dt><dd>44.221</dd><dt>Amostra_ 40</dt><dd>43.4445</dd><dt>Amostra_ 41</dt><dd>44.2025</dd><dt>Amostra_ 42</dt><dd>43.8385</dd><dt>Amostra_ 43</dt><dd>44.8325</dd><dt>Amostra_ 44</dt><dd>44.302</dd><dt>Amostra_ 45</dt><dd>44.213</dd><dt>Amostra_ 46</dt><dd>44.229</dd><dt>Amostra_ 47</dt><dd>44.4985</dd><dt>Amostra_ 48</dt><dd>43.802</dd><dt>Amostra_ 49</dt><dd>44.181</dd><dt>Amostra_ 50</dt><dd>44.143</dd><dt>Amostra_ 51</dt><dd>44.1285</dd><dt>Amostra_ 52</dt><dd>43.5455</dd><dt>Amostra_ 53</dt><dd>43.9625</dd><dt>Amostra_ 54</dt><dd>44.1375</dd><dt>Amostra_ 55</dt><dd>43.726</dd><dt>Amostra_ 56</dt><dd>44.457</dd><dt>Amostra_ 57</dt><dd>44.075</dd><dt>Amostra_ 58</dt><dd>44.2465</dd><dt>Amostra_ 59</dt><dd>43.823</dd><dt>Amostra_ 60</dt><dd>43.956</dd><dt>Amostra_ 61</dt><dd>43.8025</dd><dt>Amostra_ 62</dt><dd>44.1075</dd><dt>Amostra_ 63</dt><dd>43.79</dd><dt>Amostra_ 64</dt><dd>43.8295</dd><dt>Amostra_ 65</dt><dd>44.2095</dd><dt>Amostra_ 66</dt><dd>44.2495</dd><dt>Amostra_ 67</dt><dd>44.197</dd><dt>Amostra_ 68</dt><dd>44.3415</dd><dt>Amostra_ 69</dt><dd>43.8225</dd><dt>Amostra_ 70</dt><dd>43.8785</dd><dt>Amostra_ 71</dt><dd>44.21</dd><dt>Amostra_ 72</dt><dd>44.136</dd><dt>Amostra_ 73</dt><dd>44.4235</dd><dt>Amostra_ 74</dt><dd>43.799</dd><dt>Amostra_ 75</dt><dd>44.279</dd><dt>Amostra_ 76</dt><dd>44.0095</dd><dt>Amostra_ 77</dt><dd>43.995</dd><dt>Amostra_ 78</dt><dd>44.5315</dd><dt>Amostra_ 79</dt><dd>44.365</dd><dt>Amostra_ 80</dt><dd>44.131</dd><dt>Amostra_ 81</dt><dd>43.768</dd><dt>Amostra_ 82</dt><dd>43.854</dd><dt>Amostra_ 83</dt><dd>44.151</dd><dt>Amostra_ 84</dt><dd>43.9505</dd><dt>Amostra_ 85</dt><dd>44.1765</dd><dt>Amostra_ 86</dt><dd>44.3785</dd><dt>Amostra_ 87</dt><dd>44.0515</dd><dt>Amostra_ 88</dt><dd>43.677</dd><dt>Amostra_ 89</dt><dd>44.3115</dd><dt>Amostra_ 90</dt><dd>44.1085</dd><dt>Amostra_ 91</dt><dd>44.4085</dd><dt>Amostra_ 92</dt><dd>44.1305</dd><dt>Amostra_ 93</dt><dd>44.4815</dd><dt>Amostra_ 94</dt><dd>44.5025</dd><dt>Amostra_ 95</dt><dd>43.96</dd><dt>Amostra_ 96</dt><dd>43.9775</dd><dt>Amostra_ 97</dt><dd>44.1455</dd><dt>Amostra_ 98</dt><dd>43.7525</dd><dt>Amostra_ 99</dt><dd>43.761</dd><dt>Amostra_ 100</dt><dd>44.1115</dd><dt>Amostra_ 101</dt><dd>43.7295</dd><dt>Amostra_ 102</dt><dd>44.153</dd><dt>Amostra_ 103</dt><dd>44.2245</dd><dt>Amostra_ 104</dt><dd>43.8045</dd><dt>Amostra_ 105</dt><dd>44.1275</dd><dt>Amostra_ 106</dt><dd>43.9465</dd><dt>Amostra_ 107</dt><dd>43.904</dd><dt>Amostra_ 108</dt><dd>44.01</dd><dt>Amostra_ 109</dt><dd>44.236</dd><dt>Amostra_ 110</dt><dd>44.129</dd><dt>Amostra_ 111</dt><dd>43.771</dd><dt>Amostra_ 112</dt><dd>44.3445</dd><dt>Amostra_ 113</dt><dd>43.75</dd><dt>Amostra_ 114</dt><dd>44.3225</dd><dt>Amostra_ 115</dt><dd>44.3</dd><dt>Amostra_ 116</dt><dd>44.243</dd><dt>Amostra_ 117</dt><dd>44.2235</dd><dt>Amostra_ 118</dt><dd>43.89</dd><dt>Amostra_ 119</dt><dd>43.899</dd><dt>Amostra_ 120</dt><dd>44.0955</dd><dt>Amostra_ 121</dt><dd>43.3495</dd><dt>Amostra_ 122</dt><dd>43.9265</dd><dt>Amostra_ 123</dt><dd>44.3215</dd><dt>Amostra_ 124</dt><dd>44.2435</dd><dt>Amostra_ 125</dt><dd>43.8885</dd><dt>Amostra_ 126</dt><dd>43.722</dd><dt>Amostra_ 127</dt><dd>44.188</dd><dt>Amostra_ 128</dt><dd>43.7395</dd><dt>Amostra_ 129</dt><dd>43.872</dd><dt>Amostra_ 130</dt><dd>44.2945</dd><dt>Amostra_ 131</dt><dd>43.8455</dd><dt>Amostra_ 132</dt><dd>44.2525</dd><dt>Amostra_ 133</dt><dd>43.7465</dd><dt>Amostra_ 134</dt><dd>43.8105</dd><dt>Amostra_ 135</dt><dd>43.8935</dd><dt>Amostra_ 136</dt><dd>44.0845</dd><dt>Amostra_ 137</dt><dd>44.37</dd><dt>Amostra_ 138</dt><dd>44.201</dd><dt>Amostra_ 139</dt><dd>43.792</dd><dt>Amostra_ 140</dt><dd>44.1835</dd><dt>Amostra_ 141</dt><dd>43.697</dd><dt>Amostra_ 142</dt><dd>44.115</dd><dt>Amostra_ 143</dt><dd>44.192</dd><dt>Amostra_ 144</dt><dd>43.6725</dd><dt>Amostra_ 145</dt><dd>44.538</dd><dt>Amostra_ 146</dt><dd>43.946</dd><dt>Amostra_ 147</dt><dd>44.2185</dd><dt>Amostra_ 148</dt><dd>43.8195</dd><dt>Amostra_ 149</dt><dd>43.777</dd><dt>Amostra_ 150</dt><dd>44.1755</dd><dt>Amostra_ 151</dt><dd>43.688</dd><dt>Amostra_ 152</dt><dd>44.2555</dd><dt>Amostra_ 153</dt><dd>44.1445</dd><dt>Amostra_ 154</dt><dd>43.9235</dd><dt>Amostra_ 155</dt><dd>44.1595</dd><dt>Amostra_ 156</dt><dd>44.5525</dd><dt>Amostra_ 157</dt><dd>44.155</dd><dt>Amostra_ 158</dt><dd>43.7</dd><dt>Amostra_ 159</dt><dd>43.9915</dd><dt>Amostra_ 160</dt><dd>44.7025</dd><dt>Amostra_ 161</dt><dd>44.12</dd><dt>Amostra_ 162</dt><dd>44.152</dd><dt>Amostra_ 163</dt><dd>44.26</dd><dt>Amostra_ 164</dt><dd>43.7855</dd><dt>Amostra_ 165</dt><dd>44.094</dd><dt>Amostra_ 166</dt><dd>44.447</dd><dt>Amostra_ 167</dt><dd>43.821</dd><dt>Amostra_ 168</dt><dd>44.2165</dd><dt>Amostra_ 169</dt><dd>44.2435</dd><dt>Amostra_ 170</dt><dd>44.04</dd><dt>Amostra_ 171</dt><dd>43.9395</dd><dt>Amostra_ 172</dt><dd>44.185</dd><dt>Amostra_ 173</dt><dd>43.468</dd><dt>Amostra_ 174</dt><dd>43.416</dd><dt>Amostra_ 175</dt><dd>44.328</dd><dt>Amostra_ 176</dt><dd>43.658</dd><dt>Amostra_ 177</dt><dd>43.994</dd><dt>Amostra_ 178</dt><dd>43.928</dd><dt>Amostra_ 179</dt><dd>44.0725</dd><dt>Amostra_ 180</dt><dd>43.748</dd><dt>Amostra_ 181</dt><dd>43.73</dd><dt>Amostra_ 182</dt><dd>43.8295</dd><dt>Amostra_ 183</dt><dd>43.93</dd><dt>Amostra_ 184</dt><dd>44.0685</dd><dt>Amostra_ 185</dt><dd>44.031</dd><dt>Amostra_ 186</dt><dd>44.0755</dd><dt>Amostra_ 187</dt><dd>43.985</dd><dt>Amostra_ 188</dt><dd>43.492</dd><dt>Amostra_ 189</dt><dd>44.315</dd><dt>Amostra_ 190</dt><dd>44.0565</dd><dt>Amostra_ 191</dt><dd>44.3315</dd><dt>Amostra_ 192</dt><dd>43.7365</dd><dt>Amostra_ 193</dt><dd>44.3155</dd><dt>Amostra_ 194</dt><dd>44.169</dd><dt>Amostra_ 195</dt><dd>44.1955</dd><dt>Amostra_ 196</dt><dd>43.8425</dd><dt>Amostra_ 197</dt><dd>43.82</dd><dt>Amostra_ 198</dt><dd>43.8525</dd><dt>Amostra_ 199</dt><dd>44.6195</dd><dt>Amostra_ 200</dt><dd>44.255</dd><dt>Amostra_ 201</dt><dd>⋯</dd><dt>Amostra_ 202</dt><dd>44.0535</dd><dt>Amostra_ 203</dt><dd>43.7505</dd><dt>Amostra_ 204</dt><dd>43.949</dd><dt>Amostra_ 205</dt><dd>44.2505</dd><dt>Amostra_ 206</dt><dd>43.829</dd><dt>Amostra_ 207</dt><dd>43.843</dd><dt>Amostra_ 208</dt><dd>44.21</dd><dt>Amostra_ 209</dt><dd>44.46</dd><dt>Amostra_ 210</dt><dd>44.4425</dd><dt>Amostra_ 211</dt><dd>43.874</dd><dt>Amostra_ 212</dt><dd>44.1775</dd><dt>Amostra_ 213</dt><dd>44.1445</dd><dt>Amostra_ 214</dt><dd>43.95</dd><dt>Amostra_ 215</dt><dd>43.852</dd><dt>Amostra_ 216</dt><dd>44.133</dd><dt>Amostra_ 217</dt><dd>43.9675</dd><dt>Amostra_ 218</dt><dd>44.1105</dd><dt>Amostra_ 219</dt><dd>43.9685</dd><dt>Amostra_ 220</dt><dd>43.9845</dd><dt>Amostra_ 221</dt><dd>43.8235</dd><dt>Amostra_ 222</dt><dd>43.602</dd><dt>Amostra_ 223</dt><dd>44.012</dd><dt>Amostra_ 224</dt><dd>44.019</dd><dt>Amostra_ 225</dt><dd>43.9715</dd><dt>Amostra_ 226</dt><dd>43.841</dd><dt>Amostra_ 227</dt><dd>43.8525</dd><dt>Amostra_ 228</dt><dd>43.6675</dd><dt>Amostra_ 229</dt><dd>44.426</dd><dt>Amostra_ 230</dt><dd>43.769</dd><dt>Amostra_ 231</dt><dd>43.9845</dd><dt>Amostra_ 232</dt><dd>44.5805</dd><dt>Amostra_ 233</dt><dd>43.971</dd><dt>Amostra_ 234</dt><dd>43.5585</dd><dt>Amostra_ 235</dt><dd>43.9135</dd><dt>Amostra_ 236</dt><dd>43.9265</dd><dt>Amostra_ 237</dt><dd>44.487</dd><dt>Amostra_ 238</dt><dd>43.9725</dd><dt>Amostra_ 239</dt><dd>43.962</dd><dt>Amostra_ 240</dt><dd>43.719</dd><dt>Amostra_ 241</dt><dd>44.0965</dd><dt>Amostra_ 242</dt><dd>44.2845</dd><dt>Amostra_ 243</dt><dd>44.215</dd><dt>Amostra_ 244</dt><dd>44.3245</dd><dt>Amostra_ 245</dt><dd>44.046</dd><dt>Amostra_ 246</dt><dd>44.25</dd><dt>Amostra_ 247</dt><dd>43.727</dd><dt>Amostra_ 248</dt><dd>44.2755</dd><dt>Amostra_ 249</dt><dd>44.193</dd><dt>Amostra_ 250</dt><dd>44.143</dd><dt>Amostra_ 251</dt><dd>44.0895</dd><dt>Amostra_ 252</dt><dd>44.1025</dd><dt>Amostra_ 253</dt><dd>44.686</dd><dt>Amostra_ 254</dt><dd>43.8755</dd><dt>Amostra_ 255</dt><dd>44.036</dd><dt>Amostra_ 256</dt><dd>44.201</dd><dt>Amostra_ 257</dt><dd>44.77</dd><dt>Amostra_ 258</dt><dd>44.11</dd><dt>Amostra_ 259</dt><dd>43.7625</dd><dt>Amostra_ 260</dt><dd>44.085</dd><dt>Amostra_ 261</dt><dd>43.6645</dd><dt>Amostra_ 262</dt><dd>44.21</dd><dt>Amostra_ 263</dt><dd>43.967</dd><dt>Amostra_ 264</dt><dd>44.1335</dd><dt>Amostra_ 265</dt><dd>44.695</dd><dt>Amostra_ 266</dt><dd>44.199</dd><dt>Amostra_ 267</dt><dd>44.2495</dd><dt>Amostra_ 268</dt><dd>43.745</dd><dt>Amostra_ 269</dt><dd>44.2135</dd><dt>Amostra_ 270</dt><dd>44.405</dd><dt>Amostra_ 271</dt><dd>43.9</dd><dt>Amostra_ 272</dt><dd>44.1435</dd><dt>Amostra_ 273</dt><dd>44.075</dd><dt>Amostra_ 274</dt><dd>43.849</dd><dt>Amostra_ 275</dt><dd>44.207</dd><dt>Amostra_ 276</dt><dd>43.846</dd><dt>Amostra_ 277</dt><dd>44.1695</dd><dt>Amostra_ 278</dt><dd>44.0005</dd><dt>Amostra_ 279</dt><dd>43.684</dd><dt>Amostra_ 280</dt><dd>43.7745</dd><dt>Amostra_ 281</dt><dd>44.0805</dd><dt>Amostra_ 282</dt><dd>44.031</dd><dt>Amostra_ 283</dt><dd>43.97</dd><dt>Amostra_ 284</dt><dd>43.9305</dd><dt>Amostra_ 285</dt><dd>44.502</dd><dt>Amostra_ 286</dt><dd>44.176</dd><dt>Amostra_ 287</dt><dd>43.982</dd><dt>Amostra_ 288</dt><dd>44.569</dd><dt>Amostra_ 289</dt><dd>44.144</dd><dt>Amostra_ 290</dt><dd>43.9485</dd><dt>Amostra_ 291</dt><dd>43.8785</dd><dt>Amostra_ 292</dt><dd>44.1485</dd><dt>Amostra_ 293</dt><dd>43.7345</dd><dt>Amostra_ 294</dt><dd>43.9155</dd><dt>Amostra_ 295</dt><dd>44.0705</dd><dt>Amostra_ 296</dt><dd>44.2605</dd><dt>Amostra_ 297</dt><dd>43.902</dd><dt>Amostra_ 298</dt><dd>44.634</dd><dt>Amostra_ 299</dt><dd>44.743</dd><dt>Amostra_ 300</dt><dd>44.1415</dd><dt>Amostra_ 301</dt><dd>43.671</dd><dt>Amostra_ 302</dt><dd>44.508</dd><dt>Amostra_ 303</dt><dd>44.292</dd><dt>Amostra_ 304</dt><dd>44.204</dd><dt>Amostra_ 305</dt><dd>44.0305</dd><dt>Amostra_ 306</dt><dd>43.49</dd><dt>Amostra_ 307</dt><dd>44.0535</dd><dt>Amostra_ 308</dt><dd>43.887</dd><dt>Amostra_ 309</dt><dd>44.0515</dd><dt>Amostra_ 310</dt><dd>44.2425</dd><dt>Amostra_ 311</dt><dd>44.3465</dd><dt>Amostra_ 312</dt><dd>44.228</dd><dt>Amostra_ 313</dt><dd>44.2055</dd><dt>Amostra_ 314</dt><dd>43.994</dd><dt>Amostra_ 315</dt><dd>43.6295</dd><dt>Amostra_ 316</dt><dd>43.566</dd><dt>Amostra_ 317</dt><dd>43.633</dd><dt>Amostra_ 318</dt><dd>44.344</dd><dt>Amostra_ 319</dt><dd>44.1715</dd><dt>Amostra_ 320</dt><dd>44.8225</dd><dt>Amostra_ 321</dt><dd>44.207</dd><dt>Amostra_ 322</dt><dd>44.388</dd><dt>Amostra_ 323</dt><dd>44.255</dd><dt>Amostra_ 324</dt><dd>43.7825</dd><dt>Amostra_ 325</dt><dd>44.1515</dd><dt>Amostra_ 326</dt><dd>43.8715</dd><dt>Amostra_ 327</dt><dd>43.9625</dd><dt>Amostra_ 328</dt><dd>43.905</dd><dt>Amostra_ 329</dt><dd>44.417</dd><dt>Amostra_ 330</dt><dd>44.307</dd><dt>Amostra_ 331</dt><dd>43.9265</dd><dt>Amostra_ 332</dt><dd>43.9105</dd><dt>Amostra_ 333</dt><dd>44.2835</dd><dt>Amostra_ 334</dt><dd>43.9445</dd><dt>Amostra_ 335</dt><dd>44.364</dd><dt>Amostra_ 336</dt><dd>44.168</dd><dt>Amostra_ 337</dt><dd>43.8295</dd><dt>Amostra_ 338</dt><dd>43.856</dd><dt>Amostra_ 339</dt><dd>44.3985</dd><dt>Amostra_ 340</dt><dd>44.1565</dd><dt>Amostra_ 341</dt><dd>44.0365</dd><dt>Amostra_ 342</dt><dd>43.7785</dd><dt>Amostra_ 343</dt><dd>44.344</dd><dt>Amostra_ 344</dt><dd>43.981</dd><dt>Amostra_ 345</dt><dd>43.756</dd><dt>Amostra_ 346</dt><dd>44.3495</dd><dt>Amostra_ 347</dt><dd>44.078</dd><dt>Amostra_ 348</dt><dd>43.8645</dd><dt>Amostra_ 349</dt><dd>43.796</dd><dt>Amostra_ 350</dt><dd>44.537</dd><dt>Amostra_ 351</dt><dd>43.92</dd><dt>Amostra_ 352</dt><dd>44.0955</dd><dt>Amostra_ 353</dt><dd>44.2415</dd><dt>Amostra_ 354</dt><dd>44.0175</dd><dt>Amostra_ 355</dt><dd>44.516</dd><dt>Amostra_ 356</dt><dd>44.0315</dd><dt>Amostra_ 357</dt><dd>43.884</dd><dt>Amostra_ 358</dt><dd>43.9805</dd><dt>Amostra_ 359</dt><dd>43.949</dd><dt>Amostra_ 360</dt><dd>44.364</dd><dt>Amostra_ 361</dt><dd>43.94</dd><dt>Amostra_ 362</dt><dd>44.57</dd><dt>Amostra_ 363</dt><dd>44.2835</dd><dt>Amostra_ 364</dt><dd>44.561</dd><dt>Amostra_ 365</dt><dd>44.1155</dd><dt>Amostra_ 366</dt><dd>44.1415</dd><dt>Amostra_ 367</dt><dd>44.504</dd><dt>Amostra_ 368</dt><dd>43.876</dd><dt>Amostra_ 369</dt><dd>44.43</dd><dt>Amostra_ 370</dt><dd>43.738</dd><dt>Amostra_ 371</dt><dd>44.21</dd><dt>Amostra_ 372</dt><dd>43.4445</dd><dt>Amostra_ 373</dt><dd>44.0845</dd><dt>Amostra_ 374</dt><dd>44.2205</dd><dt>Amostra_ 375</dt><dd>43.7395</dd><dt>Amostra_ 376</dt><dd>44.375</dd><dt>Amostra_ 377</dt><dd>44.074</dd><dt>Amostra_ 378</dt><dd>44.046</dd><dt>Amostra_ 379</dt><dd>44.2415</dd><dt>Amostra_ 380</dt><dd>43.826</dd><dt>Amostra_ 381</dt><dd>43.875</dd><dt>Amostra_ 382</dt><dd>44.04</dd><dt>Amostra_ 383</dt><dd>44.3605</dd><dt>Amostra_ 384</dt><dd>43.6715</dd><dt>Amostra_ 385</dt><dd>44.13</dd><dt>Amostra_ 386</dt><dd>44.477</dd><dt>Amostra_ 387</dt><dd>43.9395</dd><dt>Amostra_ 388</dt><dd>44.3985</dd><dt>Amostra_ 389</dt><dd>44.1135</dd><dt>Amostra_ 390</dt><dd>43.7225</dd><dt>Amostra_ 391</dt><dd>44.075</dd><dt>Amostra_ 392</dt><dd>43.6755</dd><dt>Amostra_ 393</dt><dd>44.2945</dd><dt>Amostra_ 394</dt><dd>43.4865</dd><dt>Amostra_ 395</dt><dd>44.17</dd><dt>Amostra_ 396</dt><dd>44.1165</dd><dt>Amostra_ 397</dt><dd>43.7065</dd><dt>Amostra_ 398</dt><dd>44.2105</dd><dt>Amostra_ 399</dt><dd>44.443</dd><dt>Amostra_ 400</dt><dd>44.473</dd><dt>Amostra_ 401</dt><dd>43.948</dd></dl>\n"
      ],
      "text/latex": [
       "\\begin{description*}\n",
       "\\item[Amostra\\textbackslash{}\\_1] 43.863\n",
       "\\item[Amostra\\textbackslash{}\\_ 2] 44.521\n",
       "\\item[Amostra\\textbackslash{}\\_ 3] 43.7675\n",
       "\\item[Amostra\\textbackslash{}\\_ 4] 43.4315\n",
       "\\item[Amostra\\textbackslash{}\\_ 5] 43.925\n",
       "\\item[Amostra\\textbackslash{}\\_ 6] 43.913\n",
       "\\item[Amostra\\textbackslash{}\\_ 7] 44.3235\n",
       "\\item[Amostra\\textbackslash{}\\_ 8] 44.607\n",
       "\\item[Amostra\\textbackslash{}\\_ 9] 43.9155\n",
       "\\item[Amostra\\textbackslash{}\\_ 10] 43.5045\n",
       "\\item[Amostra\\textbackslash{}\\_ 11] 43.8375\n",
       "\\item[Amostra\\textbackslash{}\\_ 12] 43.9435\n",
       "\\item[Amostra\\textbackslash{}\\_ 13] 43.67\n",
       "\\item[Amostra\\textbackslash{}\\_ 14] 44.1435\n",
       "\\item[Amostra\\textbackslash{}\\_ 15] 44.04\n",
       "\\item[Amostra\\textbackslash{}\\_ 16] 44.405\n",
       "\\item[Amostra\\textbackslash{}\\_ 17] 43.9625\n",
       "\\item[Amostra\\textbackslash{}\\_ 18] 43.873\n",
       "\\item[Amostra\\textbackslash{}\\_ 19] 44.085\n",
       "\\item[Amostra\\textbackslash{}\\_ 20] 44.359\n",
       "\\item[Amostra\\textbackslash{}\\_ 21] 43.7365\n",
       "\\item[Amostra\\textbackslash{}\\_ 22] 43.753\n",
       "\\item[Amostra\\textbackslash{}\\_ 23] 43.863\n",
       "\\item[Amostra\\textbackslash{}\\_ 24] 44.474\n",
       "\\item[Amostra\\textbackslash{}\\_ 25] 44.094\n",
       "\\item[Amostra\\textbackslash{}\\_ 26] 44.4615\n",
       "\\item[Amostra\\textbackslash{}\\_ 27] 44.199\n",
       "\\item[Amostra\\textbackslash{}\\_ 28] 44.0075\n",
       "\\item[Amostra\\textbackslash{}\\_ 29] 43.831\n",
       "\\item[Amostra\\textbackslash{}\\_ 30] 44.0135\n",
       "\\item[Amostra\\textbackslash{}\\_ 31] 44.1795\n",
       "\\item[Amostra\\textbackslash{}\\_ 32] 44.569\n",
       "\\item[Amostra\\textbackslash{}\\_ 33] 43.5745\n",
       "\\item[Amostra\\textbackslash{}\\_ 34] 44.5545\n",
       "\\item[Amostra\\textbackslash{}\\_ 35] 43.1915\n",
       "\\item[Amostra\\textbackslash{}\\_ 36] 43.9195\n",
       "\\item[Amostra\\textbackslash{}\\_ 37] 44.366\n",
       "\\item[Amostra\\textbackslash{}\\_ 38] 43.6615\n",
       "\\item[Amostra\\textbackslash{}\\_ 39] 44.221\n",
       "\\item[Amostra\\textbackslash{}\\_ 40] 43.4445\n",
       "\\item[Amostra\\textbackslash{}\\_ 41] 44.2025\n",
       "\\item[Amostra\\textbackslash{}\\_ 42] 43.8385\n",
       "\\item[Amostra\\textbackslash{}\\_ 43] 44.8325\n",
       "\\item[Amostra\\textbackslash{}\\_ 44] 44.302\n",
       "\\item[Amostra\\textbackslash{}\\_ 45] 44.213\n",
       "\\item[Amostra\\textbackslash{}\\_ 46] 44.229\n",
       "\\item[Amostra\\textbackslash{}\\_ 47] 44.4985\n",
       "\\item[Amostra\\textbackslash{}\\_ 48] 43.802\n",
       "\\item[Amostra\\textbackslash{}\\_ 49] 44.181\n",
       "\\item[Amostra\\textbackslash{}\\_ 50] 44.143\n",
       "\\item[Amostra\\textbackslash{}\\_ 51] 44.1285\n",
       "\\item[Amostra\\textbackslash{}\\_ 52] 43.5455\n",
       "\\item[Amostra\\textbackslash{}\\_ 53] 43.9625\n",
       "\\item[Amostra\\textbackslash{}\\_ 54] 44.1375\n",
       "\\item[Amostra\\textbackslash{}\\_ 55] 43.726\n",
       "\\item[Amostra\\textbackslash{}\\_ 56] 44.457\n",
       "\\item[Amostra\\textbackslash{}\\_ 57] 44.075\n",
       "\\item[Amostra\\textbackslash{}\\_ 58] 44.2465\n",
       "\\item[Amostra\\textbackslash{}\\_ 59] 43.823\n",
       "\\item[Amostra\\textbackslash{}\\_ 60] 43.956\n",
       "\\item[Amostra\\textbackslash{}\\_ 61] 43.8025\n",
       "\\item[Amostra\\textbackslash{}\\_ 62] 44.1075\n",
       "\\item[Amostra\\textbackslash{}\\_ 63] 43.79\n",
       "\\item[Amostra\\textbackslash{}\\_ 64] 43.8295\n",
       "\\item[Amostra\\textbackslash{}\\_ 65] 44.2095\n",
       "\\item[Amostra\\textbackslash{}\\_ 66] 44.2495\n",
       "\\item[Amostra\\textbackslash{}\\_ 67] 44.197\n",
       "\\item[Amostra\\textbackslash{}\\_ 68] 44.3415\n",
       "\\item[Amostra\\textbackslash{}\\_ 69] 43.8225\n",
       "\\item[Amostra\\textbackslash{}\\_ 70] 43.8785\n",
       "\\item[Amostra\\textbackslash{}\\_ 71] 44.21\n",
       "\\item[Amostra\\textbackslash{}\\_ 72] 44.136\n",
       "\\item[Amostra\\textbackslash{}\\_ 73] 44.4235\n",
       "\\item[Amostra\\textbackslash{}\\_ 74] 43.799\n",
       "\\item[Amostra\\textbackslash{}\\_ 75] 44.279\n",
       "\\item[Amostra\\textbackslash{}\\_ 76] 44.0095\n",
       "\\item[Amostra\\textbackslash{}\\_ 77] 43.995\n",
       "\\item[Amostra\\textbackslash{}\\_ 78] 44.5315\n",
       "\\item[Amostra\\textbackslash{}\\_ 79] 44.365\n",
       "\\item[Amostra\\textbackslash{}\\_ 80] 44.131\n",
       "\\item[Amostra\\textbackslash{}\\_ 81] 43.768\n",
       "\\item[Amostra\\textbackslash{}\\_ 82] 43.854\n",
       "\\item[Amostra\\textbackslash{}\\_ 83] 44.151\n",
       "\\item[Amostra\\textbackslash{}\\_ 84] 43.9505\n",
       "\\item[Amostra\\textbackslash{}\\_ 85] 44.1765\n",
       "\\item[Amostra\\textbackslash{}\\_ 86] 44.3785\n",
       "\\item[Amostra\\textbackslash{}\\_ 87] 44.0515\n",
       "\\item[Amostra\\textbackslash{}\\_ 88] 43.677\n",
       "\\item[Amostra\\textbackslash{}\\_ 89] 44.3115\n",
       "\\item[Amostra\\textbackslash{}\\_ 90] 44.1085\n",
       "\\item[Amostra\\textbackslash{}\\_ 91] 44.4085\n",
       "\\item[Amostra\\textbackslash{}\\_ 92] 44.1305\n",
       "\\item[Amostra\\textbackslash{}\\_ 93] 44.4815\n",
       "\\item[Amostra\\textbackslash{}\\_ 94] 44.5025\n",
       "\\item[Amostra\\textbackslash{}\\_ 95] 43.96\n",
       "\\item[Amostra\\textbackslash{}\\_ 96] 43.9775\n",
       "\\item[Amostra\\textbackslash{}\\_ 97] 44.1455\n",
       "\\item[Amostra\\textbackslash{}\\_ 98] 43.7525\n",
       "\\item[Amostra\\textbackslash{}\\_ 99] 43.761\n",
       "\\item[Amostra\\textbackslash{}\\_ 100] 44.1115\n",
       "\\item[Amostra\\textbackslash{}\\_ 101] 43.7295\n",
       "\\item[Amostra\\textbackslash{}\\_ 102] 44.153\n",
       "\\item[Amostra\\textbackslash{}\\_ 103] 44.2245\n",
       "\\item[Amostra\\textbackslash{}\\_ 104] 43.8045\n",
       "\\item[Amostra\\textbackslash{}\\_ 105] 44.1275\n",
       "\\item[Amostra\\textbackslash{}\\_ 106] 43.9465\n",
       "\\item[Amostra\\textbackslash{}\\_ 107] 43.904\n",
       "\\item[Amostra\\textbackslash{}\\_ 108] 44.01\n",
       "\\item[Amostra\\textbackslash{}\\_ 109] 44.236\n",
       "\\item[Amostra\\textbackslash{}\\_ 110] 44.129\n",
       "\\item[Amostra\\textbackslash{}\\_ 111] 43.771\n",
       "\\item[Amostra\\textbackslash{}\\_ 112] 44.3445\n",
       "\\item[Amostra\\textbackslash{}\\_ 113] 43.75\n",
       "\\item[Amostra\\textbackslash{}\\_ 114] 44.3225\n",
       "\\item[Amostra\\textbackslash{}\\_ 115] 44.3\n",
       "\\item[Amostra\\textbackslash{}\\_ 116] 44.243\n",
       "\\item[Amostra\\textbackslash{}\\_ 117] 44.2235\n",
       "\\item[Amostra\\textbackslash{}\\_ 118] 43.89\n",
       "\\item[Amostra\\textbackslash{}\\_ 119] 43.899\n",
       "\\item[Amostra\\textbackslash{}\\_ 120] 44.0955\n",
       "\\item[Amostra\\textbackslash{}\\_ 121] 43.3495\n",
       "\\item[Amostra\\textbackslash{}\\_ 122] 43.9265\n",
       "\\item[Amostra\\textbackslash{}\\_ 123] 44.3215\n",
       "\\item[Amostra\\textbackslash{}\\_ 124] 44.2435\n",
       "\\item[Amostra\\textbackslash{}\\_ 125] 43.8885\n",
       "\\item[Amostra\\textbackslash{}\\_ 126] 43.722\n",
       "\\item[Amostra\\textbackslash{}\\_ 127] 44.188\n",
       "\\item[Amostra\\textbackslash{}\\_ 128] 43.7395\n",
       "\\item[Amostra\\textbackslash{}\\_ 129] 43.872\n",
       "\\item[Amostra\\textbackslash{}\\_ 130] 44.2945\n",
       "\\item[Amostra\\textbackslash{}\\_ 131] 43.8455\n",
       "\\item[Amostra\\textbackslash{}\\_ 132] 44.2525\n",
       "\\item[Amostra\\textbackslash{}\\_ 133] 43.7465\n",
       "\\item[Amostra\\textbackslash{}\\_ 134] 43.8105\n",
       "\\item[Amostra\\textbackslash{}\\_ 135] 43.8935\n",
       "\\item[Amostra\\textbackslash{}\\_ 136] 44.0845\n",
       "\\item[Amostra\\textbackslash{}\\_ 137] 44.37\n",
       "\\item[Amostra\\textbackslash{}\\_ 138] 44.201\n",
       "\\item[Amostra\\textbackslash{}\\_ 139] 43.792\n",
       "\\item[Amostra\\textbackslash{}\\_ 140] 44.1835\n",
       "\\item[Amostra\\textbackslash{}\\_ 141] 43.697\n",
       "\\item[Amostra\\textbackslash{}\\_ 142] 44.115\n",
       "\\item[Amostra\\textbackslash{}\\_ 143] 44.192\n",
       "\\item[Amostra\\textbackslash{}\\_ 144] 43.6725\n",
       "\\item[Amostra\\textbackslash{}\\_ 145] 44.538\n",
       "\\item[Amostra\\textbackslash{}\\_ 146] 43.946\n",
       "\\item[Amostra\\textbackslash{}\\_ 147] 44.2185\n",
       "\\item[Amostra\\textbackslash{}\\_ 148] 43.8195\n",
       "\\item[Amostra\\textbackslash{}\\_ 149] 43.777\n",
       "\\item[Amostra\\textbackslash{}\\_ 150] 44.1755\n",
       "\\item[Amostra\\textbackslash{}\\_ 151] 43.688\n",
       "\\item[Amostra\\textbackslash{}\\_ 152] 44.2555\n",
       "\\item[Amostra\\textbackslash{}\\_ 153] 44.1445\n",
       "\\item[Amostra\\textbackslash{}\\_ 154] 43.9235\n",
       "\\item[Amostra\\textbackslash{}\\_ 155] 44.1595\n",
       "\\item[Amostra\\textbackslash{}\\_ 156] 44.5525\n",
       "\\item[Amostra\\textbackslash{}\\_ 157] 44.155\n",
       "\\item[Amostra\\textbackslash{}\\_ 158] 43.7\n",
       "\\item[Amostra\\textbackslash{}\\_ 159] 43.9915\n",
       "\\item[Amostra\\textbackslash{}\\_ 160] 44.7025\n",
       "\\item[Amostra\\textbackslash{}\\_ 161] 44.12\n",
       "\\item[Amostra\\textbackslash{}\\_ 162] 44.152\n",
       "\\item[Amostra\\textbackslash{}\\_ 163] 44.26\n",
       "\\item[Amostra\\textbackslash{}\\_ 164] 43.7855\n",
       "\\item[Amostra\\textbackslash{}\\_ 165] 44.094\n",
       "\\item[Amostra\\textbackslash{}\\_ 166] 44.447\n",
       "\\item[Amostra\\textbackslash{}\\_ 167] 43.821\n",
       "\\item[Amostra\\textbackslash{}\\_ 168] 44.2165\n",
       "\\item[Amostra\\textbackslash{}\\_ 169] 44.2435\n",
       "\\item[Amostra\\textbackslash{}\\_ 170] 44.04\n",
       "\\item[Amostra\\textbackslash{}\\_ 171] 43.9395\n",
       "\\item[Amostra\\textbackslash{}\\_ 172] 44.185\n",
       "\\item[Amostra\\textbackslash{}\\_ 173] 43.468\n",
       "\\item[Amostra\\textbackslash{}\\_ 174] 43.416\n",
       "\\item[Amostra\\textbackslash{}\\_ 175] 44.328\n",
       "\\item[Amostra\\textbackslash{}\\_ 176] 43.658\n",
       "\\item[Amostra\\textbackslash{}\\_ 177] 43.994\n",
       "\\item[Amostra\\textbackslash{}\\_ 178] 43.928\n",
       "\\item[Amostra\\textbackslash{}\\_ 179] 44.0725\n",
       "\\item[Amostra\\textbackslash{}\\_ 180] 43.748\n",
       "\\item[Amostra\\textbackslash{}\\_ 181] 43.73\n",
       "\\item[Amostra\\textbackslash{}\\_ 182] 43.8295\n",
       "\\item[Amostra\\textbackslash{}\\_ 183] 43.93\n",
       "\\item[Amostra\\textbackslash{}\\_ 184] 44.0685\n",
       "\\item[Amostra\\textbackslash{}\\_ 185] 44.031\n",
       "\\item[Amostra\\textbackslash{}\\_ 186] 44.0755\n",
       "\\item[Amostra\\textbackslash{}\\_ 187] 43.985\n",
       "\\item[Amostra\\textbackslash{}\\_ 188] 43.492\n",
       "\\item[Amostra\\textbackslash{}\\_ 189] 44.315\n",
       "\\item[Amostra\\textbackslash{}\\_ 190] 44.0565\n",
       "\\item[Amostra\\textbackslash{}\\_ 191] 44.3315\n",
       "\\item[Amostra\\textbackslash{}\\_ 192] 43.7365\n",
       "\\item[Amostra\\textbackslash{}\\_ 193] 44.3155\n",
       "\\item[Amostra\\textbackslash{}\\_ 194] 44.169\n",
       "\\item[Amostra\\textbackslash{}\\_ 195] 44.1955\n",
       "\\item[Amostra\\textbackslash{}\\_ 196] 43.8425\n",
       "\\item[Amostra\\textbackslash{}\\_ 197] 43.82\n",
       "\\item[Amostra\\textbackslash{}\\_ 198] 43.8525\n",
       "\\item[Amostra\\textbackslash{}\\_ 199] 44.6195\n",
       "\\item[Amostra\\textbackslash{}\\_ 200] 44.255\n",
       "\\item[Amostra\\textbackslash{}\\_ 201] ⋯\n",
       "\\item[Amostra\\textbackslash{}\\_ 202] 44.0535\n",
       "\\item[Amostra\\textbackslash{}\\_ 203] 43.7505\n",
       "\\item[Amostra\\textbackslash{}\\_ 204] 43.949\n",
       "\\item[Amostra\\textbackslash{}\\_ 205] 44.2505\n",
       "\\item[Amostra\\textbackslash{}\\_ 206] 43.829\n",
       "\\item[Amostra\\textbackslash{}\\_ 207] 43.843\n",
       "\\item[Amostra\\textbackslash{}\\_ 208] 44.21\n",
       "\\item[Amostra\\textbackslash{}\\_ 209] 44.46\n",
       "\\item[Amostra\\textbackslash{}\\_ 210] 44.4425\n",
       "\\item[Amostra\\textbackslash{}\\_ 211] 43.874\n",
       "\\item[Amostra\\textbackslash{}\\_ 212] 44.1775\n",
       "\\item[Amostra\\textbackslash{}\\_ 213] 44.1445\n",
       "\\item[Amostra\\textbackslash{}\\_ 214] 43.95\n",
       "\\item[Amostra\\textbackslash{}\\_ 215] 43.852\n",
       "\\item[Amostra\\textbackslash{}\\_ 216] 44.133\n",
       "\\item[Amostra\\textbackslash{}\\_ 217] 43.9675\n",
       "\\item[Amostra\\textbackslash{}\\_ 218] 44.1105\n",
       "\\item[Amostra\\textbackslash{}\\_ 219] 43.9685\n",
       "\\item[Amostra\\textbackslash{}\\_ 220] 43.9845\n",
       "\\item[Amostra\\textbackslash{}\\_ 221] 43.8235\n",
       "\\item[Amostra\\textbackslash{}\\_ 222] 43.602\n",
       "\\item[Amostra\\textbackslash{}\\_ 223] 44.012\n",
       "\\item[Amostra\\textbackslash{}\\_ 224] 44.019\n",
       "\\item[Amostra\\textbackslash{}\\_ 225] 43.9715\n",
       "\\item[Amostra\\textbackslash{}\\_ 226] 43.841\n",
       "\\item[Amostra\\textbackslash{}\\_ 227] 43.8525\n",
       "\\item[Amostra\\textbackslash{}\\_ 228] 43.6675\n",
       "\\item[Amostra\\textbackslash{}\\_ 229] 44.426\n",
       "\\item[Amostra\\textbackslash{}\\_ 230] 43.769\n",
       "\\item[Amostra\\textbackslash{}\\_ 231] 43.9845\n",
       "\\item[Amostra\\textbackslash{}\\_ 232] 44.5805\n",
       "\\item[Amostra\\textbackslash{}\\_ 233] 43.971\n",
       "\\item[Amostra\\textbackslash{}\\_ 234] 43.5585\n",
       "\\item[Amostra\\textbackslash{}\\_ 235] 43.9135\n",
       "\\item[Amostra\\textbackslash{}\\_ 236] 43.9265\n",
       "\\item[Amostra\\textbackslash{}\\_ 237] 44.487\n",
       "\\item[Amostra\\textbackslash{}\\_ 238] 43.9725\n",
       "\\item[Amostra\\textbackslash{}\\_ 239] 43.962\n",
       "\\item[Amostra\\textbackslash{}\\_ 240] 43.719\n",
       "\\item[Amostra\\textbackslash{}\\_ 241] 44.0965\n",
       "\\item[Amostra\\textbackslash{}\\_ 242] 44.2845\n",
       "\\item[Amostra\\textbackslash{}\\_ 243] 44.215\n",
       "\\item[Amostra\\textbackslash{}\\_ 244] 44.3245\n",
       "\\item[Amostra\\textbackslash{}\\_ 245] 44.046\n",
       "\\item[Amostra\\textbackslash{}\\_ 246] 44.25\n",
       "\\item[Amostra\\textbackslash{}\\_ 247] 43.727\n",
       "\\item[Amostra\\textbackslash{}\\_ 248] 44.2755\n",
       "\\item[Amostra\\textbackslash{}\\_ 249] 44.193\n",
       "\\item[Amostra\\textbackslash{}\\_ 250] 44.143\n",
       "\\item[Amostra\\textbackslash{}\\_ 251] 44.0895\n",
       "\\item[Amostra\\textbackslash{}\\_ 252] 44.1025\n",
       "\\item[Amostra\\textbackslash{}\\_ 253] 44.686\n",
       "\\item[Amostra\\textbackslash{}\\_ 254] 43.8755\n",
       "\\item[Amostra\\textbackslash{}\\_ 255] 44.036\n",
       "\\item[Amostra\\textbackslash{}\\_ 256] 44.201\n",
       "\\item[Amostra\\textbackslash{}\\_ 257] 44.77\n",
       "\\item[Amostra\\textbackslash{}\\_ 258] 44.11\n",
       "\\item[Amostra\\textbackslash{}\\_ 259] 43.7625\n",
       "\\item[Amostra\\textbackslash{}\\_ 260] 44.085\n",
       "\\item[Amostra\\textbackslash{}\\_ 261] 43.6645\n",
       "\\item[Amostra\\textbackslash{}\\_ 262] 44.21\n",
       "\\item[Amostra\\textbackslash{}\\_ 263] 43.967\n",
       "\\item[Amostra\\textbackslash{}\\_ 264] 44.1335\n",
       "\\item[Amostra\\textbackslash{}\\_ 265] 44.695\n",
       "\\item[Amostra\\textbackslash{}\\_ 266] 44.199\n",
       "\\item[Amostra\\textbackslash{}\\_ 267] 44.2495\n",
       "\\item[Amostra\\textbackslash{}\\_ 268] 43.745\n",
       "\\item[Amostra\\textbackslash{}\\_ 269] 44.2135\n",
       "\\item[Amostra\\textbackslash{}\\_ 270] 44.405\n",
       "\\item[Amostra\\textbackslash{}\\_ 271] 43.9\n",
       "\\item[Amostra\\textbackslash{}\\_ 272] 44.1435\n",
       "\\item[Amostra\\textbackslash{}\\_ 273] 44.075\n",
       "\\item[Amostra\\textbackslash{}\\_ 274] 43.849\n",
       "\\item[Amostra\\textbackslash{}\\_ 275] 44.207\n",
       "\\item[Amostra\\textbackslash{}\\_ 276] 43.846\n",
       "\\item[Amostra\\textbackslash{}\\_ 277] 44.1695\n",
       "\\item[Amostra\\textbackslash{}\\_ 278] 44.0005\n",
       "\\item[Amostra\\textbackslash{}\\_ 279] 43.684\n",
       "\\item[Amostra\\textbackslash{}\\_ 280] 43.7745\n",
       "\\item[Amostra\\textbackslash{}\\_ 281] 44.0805\n",
       "\\item[Amostra\\textbackslash{}\\_ 282] 44.031\n",
       "\\item[Amostra\\textbackslash{}\\_ 283] 43.97\n",
       "\\item[Amostra\\textbackslash{}\\_ 284] 43.9305\n",
       "\\item[Amostra\\textbackslash{}\\_ 285] 44.502\n",
       "\\item[Amostra\\textbackslash{}\\_ 286] 44.176\n",
       "\\item[Amostra\\textbackslash{}\\_ 287] 43.982\n",
       "\\item[Amostra\\textbackslash{}\\_ 288] 44.569\n",
       "\\item[Amostra\\textbackslash{}\\_ 289] 44.144\n",
       "\\item[Amostra\\textbackslash{}\\_ 290] 43.9485\n",
       "\\item[Amostra\\textbackslash{}\\_ 291] 43.8785\n",
       "\\item[Amostra\\textbackslash{}\\_ 292] 44.1485\n",
       "\\item[Amostra\\textbackslash{}\\_ 293] 43.7345\n",
       "\\item[Amostra\\textbackslash{}\\_ 294] 43.9155\n",
       "\\item[Amostra\\textbackslash{}\\_ 295] 44.0705\n",
       "\\item[Amostra\\textbackslash{}\\_ 296] 44.2605\n",
       "\\item[Amostra\\textbackslash{}\\_ 297] 43.902\n",
       "\\item[Amostra\\textbackslash{}\\_ 298] 44.634\n",
       "\\item[Amostra\\textbackslash{}\\_ 299] 44.743\n",
       "\\item[Amostra\\textbackslash{}\\_ 300] 44.1415\n",
       "\\item[Amostra\\textbackslash{}\\_ 301] 43.671\n",
       "\\item[Amostra\\textbackslash{}\\_ 302] 44.508\n",
       "\\item[Amostra\\textbackslash{}\\_ 303] 44.292\n",
       "\\item[Amostra\\textbackslash{}\\_ 304] 44.204\n",
       "\\item[Amostra\\textbackslash{}\\_ 305] 44.0305\n",
       "\\item[Amostra\\textbackslash{}\\_ 306] 43.49\n",
       "\\item[Amostra\\textbackslash{}\\_ 307] 44.0535\n",
       "\\item[Amostra\\textbackslash{}\\_ 308] 43.887\n",
       "\\item[Amostra\\textbackslash{}\\_ 309] 44.0515\n",
       "\\item[Amostra\\textbackslash{}\\_ 310] 44.2425\n",
       "\\item[Amostra\\textbackslash{}\\_ 311] 44.3465\n",
       "\\item[Amostra\\textbackslash{}\\_ 312] 44.228\n",
       "\\item[Amostra\\textbackslash{}\\_ 313] 44.2055\n",
       "\\item[Amostra\\textbackslash{}\\_ 314] 43.994\n",
       "\\item[Amostra\\textbackslash{}\\_ 315] 43.6295\n",
       "\\item[Amostra\\textbackslash{}\\_ 316] 43.566\n",
       "\\item[Amostra\\textbackslash{}\\_ 317] 43.633\n",
       "\\item[Amostra\\textbackslash{}\\_ 318] 44.344\n",
       "\\item[Amostra\\textbackslash{}\\_ 319] 44.1715\n",
       "\\item[Amostra\\textbackslash{}\\_ 320] 44.8225\n",
       "\\item[Amostra\\textbackslash{}\\_ 321] 44.207\n",
       "\\item[Amostra\\textbackslash{}\\_ 322] 44.388\n",
       "\\item[Amostra\\textbackslash{}\\_ 323] 44.255\n",
       "\\item[Amostra\\textbackslash{}\\_ 324] 43.7825\n",
       "\\item[Amostra\\textbackslash{}\\_ 325] 44.1515\n",
       "\\item[Amostra\\textbackslash{}\\_ 326] 43.8715\n",
       "\\item[Amostra\\textbackslash{}\\_ 327] 43.9625\n",
       "\\item[Amostra\\textbackslash{}\\_ 328] 43.905\n",
       "\\item[Amostra\\textbackslash{}\\_ 329] 44.417\n",
       "\\item[Amostra\\textbackslash{}\\_ 330] 44.307\n",
       "\\item[Amostra\\textbackslash{}\\_ 331] 43.9265\n",
       "\\item[Amostra\\textbackslash{}\\_ 332] 43.9105\n",
       "\\item[Amostra\\textbackslash{}\\_ 333] 44.2835\n",
       "\\item[Amostra\\textbackslash{}\\_ 334] 43.9445\n",
       "\\item[Amostra\\textbackslash{}\\_ 335] 44.364\n",
       "\\item[Amostra\\textbackslash{}\\_ 336] 44.168\n",
       "\\item[Amostra\\textbackslash{}\\_ 337] 43.8295\n",
       "\\item[Amostra\\textbackslash{}\\_ 338] 43.856\n",
       "\\item[Amostra\\textbackslash{}\\_ 339] 44.3985\n",
       "\\item[Amostra\\textbackslash{}\\_ 340] 44.1565\n",
       "\\item[Amostra\\textbackslash{}\\_ 341] 44.0365\n",
       "\\item[Amostra\\textbackslash{}\\_ 342] 43.7785\n",
       "\\item[Amostra\\textbackslash{}\\_ 343] 44.344\n",
       "\\item[Amostra\\textbackslash{}\\_ 344] 43.981\n",
       "\\item[Amostra\\textbackslash{}\\_ 345] 43.756\n",
       "\\item[Amostra\\textbackslash{}\\_ 346] 44.3495\n",
       "\\item[Amostra\\textbackslash{}\\_ 347] 44.078\n",
       "\\item[Amostra\\textbackslash{}\\_ 348] 43.8645\n",
       "\\item[Amostra\\textbackslash{}\\_ 349] 43.796\n",
       "\\item[Amostra\\textbackslash{}\\_ 350] 44.537\n",
       "\\item[Amostra\\textbackslash{}\\_ 351] 43.92\n",
       "\\item[Amostra\\textbackslash{}\\_ 352] 44.0955\n",
       "\\item[Amostra\\textbackslash{}\\_ 353] 44.2415\n",
       "\\item[Amostra\\textbackslash{}\\_ 354] 44.0175\n",
       "\\item[Amostra\\textbackslash{}\\_ 355] 44.516\n",
       "\\item[Amostra\\textbackslash{}\\_ 356] 44.0315\n",
       "\\item[Amostra\\textbackslash{}\\_ 357] 43.884\n",
       "\\item[Amostra\\textbackslash{}\\_ 358] 43.9805\n",
       "\\item[Amostra\\textbackslash{}\\_ 359] 43.949\n",
       "\\item[Amostra\\textbackslash{}\\_ 360] 44.364\n",
       "\\item[Amostra\\textbackslash{}\\_ 361] 43.94\n",
       "\\item[Amostra\\textbackslash{}\\_ 362] 44.57\n",
       "\\item[Amostra\\textbackslash{}\\_ 363] 44.2835\n",
       "\\item[Amostra\\textbackslash{}\\_ 364] 44.561\n",
       "\\item[Amostra\\textbackslash{}\\_ 365] 44.1155\n",
       "\\item[Amostra\\textbackslash{}\\_ 366] 44.1415\n",
       "\\item[Amostra\\textbackslash{}\\_ 367] 44.504\n",
       "\\item[Amostra\\textbackslash{}\\_ 368] 43.876\n",
       "\\item[Amostra\\textbackslash{}\\_ 369] 44.43\n",
       "\\item[Amostra\\textbackslash{}\\_ 370] 43.738\n",
       "\\item[Amostra\\textbackslash{}\\_ 371] 44.21\n",
       "\\item[Amostra\\textbackslash{}\\_ 372] 43.4445\n",
       "\\item[Amostra\\textbackslash{}\\_ 373] 44.0845\n",
       "\\item[Amostra\\textbackslash{}\\_ 374] 44.2205\n",
       "\\item[Amostra\\textbackslash{}\\_ 375] 43.7395\n",
       "\\item[Amostra\\textbackslash{}\\_ 376] 44.375\n",
       "\\item[Amostra\\textbackslash{}\\_ 377] 44.074\n",
       "\\item[Amostra\\textbackslash{}\\_ 378] 44.046\n",
       "\\item[Amostra\\textbackslash{}\\_ 379] 44.2415\n",
       "\\item[Amostra\\textbackslash{}\\_ 380] 43.826\n",
       "\\item[Amostra\\textbackslash{}\\_ 381] 43.875\n",
       "\\item[Amostra\\textbackslash{}\\_ 382] 44.04\n",
       "\\item[Amostra\\textbackslash{}\\_ 383] 44.3605\n",
       "\\item[Amostra\\textbackslash{}\\_ 384] 43.6715\n",
       "\\item[Amostra\\textbackslash{}\\_ 385] 44.13\n",
       "\\item[Amostra\\textbackslash{}\\_ 386] 44.477\n",
       "\\item[Amostra\\textbackslash{}\\_ 387] 43.9395\n",
       "\\item[Amostra\\textbackslash{}\\_ 388] 44.3985\n",
       "\\item[Amostra\\textbackslash{}\\_ 389] 44.1135\n",
       "\\item[Amostra\\textbackslash{}\\_ 390] 43.7225\n",
       "\\item[Amostra\\textbackslash{}\\_ 391] 44.075\n",
       "\\item[Amostra\\textbackslash{}\\_ 392] 43.6755\n",
       "\\item[Amostra\\textbackslash{}\\_ 393] 44.2945\n",
       "\\item[Amostra\\textbackslash{}\\_ 394] 43.4865\n",
       "\\item[Amostra\\textbackslash{}\\_ 395] 44.17\n",
       "\\item[Amostra\\textbackslash{}\\_ 396] 44.1165\n",
       "\\item[Amostra\\textbackslash{}\\_ 397] 43.7065\n",
       "\\item[Amostra\\textbackslash{}\\_ 398] 44.2105\n",
       "\\item[Amostra\\textbackslash{}\\_ 399] 44.443\n",
       "\\item[Amostra\\textbackslash{}\\_ 400] 44.473\n",
       "\\item[Amostra\\textbackslash{}\\_ 401] 43.948\n",
       "\\end{description*}\n"
      ],
      "text/markdown": [
       "Amostra_1\n",
       ":   43.863Amostra_ 2\n",
       ":   44.521Amostra_ 3\n",
       ":   43.7675Amostra_ 4\n",
       ":   43.4315Amostra_ 5\n",
       ":   43.925Amostra_ 6\n",
       ":   43.913Amostra_ 7\n",
       ":   44.3235Amostra_ 8\n",
       ":   44.607Amostra_ 9\n",
       ":   43.9155Amostra_ 10\n",
       ":   43.5045Amostra_ 11\n",
       ":   43.8375Amostra_ 12\n",
       ":   43.9435Amostra_ 13\n",
       ":   43.67Amostra_ 14\n",
       ":   44.1435Amostra_ 15\n",
       ":   44.04Amostra_ 16\n",
       ":   44.405Amostra_ 17\n",
       ":   43.9625Amostra_ 18\n",
       ":   43.873Amostra_ 19\n",
       ":   44.085Amostra_ 20\n",
       ":   44.359Amostra_ 21\n",
       ":   43.7365Amostra_ 22\n",
       ":   43.753Amostra_ 23\n",
       ":   43.863Amostra_ 24\n",
       ":   44.474Amostra_ 25\n",
       ":   44.094Amostra_ 26\n",
       ":   44.4615Amostra_ 27\n",
       ":   44.199Amostra_ 28\n",
       ":   44.0075Amostra_ 29\n",
       ":   43.831Amostra_ 30\n",
       ":   44.0135Amostra_ 31\n",
       ":   44.1795Amostra_ 32\n",
       ":   44.569Amostra_ 33\n",
       ":   43.5745Amostra_ 34\n",
       ":   44.5545Amostra_ 35\n",
       ":   43.1915Amostra_ 36\n",
       ":   43.9195Amostra_ 37\n",
       ":   44.366Amostra_ 38\n",
       ":   43.6615Amostra_ 39\n",
       ":   44.221Amostra_ 40\n",
       ":   43.4445Amostra_ 41\n",
       ":   44.2025Amostra_ 42\n",
       ":   43.8385Amostra_ 43\n",
       ":   44.8325Amostra_ 44\n",
       ":   44.302Amostra_ 45\n",
       ":   44.213Amostra_ 46\n",
       ":   44.229Amostra_ 47\n",
       ":   44.4985Amostra_ 48\n",
       ":   43.802Amostra_ 49\n",
       ":   44.181Amostra_ 50\n",
       ":   44.143Amostra_ 51\n",
       ":   44.1285Amostra_ 52\n",
       ":   43.5455Amostra_ 53\n",
       ":   43.9625Amostra_ 54\n",
       ":   44.1375Amostra_ 55\n",
       ":   43.726Amostra_ 56\n",
       ":   44.457Amostra_ 57\n",
       ":   44.075Amostra_ 58\n",
       ":   44.2465Amostra_ 59\n",
       ":   43.823Amostra_ 60\n",
       ":   43.956Amostra_ 61\n",
       ":   43.8025Amostra_ 62\n",
       ":   44.1075Amostra_ 63\n",
       ":   43.79Amostra_ 64\n",
       ":   43.8295Amostra_ 65\n",
       ":   44.2095Amostra_ 66\n",
       ":   44.2495Amostra_ 67\n",
       ":   44.197Amostra_ 68\n",
       ":   44.3415Amostra_ 69\n",
       ":   43.8225Amostra_ 70\n",
       ":   43.8785Amostra_ 71\n",
       ":   44.21Amostra_ 72\n",
       ":   44.136Amostra_ 73\n",
       ":   44.4235Amostra_ 74\n",
       ":   43.799Amostra_ 75\n",
       ":   44.279Amostra_ 76\n",
       ":   44.0095Amostra_ 77\n",
       ":   43.995Amostra_ 78\n",
       ":   44.5315Amostra_ 79\n",
       ":   44.365Amostra_ 80\n",
       ":   44.131Amostra_ 81\n",
       ":   43.768Amostra_ 82\n",
       ":   43.854Amostra_ 83\n",
       ":   44.151Amostra_ 84\n",
       ":   43.9505Amostra_ 85\n",
       ":   44.1765Amostra_ 86\n",
       ":   44.3785Amostra_ 87\n",
       ":   44.0515Amostra_ 88\n",
       ":   43.677Amostra_ 89\n",
       ":   44.3115Amostra_ 90\n",
       ":   44.1085Amostra_ 91\n",
       ":   44.4085Amostra_ 92\n",
       ":   44.1305Amostra_ 93\n",
       ":   44.4815Amostra_ 94\n",
       ":   44.5025Amostra_ 95\n",
       ":   43.96Amostra_ 96\n",
       ":   43.9775Amostra_ 97\n",
       ":   44.1455Amostra_ 98\n",
       ":   43.7525Amostra_ 99\n",
       ":   43.761Amostra_ 100\n",
       ":   44.1115Amostra_ 101\n",
       ":   43.7295Amostra_ 102\n",
       ":   44.153Amostra_ 103\n",
       ":   44.2245Amostra_ 104\n",
       ":   43.8045Amostra_ 105\n",
       ":   44.1275Amostra_ 106\n",
       ":   43.9465Amostra_ 107\n",
       ":   43.904Amostra_ 108\n",
       ":   44.01Amostra_ 109\n",
       ":   44.236Amostra_ 110\n",
       ":   44.129Amostra_ 111\n",
       ":   43.771Amostra_ 112\n",
       ":   44.3445Amostra_ 113\n",
       ":   43.75Amostra_ 114\n",
       ":   44.3225Amostra_ 115\n",
       ":   44.3Amostra_ 116\n",
       ":   44.243Amostra_ 117\n",
       ":   44.2235Amostra_ 118\n",
       ":   43.89Amostra_ 119\n",
       ":   43.899Amostra_ 120\n",
       ":   44.0955Amostra_ 121\n",
       ":   43.3495Amostra_ 122\n",
       ":   43.9265Amostra_ 123\n",
       ":   44.3215Amostra_ 124\n",
       ":   44.2435Amostra_ 125\n",
       ":   43.8885Amostra_ 126\n",
       ":   43.722Amostra_ 127\n",
       ":   44.188Amostra_ 128\n",
       ":   43.7395Amostra_ 129\n",
       ":   43.872Amostra_ 130\n",
       ":   44.2945Amostra_ 131\n",
       ":   43.8455Amostra_ 132\n",
       ":   44.2525Amostra_ 133\n",
       ":   43.7465Amostra_ 134\n",
       ":   43.8105Amostra_ 135\n",
       ":   43.8935Amostra_ 136\n",
       ":   44.0845Amostra_ 137\n",
       ":   44.37Amostra_ 138\n",
       ":   44.201Amostra_ 139\n",
       ":   43.792Amostra_ 140\n",
       ":   44.1835Amostra_ 141\n",
       ":   43.697Amostra_ 142\n",
       ":   44.115Amostra_ 143\n",
       ":   44.192Amostra_ 144\n",
       ":   43.6725Amostra_ 145\n",
       ":   44.538Amostra_ 146\n",
       ":   43.946Amostra_ 147\n",
       ":   44.2185Amostra_ 148\n",
       ":   43.8195Amostra_ 149\n",
       ":   43.777Amostra_ 150\n",
       ":   44.1755Amostra_ 151\n",
       ":   43.688Amostra_ 152\n",
       ":   44.2555Amostra_ 153\n",
       ":   44.1445Amostra_ 154\n",
       ":   43.9235Amostra_ 155\n",
       ":   44.1595Amostra_ 156\n",
       ":   44.5525Amostra_ 157\n",
       ":   44.155Amostra_ 158\n",
       ":   43.7Amostra_ 159\n",
       ":   43.9915Amostra_ 160\n",
       ":   44.7025Amostra_ 161\n",
       ":   44.12Amostra_ 162\n",
       ":   44.152Amostra_ 163\n",
       ":   44.26Amostra_ 164\n",
       ":   43.7855Amostra_ 165\n",
       ":   44.094Amostra_ 166\n",
       ":   44.447Amostra_ 167\n",
       ":   43.821Amostra_ 168\n",
       ":   44.2165Amostra_ 169\n",
       ":   44.2435Amostra_ 170\n",
       ":   44.04Amostra_ 171\n",
       ":   43.9395Amostra_ 172\n",
       ":   44.185Amostra_ 173\n",
       ":   43.468Amostra_ 174\n",
       ":   43.416Amostra_ 175\n",
       ":   44.328Amostra_ 176\n",
       ":   43.658Amostra_ 177\n",
       ":   43.994Amostra_ 178\n",
       ":   43.928Amostra_ 179\n",
       ":   44.0725Amostra_ 180\n",
       ":   43.748Amostra_ 181\n",
       ":   43.73Amostra_ 182\n",
       ":   43.8295Amostra_ 183\n",
       ":   43.93Amostra_ 184\n",
       ":   44.0685Amostra_ 185\n",
       ":   44.031Amostra_ 186\n",
       ":   44.0755Amostra_ 187\n",
       ":   43.985Amostra_ 188\n",
       ":   43.492Amostra_ 189\n",
       ":   44.315Amostra_ 190\n",
       ":   44.0565Amostra_ 191\n",
       ":   44.3315Amostra_ 192\n",
       ":   43.7365Amostra_ 193\n",
       ":   44.3155Amostra_ 194\n",
       ":   44.169Amostra_ 195\n",
       ":   44.1955Amostra_ 196\n",
       ":   43.8425Amostra_ 197\n",
       ":   43.82Amostra_ 198\n",
       ":   43.8525Amostra_ 199\n",
       ":   44.6195Amostra_ 200\n",
       ":   44.255Amostra_ 201\n",
       ":   ⋯Amostra_ 202\n",
       ":   44.0535Amostra_ 203\n",
       ":   43.7505Amostra_ 204\n",
       ":   43.949Amostra_ 205\n",
       ":   44.2505Amostra_ 206\n",
       ":   43.829Amostra_ 207\n",
       ":   43.843Amostra_ 208\n",
       ":   44.21Amostra_ 209\n",
       ":   44.46Amostra_ 210\n",
       ":   44.4425Amostra_ 211\n",
       ":   43.874Amostra_ 212\n",
       ":   44.1775Amostra_ 213\n",
       ":   44.1445Amostra_ 214\n",
       ":   43.95Amostra_ 215\n",
       ":   43.852Amostra_ 216\n",
       ":   44.133Amostra_ 217\n",
       ":   43.9675Amostra_ 218\n",
       ":   44.1105Amostra_ 219\n",
       ":   43.9685Amostra_ 220\n",
       ":   43.9845Amostra_ 221\n",
       ":   43.8235Amostra_ 222\n",
       ":   43.602Amostra_ 223\n",
       ":   44.012Amostra_ 224\n",
       ":   44.019Amostra_ 225\n",
       ":   43.9715Amostra_ 226\n",
       ":   43.841Amostra_ 227\n",
       ":   43.8525Amostra_ 228\n",
       ":   43.6675Amostra_ 229\n",
       ":   44.426Amostra_ 230\n",
       ":   43.769Amostra_ 231\n",
       ":   43.9845Amostra_ 232\n",
       ":   44.5805Amostra_ 233\n",
       ":   43.971Amostra_ 234\n",
       ":   43.5585Amostra_ 235\n",
       ":   43.9135Amostra_ 236\n",
       ":   43.9265Amostra_ 237\n",
       ":   44.487Amostra_ 238\n",
       ":   43.9725Amostra_ 239\n",
       ":   43.962Amostra_ 240\n",
       ":   43.719Amostra_ 241\n",
       ":   44.0965Amostra_ 242\n",
       ":   44.2845Amostra_ 243\n",
       ":   44.215Amostra_ 244\n",
       ":   44.3245Amostra_ 245\n",
       ":   44.046Amostra_ 246\n",
       ":   44.25Amostra_ 247\n",
       ":   43.727Amostra_ 248\n",
       ":   44.2755Amostra_ 249\n",
       ":   44.193Amostra_ 250\n",
       ":   44.143Amostra_ 251\n",
       ":   44.0895Amostra_ 252\n",
       ":   44.1025Amostra_ 253\n",
       ":   44.686Amostra_ 254\n",
       ":   43.8755Amostra_ 255\n",
       ":   44.036Amostra_ 256\n",
       ":   44.201Amostra_ 257\n",
       ":   44.77Amostra_ 258\n",
       ":   44.11Amostra_ 259\n",
       ":   43.7625Amostra_ 260\n",
       ":   44.085Amostra_ 261\n",
       ":   43.6645Amostra_ 262\n",
       ":   44.21Amostra_ 263\n",
       ":   43.967Amostra_ 264\n",
       ":   44.1335Amostra_ 265\n",
       ":   44.695Amostra_ 266\n",
       ":   44.199Amostra_ 267\n",
       ":   44.2495Amostra_ 268\n",
       ":   43.745Amostra_ 269\n",
       ":   44.2135Amostra_ 270\n",
       ":   44.405Amostra_ 271\n",
       ":   43.9Amostra_ 272\n",
       ":   44.1435Amostra_ 273\n",
       ":   44.075Amostra_ 274\n",
       ":   43.849Amostra_ 275\n",
       ":   44.207Amostra_ 276\n",
       ":   43.846Amostra_ 277\n",
       ":   44.1695Amostra_ 278\n",
       ":   44.0005Amostra_ 279\n",
       ":   43.684Amostra_ 280\n",
       ":   43.7745Amostra_ 281\n",
       ":   44.0805Amostra_ 282\n",
       ":   44.031Amostra_ 283\n",
       ":   43.97Amostra_ 284\n",
       ":   43.9305Amostra_ 285\n",
       ":   44.502Amostra_ 286\n",
       ":   44.176Amostra_ 287\n",
       ":   43.982Amostra_ 288\n",
       ":   44.569Amostra_ 289\n",
       ":   44.144Amostra_ 290\n",
       ":   43.9485Amostra_ 291\n",
       ":   43.8785Amostra_ 292\n",
       ":   44.1485Amostra_ 293\n",
       ":   43.7345Amostra_ 294\n",
       ":   43.9155Amostra_ 295\n",
       ":   44.0705Amostra_ 296\n",
       ":   44.2605Amostra_ 297\n",
       ":   43.902Amostra_ 298\n",
       ":   44.634Amostra_ 299\n",
       ":   44.743Amostra_ 300\n",
       ":   44.1415Amostra_ 301\n",
       ":   43.671Amostra_ 302\n",
       ":   44.508Amostra_ 303\n",
       ":   44.292Amostra_ 304\n",
       ":   44.204Amostra_ 305\n",
       ":   44.0305Amostra_ 306\n",
       ":   43.49Amostra_ 307\n",
       ":   44.0535Amostra_ 308\n",
       ":   43.887Amostra_ 309\n",
       ":   44.0515Amostra_ 310\n",
       ":   44.2425Amostra_ 311\n",
       ":   44.3465Amostra_ 312\n",
       ":   44.228Amostra_ 313\n",
       ":   44.2055Amostra_ 314\n",
       ":   43.994Amostra_ 315\n",
       ":   43.6295Amostra_ 316\n",
       ":   43.566Amostra_ 317\n",
       ":   43.633Amostra_ 318\n",
       ":   44.344Amostra_ 319\n",
       ":   44.1715Amostra_ 320\n",
       ":   44.8225Amostra_ 321\n",
       ":   44.207Amostra_ 322\n",
       ":   44.388Amostra_ 323\n",
       ":   44.255Amostra_ 324\n",
       ":   43.7825Amostra_ 325\n",
       ":   44.1515Amostra_ 326\n",
       ":   43.8715Amostra_ 327\n",
       ":   43.9625Amostra_ 328\n",
       ":   43.905Amostra_ 329\n",
       ":   44.417Amostra_ 330\n",
       ":   44.307Amostra_ 331\n",
       ":   43.9265Amostra_ 332\n",
       ":   43.9105Amostra_ 333\n",
       ":   44.2835Amostra_ 334\n",
       ":   43.9445Amostra_ 335\n",
       ":   44.364Amostra_ 336\n",
       ":   44.168Amostra_ 337\n",
       ":   43.8295Amostra_ 338\n",
       ":   43.856Amostra_ 339\n",
       ":   44.3985Amostra_ 340\n",
       ":   44.1565Amostra_ 341\n",
       ":   44.0365Amostra_ 342\n",
       ":   43.7785Amostra_ 343\n",
       ":   44.344Amostra_ 344\n",
       ":   43.981Amostra_ 345\n",
       ":   43.756Amostra_ 346\n",
       ":   44.3495Amostra_ 347\n",
       ":   44.078Amostra_ 348\n",
       ":   43.8645Amostra_ 349\n",
       ":   43.796Amostra_ 350\n",
       ":   44.537Amostra_ 351\n",
       ":   43.92Amostra_ 352\n",
       ":   44.0955Amostra_ 353\n",
       ":   44.2415Amostra_ 354\n",
       ":   44.0175Amostra_ 355\n",
       ":   44.516Amostra_ 356\n",
       ":   44.0315Amostra_ 357\n",
       ":   43.884Amostra_ 358\n",
       ":   43.9805Amostra_ 359\n",
       ":   43.949Amostra_ 360\n",
       ":   44.364Amostra_ 361\n",
       ":   43.94Amostra_ 362\n",
       ":   44.57Amostra_ 363\n",
       ":   44.2835Amostra_ 364\n",
       ":   44.561Amostra_ 365\n",
       ":   44.1155Amostra_ 366\n",
       ":   44.1415Amostra_ 367\n",
       ":   44.504Amostra_ 368\n",
       ":   43.876Amostra_ 369\n",
       ":   44.43Amostra_ 370\n",
       ":   43.738Amostra_ 371\n",
       ":   44.21Amostra_ 372\n",
       ":   43.4445Amostra_ 373\n",
       ":   44.0845Amostra_ 374\n",
       ":   44.2205Amostra_ 375\n",
       ":   43.7395Amostra_ 376\n",
       ":   44.375Amostra_ 377\n",
       ":   44.074Amostra_ 378\n",
       ":   44.046Amostra_ 379\n",
       ":   44.2415Amostra_ 380\n",
       ":   43.826Amostra_ 381\n",
       ":   43.875Amostra_ 382\n",
       ":   44.04Amostra_ 383\n",
       ":   44.3605Amostra_ 384\n",
       ":   43.6715Amostra_ 385\n",
       ":   44.13Amostra_ 386\n",
       ":   44.477Amostra_ 387\n",
       ":   43.9395Amostra_ 388\n",
       ":   44.3985Amostra_ 389\n",
       ":   44.1135Amostra_ 390\n",
       ":   43.7225Amostra_ 391\n",
       ":   44.075Amostra_ 392\n",
       ":   43.6755Amostra_ 393\n",
       ":   44.2945Amostra_ 394\n",
       ":   43.4865Amostra_ 395\n",
       ":   44.17Amostra_ 396\n",
       ":   44.1165Amostra_ 397\n",
       ":   43.7065Amostra_ 398\n",
       ":   44.2105Amostra_ 399\n",
       ":   44.443Amostra_ 400\n",
       ":   44.473Amostra_ 401\n",
       ":   43.948\n",
       "\n"
      ],
      "text/plain": [
       "    Amostra_1    Amostra_ 2    Amostra_ 3    Amostra_ 4    Amostra_ 5 \n",
       "      43.8630       44.5210       43.7675       43.4315       43.9250 \n",
       "   Amostra_ 6    Amostra_ 7    Amostra_ 8    Amostra_ 9   Amostra_ 10 \n",
       "      43.9130       44.3235       44.6070       43.9155       43.5045 \n",
       "  Amostra_ 11   Amostra_ 12   Amostra_ 13   Amostra_ 14   Amostra_ 15 \n",
       "      43.8375       43.9435       43.6700       44.1435       44.0400 \n",
       "  Amostra_ 16   Amostra_ 17   Amostra_ 18   Amostra_ 19   Amostra_ 20 \n",
       "      44.4050       43.9625       43.8730       44.0850       44.3590 \n",
       "  Amostra_ 21   Amostra_ 22   Amostra_ 23   Amostra_ 24   Amostra_ 25 \n",
       "      43.7365       43.7530       43.8630       44.4740       44.0940 \n",
       "  Amostra_ 26   Amostra_ 27   Amostra_ 28   Amostra_ 29   Amostra_ 30 \n",
       "      44.4615       44.1990       44.0075       43.8310       44.0135 \n",
       "  Amostra_ 31   Amostra_ 32   Amostra_ 33   Amostra_ 34   Amostra_ 35 \n",
       "      44.1795       44.5690       43.5745       44.5545       43.1915 \n",
       "  Amostra_ 36   Amostra_ 37   Amostra_ 38   Amostra_ 39   Amostra_ 40 \n",
       "      43.9195       44.3660       43.6615       44.2210       43.4445 \n",
       "  Amostra_ 41   Amostra_ 42   Amostra_ 43   Amostra_ 44   Amostra_ 45 \n",
       "      44.2025       43.8385       44.8325       44.3020       44.2130 \n",
       "  Amostra_ 46   Amostra_ 47   Amostra_ 48   Amostra_ 49   Amostra_ 50 \n",
       "      44.2290       44.4985       43.8020       44.1810       44.1430 \n",
       "  Amostra_ 51   Amostra_ 52   Amostra_ 53   Amostra_ 54   Amostra_ 55 \n",
       "      44.1285       43.5455       43.9625       44.1375       43.7260 \n",
       "  Amostra_ 56   Amostra_ 57   Amostra_ 58   Amostra_ 59   Amostra_ 60 \n",
       "      44.4570       44.0750       44.2465       43.8230       43.9560 \n",
       "  Amostra_ 61   Amostra_ 62   Amostra_ 63   Amostra_ 64   Amostra_ 65 \n",
       "      43.8025       44.1075       43.7900       43.8295       44.2095 \n",
       "  Amostra_ 66   Amostra_ 67   Amostra_ 68   Amostra_ 69   Amostra_ 70 \n",
       "      44.2495       44.1970       44.3415       43.8225       43.8785 \n",
       "  Amostra_ 71   Amostra_ 72   Amostra_ 73   Amostra_ 74   Amostra_ 75 \n",
       "      44.2100       44.1360       44.4235       43.7990       44.2790 \n",
       "  Amostra_ 76   Amostra_ 77   Amostra_ 78   Amostra_ 79   Amostra_ 80 \n",
       "      44.0095       43.9950       44.5315       44.3650       44.1310 \n",
       "  Amostra_ 81   Amostra_ 82   Amostra_ 83   Amostra_ 84   Amostra_ 85 \n",
       "      43.7680       43.8540       44.1510       43.9505       44.1765 \n",
       "  Amostra_ 86   Amostra_ 87   Amostra_ 88   Amostra_ 89   Amostra_ 90 \n",
       "      44.3785       44.0515       43.6770       44.3115       44.1085 \n",
       "  Amostra_ 91   Amostra_ 92   Amostra_ 93   Amostra_ 94   Amostra_ 95 \n",
       "      44.4085       44.1305       44.4815       44.5025       43.9600 \n",
       "  Amostra_ 96   Amostra_ 97   Amostra_ 98   Amostra_ 99  Amostra_ 100 \n",
       "      43.9775       44.1455       43.7525       43.7610       44.1115 \n",
       " Amostra_ 101  Amostra_ 102  Amostra_ 103  Amostra_ 104  Amostra_ 105 \n",
       "      43.7295       44.1530       44.2245       43.8045       44.1275 \n",
       " Amostra_ 106  Amostra_ 107  Amostra_ 108  Amostra_ 109  Amostra_ 110 \n",
       "      43.9465       43.9040       44.0100       44.2360       44.1290 \n",
       " Amostra_ 111  Amostra_ 112  Amostra_ 113  Amostra_ 114  Amostra_ 115 \n",
       "      43.7710       44.3445       43.7500       44.3225       44.3000 \n",
       " Amostra_ 116  Amostra_ 117  Amostra_ 118  Amostra_ 119  Amostra_ 120 \n",
       "      44.2430       44.2235       43.8900       43.8990       44.0955 \n",
       " Amostra_ 121  Amostra_ 122  Amostra_ 123  Amostra_ 124  Amostra_ 125 \n",
       "      43.3495       43.9265       44.3215       44.2435       43.8885 \n",
       " Amostra_ 126  Amostra_ 127  Amostra_ 128  Amostra_ 129  Amostra_ 130 \n",
       "      43.7220       44.1880       43.7395       43.8720       44.2945 \n",
       " Amostra_ 131  Amostra_ 132  Amostra_ 133  Amostra_ 134  Amostra_ 135 \n",
       "      43.8455       44.2525       43.7465       43.8105       43.8935 \n",
       " Amostra_ 136  Amostra_ 137  Amostra_ 138  Amostra_ 139  Amostra_ 140 \n",
       "      44.0845       44.3700       44.2010       43.7920       44.1835 \n",
       " Amostra_ 141  Amostra_ 142  Amostra_ 143  Amostra_ 144  Amostra_ 145 \n",
       "      43.6970       44.1150       44.1920       43.6725       44.5380 \n",
       " Amostra_ 146  Amostra_ 147  Amostra_ 148  Amostra_ 149  Amostra_ 150 \n",
       "      43.9460       44.2185       43.8195       43.7770       44.1755 \n",
       " Amostra_ 151  Amostra_ 152  Amostra_ 153  Amostra_ 154  Amostra_ 155 \n",
       "      43.6880       44.2555       44.1445       43.9235       44.1595 \n",
       " Amostra_ 156  Amostra_ 157  Amostra_ 158  Amostra_ 159  Amostra_ 160 \n",
       "      44.5525       44.1550       43.7000       43.9915       44.7025 \n",
       " Amostra_ 161  Amostra_ 162  Amostra_ 163  Amostra_ 164  Amostra_ 165 \n",
       "      44.1200       44.1520       44.2600       43.7855       44.0940 \n",
       " Amostra_ 166  Amostra_ 167  Amostra_ 168  Amostra_ 169  Amostra_ 170 \n",
       "      44.4470       43.8210       44.2165       44.2435       44.0400 \n",
       " Amostra_ 171  Amostra_ 172  Amostra_ 173  Amostra_ 174  Amostra_ 175 \n",
       "      43.9395       44.1850       43.4680       43.4160       44.3280 \n",
       " Amostra_ 176  Amostra_ 177  Amostra_ 178  Amostra_ 179  Amostra_ 180 \n",
       "      43.6580       43.9940       43.9280       44.0725       43.7480 \n",
       " Amostra_ 181  Amostra_ 182  Amostra_ 183  Amostra_ 184  Amostra_ 185 \n",
       "      43.7300       43.8295       43.9300       44.0685       44.0310 \n",
       " Amostra_ 186  Amostra_ 187  Amostra_ 188  Amostra_ 189  Amostra_ 190 \n",
       "      44.0755       43.9850       43.4920       44.3150       44.0565 \n",
       " Amostra_ 191  Amostra_ 192  Amostra_ 193  Amostra_ 194  Amostra_ 195 \n",
       "      44.3315       43.7365       44.3155       44.1690       44.1955 \n",
       " Amostra_ 196  Amostra_ 197  Amostra_ 198  Amostra_ 199  Amostra_ 200 \n",
       "      43.8425       43.8200       43.8525       44.6195       44.2550 \n",
       " Amostra_ 201  Amostra_ 202  Amostra_ 203  Amostra_ 204  Amostra_ 205 \n",
       "      44.6025       43.5810       43.8995       44.0080       43.6135 \n",
       " Amostra_ 206  Amostra_ 207  Amostra_ 208  Amostra_ 209  Amostra_ 210 \n",
       "      43.9555       43.6220       44.3155       43.7560       44.3230 \n",
       " Amostra_ 211  Amostra_ 212  Amostra_ 213  Amostra_ 214  Amostra_ 215 \n",
       "      43.6005       43.8420       44.0885       44.2790       44.2795 \n",
       " Amostra_ 216  Amostra_ 217  Amostra_ 218  Amostra_ 219  Amostra_ 220 \n",
       "      43.8865       44.1655       43.5940       44.1220       43.9305 \n",
       " Amostra_ 221  Amostra_ 222  Amostra_ 223  Amostra_ 224  Amostra_ 225 \n",
       "      44.4570       44.3875       43.9670       44.3435       44.2075 \n",
       " Amostra_ 226  Amostra_ 227  Amostra_ 228  Amostra_ 229  Amostra_ 230 \n",
       "      44.1440       43.6245       44.3070       44.3490       44.2485 \n",
       " Amostra_ 231  Amostra_ 232  Amostra_ 233  Amostra_ 234  Amostra_ 235 \n",
       "      43.9530       44.1160       44.1175       44.3525       43.9245 \n",
       " Amostra_ 236  Amostra_ 237  Amostra_ 238  Amostra_ 239  Amostra_ 240 \n",
       "      43.9370       44.1745       44.1165       44.0810       43.9895 \n",
       " Amostra_ 241  Amostra_ 242  Amostra_ 243  Amostra_ 244  Amostra_ 245 \n",
       "      44.0095       44.1835       44.0395       44.3155       44.1520 \n",
       " Amostra_ 246  Amostra_ 247  Amostra_ 248  Amostra_ 249  Amostra_ 250 \n",
       "      44.2300       43.9305       43.9995       43.9780       44.0630 \n",
       " Amostra_ 251  Amostra_ 252  Amostra_ 253  Amostra_ 254  Amostra_ 255 \n",
       "      43.8385       44.4645       43.9150       44.0800       44.0400 \n",
       " Amostra_ 256  Amostra_ 257  Amostra_ 258  Amostra_ 259  Amostra_ 260 \n",
       "      43.7960       44.2760       43.6515       44.1535       44.0585 \n",
       " Amostra_ 261  Amostra_ 262  Amostra_ 263  Amostra_ 264  Amostra_ 265 \n",
       "      43.8665       43.4170       44.1330       44.0665       43.9525 \n",
       " Amostra_ 266  Amostra_ 267  Amostra_ 268  Amostra_ 269  Amostra_ 270 \n",
       "      43.9860       43.9990       44.4590       44.2485       44.1635 \n",
       " Amostra_ 271  Amostra_ 272  Amostra_ 273  Amostra_ 274  Amostra_ 275 \n",
       "      43.8165       43.7470       44.1715       44.8440       44.2630 \n",
       " Amostra_ 276  Amostra_ 277  Amostra_ 278  Amostra_ 279  Amostra_ 280 \n",
       "      44.4500       44.2745       44.0565       44.0020       43.9630 \n",
       " Amostra_ 281  Amostra_ 282  Amostra_ 283  Amostra_ 284  Amostra_ 285 \n",
       "      43.9130       44.0010       43.9810       44.1725       44.2145 \n",
       " Amostra_ 286  Amostra_ 287  Amostra_ 288  Amostra_ 289  Amostra_ 290 \n",
       "      44.6140       44.1320       43.4695       44.2160       44.4045 \n",
       " Amostra_ 291  Amostra_ 292  Amostra_ 293  Amostra_ 294  Amostra_ 295 \n",
       "      43.9090       44.1460       43.7150       44.4995       44.0610 \n",
       " Amostra_ 296  Amostra_ 297  Amostra_ 298  Amostra_ 299  Amostra_ 300 \n",
       "      44.4420       44.1065       44.3530       44.5495       44.0060 \n",
       " Amostra_ 301  Amostra_ 302  Amostra_ 303  Amostra_ 304  Amostra_ 305 \n",
       "      44.2605       44.2125       44.0700       44.2465       44.2205 \n",
       " Amostra_ 306  Amostra_ 307  Amostra_ 308  Amostra_ 309  Amostra_ 310 \n",
       "      44.5705       43.8640       44.0605       44.0385       43.8775 \n",
       " Amostra_ 311  Amostra_ 312  Amostra_ 313  Amostra_ 314  Amostra_ 315 \n",
       "      44.1105       43.9790       43.9875       44.3205       43.7825 \n",
       " Amostra_ 316  Amostra_ 317  Amostra_ 318  Amostra_ 319  Amostra_ 320 \n",
       "      44.0965       44.3825       44.1240       43.6860       44.0710 \n",
       " Amostra_ 321  Amostra_ 322  Amostra_ 323  Amostra_ 324  Amostra_ 325 \n",
       "      44.0560       44.1125       44.4435       43.9295       44.4165 \n",
       " Amostra_ 326  Amostra_ 327  Amostra_ 328  Amostra_ 329  Amostra_ 330 \n",
       "      44.3040       44.3415       43.8080       43.8585       44.2135 \n",
       " Amostra_ 331  Amostra_ 332  Amostra_ 333  Amostra_ 334  Amostra_ 335 \n",
       "      44.3175       43.8755       44.2910       44.1410       44.3375 \n",
       " Amostra_ 336  Amostra_ 337  Amostra_ 338  Amostra_ 339  Amostra_ 340 \n",
       "      43.7815       43.8910       44.1195       44.2175       44.1620 \n",
       " Amostra_ 341  Amostra_ 342  Amostra_ 343  Amostra_ 344  Amostra_ 345 \n",
       "      43.7220       43.8435       44.0325       44.3005       43.9410 \n",
       " Amostra_ 346  Amostra_ 347  Amostra_ 348  Amostra_ 349  Amostra_ 350 \n",
       "      43.7865       44.0185       44.1040       44.3610       43.7690 \n",
       " Amostra_ 351  Amostra_ 352  Amostra_ 353  Amostra_ 354  Amostra_ 355 \n",
       "      44.1890       44.2030       43.4345       44.6045       44.5360 \n",
       " Amostra_ 356  Amostra_ 357  Amostra_ 358  Amostra_ 359  Amostra_ 360 \n",
       "      44.1340       44.0615       44.4990       44.0210       44.6900 \n",
       " Amostra_ 361  Amostra_ 362  Amostra_ 363  Amostra_ 364  Amostra_ 365 \n",
       "      43.8880       44.1205       44.2385       44.4610       43.9755 \n",
       " Amostra_ 366  Amostra_ 367  Amostra_ 368  Amostra_ 369  Amostra_ 370 \n",
       "      43.8900       44.1580       44.4335       43.7455       43.7305 \n",
       " Amostra_ 371  Amostra_ 372  Amostra_ 373  Amostra_ 374  Amostra_ 375 \n",
       "      43.6950       44.1635       43.7450       43.8910       44.2705 \n",
       " Amostra_ 376  Amostra_ 377  Amostra_ 378  Amostra_ 379  Amostra_ 380 \n",
       "      43.6865       43.8955       44.2175       43.9600       43.7500 \n",
       " Amostra_ 381  Amostra_ 382  Amostra_ 383  Amostra_ 384  Amostra_ 385 \n",
       "      44.3835       44.2485       44.2800       44.0715       44.2000 \n",
       " Amostra_ 386  Amostra_ 387  Amostra_ 388  Amostra_ 389  Amostra_ 390 \n",
       "      43.9610       44.7215       44.0550       43.4740       44.0265 \n",
       " Amostra_ 391  Amostra_ 392  Amostra_ 393  Amostra_ 394  Amostra_ 395 \n",
       "      44.6730       43.7840       44.9815       44.1115       43.6315 \n",
       " Amostra_ 396  Amostra_ 397  Amostra_ 398  Amostra_ 399  Amostra_ 400 \n",
       "      44.3870       44.0815       44.1615       44.2985       44.1300 \n",
       " Amostra_ 401  Amostra_ 402  Amostra_ 403  Amostra_ 404  Amostra_ 405 \n",
       "      43.9900       44.2995       44.1725       44.3370       44.1885 \n",
       " Amostra_ 406  Amostra_ 407  Amostra_ 408  Amostra_ 409  Amostra_ 410 \n",
       "      43.9545       44.1190       44.0185       44.2115       44.0345 \n",
       " Amostra_ 411  Amostra_ 412  Amostra_ 413  Amostra_ 414  Amostra_ 415 \n",
       "      43.9785       43.9155       43.9435       44.1255       44.1925 \n",
       " Amostra_ 416  Amostra_ 417  Amostra_ 418  Amostra_ 419  Amostra_ 420 \n",
       "      43.9600       44.0590       44.3495       44.2605       43.9870 \n",
       " Amostra_ 421  Amostra_ 422  Amostra_ 423  Amostra_ 424  Amostra_ 425 \n",
       "      43.8875       44.0340       44.1435       44.7520       44.0320 \n",
       " Amostra_ 426  Amostra_ 427  Amostra_ 428  Amostra_ 429  Amostra_ 430 \n",
       "      43.5910       44.1370       43.8560       44.1985       44.2105 \n",
       " Amostra_ 431  Amostra_ 432  Amostra_ 433  Amostra_ 434  Amostra_ 435 \n",
       "      43.4975       44.4745       44.2890       44.2925       43.8825 \n",
       " Amostra_ 436  Amostra_ 437  Amostra_ 438  Amostra_ 439  Amostra_ 440 \n",
       "      44.0490       44.7270       43.7630       43.9470       44.5060 \n",
       " Amostra_ 441  Amostra_ 442  Amostra_ 443  Amostra_ 444  Amostra_ 445 \n",
       "      43.9595       44.2975       43.9915       44.1860       44.4455 \n",
       " Amostra_ 446  Amostra_ 447  Amostra_ 448  Amostra_ 449  Amostra_ 450 \n",
       "      43.9700       44.2940       44.2620       43.8695       44.1225 \n",
       " Amostra_ 451  Amostra_ 452  Amostra_ 453  Amostra_ 454  Amostra_ 455 \n",
       "      44.4430       43.7145       43.9960       44.2955       43.5595 \n",
       " Amostra_ 456  Amostra_ 457  Amostra_ 458  Amostra_ 459  Amostra_ 460 \n",
       "      44.2730       43.6845       44.0960       43.7335       43.9640 \n",
       " Amostra_ 461  Amostra_ 462  Amostra_ 463  Amostra_ 464  Amostra_ 465 \n",
       "      43.8575       44.3090       44.1075       44.0785       44.7480 \n",
       " Amostra_ 466  Amostra_ 467  Amostra_ 468  Amostra_ 469  Amostra_ 470 \n",
       "      43.7780       44.0875       43.8305       44.2165       43.9155 \n",
       " Amostra_ 471  Amostra_ 472  Amostra_ 473  Amostra_ 474  Amostra_ 475 \n",
       "      44.0135       43.8695       44.1535       44.0320       44.2865 \n",
       " Amostra_ 476  Amostra_ 477  Amostra_ 478  Amostra_ 479  Amostra_ 480 \n",
       "      44.5200       44.0700       43.9105       43.8415       43.5520 \n",
       " Amostra_ 481  Amostra_ 482  Amostra_ 483  Amostra_ 484  Amostra_ 485 \n",
       "      44.4960       43.8465       44.3565       44.1820       43.8900 \n",
       " Amostra_ 486  Amostra_ 487  Amostra_ 488  Amostra_ 489  Amostra_ 490 \n",
       "      44.1175       44.5320       44.3805       44.2225       44.2005 \n",
       " Amostra_ 491  Amostra_ 492  Amostra_ 493  Amostra_ 494  Amostra_ 495 \n",
       "      44.0445       44.4070       44.0125       43.9960       44.1465 \n",
       " Amostra_ 496  Amostra_ 497  Amostra_ 498  Amostra_ 499  Amostra_ 500 \n",
       "      43.8015       43.8920       44.0925       43.5280       43.9595 \n",
       " Amostra_ 501  Amostra_ 502  Amostra_ 503  Amostra_ 504  Amostra_ 505 \n",
       "      43.6950       43.5025       43.9960       43.4655       43.9700 \n",
       " Amostra_ 506  Amostra_ 507  Amostra_ 508  Amostra_ 509  Amostra_ 510 \n",
       "      43.9325       44.1135       44.0945       44.5625       44.0310 \n",
       " Amostra_ 511  Amostra_ 512  Amostra_ 513  Amostra_ 514  Amostra_ 515 \n",
       "      43.6730       44.0405       44.1565       44.2515       43.8410 \n",
       " Amostra_ 516  Amostra_ 517  Amostra_ 518  Amostra_ 519  Amostra_ 520 \n",
       "      43.7055       43.8310       43.8000       44.3150       44.1605 \n",
       " Amostra_ 521  Amostra_ 522  Amostra_ 523  Amostra_ 524  Amostra_ 525 \n",
       "      44.1930       44.4685       44.3455       44.2535       44.1250 \n",
       " Amostra_ 526  Amostra_ 527  Amostra_ 528  Amostra_ 529  Amostra_ 530 \n",
       "      44.1205       43.8155       43.9045       43.7755       44.1240 \n",
       " Amostra_ 531  Amostra_ 532  Amostra_ 533  Amostra_ 534  Amostra_ 535 \n",
       "      44.4705       43.5595       44.0500       43.7725       43.7050 \n",
       " Amostra_ 536  Amostra_ 537  Amostra_ 538  Amostra_ 539  Amostra_ 540 \n",
       "      43.6675       44.3105       43.6390       44.1825       43.7445 \n",
       " Amostra_ 541  Amostra_ 542  Amostra_ 543  Amostra_ 544  Amostra_ 545 \n",
       "      44.2545       44.0465       44.3865       44.3745       44.2070 \n",
       " Amostra_ 546  Amostra_ 547  Amostra_ 548  Amostra_ 549  Amostra_ 550 \n",
       "      44.0855       44.3725       43.8765       44.2040       43.6390 \n",
       " Amostra_ 551  Amostra_ 552  Amostra_ 553  Amostra_ 554  Amostra_ 555 \n",
       "      43.5335       44.2745       44.0185       44.0990       43.6500 \n",
       " Amostra_ 556  Amostra_ 557  Amostra_ 558  Amostra_ 559  Amostra_ 560 \n",
       "      44.2585       43.7975       43.9995       43.9565       43.8085 \n",
       " Amostra_ 561  Amostra_ 562  Amostra_ 563  Amostra_ 564  Amostra_ 565 \n",
       "      44.1325       43.9280       43.8940       44.0615       43.6645 \n",
       " Amostra_ 566  Amostra_ 567  Amostra_ 568  Amostra_ 569  Amostra_ 570 \n",
       "      44.1265       43.7230       43.4880       43.8260       44.0330 \n",
       " Amostra_ 571  Amostra_ 572  Amostra_ 573  Amostra_ 574  Amostra_ 575 \n",
       "      44.3655       44.5335       44.8560       44.5305       43.8040 \n",
       " Amostra_ 576  Amostra_ 577  Amostra_ 578  Amostra_ 579  Amostra_ 580 \n",
       "      44.3385       44.5160       44.5060       44.0735       43.7185 \n",
       " Amostra_ 581  Amostra_ 582  Amostra_ 583  Amostra_ 584  Amostra_ 585 \n",
       "      44.4565       44.1040       44.1170       44.5760       44.0670 \n",
       " Amostra_ 586  Amostra_ 587  Amostra_ 588  Amostra_ 589  Amostra_ 590 \n",
       "      43.7670       43.7830       44.1670       44.1455       43.9070 \n",
       " Amostra_ 591  Amostra_ 592  Amostra_ 593  Amostra_ 594  Amostra_ 595 \n",
       "      44.1480       44.0875       44.0025       44.4460       44.4265 \n",
       " Amostra_ 596  Amostra_ 597  Amostra_ 598  Amostra_ 599  Amostra_ 600 \n",
       "      43.8195       43.7915       44.1160       43.9710       43.9055 \n",
       " Amostra_ 601  Amostra_ 602  Amostra_ 603  Amostra_ 604  Amostra_ 605 \n",
       "      44.2025       44.0585       44.1530       43.9665       43.9595 \n",
       " Amostra_ 606  Amostra_ 607  Amostra_ 608  Amostra_ 609  Amostra_ 610 \n",
       "      44.0005       43.9250       44.0390       44.1615       43.7240 \n",
       " Amostra_ 611  Amostra_ 612  Amostra_ 613  Amostra_ 614  Amostra_ 615 \n",
       "      44.0685       43.2355       43.7090       44.0095       44.5540 \n",
       " Amostra_ 616  Amostra_ 617  Amostra_ 618  Amostra_ 619  Amostra_ 620 \n",
       "      44.0660       43.9890       44.2290       43.4420       44.2125 \n",
       " Amostra_ 621  Amostra_ 622  Amostra_ 623  Amostra_ 624  Amostra_ 625 \n",
       "      43.9960       43.8250       44.5765       44.2830       44.2830 \n",
       " Amostra_ 626  Amostra_ 627  Amostra_ 628  Amostra_ 629  Amostra_ 630 \n",
       "      44.9935       44.1470       44.2310       44.3405       44.1260 \n",
       " Amostra_ 631  Amostra_ 632  Amostra_ 633  Amostra_ 634  Amostra_ 635 \n",
       "      44.8225       43.6705       44.1055       43.9315       43.9800 \n",
       " Amostra_ 636  Amostra_ 637  Amostra_ 638  Amostra_ 639  Amostra_ 640 \n",
       "      44.1205       44.3200       44.2900       44.3530       44.4005 \n",
       " Amostra_ 641  Amostra_ 642  Amostra_ 643  Amostra_ 644  Amostra_ 645 \n",
       "      44.3490       44.2500       43.7820       43.9650       44.1105 \n",
       " Amostra_ 646  Amostra_ 647  Amostra_ 648  Amostra_ 649  Amostra_ 650 \n",
       "      43.9175       44.2485       44.0815       44.1930       44.1575 \n",
       " Amostra_ 651  Amostra_ 652  Amostra_ 653  Amostra_ 654  Amostra_ 655 \n",
       "      44.1255       44.2390       43.9170       43.9525       43.9295 \n",
       " Amostra_ 656  Amostra_ 657  Amostra_ 658  Amostra_ 659  Amostra_ 660 \n",
       "      44.1015       44.2905       43.3735       44.2090       43.8630 \n",
       " Amostra_ 661  Amostra_ 662  Amostra_ 663  Amostra_ 664  Amostra_ 665 \n",
       "      43.8580       44.2240       44.0005       44.6480       44.1225 \n",
       " Amostra_ 666  Amostra_ 667  Amostra_ 668  Amostra_ 669  Amostra_ 670 \n",
       "      44.1435       44.0565       44.1020       44.0515       44.2930 \n",
       " Amostra_ 671  Amostra_ 672  Amostra_ 673  Amostra_ 674  Amostra_ 675 \n",
       "      44.1940       44.1125       44.3995       44.2765       44.2530 \n",
       " Amostra_ 676  Amostra_ 677  Amostra_ 678  Amostra_ 679  Amostra_ 680 \n",
       "      43.4875       44.3605       44.5375       44.5635       44.2135 \n",
       " Amostra_ 681  Amostra_ 682  Amostra_ 683  Amostra_ 684  Amostra_ 685 \n",
       "      44.0915       44.4230       44.0855       44.5075       44.0480 \n",
       " Amostra_ 686  Amostra_ 687  Amostra_ 688  Amostra_ 689  Amostra_ 690 \n",
       "      43.7770       44.3720       43.5655       43.9730       44.1755 \n",
       " Amostra_ 691  Amostra_ 692  Amostra_ 693  Amostra_ 694  Amostra_ 695 \n",
       "      43.7020       44.1630       43.6590       43.9555       44.1820 \n",
       " Amostra_ 696  Amostra_ 697  Amostra_ 698  Amostra_ 699  Amostra_ 700 \n",
       "      44.1160       44.4090       44.3675       43.7985       44.4175 \n",
       " Amostra_ 701  Amostra_ 702  Amostra_ 703  Amostra_ 704  Amostra_ 705 \n",
       "      44.2075       43.9415       44.3375       43.8790       43.8760 \n",
       " Amostra_ 706  Amostra_ 707  Amostra_ 708  Amostra_ 709  Amostra_ 710 \n",
       "      44.3240       43.6495       44.0435       44.0410       44.0035 \n",
       " Amostra_ 711  Amostra_ 712  Amostra_ 713  Amostra_ 714  Amostra_ 715 \n",
       "      43.5450       44.0155       43.8160       44.2770       44.5240 \n",
       " Amostra_ 716  Amostra_ 717  Amostra_ 718  Amostra_ 719  Amostra_ 720 \n",
       "      43.5545       43.8895       43.9345       43.5555       44.4340 \n",
       " Amostra_ 721  Amostra_ 722  Amostra_ 723  Amostra_ 724  Amostra_ 725 \n",
       "      44.2130       44.2540       44.3450       43.7725       44.0770 \n",
       " Amostra_ 726  Amostra_ 727  Amostra_ 728  Amostra_ 729  Amostra_ 730 \n",
       "      44.3990       44.1670       43.9995       43.7815       44.0590 \n",
       " Amostra_ 731  Amostra_ 732  Amostra_ 733  Amostra_ 734  Amostra_ 735 \n",
       "      44.5040       43.9005       44.0980       44.3620       44.1105 \n",
       " Amostra_ 736  Amostra_ 737  Amostra_ 738  Amostra_ 739  Amostra_ 740 \n",
       "      43.7480       44.0695       44.0445       44.6985       43.6720 \n",
       " Amostra_ 741  Amostra_ 742  Amostra_ 743  Amostra_ 744  Amostra_ 745 \n",
       "      43.7555       43.8985       43.7460       44.4530       44.2410 \n",
       " Amostra_ 746  Amostra_ 747  Amostra_ 748  Amostra_ 749  Amostra_ 750 \n",
       "      43.9685       43.6235       44.4345       43.8275       44.1170 \n",
       " Amostra_ 751  Amostra_ 752  Amostra_ 753  Amostra_ 754  Amostra_ 755 \n",
       "      43.4245       44.0565       44.0915       44.7335       44.1905 \n",
       " Amostra_ 756  Amostra_ 757  Amostra_ 758  Amostra_ 759  Amostra_ 760 \n",
       "      43.8905       43.8555       44.4245       44.5560       43.9715 \n",
       " Amostra_ 761  Amostra_ 762  Amostra_ 763  Amostra_ 764  Amostra_ 765 \n",
       "      43.7605       44.0640       44.2725       43.8705       43.6585 \n",
       " Amostra_ 766  Amostra_ 767  Amostra_ 768  Amostra_ 769  Amostra_ 770 \n",
       "      44.1855       43.9185       44.3100       44.2890       43.9705 \n",
       " Amostra_ 771  Amostra_ 772  Amostra_ 773  Amostra_ 774  Amostra_ 775 \n",
       "      44.2845       43.9810       43.7870       44.4335       43.8940 \n",
       " Amostra_ 776  Amostra_ 777  Amostra_ 778  Amostra_ 779  Amostra_ 780 \n",
       "      43.9890       43.6290       43.8150       44.6325       44.4005 \n",
       " Amostra_ 781  Amostra_ 782  Amostra_ 783  Amostra_ 784  Amostra_ 785 \n",
       "      44.1690       43.5430       43.6385       43.4790       44.6745 \n",
       " Amostra_ 786  Amostra_ 787  Amostra_ 788  Amostra_ 789  Amostra_ 790 \n",
       "      43.8065       44.6385       44.4460       44.1820       44.0290 \n",
       " Amostra_ 791  Amostra_ 792  Amostra_ 793  Amostra_ 794  Amostra_ 795 \n",
       "      43.7745       43.6830       44.3370       43.9500       44.6945 \n",
       " Amostra_ 796  Amostra_ 797  Amostra_ 798  Amostra_ 799  Amostra_ 800 \n",
       "      43.9925       44.7670       44.0045       43.9690       44.2100 \n",
       " Amostra_ 801  Amostra_ 802  Amostra_ 803  Amostra_ 804  Amostra_ 805 \n",
       "      44.0105       44.0365       44.5235       44.2580       44.0955 \n",
       " Amostra_ 806  Amostra_ 807  Amostra_ 808  Amostra_ 809  Amostra_ 810 \n",
       "      44.3635       43.6045       43.9660       44.0305       44.1590 \n",
       " Amostra_ 811  Amostra_ 812  Amostra_ 813  Amostra_ 814  Amostra_ 815 \n",
       "      43.8610       43.6240       43.9445       44.3115       43.8545 \n",
       " Amostra_ 816  Amostra_ 817  Amostra_ 818  Amostra_ 819  Amostra_ 820 \n",
       "      44.2785       44.0515       44.1795       43.9305       43.8430 \n",
       " Amostra_ 821  Amostra_ 822  Amostra_ 823  Amostra_ 824  Amostra_ 825 \n",
       "      44.1980       44.3195       44.6200       44.0935       44.2990 \n",
       " Amostra_ 826  Amostra_ 827  Amostra_ 828  Amostra_ 829  Amostra_ 830 \n",
       "      44.3025       43.9270       44.2445       44.1760       44.3680 \n",
       " Amostra_ 831  Amostra_ 832  Amostra_ 833  Amostra_ 834  Amostra_ 835 \n",
       "      44.2035       44.2290       44.1275       43.9785       44.2615 \n",
       " Amostra_ 836  Amostra_ 837  Amostra_ 838  Amostra_ 839  Amostra_ 840 \n",
       "      44.1430       44.3760       44.0980       44.3470       44.1320 \n",
       " Amostra_ 841  Amostra_ 842  Amostra_ 843  Amostra_ 844  Amostra_ 845 \n",
       "      44.0230       43.9235       43.9255       44.2165       43.9180 \n",
       " Amostra_ 846  Amostra_ 847  Amostra_ 848  Amostra_ 849  Amostra_ 850 \n",
       "      44.0060       44.0990       44.4325       44.1180       44.0680 \n",
       " Amostra_ 851  Amostra_ 852  Amostra_ 853  Amostra_ 854  Amostra_ 855 \n",
       "      44.6595       43.7030       44.3550       43.6425       44.0755 \n",
       " Amostra_ 856  Amostra_ 857  Amostra_ 858  Amostra_ 859  Amostra_ 860 \n",
       "      43.7775       43.7070       43.7875       43.8785       43.7995 \n",
       " Amostra_ 861  Amostra_ 862  Amostra_ 863  Amostra_ 864  Amostra_ 865 \n",
       "      43.9540       44.1670       43.8090       44.1935       44.2240 \n",
       " Amostra_ 866  Amostra_ 867  Amostra_ 868  Amostra_ 869  Amostra_ 870 \n",
       "      44.2015       44.2745       44.3590       43.6965       43.8055 \n",
       " Amostra_ 871  Amostra_ 872  Amostra_ 873  Amostra_ 874  Amostra_ 875 \n",
       "      43.5055       43.8535       44.0915       43.5945       44.2110 \n",
       " Amostra_ 876  Amostra_ 877  Amostra_ 878  Amostra_ 879  Amostra_ 880 \n",
       "      44.3190       44.3440       43.7530       43.6920       44.1855 \n",
       " Amostra_ 881  Amostra_ 882  Amostra_ 883  Amostra_ 884  Amostra_ 885 \n",
       "      44.3665       44.2115       44.6560       43.9545       44.0840 \n",
       " Amostra_ 886  Amostra_ 887  Amostra_ 888  Amostra_ 889  Amostra_ 890 \n",
       "      43.4330       44.1840       44.3360       44.6195       44.0380 \n",
       " Amostra_ 891  Amostra_ 892  Amostra_ 893  Amostra_ 894  Amostra_ 895 \n",
       "      44.4945       43.8915       43.9400       44.2910       44.3580 \n",
       " Amostra_ 896  Amostra_ 897  Amostra_ 898  Amostra_ 899  Amostra_ 900 \n",
       "      44.3990       44.2340       43.9555       44.0925       44.0695 \n",
       " Amostra_ 901  Amostra_ 902  Amostra_ 903  Amostra_ 904  Amostra_ 905 \n",
       "      43.9175       44.4235       44.1130       44.4125       43.7115 \n",
       " Amostra_ 906  Amostra_ 907  Amostra_ 908  Amostra_ 909  Amostra_ 910 \n",
       "      43.5760       43.8000       44.4305       44.1520       44.0540 \n",
       " Amostra_ 911  Amostra_ 912  Amostra_ 913  Amostra_ 914  Amostra_ 915 \n",
       "      44.0270       44.0995       44.3315       44.6725       44.1455 \n",
       " Amostra_ 916  Amostra_ 917  Amostra_ 918  Amostra_ 919  Amostra_ 920 \n",
       "      43.9730       44.2000       44.5355       44.2335       44.2210 \n",
       " Amostra_ 921  Amostra_ 922  Amostra_ 923  Amostra_ 924  Amostra_ 925 \n",
       "      44.2535       43.7085       44.4315       43.7825       43.8240 \n",
       " Amostra_ 926  Amostra_ 927  Amostra_ 928  Amostra_ 929  Amostra_ 930 \n",
       "      43.7625       44.1220       43.8060       44.2135       44.1235 \n",
       " Amostra_ 931  Amostra_ 932  Amostra_ 933  Amostra_ 934  Amostra_ 935 \n",
       "      44.0165       44.2695       43.9360       44.1360       44.6560 \n",
       " Amostra_ 936  Amostra_ 937  Amostra_ 938  Amostra_ 939  Amostra_ 940 \n",
       "      44.3700       43.8480       43.9280       44.3815       44.0370 \n",
       " Amostra_ 941  Amostra_ 942  Amostra_ 943  Amostra_ 944  Amostra_ 945 \n",
       "      43.7565       44.1200       43.7140       43.8090       43.7675 \n",
       " Amostra_ 946  Amostra_ 947  Amostra_ 948  Amostra_ 949  Amostra_ 950 \n",
       "      43.4090       44.1655       43.8340       44.4550       43.9165 \n",
       " Amostra_ 951  Amostra_ 952  Amostra_ 953  Amostra_ 954  Amostra_ 955 \n",
       "      43.9505       44.5135       43.6375       44.1555       43.5495 \n",
       " Amostra_ 956  Amostra_ 957  Amostra_ 958  Amostra_ 959  Amostra_ 960 \n",
       "      43.8325       43.8620       44.4360       43.7900       44.2295 \n",
       " Amostra_ 961  Amostra_ 962  Amostra_ 963  Amostra_ 964  Amostra_ 965 \n",
       "      44.3545       43.6455       43.7810       43.9130       44.2380 \n",
       " Amostra_ 966  Amostra_ 967  Amostra_ 968  Amostra_ 969  Amostra_ 970 \n",
       "      43.8785       43.8330       44.1925       43.9020       43.8310 \n",
       " Amostra_ 971  Amostra_ 972  Amostra_ 973  Amostra_ 974  Amostra_ 975 \n",
       "      43.8745       43.8270       44.4555       43.6260       44.0130 \n",
       " Amostra_ 976  Amostra_ 977  Amostra_ 978  Amostra_ 979  Amostra_ 980 \n",
       "      43.7100       44.2175       43.8155       44.6090       44.1250 \n",
       " Amostra_ 981  Amostra_ 982  Amostra_ 983  Amostra_ 984  Amostra_ 985 \n",
       "      43.8920       44.4965       44.2175       43.8325       44.4015 \n",
       " Amostra_ 986  Amostra_ 987  Amostra_ 988  Amostra_ 989  Amostra_ 990 \n",
       "      44.0120       44.3525       44.5490       44.4395       44.6735 \n",
       " Amostra_ 991  Amostra_ 992  Amostra_ 993  Amostra_ 994  Amostra_ 995 \n",
       "      44.0815       44.4330       43.8745       44.1690       44.3180 \n",
       " Amostra_ 996  Amostra_ 997  Amostra_ 998  Amostra_ 999 Amostra_ 1000 \n",
       "      44.2215       44.1125       43.9885       44.0180       44.0455 \n",
       "Amostra_ 1001 Amostra_ 1002 Amostra_ 1003 Amostra_ 1004 Amostra_ 1005 \n",
       "      43.8620       44.5490       43.5165       44.3075       43.5930 \n",
       "Amostra_ 1006 Amostra_ 1007 Amostra_ 1008 Amostra_ 1009 Amostra_ 1010 \n",
       "      44.5495       44.0815       44.1745       44.0030       44.2060 \n",
       "Amostra_ 1011 Amostra_ 1012 Amostra_ 1013 Amostra_ 1014 Amostra_ 1015 \n",
       "      44.4665       44.0395       44.3440       43.9065       43.7005 \n",
       "Amostra_ 1016 Amostra_ 1017 Amostra_ 1018 Amostra_ 1019 Amostra_ 1020 \n",
       "      43.9850       43.8885       43.9195       44.1915       44.4015 \n",
       "Amostra_ 1021 Amostra_ 1022 Amostra_ 1023 Amostra_ 1024 Amostra_ 1025 \n",
       "      43.7565       43.8680       44.2820       44.2385       44.0375 \n",
       "Amostra_ 1026 Amostra_ 1027 Amostra_ 1028 Amostra_ 1029 Amostra_ 1030 \n",
       "      44.1475       43.9305       43.7710       43.4740       44.3190 \n",
       "Amostra_ 1031 Amostra_ 1032 Amostra_ 1033 Amostra_ 1034 Amostra_ 1035 \n",
       "      44.2820       43.8795       43.9690       44.0725       44.5870 \n",
       "Amostra_ 1036 Amostra_ 1037 Amostra_ 1038 Amostra_ 1039 Amostra_ 1040 \n",
       "      44.1650       44.0475       43.8815       44.1710       44.0420 \n",
       "Amostra_ 1041 Amostra_ 1042 Amostra_ 1043 Amostra_ 1044 Amostra_ 1045 \n",
       "      44.3660       44.0230       43.7595       43.8565       44.0745 \n",
       "Amostra_ 1046 Amostra_ 1047 Amostra_ 1048 Amostra_ 1049 Amostra_ 1050 \n",
       "      44.1930       43.8005       43.5720       43.9295       44.2095 \n",
       "Amostra_ 1051 Amostra_ 1052 Amostra_ 1053 Amostra_ 1054 Amostra_ 1055 \n",
       "      43.8505       44.1280       43.7620       44.0005       43.5505 \n",
       "Amostra_ 1056 Amostra_ 1057 Amostra_ 1058 Amostra_ 1059 Amostra_ 1060 \n",
       "      44.2320       43.7845       44.0570       44.2965       44.1310 \n",
       "Amostra_ 1061 Amostra_ 1062 Amostra_ 1063 Amostra_ 1064 Amostra_ 1065 \n",
       "      44.1330       43.9135       44.0340       43.3570       44.7120 \n",
       "Amostra_ 1066 Amostra_ 1067 Amostra_ 1068 Amostra_ 1069 Amostra_ 1070 \n",
       "      44.4195       44.2050       44.2450       44.2080       43.8010 \n",
       "Amostra_ 1071 Amostra_ 1072 Amostra_ 1073 Amostra_ 1074 Amostra_ 1075 \n",
       "      44.1335       44.3420       44.6090       44.2365       44.3340 \n",
       "Amostra_ 1076 Amostra_ 1077 Amostra_ 1078 Amostra_ 1079 Amostra_ 1080 \n",
       "      43.8820       43.6815       44.0920       44.2570       43.5865 \n",
       "Amostra_ 1081 Amostra_ 1082 Amostra_ 1083 Amostra_ 1084 Amostra_ 1085 \n",
       "      44.1450       43.5365       43.8130       44.0940       44.5590 \n",
       "Amostra_ 1086 Amostra_ 1087 Amostra_ 1088 Amostra_ 1089 Amostra_ 1090 \n",
       "      43.9615       43.5880       44.5390       44.2845       44.3365 \n",
       "Amostra_ 1091 Amostra_ 1092 Amostra_ 1093 Amostra_ 1094 Amostra_ 1095 \n",
       "      43.9015       44.0265       44.3465       44.4770       44.6420 \n",
       "Amostra_ 1096 Amostra_ 1097 Amostra_ 1098 Amostra_ 1099 Amostra_ 1100 \n",
       "      43.7910       43.9410       44.4195       44.0250       43.8745 \n",
       "Amostra_ 1101 Amostra_ 1102 Amostra_ 1103 Amostra_ 1104 Amostra_ 1105 \n",
       "      43.9460       43.9275       43.8500       43.9815       44.2970 \n",
       "Amostra_ 1106 Amostra_ 1107 Amostra_ 1108 Amostra_ 1109 Amostra_ 1110 \n",
       "      43.9580       43.9460       44.1110       44.1445       44.1980 \n",
       "Amostra_ 1111 Amostra_ 1112 Amostra_ 1113 Amostra_ 1114 Amostra_ 1115 \n",
       "      43.4830       43.8345       44.3675       43.6160       43.9195 \n",
       "Amostra_ 1116 Amostra_ 1117 Amostra_ 1118 Amostra_ 1119 Amostra_ 1120 \n",
       "      44.0460       43.9725       44.0745       44.2895       43.9875 \n",
       "Amostra_ 1121 Amostra_ 1122 Amostra_ 1123 Amostra_ 1124 Amostra_ 1125 \n",
       "      43.6365       43.6685       44.1730       43.9705       44.1515 \n",
       "Amostra_ 1126 Amostra_ 1127 Amostra_ 1128 Amostra_ 1129 Amostra_ 1130 \n",
       "      43.6645       44.0095       43.8085       44.2750       44.0410 \n",
       "Amostra_ 1131 Amostra_ 1132 Amostra_ 1133 Amostra_ 1134 Amostra_ 1135 \n",
       "      43.4560       43.9270       44.1890       43.9960       44.4375 \n",
       "Amostra_ 1136 Amostra_ 1137 Amostra_ 1138 Amostra_ 1139 Amostra_ 1140 \n",
       "      44.4825       43.6460       44.4795       43.4470       43.8660 \n",
       "Amostra_ 1141 Amostra_ 1142 Amostra_ 1143 Amostra_ 1144 Amostra_ 1145 \n",
       "      43.4775       43.7425       43.6255       44.2525       44.1240 \n",
       "Amostra_ 1146 Amostra_ 1147 Amostra_ 1148 Amostra_ 1149 Amostra_ 1150 \n",
       "      44.1500       43.6560       43.9715       43.6270       44.1710 \n",
       "Amostra_ 1151 Amostra_ 1152 Amostra_ 1153 Amostra_ 1154 Amostra_ 1155 \n",
       "      44.7390       44.0055       44.3340       44.4675       43.7935 \n",
       "Amostra_ 1156 Amostra_ 1157 Amostra_ 1158 Amostra_ 1159 Amostra_ 1160 \n",
       "      43.9780       43.7335       43.4640       44.0145       43.9580 \n",
       "Amostra_ 1161 Amostra_ 1162 Amostra_ 1163 Amostra_ 1164 Amostra_ 1165 \n",
       "      43.8510       44.2615       44.1915       43.9975       44.4405 \n",
       "Amostra_ 1166 Amostra_ 1167 Amostra_ 1168 Amostra_ 1169 Amostra_ 1170 \n",
       "      44.3535       43.4440       43.9235       44.3045       44.1775 \n",
       "Amostra_ 1171 Amostra_ 1172 Amostra_ 1173 Amostra_ 1174 Amostra_ 1175 \n",
       "      43.8580       43.7055       43.6570       43.9095       44.2045 \n",
       "Amostra_ 1176 Amostra_ 1177 Amostra_ 1178 Amostra_ 1179 Amostra_ 1180 \n",
       "      44.1745       43.7340       44.2450       43.6420       43.7800 \n",
       "Amostra_ 1181 Amostra_ 1182 Amostra_ 1183 Amostra_ 1184 Amostra_ 1185 \n",
       "      43.9310       43.6380       44.1465       43.7405       43.9990 \n",
       "Amostra_ 1186 Amostra_ 1187 Amostra_ 1188 Amostra_ 1189 Amostra_ 1190 \n",
       "      44.1535       44.1290       44.1490       44.0115       44.1505 \n",
       "Amostra_ 1191 Amostra_ 1192 Amostra_ 1193 Amostra_ 1194 Amostra_ 1195 \n",
       "      44.2360       44.3415       44.0745       43.8185       43.7620 \n",
       "Amostra_ 1196 Amostra_ 1197 Amostra_ 1198 Amostra_ 1199 Amostra_ 1200 \n",
       "      44.2140       43.6440       44.1870       44.2135       44.2265 \n",
       "Amostra_ 1201 Amostra_ 1202 Amostra_ 1203 Amostra_ 1204 Amostra_ 1205 \n",
       "      44.0050       43.5825       44.4240       44.2345       44.4245 \n",
       "Amostra_ 1206 Amostra_ 1207 Amostra_ 1208 Amostra_ 1209 Amostra_ 1210 \n",
       "      44.1510       44.0095       43.9800       43.9770       44.0325 \n",
       "Amostra_ 1211 Amostra_ 1212 Amostra_ 1213 Amostra_ 1214 Amostra_ 1215 \n",
       "      43.7675       44.2450       43.9010       44.0630       44.3320 \n",
       "Amostra_ 1216 Amostra_ 1217 Amostra_ 1218 Amostra_ 1219 Amostra_ 1220 \n",
       "      44.2245       43.8905       43.9055       44.1710       44.3115 \n",
       "Amostra_ 1221 Amostra_ 1222 Amostra_ 1223 Amostra_ 1224 Amostra_ 1225 \n",
       "      43.7455       43.8780       44.2990       44.5630       44.4750 \n",
       "Amostra_ 1226 Amostra_ 1227 Amostra_ 1228 Amostra_ 1229 Amostra_ 1230 \n",
       "      44.3215       43.9240       44.1405       44.5940       43.5080 \n",
       "Amostra_ 1231 Amostra_ 1232 Amostra_ 1233 Amostra_ 1234 Amostra_ 1235 \n",
       "      44.0175       44.1580       44.3250       44.5065       44.4005 \n",
       "Amostra_ 1236 Amostra_ 1237 Amostra_ 1238 Amostra_ 1239 Amostra_ 1240 \n",
       "      43.3845       44.1365       43.9820       44.1465       44.2145 \n",
       "Amostra_ 1241 Amostra_ 1242 Amostra_ 1243 Amostra_ 1244 Amostra_ 1245 \n",
       "      43.5610       44.0795       44.1745       44.3100       43.8395 \n",
       "Amostra_ 1246 Amostra_ 1247 Amostra_ 1248 Amostra_ 1249 Amostra_ 1250 \n",
       "      43.8815       43.7255       44.1435       44.2590       44.2215 \n",
       "Amostra_ 1251 Amostra_ 1252 Amostra_ 1253 Amostra_ 1254 Amostra_ 1255 \n",
       "      43.9810       43.7850       44.0555       44.4205       44.1570 \n",
       "Amostra_ 1256 Amostra_ 1257 Amostra_ 1258 Amostra_ 1259 Amostra_ 1260 \n",
       "      44.0725       43.6155       43.9780       44.3300       43.9950 \n",
       "Amostra_ 1261 Amostra_ 1262 Amostra_ 1263 Amostra_ 1264 Amostra_ 1265 \n",
       "      44.2165       43.6175       44.1080       44.1835       44.1730 \n",
       "Amostra_ 1266 Amostra_ 1267 Amostra_ 1268 Amostra_ 1269 Amostra_ 1270 \n",
       "      44.1295       44.6735       43.4220       43.9455       44.3810 \n",
       "Amostra_ 1271 Amostra_ 1272 Amostra_ 1273 Amostra_ 1274 Amostra_ 1275 \n",
       "      44.2325       43.9250       43.5865       43.7995       43.7595 \n",
       "Amostra_ 1276 Amostra_ 1277 Amostra_ 1278 Amostra_ 1279 Amostra_ 1280 \n",
       "      44.0105       44.3665       44.1370       44.5965       43.5590 \n",
       "Amostra_ 1281 Amostra_ 1282 Amostra_ 1283 Amostra_ 1284 Amostra_ 1285 \n",
       "      44.2070       44.4945       43.7400       44.0340       44.0635 \n",
       "Amostra_ 1286 Amostra_ 1287 Amostra_ 1288 Amostra_ 1289 Amostra_ 1290 \n",
       "      44.2735       44.0420       43.9100       43.9290       43.6920 \n",
       "Amostra_ 1291 Amostra_ 1292 Amostra_ 1293 Amostra_ 1294 Amostra_ 1295 \n",
       "      44.0760       44.0175       44.2430       44.3790       43.9005 \n",
       "Amostra_ 1296 Amostra_ 1297 Amostra_ 1298 Amostra_ 1299 Amostra_ 1300 \n",
       "      44.0010       44.1305       43.9390       44.0615       44.0755 \n",
       "Amostra_ 1301 Amostra_ 1302 Amostra_ 1303 Amostra_ 1304 Amostra_ 1305 \n",
       "      44.0535       43.7505       43.9490       44.2505       43.8290 \n",
       "Amostra_ 1306 Amostra_ 1307 Amostra_ 1308 Amostra_ 1309 Amostra_ 1310 \n",
       "      43.8430       44.2100       44.4600       44.4425       43.8740 \n",
       "Amostra_ 1311 Amostra_ 1312 Amostra_ 1313 Amostra_ 1314 Amostra_ 1315 \n",
       "      44.1775       44.1445       43.9500       43.8520       44.1330 \n",
       "Amostra_ 1316 Amostra_ 1317 Amostra_ 1318 Amostra_ 1319 Amostra_ 1320 \n",
       "      43.9675       44.1105       43.9685       43.9845       43.8235 \n",
       "Amostra_ 1321 Amostra_ 1322 Amostra_ 1323 Amostra_ 1324 Amostra_ 1325 \n",
       "      43.6020       44.0120       44.0190       43.9715       43.8410 \n",
       "Amostra_ 1326 Amostra_ 1327 Amostra_ 1328 Amostra_ 1329 Amostra_ 1330 \n",
       "      43.8525       43.6675       44.4260       43.7690       43.9845 \n",
       "Amostra_ 1331 Amostra_ 1332 Amostra_ 1333 Amostra_ 1334 Amostra_ 1335 \n",
       "      44.5805       43.9710       43.5585       43.9135       43.9265 \n",
       "Amostra_ 1336 Amostra_ 1337 Amostra_ 1338 Amostra_ 1339 Amostra_ 1340 \n",
       "      44.4870       43.9725       43.9620       43.7190       44.0965 \n",
       "Amostra_ 1341 Amostra_ 1342 Amostra_ 1343 Amostra_ 1344 Amostra_ 1345 \n",
       "      44.2845       44.2150       44.3245       44.0460       44.2500 \n",
       "Amostra_ 1346 Amostra_ 1347 Amostra_ 1348 Amostra_ 1349 Amostra_ 1350 \n",
       "      43.7270       44.2755       44.1930       44.1430       44.0895 \n",
       "Amostra_ 1351 Amostra_ 1352 Amostra_ 1353 Amostra_ 1354 Amostra_ 1355 \n",
       "      44.1025       44.6860       43.8755       44.0360       44.2010 \n",
       "Amostra_ 1356 Amostra_ 1357 Amostra_ 1358 Amostra_ 1359 Amostra_ 1360 \n",
       "      44.7700       44.1100       43.7625       44.0850       43.6645 \n",
       "Amostra_ 1361 Amostra_ 1362 Amostra_ 1363 Amostra_ 1364 Amostra_ 1365 \n",
       "      44.2100       43.9670       44.1335       44.6950       44.1990 \n",
       "Amostra_ 1366 Amostra_ 1367 Amostra_ 1368 Amostra_ 1369 Amostra_ 1370 \n",
       "      44.2495       43.7450       44.2135       44.4050       43.9000 \n",
       "Amostra_ 1371 Amostra_ 1372 Amostra_ 1373 Amostra_ 1374 Amostra_ 1375 \n",
       "      44.1435       44.0750       43.8490       44.2070       43.8460 \n",
       "Amostra_ 1376 Amostra_ 1377 Amostra_ 1378 Amostra_ 1379 Amostra_ 1380 \n",
       "      44.1695       44.0005       43.6840       43.7745       44.0805 \n",
       "Amostra_ 1381 Amostra_ 1382 Amostra_ 1383 Amostra_ 1384 Amostra_ 1385 \n",
       "      44.0310       43.9700       43.9305       44.5020       44.1760 \n",
       "Amostra_ 1386 Amostra_ 1387 Amostra_ 1388 Amostra_ 1389 Amostra_ 1390 \n",
       "      43.9820       44.5690       44.1440       43.9485       43.8785 \n",
       "Amostra_ 1391 Amostra_ 1392 Amostra_ 1393 Amostra_ 1394 Amostra_ 1395 \n",
       "      44.1485       43.7345       43.9155       44.0705       44.2605 \n",
       "Amostra_ 1396 Amostra_ 1397 Amostra_ 1398 Amostra_ 1399 Amostra_ 1400 \n",
       "      43.9020       44.6340       44.7430       44.1415       43.6710 \n",
       "Amostra_ 1401 Amostra_ 1402 Amostra_ 1403 Amostra_ 1404 Amostra_ 1405 \n",
       "      44.5080       44.2920       44.2040       44.0305       43.4900 \n",
       "Amostra_ 1406 Amostra_ 1407 Amostra_ 1408 Amostra_ 1409 Amostra_ 1410 \n",
       "      44.0535       43.8870       44.0515       44.2425       44.3465 \n",
       "Amostra_ 1411 Amostra_ 1412 Amostra_ 1413 Amostra_ 1414 Amostra_ 1415 \n",
       "      44.2280       44.2055       43.9940       43.6295       43.5660 \n",
       "Amostra_ 1416 Amostra_ 1417 Amostra_ 1418 Amostra_ 1419 Amostra_ 1420 \n",
       "      43.6330       44.3440       44.1715       44.8225       44.2070 \n",
       "Amostra_ 1421 Amostra_ 1422 Amostra_ 1423 Amostra_ 1424 Amostra_ 1425 \n",
       "      44.3880       44.2550       43.7825       44.1515       43.8715 \n",
       "Amostra_ 1426 Amostra_ 1427 Amostra_ 1428 Amostra_ 1429 Amostra_ 1430 \n",
       "      43.9625       43.9050       44.4170       44.3070       43.9265 \n",
       "Amostra_ 1431 Amostra_ 1432 Amostra_ 1433 Amostra_ 1434 Amostra_ 1435 \n",
       "      43.9105       44.2835       43.9445       44.3640       44.1680 \n",
       "Amostra_ 1436 Amostra_ 1437 Amostra_ 1438 Amostra_ 1439 Amostra_ 1440 \n",
       "      43.8295       43.8560       44.3985       44.1565       44.0365 \n",
       "Amostra_ 1441 Amostra_ 1442 Amostra_ 1443 Amostra_ 1444 Amostra_ 1445 \n",
       "      43.7785       44.3440       43.9810       43.7560       44.3495 \n",
       "Amostra_ 1446 Amostra_ 1447 Amostra_ 1448 Amostra_ 1449 Amostra_ 1450 \n",
       "      44.0780       43.8645       43.7960       44.5370       43.9200 \n",
       "Amostra_ 1451 Amostra_ 1452 Amostra_ 1453 Amostra_ 1454 Amostra_ 1455 \n",
       "      44.0955       44.2415       44.0175       44.5160       44.0315 \n",
       "Amostra_ 1456 Amostra_ 1457 Amostra_ 1458 Amostra_ 1459 Amostra_ 1460 \n",
       "      43.8840       43.9805       43.9490       44.3640       43.9400 \n",
       "Amostra_ 1461 Amostra_ 1462 Amostra_ 1463 Amostra_ 1464 Amostra_ 1465 \n",
       "      44.5700       44.2835       44.5610       44.1155       44.1415 \n",
       "Amostra_ 1466 Amostra_ 1467 Amostra_ 1468 Amostra_ 1469 Amostra_ 1470 \n",
       "      44.5040       43.8760       44.4300       43.7380       44.2100 \n",
       "Amostra_ 1471 Amostra_ 1472 Amostra_ 1473 Amostra_ 1474 Amostra_ 1475 \n",
       "      43.4445       44.0845       44.2205       43.7395       44.3750 \n",
       "Amostra_ 1476 Amostra_ 1477 Amostra_ 1478 Amostra_ 1479 Amostra_ 1480 \n",
       "      44.0740       44.0460       44.2415       43.8260       43.8750 \n",
       "Amostra_ 1481 Amostra_ 1482 Amostra_ 1483 Amostra_ 1484 Amostra_ 1485 \n",
       "      44.0400       44.3605       43.6715       44.1300       44.4770 \n",
       "Amostra_ 1486 Amostra_ 1487 Amostra_ 1488 Amostra_ 1489 Amostra_ 1490 \n",
       "      43.9395       44.3985       44.1135       43.7225       44.0750 \n",
       "Amostra_ 1491 Amostra_ 1492 Amostra_ 1493 Amostra_ 1494 Amostra_ 1495 \n",
       "      43.6755       44.2945       43.4865       44.1700       44.1165 \n",
       "Amostra_ 1496 Amostra_ 1497 Amostra_ 1498 Amostra_ 1499 Amostra_ 1500 \n",
       "      43.7065       44.2105       44.4430       44.4730       43.9480 "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "colMeans(amostras)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "a9016128",
   "metadata": {
    "id": "JfgEBDx0jDzf",
    "papermill": {
     "duration": 0.07858,
     "end_time": "2024-05-06T12:52:35.598473",
     "exception": false,
     "start_time": "2024-05-06T12:52:35.519893",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "> O Teorema do Limite Central afirma que, **com o aumento do tamanho da amostra, a distribuição das médias amostrais se aproxima de uma distribuição normal** com média igual à média da população e desvio padrão igual ao desvio padrão da variável original dividido pela raiz quadrada do tamanho da amostra. Este fato é assegurado para n maior ou igual a 30."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 53,
   "id": "b6df0dac",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:52:35.758303Z",
     "iopub.status.busy": "2024-05-06T12:52:35.756468Z",
     "iopub.status.idle": "2024-05-06T12:52:36.036503Z",
     "shell.execute_reply": "2024-05-06T12:52:36.034060Z"
    },
    "id": "giJKqa_9izKF",
    "outputId": "a90fdc6d-9970-42dd-85c3-0da9e0977ef0",
    "papermill": {
     "duration": 0.363891,
     "end_time": "2024-05-06T12:52:36.039285",
     "exception": false,
     "start_time": "2024-05-06T12:52:35.675394",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "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"
     },
     "metadata": {
      "image/png": {
       "height": 240,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "hist(\n",
    "    x = colMeans(amostras),\n",
    "    main = 'Histograma das Idades Médias',\n",
    "    xlab = 'Idades',\n",
    "    ylab = 'Frequências'\n",
    ")"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "21f17e33",
   "metadata": {
    "id": "_A4RKStwjkLI",
    "papermill": {
     "duration": 0.079965,
     "end_time": "2024-05-06T12:52:36.198560",
     "exception": false,
     "start_time": "2024-05-06T12:52:36.118595",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "> O Teorema do Limite Central afirma que, com o aumento do tamanho da amostra, a distribuição das médias amostrais se aproxima de uma distribuição normal **com média igual à média da população** e desvio padrão igual ao desvio padrão da variável original dividido pela raiz quadrada do tamanho da amostra. Este fato é assegurado para n maior ou igual a 30."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 54,
   "id": "bbfac7f2",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:52:36.359307Z",
     "iopub.status.busy": "2024-05-06T12:52:36.357528Z",
     "iopub.status.idle": "2024-05-06T12:52:36.376672Z",
     "shell.execute_reply": "2024-05-06T12:52:36.374716Z"
    },
    "papermill": {
     "duration": 0.103136,
     "end_time": "2024-05-06T12:52:36.379649",
     "exception": false,
     "start_time": "2024-05-06T12:52:36.276513",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "44.0714211348256"
      ],
      "text/latex": [
       "44.0714211348256"
      ],
      "text/markdown": [
       "44.0714211348256"
      ],
      "text/plain": [
       "[1] 44.07142"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "mean(dados$Idade)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 55,
   "id": "93d1ff8d",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:52:36.541015Z",
     "iopub.status.busy": "2024-05-06T12:52:36.539364Z",
     "iopub.status.idle": "2024-05-06T12:52:36.614724Z",
     "shell.execute_reply": "2024-05-06T12:52:36.612671Z"
    },
    "id": "vXE-UOj_izGZ",
    "outputId": "6eecc478-100a-4b55-eec3-896dbfc2079d",
    "papermill": {
     "duration": 0.159304,
     "end_time": "2024-05-06T12:52:36.617270",
     "exception": false,
     "start_time": "2024-05-06T12:52:36.457966",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "44.0693096666667"
      ],
      "text/latex": [
       "44.0693096666667"
      ],
      "text/markdown": [
       "44.0693096666667"
      ],
      "text/plain": [
       "[1] 44.06931"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "mean(colMeans(amostras))"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "afc876d5",
   "metadata": {
    "id": "7lIWJCAKlPmA",
    "papermill": {
     "duration": 0.078765,
     "end_time": "2024-05-06T12:52:36.774645",
     "exception": false,
     "start_time": "2024-05-06T12:52:36.695880",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "> O Teorema do Limite Central afirma que, com o aumento do tamanho da amostra, a distribuição das médias amostrais se aproxima de uma distribuição normal com média igual à média da população e **desvio padrão igual ao desvio padrão da variável original dividido pela raiz quadrada do tamanho da amostra**. Este fato é assegurado para n maior ou igual a 30.\n",
    "\n",
    "# $$\\sigma_\\bar{x} = \\frac{\\sigma}{\\sqrt{n}}$$"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 56,
   "id": "06e9e21f",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:52:36.937024Z",
     "iopub.status.busy": "2024-05-06T12:52:36.935222Z",
     "iopub.status.idle": "2024-05-06T12:52:36.989298Z",
     "shell.execute_reply": "2024-05-06T12:52:36.987264Z"
    },
    "papermill": {
     "duration": 0.13875,
     "end_time": "2024-05-06T12:52:36.991940",
     "exception": false,
     "start_time": "2024-05-06T12:52:36.853190",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "0.276936594171572"
      ],
      "text/latex": [
       "0.276936594171572"
      ],
      "text/markdown": [
       "0.276936594171572"
      ],
      "text/plain": [
       "[1] 0.2769366"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "sd(colMeans(amostras))"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 57,
   "id": "e6d56cb6",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:52:37.155054Z",
     "iopub.status.busy": "2024-05-06T12:52:37.152670Z",
     "iopub.status.idle": "2024-05-06T12:52:37.173213Z",
     "shell.execute_reply": "2024-05-06T12:52:37.171288Z"
    },
    "papermill": {
     "duration": 0.105099,
     "end_time": "2024-05-06T12:52:37.175962",
     "exception": false,
     "start_time": "2024-05-06T12:52:37.070863",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "0.279074330274043"
      ],
      "text/latex": [
       "0.279074330274043"
      ],
      "text/markdown": [
       "0.279074330274043"
      ],
      "text/plain": [
       "[1] 0.2790743"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "sd(dados$Idade) / sqrt(n)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "84f1c010",
   "metadata": {
    "id": "ku8CE67iG3Ge",
    "papermill": {
     "duration": 0.08146,
     "end_time": "2024-05-06T12:52:37.338795",
     "exception": false,
     "start_time": "2024-05-06T12:52:37.257335",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## <font color=green>4.2 Níveis de confiança e significância</font>\n",
    "***"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "72517b7a",
   "metadata": {
    "id": "mk6ZsvgyG3Gf",
    "papermill": {
     "duration": 0.079103,
     "end_time": "2024-05-06T12:52:37.496704",
     "exception": false,
     "start_time": "2024-05-06T12:52:37.417601",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "O **nível de confiança** ($1 - \\alpha$) representa a probabilidade de acerto da estimativa. De forma complementar o **nível de significância** ($\\alpha$) expressa a probabilidade de erro da estimativa.\n",
    "\n",
    "O **nível de confiança** representa o grau de confiabilidade do resultado da estimativa estar dentro de determinado intervalo. Quando fixamos em uma pesquisa um **nível de confiança** de 95%, por exemplo, estamos assumindo que existe uma probabilidade de 95% dos resultados da pesquisa representarem bem a realidade, ou seja, estarem corretos.\n",
    "\n",
    "O **nível de confiança** de uma estimativa pode ser obtido a partir da área sob a curva normal como ilustrado na figura abaixo."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "ac83c2bf",
   "metadata": {
    "id": "WeGyDfvaG3Gg",
    "papermill": {
     "duration": 0.081363,
     "end_time": "2024-05-06T12:52:37.660716",
     "exception": false,
     "start_time": "2024-05-06T12:52:37.579353",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "![alt text](https://caelum-online-public.s3.amazonaws.com/1178-estatistica-parte2/01/img007.png)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "9906ba15",
   "metadata": {
    "id": "AN8WDZ-HG3Gi",
    "papermill": {
     "duration": 0.079607,
     "end_time": "2024-05-06T12:52:37.822913",
     "exception": false,
     "start_time": "2024-05-06T12:52:37.743306",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## <font color=green>4.3 Erro inferencial</font>\n",
    "***"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "f43e0808",
   "metadata": {
    "id": "tk-TwhhfG3Gi",
    "papermill": {
     "duration": 0.079352,
     "end_time": "2024-05-06T12:52:37.982669",
     "exception": false,
     "start_time": "2024-05-06T12:52:37.903317",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "O **erro inferencial** é definido pelo **desvio padrão das médias amostrais** $\\sigma_\\bar{x}$ e pelo **nível de confiança** determinado para o processo."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "dfdaa8a8",
   "metadata": {
    "id": "FKOQUPYHG3Gk",
    "papermill": {
     "duration": 0.078576,
     "end_time": "2024-05-06T12:52:38.139958",
     "exception": false,
     "start_time": "2024-05-06T12:52:38.061382",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# $$e = z \\frac{\\sigma}{\\sqrt{n}}$$"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "a3116203",
   "metadata": {
    "id": "ELbWQW4sG3HS",
    "papermill": {
     "duration": 0.083221,
     "end_time": "2024-05-06T12:52:38.305791",
     "exception": false,
     "start_time": "2024-05-06T12:52:38.222570",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## <font color=green>4.4 Intervalos de confiança</font>\n",
    "***"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "6da0ad64",
   "metadata": {
    "id": "-r6EMnH-G3HT",
    "papermill": {
     "duration": 0.080326,
     "end_time": "2024-05-06T12:52:38.468132",
     "exception": false,
     "start_time": "2024-05-06T12:52:38.387806",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Intevalo de confiança para a média da população"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "559bc3c4",
   "metadata": {
    "id": "QWgBFeRnG3HT",
    "papermill": {
     "duration": 0.081578,
     "end_time": "2024-05-06T12:52:38.629781",
     "exception": false,
     "start_time": "2024-05-06T12:52:38.548203",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "#### Com desvio padrão populacional conhecido\n",
    "\n",
    "## $$\\mu = \\bar{x} \\pm z\\frac{\\sigma}{\\sqrt{n}}$$\n",
    "\n",
    "#### Com desvio padrão populacional desconhecido\n",
    "\n",
    "## $$\\mu = \\bar{x} \\pm z\\frac{s}{\\sqrt{n}}$$"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "0c50c047",
   "metadata": {
    "id": "R2qqLneeG3HT",
    "papermill": {
     "duration": 0.117196,
     "end_time": "2024-05-06T12:52:38.825533",
     "exception": false,
     "start_time": "2024-05-06T12:52:38.708337",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## <font color='blue'>Exemplo: </font>"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "e0515f69",
   "metadata": {
    "id": "AgnrFjdMG3HT",
    "papermill": {
     "duration": 0.078718,
     "end_time": "2024-05-06T12:52:38.983781",
     "exception": false,
     "start_time": "2024-05-06T12:52:38.905063",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Suponha que os pesos dos sacos de arroz de uma indústria alimentícia se distribuem aproximadamente como uma normal de **desvio padrão populacional igual a 150 g**. Selecionada uma **amostra aleatório de 20 sacos** de um lote específico, obteve-se um **peso médio de 5.050 g**. Construa um intervalo de confiança para a **média populacional** assumindo um **nível de significância de 5%**."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "4de24a8c",
   "metadata": {
    "id": "LpGQGksTG3HU",
    "papermill": {
     "duration": 0.078562,
     "end_time": "2024-05-06T12:52:39.140950",
     "exception": false,
     "start_time": "2024-05-06T12:52:39.062388",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Média amostral"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 58,
   "id": "2b428678",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:52:39.304170Z",
     "iopub.status.busy": "2024-05-06T12:52:39.302418Z",
     "iopub.status.idle": "2024-05-06T12:52:39.323555Z",
     "shell.execute_reply": "2024-05-06T12:52:39.321386Z"
    },
    "id": "aF2QQ0z3G3HU",
    "outputId": "31b20b10-a4f7-49fe-b113-f0fff1e2f30f",
    "papermill": {
     "duration": 0.104846,
     "end_time": "2024-05-06T12:52:39.326295",
     "exception": false,
     "start_time": "2024-05-06T12:52:39.221449",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "5050"
      ],
      "text/latex": [
       "5050"
      ],
      "text/markdown": [
       "5050"
      ],
      "text/plain": [
       "[1] 5050"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "media_amostral <- 5050\n",
    "media_amostral"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "485500be",
   "metadata": {
    "id": "Jly1bVP9G3HY",
    "papermill": {
     "duration": 0.079521,
     "end_time": "2024-05-06T12:52:39.485352",
     "exception": false,
     "start_time": "2024-05-06T12:52:39.405831",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Nível de significância ($\\alpha$)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 59,
   "id": "b65c10bc",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:52:39.649318Z",
     "iopub.status.busy": "2024-05-06T12:52:39.647563Z",
     "iopub.status.idle": "2024-05-06T12:52:39.668566Z",
     "shell.execute_reply": "2024-05-06T12:52:39.666656Z"
    },
    "id": "BzIgN3C7G3HY",
    "outputId": "53b76a9a-fce9-41dc-829e-4c7b318b7d75",
    "papermill": {
     "duration": 0.106629,
     "end_time": "2024-05-06T12:52:39.671245",
     "exception": false,
     "start_time": "2024-05-06T12:52:39.564616",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "0.05"
      ],
      "text/latex": [
       "0.05"
      ],
      "text/markdown": [
       "0.05"
      ],
      "text/plain": [
       "[1] 0.05"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "significancia <- 0.05\n",
    "significancia"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "254824db",
   "metadata": {
    "id": "SrZAbQRKG3Ha",
    "papermill": {
     "duration": 0.079788,
     "end_time": "2024-05-06T12:52:39.830716",
     "exception": false,
     "start_time": "2024-05-06T12:52:39.750928",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Nível de confiança ($1 - \\alpha$)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 60,
   "id": "c9a2fa85",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:52:39.994683Z",
     "iopub.status.busy": "2024-05-06T12:52:39.992924Z",
     "iopub.status.idle": "2024-05-06T12:52:40.013846Z",
     "shell.execute_reply": "2024-05-06T12:52:40.011859Z"
    },
    "id": "1JeWXwA6G3Ha",
    "outputId": "8ac9e63f-f2e5-46a5-b693-e221203ada3f",
    "papermill": {
     "duration": 0.105972,
     "end_time": "2024-05-06T12:52:40.016591",
     "exception": false,
     "start_time": "2024-05-06T12:52:39.910619",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "0.95"
      ],
      "text/latex": [
       "0.95"
      ],
      "text/markdown": [
       "0.95"
      ],
      "text/plain": [
       "[1] 0.95"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "confianca <- 1 - significancia\n",
    "confianca"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "599cc436",
   "metadata": {
    "id": "mZoUFr1nG3Hf",
    "papermill": {
     "duration": 0.079592,
     "end_time": "2024-05-06T12:52:40.176308",
     "exception": false,
     "start_time": "2024-05-06T12:52:40.096716",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Obtendo $z$"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 61,
   "id": "fea8675e",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:52:40.341356Z",
     "iopub.status.busy": "2024-05-06T12:52:40.339581Z",
     "iopub.status.idle": "2024-05-06T12:52:40.370784Z",
     "shell.execute_reply": "2024-05-06T12:52:40.368782Z"
    },
    "papermill": {
     "duration": 0.115979,
     "end_time": "2024-05-06T12:52:40.373630",
     "exception": false,
     "start_time": "2024-05-06T12:52:40.257651",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A matrix: 10 × 10 of type dbl</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>0.00</th><th scope=col>0.01</th><th scope=col>0.02</th><th scope=col>0.03</th><th scope=col>0.04</th><th scope=col>0.05</th><th scope=col>0.06</th><th scope=col>0.07</th><th scope=col>0.08</th><th scope=col>0.09</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>1.60</th><td>0.9452007</td><td>0.9463011</td><td>0.9473839</td><td>0.9484493</td><td>0.9494974</td><td>0.9505285</td><td>0.9515428</td><td>0.9525403</td><td>0.9535213</td><td>0.9544860</td></tr>\n",
       "\t<tr><th scope=row>1.70</th><td>0.9554345</td><td>0.9563671</td><td>0.9572838</td><td>0.9581849</td><td>0.9590705</td><td>0.9599408</td><td>0.9607961</td><td>0.9616364</td><td>0.9624620</td><td>0.9632730</td></tr>\n",
       "\t<tr><th scope=row>1.80</th><td>0.9640697</td><td>0.9648521</td><td>0.9656205</td><td>0.9663750</td><td>0.9671159</td><td>0.9678432</td><td>0.9685572</td><td>0.9692581</td><td>0.9699460</td><td>0.9706210</td></tr>\n",
       "\t<tr><th scope=row>1.90</th><td>0.9712834</td><td>0.9719334</td><td>0.9725711</td><td>0.9731966</td><td>0.9738102</td><td>0.9744119</td><td>0.9750021</td><td>0.9755808</td><td>0.9761482</td><td>0.9767045</td></tr>\n",
       "\t<tr><th scope=row>2.00</th><td>0.9772499</td><td>0.9777844</td><td>0.9783083</td><td>0.9788217</td><td>0.9793248</td><td>0.9798178</td><td>0.9803007</td><td>0.9807738</td><td>0.9812372</td><td>0.9816911</td></tr>\n",
       "\t<tr><th scope=row>2.10</th><td>0.9821356</td><td>0.9825708</td><td>0.9829970</td><td>0.9834142</td><td>0.9838226</td><td>0.9842224</td><td>0.9846137</td><td>0.9849966</td><td>0.9853713</td><td>0.9857379</td></tr>\n",
       "\t<tr><th scope=row>2.20</th><td>0.9860966</td><td>0.9864474</td><td>0.9867906</td><td>0.9871263</td><td>0.9874545</td><td>0.9877755</td><td>0.9880894</td><td>0.9883962</td><td>0.9886962</td><td>0.9889893</td></tr>\n",
       "\t<tr><th scope=row>2.30</th><td>0.9892759</td><td>0.9895559</td><td>0.9898296</td><td>0.9900969</td><td>0.9903581</td><td>0.9906133</td><td>0.9908625</td><td>0.9911060</td><td>0.9913437</td><td>0.9915758</td></tr>\n",
       "\t<tr><th scope=row>2.40</th><td>0.9918025</td><td>0.9920237</td><td>0.9922397</td><td>0.9924506</td><td>0.9926564</td><td>0.9928572</td><td>0.9930531</td><td>0.9932443</td><td>0.9934309</td><td>0.9936128</td></tr>\n",
       "\t<tr><th scope=row>2.50</th><td>0.9937903</td><td>0.9939634</td><td>0.9941323</td><td>0.9942969</td><td>0.9944574</td><td>0.9946139</td><td>0.9947664</td><td>0.9949151</td><td>0.9950600</td><td>0.9952012</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A matrix: 10 × 10 of type dbl\n",
       "\\begin{tabular}{r|llllllllll}\n",
       "  & 0.00 & 0.01 & 0.02 & 0.03 & 0.04 & 0.05 & 0.06 & 0.07 & 0.08 & 0.09\\\\\n",
       "\\hline\n",
       "\t1.60 & 0.9452007 & 0.9463011 & 0.9473839 & 0.9484493 & 0.9494974 & 0.9505285 & 0.9515428 & 0.9525403 & 0.9535213 & 0.9544860\\\\\n",
       "\t1.70 & 0.9554345 & 0.9563671 & 0.9572838 & 0.9581849 & 0.9590705 & 0.9599408 & 0.9607961 & 0.9616364 & 0.9624620 & 0.9632730\\\\\n",
       "\t1.80 & 0.9640697 & 0.9648521 & 0.9656205 & 0.9663750 & 0.9671159 & 0.9678432 & 0.9685572 & 0.9692581 & 0.9699460 & 0.9706210\\\\\n",
       "\t1.90 & 0.9712834 & 0.9719334 & 0.9725711 & 0.9731966 & 0.9738102 & 0.9744119 & 0.9750021 & 0.9755808 & 0.9761482 & 0.9767045\\\\\n",
       "\t2.00 & 0.9772499 & 0.9777844 & 0.9783083 & 0.9788217 & 0.9793248 & 0.9798178 & 0.9803007 & 0.9807738 & 0.9812372 & 0.9816911\\\\\n",
       "\t2.10 & 0.9821356 & 0.9825708 & 0.9829970 & 0.9834142 & 0.9838226 & 0.9842224 & 0.9846137 & 0.9849966 & 0.9853713 & 0.9857379\\\\\n",
       "\t2.20 & 0.9860966 & 0.9864474 & 0.9867906 & 0.9871263 & 0.9874545 & 0.9877755 & 0.9880894 & 0.9883962 & 0.9886962 & 0.9889893\\\\\n",
       "\t2.30 & 0.9892759 & 0.9895559 & 0.9898296 & 0.9900969 & 0.9903581 & 0.9906133 & 0.9908625 & 0.9911060 & 0.9913437 & 0.9915758\\\\\n",
       "\t2.40 & 0.9918025 & 0.9920237 & 0.9922397 & 0.9924506 & 0.9926564 & 0.9928572 & 0.9930531 & 0.9932443 & 0.9934309 & 0.9936128\\\\\n",
       "\t2.50 & 0.9937903 & 0.9939634 & 0.9941323 & 0.9942969 & 0.9944574 & 0.9946139 & 0.9947664 & 0.9949151 & 0.9950600 & 0.9952012\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A matrix: 10 × 10 of type dbl\n",
       "\n",
       "| <!--/--> | 0.00 | 0.01 | 0.02 | 0.03 | 0.04 | 0.05 | 0.06 | 0.07 | 0.08 | 0.09 |\n",
       "|---|---|---|---|---|---|---|---|---|---|---|\n",
       "| 1.60 | 0.9452007 | 0.9463011 | 0.9473839 | 0.9484493 | 0.9494974 | 0.9505285 | 0.9515428 | 0.9525403 | 0.9535213 | 0.9544860 |\n",
       "| 1.70 | 0.9554345 | 0.9563671 | 0.9572838 | 0.9581849 | 0.9590705 | 0.9599408 | 0.9607961 | 0.9616364 | 0.9624620 | 0.9632730 |\n",
       "| 1.80 | 0.9640697 | 0.9648521 | 0.9656205 | 0.9663750 | 0.9671159 | 0.9678432 | 0.9685572 | 0.9692581 | 0.9699460 | 0.9706210 |\n",
       "| 1.90 | 0.9712834 | 0.9719334 | 0.9725711 | 0.9731966 | 0.9738102 | 0.9744119 | 0.9750021 | 0.9755808 | 0.9761482 | 0.9767045 |\n",
       "| 2.00 | 0.9772499 | 0.9777844 | 0.9783083 | 0.9788217 | 0.9793248 | 0.9798178 | 0.9803007 | 0.9807738 | 0.9812372 | 0.9816911 |\n",
       "| 2.10 | 0.9821356 | 0.9825708 | 0.9829970 | 0.9834142 | 0.9838226 | 0.9842224 | 0.9846137 | 0.9849966 | 0.9853713 | 0.9857379 |\n",
       "| 2.20 | 0.9860966 | 0.9864474 | 0.9867906 | 0.9871263 | 0.9874545 | 0.9877755 | 0.9880894 | 0.9883962 | 0.9886962 | 0.9889893 |\n",
       "| 2.30 | 0.9892759 | 0.9895559 | 0.9898296 | 0.9900969 | 0.9903581 | 0.9906133 | 0.9908625 | 0.9911060 | 0.9913437 | 0.9915758 |\n",
       "| 2.40 | 0.9918025 | 0.9920237 | 0.9922397 | 0.9924506 | 0.9926564 | 0.9928572 | 0.9930531 | 0.9932443 | 0.9934309 | 0.9936128 |\n",
       "| 2.50 | 0.9937903 | 0.9939634 | 0.9941323 | 0.9942969 | 0.9944574 | 0.9946139 | 0.9947664 | 0.9949151 | 0.9950600 | 0.9952012 |\n",
       "\n"
      ],
      "text/plain": [
       "     0.00      0.01      0.02      0.03      0.04      0.05      0.06     \n",
       "1.60 0.9452007 0.9463011 0.9473839 0.9484493 0.9494974 0.9505285 0.9515428\n",
       "1.70 0.9554345 0.9563671 0.9572838 0.9581849 0.9590705 0.9599408 0.9607961\n",
       "1.80 0.9640697 0.9648521 0.9656205 0.9663750 0.9671159 0.9678432 0.9685572\n",
       "1.90 0.9712834 0.9719334 0.9725711 0.9731966 0.9738102 0.9744119 0.9750021\n",
       "2.00 0.9772499 0.9777844 0.9783083 0.9788217 0.9793248 0.9798178 0.9803007\n",
       "2.10 0.9821356 0.9825708 0.9829970 0.9834142 0.9838226 0.9842224 0.9846137\n",
       "2.20 0.9860966 0.9864474 0.9867906 0.9871263 0.9874545 0.9877755 0.9880894\n",
       "2.30 0.9892759 0.9895559 0.9898296 0.9900969 0.9903581 0.9906133 0.9908625\n",
       "2.40 0.9918025 0.9920237 0.9922397 0.9924506 0.9926564 0.9928572 0.9930531\n",
       "2.50 0.9937903 0.9939634 0.9941323 0.9942969 0.9944574 0.9946139 0.9947664\n",
       "     0.07      0.08      0.09     \n",
       "1.60 0.9525403 0.9535213 0.9544860\n",
       "1.70 0.9616364 0.9624620 0.9632730\n",
       "1.80 0.9692581 0.9699460 0.9706210\n",
       "1.90 0.9755808 0.9761482 0.9767045\n",
       "2.00 0.9807738 0.9812372 0.9816911\n",
       "2.10 0.9849966 0.9853713 0.9857379\n",
       "2.20 0.9883962 0.9886962 0.9889893\n",
       "2.30 0.9911060 0.9913437 0.9915758\n",
       "2.40 0.9932443 0.9934309 0.9936128\n",
       "2.50 0.9949151 0.9950600 0.9952012"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "tabela_normal_padronizada[17:26, ]"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "b0d1ef35",
   "metadata": {
    "id": "T-3mV1qlUj1t",
    "papermill": {
     "duration": 0.080288,
     "end_time": "2024-05-06T12:52:40.533455",
     "exception": false,
     "start_time": "2024-05-06T12:52:40.453167",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "![alt text](https://caelum-online-public.s3.amazonaws.com/1178-estatistica-parte2/01/img008.png)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 62,
   "id": "09927d83",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:52:40.699757Z",
     "iopub.status.busy": "2024-05-06T12:52:40.698025Z",
     "iopub.status.idle": "2024-05-06T12:52:40.717065Z",
     "shell.execute_reply": "2024-05-06T12:52:40.715132Z"
    },
    "id": "nT5ZTwjOG3Go",
    "outputId": "9c20d5b5-fb36-40f1-b901-3969a2fa8ea0",
    "papermill": {
     "duration": 0.104945,
     "end_time": "2024-05-06T12:52:40.719720",
     "exception": false,
     "start_time": "2024-05-06T12:52:40.614775",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "0.475"
      ],
      "text/latex": [
       "0.475"
      ],
      "text/markdown": [
       "0.475"
      ],
      "text/plain": [
       "[1] 0.475"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "0.95 / 2"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 63,
   "id": "b4244269",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:52:40.886870Z",
     "iopub.status.busy": "2024-05-06T12:52:40.885125Z",
     "iopub.status.idle": "2024-05-06T12:52:40.903901Z",
     "shell.execute_reply": "2024-05-06T12:52:40.901925Z"
    },
    "id": "vMjck-3ZU_sz",
    "outputId": "56a3f3ba-e5d4-40c7-dc4c-b31ed5d07262",
    "papermill": {
     "duration": 0.106081,
     "end_time": "2024-05-06T12:52:40.906527",
     "exception": false,
     "start_time": "2024-05-06T12:52:40.800446",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "0.975"
      ],
      "text/latex": [
       "0.975"
      ],
      "text/markdown": [
       "0.975"
      ],
      "text/plain": [
       "[1] 0.975"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "0.5 + (0.95 / 2)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 64,
   "id": "7be1e37f",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:52:41.072020Z",
     "iopub.status.busy": "2024-05-06T12:52:41.070175Z",
     "iopub.status.idle": "2024-05-06T12:52:41.097605Z",
     "shell.execute_reply": "2024-05-06T12:52:41.095700Z"
    },
    "id": "L4CMGZ3oVHLX",
    "outputId": "60470140-1dfa-4d5c-9627-097378b2fc8e",
    "papermill": {
     "duration": 0.112835,
     "end_time": "2024-05-06T12:52:41.100305",
     "exception": false,
     "start_time": "2024-05-06T12:52:40.987470",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "1.96"
      ],
      "text/latex": [
       "1.96"
      ],
      "text/markdown": [
       "1.96"
      ],
      "text/plain": [
       "[1] 1.96"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "1.9 + 0.06"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 65,
   "id": "a58ab941",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:52:41.268543Z",
     "iopub.status.busy": "2024-05-06T12:52:41.266811Z",
     "iopub.status.idle": "2024-05-06T12:52:41.289206Z",
     "shell.execute_reply": "2024-05-06T12:52:41.287218Z"
    },
    "papermill": {
     "duration": 0.111117,
     "end_time": "2024-05-06T12:52:41.292234",
     "exception": false,
     "start_time": "2024-05-06T12:52:41.181117",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "1.95996398454005"
      ],
      "text/latex": [
       "1.95996398454005"
      ],
      "text/markdown": [
       "1.95996398454005"
      ],
      "text/plain": [
       "[1] 1.959964"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "z <- qnorm(0.975)\n",
    "z"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "fd81238a",
   "metadata": {
    "id": "ggXXP8QqTyNA",
    "papermill": {
     "duration": 0.081621,
     "end_time": "2024-05-06T12:52:41.459133",
     "exception": false,
     "start_time": "2024-05-06T12:52:41.377512",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Valores de $z$ para os níveis de confiança mais utilizados\n",
    "\n",
    "|Nível de<br>confiança|Valor da área sob<br>a curva normal| $z$ |\n",
    "|:----------------:|:---------------------------------:|:---:|\n",
    "|90%               |0,95                               |1,645|\n",
    "|95%               |0,975                              |1,96 |\n",
    "|99%               |0,995                              |2,575|"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "46441a9c",
   "metadata": {
    "id": "MfE1ru0AG3Hg",
    "papermill": {
     "duration": 0.081303,
     "end_time": "2024-05-06T12:52:41.621183",
     "exception": false,
     "start_time": "2024-05-06T12:52:41.539880",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Obtendo $\\sigma_\\bar{x}$"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 66,
   "id": "d5aa6610",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:52:41.789703Z",
     "iopub.status.busy": "2024-05-06T12:52:41.787955Z",
     "iopub.status.idle": "2024-05-06T12:52:41.809161Z",
     "shell.execute_reply": "2024-05-06T12:52:41.807273Z"
    },
    "id": "LyQ6UUYtG3Hh",
    "outputId": "4c066583-4272-4e26-daf5-575ea4815371",
    "papermill": {
     "duration": 0.109061,
     "end_time": "2024-05-06T12:52:41.811582",
     "exception": false,
     "start_time": "2024-05-06T12:52:41.702521",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "150"
      ],
      "text/latex": [
       "150"
      ],
      "text/markdown": [
       "150"
      ],
      "text/plain": [
       "[1] 150"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "desvio_padrao <- 150\n",
    "desvio_padrao"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 67,
   "id": "b6481a75",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:52:41.979995Z",
     "iopub.status.busy": "2024-05-06T12:52:41.978290Z",
     "iopub.status.idle": "2024-05-06T12:52:41.998737Z",
     "shell.execute_reply": "2024-05-06T12:52:41.996811Z"
    },
    "id": "ebvikT95G3Hi",
    "outputId": "bfbc2f5c-e706-46a6-aa6c-e94632aed4fc",
    "papermill": {
     "duration": 0.107418,
     "end_time": "2024-05-06T12:52:42.001551",
     "exception": false,
     "start_time": "2024-05-06T12:52:41.894133",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "20"
      ],
      "text/latex": [
       "20"
      ],
      "text/markdown": [
       "20"
      ],
      "text/plain": [
       "[1] 20"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "n <- 20\n",
    "n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 68,
   "id": "7d3a7a78",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:52:42.169371Z",
     "iopub.status.busy": "2024-05-06T12:52:42.167559Z",
     "iopub.status.idle": "2024-05-06T12:52:42.188685Z",
     "shell.execute_reply": "2024-05-06T12:52:42.186628Z"
    },
    "id": "TxM3yTpjG3Hk",
    "outputId": "a38a0bfc-2c3b-48f4-cea7-ee5f5147a251",
    "papermill": {
     "duration": 0.108699,
     "end_time": "2024-05-06T12:52:42.191737",
     "exception": false,
     "start_time": "2024-05-06T12:52:42.083038",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "4.47213595499958"
      ],
      "text/latex": [
       "4.47213595499958"
      ],
      "text/markdown": [
       "4.47213595499958"
      ],
      "text/plain": [
       "[1] 4.472136"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "raiz_de_n <- sqrt(20)\n",
    "raiz_de_n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 69,
   "id": "2b99dd74",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:52:42.363909Z",
     "iopub.status.busy": "2024-05-06T12:52:42.362236Z",
     "iopub.status.idle": "2024-05-06T12:52:42.382896Z",
     "shell.execute_reply": "2024-05-06T12:52:42.380970Z"
    },
    "id": "HNAcOpl0G3Hl",
    "outputId": "3b37c2d5-b02d-40af-897d-6c588e2696aa",
    "papermill": {
     "duration": 0.11125,
     "end_time": "2024-05-06T12:52:42.385614",
     "exception": false,
     "start_time": "2024-05-06T12:52:42.274364",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "33.5410196624968"
      ],
      "text/latex": [
       "33.5410196624968"
      ],
      "text/markdown": [
       "33.5410196624968"
      ],
      "text/plain": [
       "[1] 33.54102"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "sigma <- desvio_padrao / raiz_de_n\n",
    "sigma"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "251079fc",
   "metadata": {
    "id": "NHbXlLk-G3Hn",
    "papermill": {
     "duration": 0.118399,
     "end_time": "2024-05-06T12:52:42.585757",
     "exception": false,
     "start_time": "2024-05-06T12:52:42.467358",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Obtendo $e$"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 70,
   "id": "d19c1198",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:52:42.757392Z",
     "iopub.status.busy": "2024-05-06T12:52:42.755728Z",
     "iopub.status.idle": "2024-05-06T12:52:42.776277Z",
     "shell.execute_reply": "2024-05-06T12:52:42.774351Z"
    },
    "id": "gAfakih5G3Ho",
    "outputId": "48958fa3-2cf8-4bc5-dfc3-0fb925798b38",
    "papermill": {
     "duration": 0.109696,
     "end_time": "2024-05-06T12:52:42.778977",
     "exception": false,
     "start_time": "2024-05-06T12:52:42.669281",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "65.7391905432436"
      ],
      "text/latex": [
       "65.7391905432436"
      ],
      "text/markdown": [
       "65.7391905432436"
      ],
      "text/plain": [
       "[1] 65.73919"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "e <- z * sigma\n",
    "e"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "f7053fa5",
   "metadata": {
    "id": "sx1QTfNrG3Hq",
    "papermill": {
     "duration": 0.082432,
     "end_time": "2024-05-06T12:52:42.944142",
     "exception": false,
     "start_time": "2024-05-06T12:52:42.861710",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Solução 1 - Calculando o intervalo de confiança para a média"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 71,
   "id": "17274af8",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:52:43.117861Z",
     "iopub.status.busy": "2024-05-06T12:52:43.116152Z",
     "iopub.status.idle": "2024-05-06T12:52:43.137586Z",
     "shell.execute_reply": "2024-05-06T12:52:43.135662Z"
    },
    "id": "NlJCcPZnG3Hq",
    "outputId": "09cee323-103e-4832-c23f-97daf4b9929f",
    "papermill": {
     "duration": 0.114623,
     "end_time": "2024-05-06T12:52:43.140325",
     "exception": false,
     "start_time": "2024-05-06T12:52:43.025702",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>4984.26080945676</li><li>5115.73919054324</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 4984.26080945676\n",
       "\\item 5115.73919054324\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 4984.26080945676\n",
       "2. 5115.73919054324\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       "[1] 4984.261 5115.739"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "intervalo <- c(\n",
    "    media_amostral - e,\n",
    "    media_amostral + e\n",
    ")\n",
    "intervalo"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "234c1122",
   "metadata": {
    "id": "DkFJL7fcG3Ht",
    "papermill": {
     "duration": 0.081653,
     "end_time": "2024-05-06T12:52:43.321545",
     "exception": false,
     "start_time": "2024-05-06T12:52:43.239892",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Solução 2 - Calculando o intervalo de confiança para a média\n",
    "\n",
    "#### <font color=red>Documentações:\n",
    "\n",
    "- [**MeanCI**](https://www.rdocumentation.org/packages/DescTools/versions/0.99.30/topics/MeanCI)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "f7c80e70",
   "metadata": {
    "papermill": {
     "duration": 0.081914,
     "end_time": "2024-05-06T12:52:43.484987",
     "exception": false,
     "start_time": "2024-05-06T12:52:43.403073",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "#### Instalação do pacote DescTools\n",
    "\n",
    "https://cran.r-project.org"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 72,
   "id": "dc204296",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:52:43.653549Z",
     "iopub.status.busy": "2024-05-06T12:52:43.651838Z",
     "iopub.status.idle": "2024-05-06T12:53:58.391320Z",
     "shell.execute_reply": "2024-05-06T12:53:58.389164Z"
    },
    "papermill": {
     "duration": 74.827632,
     "end_time": "2024-05-06T12:53:58.394444",
     "exception": false,
     "start_time": "2024-05-06T12:52:43.566812",
     "status": "completed"
    },
    "scrolled": true,
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Installing package into ‘/usr/local/lib/R/site-library’\n",
      "(as ‘lib’ is unspecified)\n",
      "\n",
      "Warning message:\n",
      "“package ‘DescTools’ is not available for this version of R\n",
      "‘DescTools’ version 0.99.54 is in the repositories but depends on R (>= 4.2.0)\n",
      "\n",
      "A version of this package for your version of R might be available elsewhere,\n",
      "see the ideas at\n",
      "https://cran.r-project.org/doc/manuals/r-patched/R-admin.html#Installing-packages”\n",
      "Installing package into ‘/usr/local/lib/R/site-library’\n",
      "(as ‘lib’ is unspecified)\n",
      "\n"
     ]
    }
   ],
   "source": [
    "install.packages('DescTools')\n",
    "\n",
    "# OU\n",
    "\n",
    "packageurl <- \"https://cran.r-project.org/src/contrib/Archive/DescTools/DescTools_0.99.30.tar.gz\"\n",
    "install.packages(packageurl, repos=NULL, type=\"source\")"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 73,
   "id": "7cf074d4",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:53:58.566892Z",
     "iopub.status.busy": "2024-05-06T12:53:58.565072Z",
     "iopub.status.idle": "2024-05-06T12:53:59.831526Z",
     "shell.execute_reply": "2024-05-06T12:53:59.829322Z"
    },
    "papermill": {
     "duration": 1.355611,
     "end_time": "2024-05-06T12:53:59.834394",
     "exception": false,
     "start_time": "2024-05-06T12:53:58.478783",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "library(DescTools)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 74,
   "id": "898819fd",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:54:00.009162Z",
     "iopub.status.busy": "2024-05-06T12:54:00.007051Z",
     "iopub.status.idle": "2024-05-06T12:54:00.031180Z",
     "shell.execute_reply": "2024-05-06T12:54:00.028809Z"
    },
    "papermill": {
     "duration": 0.116702,
     "end_time": "2024-05-06T12:54:00.034528",
     "exception": false,
     "start_time": "2024-05-06T12:53:59.917826",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".dl-inline {width: auto; margin:0; padding: 0}\n",
       ".dl-inline>dt, .dl-inline>dd {float: none; width: auto; display: inline-block}\n",
       ".dl-inline>dt::after {content: \":\\0020\"; padding-right: .5ex}\n",
       ".dl-inline>dt:not(:first-of-type) {padding-left: .5ex}\n",
       "</style><dl class=dl-inline><dt>mean</dt><dd>5050</dd><dt>lwr.ci</dt><dd>4984.26080945676</dd><dt>upr.ci</dt><dd>5115.73919054324</dd></dl>\n"
      ],
      "text/latex": [
       "\\begin{description*}\n",
       "\\item[mean] 5050\n",
       "\\item[lwr.ci] 4984.26080945676\n",
       "\\item[upr.ci] 5115.73919054324\n",
       "\\end{description*}\n"
      ],
      "text/markdown": [
       "mean\n",
       ":   5050lwr.ci\n",
       ":   4984.26080945676upr.ci\n",
       ":   5115.73919054324\n",
       "\n"
      ],
      "text/plain": [
       "    mean   lwr.ci   upr.ci \n",
       "5050.000 4984.261 5115.739 "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "MeanCI(x = 5050, sd = sigma, type = 'norm', conf.level = 0.95, sides = 'two.sided')"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 75,
   "id": "a87467e6",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:54:00.205555Z",
     "iopub.status.busy": "2024-05-06T12:54:00.203370Z",
     "iopub.status.idle": "2024-05-06T12:54:00.256068Z",
     "shell.execute_reply": "2024-05-06T12:54:00.254083Z"
    },
    "papermill": {
     "duration": 0.141636,
     "end_time": "2024-05-06T12:54:00.258956",
     "exception": false,
     "start_time": "2024-05-06T12:54:00.117320",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "43.9831762984956"
      ],
      "text/latex": [
       "43.9831762984956"
      ],
      "text/markdown": [
       "43.9831762984956"
      ],
      "text/plain": [
       "[1] 43.98318"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "44.1596659711556"
      ],
      "text/latex": [
       "44.1596659711556"
      ],
      "text/markdown": [
       "44.1596659711556"
      ],
      "text/plain": [
       "[1] 44.15967"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "mean(dados$Idade) - (z * (sd(dados$Idade) / sqrt(nrow(dados))))\n",
    "mean(dados$Idade) + (z * (sd(dados$Idade) / sqrt(nrow(dados))))"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 76,
   "id": "cd543481",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:54:00.431360Z",
     "iopub.status.busy": "2024-05-06T12:54:00.429547Z",
     "iopub.status.idle": "2024-05-06T12:54:00.446652Z",
     "shell.execute_reply": "2024-05-06T12:54:00.444630Z"
    },
    "papermill": {
     "duration": 0.108263,
     "end_time": "2024-05-06T12:54:00.450329",
     "exception": false,
     "start_time": "2024-05-06T12:54:00.342066",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "sigma <- sd(dados$Idade) / sqrt(nrow(dados))"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 77,
   "id": "2db81e66",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:54:00.626628Z",
     "iopub.status.busy": "2024-05-06T12:54:00.624718Z",
     "iopub.status.idle": "2024-05-06T12:54:00.645313Z",
     "shell.execute_reply": "2024-05-06T12:54:00.643278Z"
    },
    "papermill": {
     "duration": 0.110702,
     "end_time": "2024-05-06T12:54:00.648030",
     "exception": false,
     "start_time": "2024-05-06T12:54:00.537328",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".dl-inline {width: auto; margin:0; padding: 0}\n",
       ".dl-inline>dt, .dl-inline>dd {float: none; width: auto; display: inline-block}\n",
       ".dl-inline>dt::after {content: \":\\0020\"; padding-right: .5ex}\n",
       ".dl-inline>dt:not(:first-of-type) {padding-left: .5ex}\n",
       "</style><dl class=dl-inline><dt>mean</dt><dd>44.0714211348256</dd><dt>lwr.ci</dt><dd>43.9831762984956</dd><dt>upr.ci</dt><dd>44.1596659711556</dd></dl>\n"
      ],
      "text/latex": [
       "\\begin{description*}\n",
       "\\item[mean] 44.0714211348256\n",
       "\\item[lwr.ci] 43.9831762984956\n",
       "\\item[upr.ci] 44.1596659711556\n",
       "\\end{description*}\n"
      ],
      "text/markdown": [
       "mean\n",
       ":   44.0714211348256lwr.ci\n",
       ":   43.9831762984956upr.ci\n",
       ":   44.1596659711556\n",
       "\n"
      ],
      "text/plain": [
       "    mean   lwr.ci   upr.ci \n",
       "44.07142 43.98318 44.15967 "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "MeanCI(x = mean(dados$Idade), sd = sigma, type = 'norm', conf.level = 0.95, sides = 'two.sided')"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "d074adc9",
   "metadata": {
    "id": "aF9jAC6yG3Gl",
    "papermill": {
     "duration": 0.083541,
     "end_time": "2024-05-06T12:54:00.815352",
     "exception": false,
     "start_time": "2024-05-06T12:54:00.731811",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# <font color=green>5 CÁLCULO DO TAMANHO DA AMOSTRA</font>\n",
    "***"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "72ffb420",
   "metadata": {
    "id": "BwiygaNqnjrr",
    "papermill": {
     "duration": 0.083977,
     "end_time": "2024-05-06T12:54:00.983037",
     "exception": false,
     "start_time": "2024-05-06T12:54:00.899060",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## <font color='red'>Problema </font>"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "a60d92ee",
   "metadata": {
    "id": "a7RjjVVUnlI3",
    "papermill": {
     "duration": 0.083724,
     "end_time": "2024-05-06T12:54:01.150333",
     "exception": false,
     "start_time": "2024-05-06T12:54:01.066609",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Estamos estudando o rendimento mensal dos chefes de domicílios no Brasil. Nosso supervisor determinou que o **erro máximo em relação a média seja de R$\\$$ 100,00**. Sabemos que o **desvio padrão populacional** deste grupo de trabalhadores é de **R$\\$$ 3.323,39**. Para um **nível de confiança de 95%**, qual deve ser o tamanho da amostra de nosso estudo?"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "d18fcb76",
   "metadata": {
    "id": "za2sGJt6G3Gm",
    "papermill": {
     "duration": 0.083447,
     "end_time": "2024-05-06T12:54:01.317748",
     "exception": false,
     "start_time": "2024-05-06T12:54:01.234301",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## <font color=green>5.1 Variáveis quantitativas e população infinita</font>\n",
    "***"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "1f4f4075",
   "metadata": {
    "id": "3wqMjJWR5sVq",
    "papermill": {
     "duration": 0.083842,
     "end_time": "2024-05-06T12:54:01.485547",
     "exception": false,
     "start_time": "2024-05-06T12:54:01.401705",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# $$e = z \\frac{\\sigma}{\\sqrt{n}}$$"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "57ba1f58",
   "metadata": {
    "id": "X1AxpKtIG3Gn",
    "papermill": {
     "duration": 0.084362,
     "end_time": "2024-05-06T12:54:01.655463",
     "exception": false,
     "start_time": "2024-05-06T12:54:01.571101",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "#### Com desvio padrão conhecido\n",
    "\n",
    "## $$n = \\left(z\\frac{\\sigma}{e}\\right)^2$$\n",
    "\n",
    "#### Com desvio padrão desconhecido\n",
    "\n",
    "## $$n = \\left(z\\frac{s}{e}\\right)^2$$\n",
    "\n",
    "Onde:\n",
    "\n",
    "$z$ = variável normal padronizada\n",
    "\n",
    "$\\sigma$ = desvio padrão populacional\n",
    "\n",
    "$s$ = desvio padrão amostral\n",
    "\n",
    "$e$ = erro inferencial"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "b90e5aa1",
   "metadata": {
    "id": "T0fysCyDG3Gn",
    "papermill": {
     "duration": 0.086924,
     "end_time": "2024-05-06T12:54:01.828830",
     "exception": false,
     "start_time": "2024-05-06T12:54:01.741906",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### <font color='red'>Observações</font>\n",
    "\n",
    "1. O desvio padrão ($\\sigma$ ou $s$) e o erro ($e$) devem estar na mesma unidade de medida.\n",
    "\n",
    "2. Quando o erro ($e$) for representado em termos percentuais, deve ser interpretado como um percentual relacionado à média."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "183a2251",
   "metadata": {
    "id": "WHYBTaupG3Gn",
    "papermill": {
     "duration": 0.084844,
     "end_time": "2024-05-06T12:54:01.998035",
     "exception": false,
     "start_time": "2024-05-06T12:54:01.913191",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## <font color='blue'>Exemplo: Rendimento médio</font>"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "5ad472ba",
   "metadata": {
    "id": "dcdzo7EgG3Go",
    "papermill": {
     "duration": 0.08422,
     "end_time": "2024-05-06T12:54:02.165243",
     "exception": false,
     "start_time": "2024-05-06T12:54:02.081023",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Estamos estudando o rendimento mensal dos chefes de domicílios no Brasil. Nosso supervisor determinou que o **erro máximo em relação a média seja de R$\\$$ 100,00**. Sabemos que o **desvio padrão populacional** deste grupo de trabalhadores é de **R$\\$$ 3.323,39**. Para um **nível de confiança de 95%**, qual deve ser o tamanho da amostra de nosso estudo?"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 78,
   "id": "8205cb5f",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:54:02.378822Z",
     "iopub.status.busy": "2024-05-06T12:54:02.377187Z",
     "iopub.status.idle": "2024-05-06T12:54:02.396101Z",
     "shell.execute_reply": "2024-05-06T12:54:02.394196Z"
    },
    "id": "XtJ5I_kaKDN3",
    "outputId": "a519e330-ddf0-492c-f42d-5cef36fed4c9",
    "papermill": {
     "duration": 0.150678,
     "end_time": "2024-05-06T12:54:02.398947",
     "exception": false,
     "start_time": "2024-05-06T12:54:02.248269",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "0.475"
      ],
      "text/latex": [
       "0.475"
      ],
      "text/markdown": [
       "0.475"
      ],
      "text/plain": [
       "[1] 0.475"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "0.95 / 2"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 79,
   "id": "4c50e8f7",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:54:02.572416Z",
     "iopub.status.busy": "2024-05-06T12:54:02.570689Z",
     "iopub.status.idle": "2024-05-06T12:54:02.591376Z",
     "shell.execute_reply": "2024-05-06T12:54:02.589337Z"
    },
    "id": "-4TLCgNLKC95",
    "outputId": "19f3b7af-ff33-4db4-c675-c62b5088137e",
    "papermill": {
     "duration": 0.111875,
     "end_time": "2024-05-06T12:54:02.594393",
     "exception": false,
     "start_time": "2024-05-06T12:54:02.482518",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "0.975"
      ],
      "text/latex": [
       "0.975"
      ],
      "text/markdown": [
       "0.975"
      ],
      "text/plain": [
       "[1] 0.975"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "0.5 + (0.95 / 2)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 80,
   "id": "3d663dca",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:54:02.770498Z",
     "iopub.status.busy": "2024-05-06T12:54:02.768707Z",
     "iopub.status.idle": "2024-05-06T12:54:02.789251Z",
     "shell.execute_reply": "2024-05-06T12:54:02.787392Z"
    },
    "id": "7XDT12I4ViYN",
    "outputId": "a0af8729-80a8-4b33-b307-96d144c83029",
    "papermill": {
     "duration": 0.112584,
     "end_time": "2024-05-06T12:54:02.791944",
     "exception": false,
     "start_time": "2024-05-06T12:54:02.679360",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "1.95996398454005"
      ],
      "text/latex": [
       "1.95996398454005"
      ],
      "text/markdown": [
       "1.95996398454005"
      ],
      "text/plain": [
       "[1] 1.959964"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "z <- qnorm(0.975)\n",
    "z"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "ab21ad47",
   "metadata": {
    "id": "6uCkW4KlG3Gr",
    "papermill": {
     "duration": 0.084396,
     "end_time": "2024-05-06T12:54:02.961350",
     "exception": false,
     "start_time": "2024-05-06T12:54:02.876954",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Obtendo $\\sigma$"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 81,
   "id": "3c84b9ec",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:54:03.136185Z",
     "iopub.status.busy": "2024-05-06T12:54:03.134415Z",
     "iopub.status.idle": "2024-05-06T12:54:03.156918Z",
     "shell.execute_reply": "2024-05-06T12:54:03.153964Z"
    },
    "id": "1RmtZfj-G3Gr",
    "outputId": "d3e77bf1-b933-4ade-846f-95e25f4e1d6e",
    "papermill": {
     "duration": 0.11587,
     "end_time": "2024-05-06T12:54:03.160910",
     "exception": false,
     "start_time": "2024-05-06T12:54:03.045040",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "3323.39"
      ],
      "text/latex": [
       "3323.39"
      ],
      "text/markdown": [
       "3323.39"
      ],
      "text/plain": [
       "[1] 3323.39"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "sigma <- 3323.39\n",
    "sigma"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "dbb8fa0f",
   "metadata": {
    "id": "Cl39PIZ2G3Gt",
    "papermill": {
     "duration": 0.084346,
     "end_time": "2024-05-06T12:54:03.347750",
     "exception": false,
     "start_time": "2024-05-06T12:54:03.263404",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Obtendo $e$"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 82,
   "id": "7bd44500",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:54:03.522753Z",
     "iopub.status.busy": "2024-05-06T12:54:03.520776Z",
     "iopub.status.idle": "2024-05-06T12:54:03.544982Z",
     "shell.execute_reply": "2024-05-06T12:54:03.541979Z"
    },
    "id": "NTRMt2gWG3Gt",
    "outputId": "f7d7ae3f-7e33-41cc-a11a-5b09de70cc2c",
    "papermill": {
     "duration": 0.116488,
     "end_time": "2024-05-06T12:54:03.549608",
     "exception": false,
     "start_time": "2024-05-06T12:54:03.433120",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "100"
      ],
      "text/latex": [
       "100"
      ],
      "text/markdown": [
       "100"
      ],
      "text/plain": [
       "[1] 100"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "e <- 100\n",
    "e"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "9453872b",
   "metadata": {
    "id": "OlAX3Gj6G3Gv",
    "papermill": {
     "duration": 0.085387,
     "end_time": "2024-05-06T12:54:03.721242",
     "exception": false,
     "start_time": "2024-05-06T12:54:03.635855",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Obtendo $n$"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 83,
   "id": "40325c55",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:54:03.900173Z",
     "iopub.status.busy": "2024-05-06T12:54:03.898247Z",
     "iopub.status.idle": "2024-05-06T12:54:03.920274Z",
     "shell.execute_reply": "2024-05-06T12:54:03.918310Z"
    },
    "id": "0MjluwHPG3Gv",
    "outputId": "8f74510a-4f4b-4129-d3c3-d31be24567fa",
    "papermill": {
     "duration": 0.115122,
     "end_time": "2024-05-06T12:54:03.923205",
     "exception": false,
     "start_time": "2024-05-06T12:54:03.808083",
     "status": "completed"
    },
    "scrolled": true,
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "4243"
      ],
      "text/latex": [
       "4243"
      ],
      "text/markdown": [
       "4243"
      ],
      "text/plain": [
       "[1] 4243"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "n <- (z * (sigma / e)) ** 2\n",
    "round(n)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "2eca3e8b",
   "metadata": {
    "id": "MjP0xsqyTyNO",
    "papermill": {
     "duration": 0.085338,
     "end_time": "2024-05-06T12:54:04.095967",
     "exception": false,
     "start_time": "2024-05-06T12:54:04.010629",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "---"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "770d740e",
   "metadata": {
    "id": "dx2vyLC-TyNP",
    "papermill": {
     "duration": 0.08541,
     "end_time": "2024-05-06T12:54:04.265659",
     "exception": false,
     "start_time": "2024-05-06T12:54:04.180249",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## <font color='red'>Problema</font>"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "ecb1cad6",
   "metadata": {
    "id": "uzK2fAOFTyNP",
    "papermill": {
     "duration": 0.084164,
     "end_time": "2024-05-06T12:54:04.434306",
     "exception": false,
     "start_time": "2024-05-06T12:54:04.350142",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Em um lote de **10.000 latas** de refrigerante foi realizada uma amostra aleatória simples de **100 latas** e foi obtido o **desvio padrão amostral do conteúdo das latas igual a 12 ml**. O fabricante estipula um **erro máximo sobre a média populacional de apenas 5 ml**. Para garantir um **nível de confiança de 95%** qual o tamanho de amostra deve ser selecionado para este estudo?"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "42e8965b",
   "metadata": {
    "id": "FlAz5kycTyNQ",
    "papermill": {
     "duration": 0.087763,
     "end_time": "2024-05-06T12:54:04.606902",
     "exception": false,
     "start_time": "2024-05-06T12:54:04.519139",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## <font color=green>5.2 Variáveis quantitativas e população finita</font>\n",
    "***"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "9f84c4bc",
   "metadata": {
    "id": "UOe02McSTyNR",
    "papermill": {
     "duration": 0.08592,
     "end_time": "2024-05-06T12:54:04.780559",
     "exception": false,
     "start_time": "2024-05-06T12:54:04.694639",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "#### Com desvio padrão conhecido\n",
    "\n",
    "## $$n = \\frac{z^2 \\sigma^2 N}{z^2 \\sigma^2 + e^2(N-1)}$$\n",
    "\n",
    "#### Com desvio padrão desconhecido\n",
    "\n",
    "## $$n = \\frac{z^2 s^2 N}{z^2 s^2 + e^2(N-1)}$$\n",
    "\n",
    "Onde:\n",
    "\n",
    "$N$ = tamanho da população\n",
    "\n",
    "$z$ = variável normal padronizada\n",
    "\n",
    "$\\sigma$ = desvio padrão populacional\n",
    "\n",
    "$s$ = desvio padrão amostral\n",
    "\n",
    "$e$ = erro inferencial"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "fcd155a7",
   "metadata": {
    "id": "cUELtYTKTyNS",
    "papermill": {
     "duration": 0.084122,
     "end_time": "2024-05-06T12:54:04.949659",
     "exception": false,
     "start_time": "2024-05-06T12:54:04.865537",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## <font color='blue'>Exemplo: Indústria de refrigerantes</font>"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "765c82ce",
   "metadata": {
    "id": "upv1mM7fTyNS",
    "papermill": {
     "duration": 0.083922,
     "end_time": "2024-05-06T12:54:05.117287",
     "exception": false,
     "start_time": "2024-05-06T12:54:05.033365",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Em um lote de **10.000 latas** de refrigerante foi realizada uma amostra aleatória simples de **100 latas** e foi obtido o **desvio padrão amostral do conteúdo das latas igual a 12 ml**. O fabricante estipula um **erro máximo sobre a média populacional de apenas 5 ml**. Para garantir um **nível de confiança de 95%** qual o tamanho de amostra deve ser selecionado para este estudo?"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "e941d89a",
   "metadata": {
    "id": "_y3-3VIBTyNS",
    "papermill": {
     "duration": 0.08507,
     "end_time": "2024-05-06T12:54:05.286009",
     "exception": false,
     "start_time": "2024-05-06T12:54:05.200939",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Obtendo $N$"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 84,
   "id": "b281d96f",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:54:05.461599Z",
     "iopub.status.busy": "2024-05-06T12:54:05.459575Z",
     "iopub.status.idle": "2024-05-06T12:54:05.481456Z",
     "shell.execute_reply": "2024-05-06T12:54:05.479470Z"
    },
    "id": "gXWn9zTETyNS",
    "outputId": "4daa26ff-4a96-47fb-9f0e-53a4390d701e",
    "papermill": {
     "duration": 0.112254,
     "end_time": "2024-05-06T12:54:05.484538",
     "exception": false,
     "start_time": "2024-05-06T12:54:05.372284",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "10000"
      ],
      "text/latex": [
       "10000"
      ],
      "text/markdown": [
       "10000"
      ],
      "text/plain": [
       "[1] 10000"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "N <- 10000\n",
    "N"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "2b2d9ba3",
   "metadata": {
    "id": "xCgZ1JSjTyNT",
    "papermill": {
     "duration": 0.086746,
     "end_time": "2024-05-06T12:54:05.658357",
     "exception": false,
     "start_time": "2024-05-06T12:54:05.571611",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Obtendo $z$"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 85,
   "id": "9d49988e",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:54:05.836607Z",
     "iopub.status.busy": "2024-05-06T12:54:05.834707Z",
     "iopub.status.idle": "2024-05-06T12:54:05.857447Z",
     "shell.execute_reply": "2024-05-06T12:54:05.855461Z"
    },
    "id": "ZUs9aYJRTyNT",
    "outputId": "02560c9f-57ee-41c7-cdf4-5fd382365a74",
    "papermill": {
     "duration": 0.114163,
     "end_time": "2024-05-06T12:54:05.860142",
     "exception": false,
     "start_time": "2024-05-06T12:54:05.745979",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "1.95996398454005"
      ],
      "text/latex": [
       "1.95996398454005"
      ],
      "text/markdown": [
       "1.95996398454005"
      ],
      "text/plain": [
       "[1] 1.959964"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "z <- qnorm((0.5 + (0.95 / 2)))\n",
    "z"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "b0e1290d",
   "metadata": {
    "id": "KCnigJd8TyNU",
    "papermill": {
     "duration": 0.086669,
     "end_time": "2024-05-06T12:54:06.033019",
     "exception": false,
     "start_time": "2024-05-06T12:54:05.946350",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Obtendo $s$"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 86,
   "id": "5ca3548f",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:54:06.208428Z",
     "iopub.status.busy": "2024-05-06T12:54:06.206533Z",
     "iopub.status.idle": "2024-05-06T12:54:06.229240Z",
     "shell.execute_reply": "2024-05-06T12:54:06.227188Z"
    },
    "id": "fKqFI_TZTyNU",
    "outputId": "68a9ee2f-428a-4d18-9148-f33704968fb7",
    "papermill": {
     "duration": 0.114249,
     "end_time": "2024-05-06T12:54:06.232191",
     "exception": false,
     "start_time": "2024-05-06T12:54:06.117942",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "12"
      ],
      "text/latex": [
       "12"
      ],
      "text/markdown": [
       "12"
      ],
      "text/plain": [
       "[1] 12"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "s <- 12\n",
    "s"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "bf37743b",
   "metadata": {
    "id": "K9gDEIUdTyNX",
    "papermill": {
     "duration": 0.08701,
     "end_time": "2024-05-06T12:54:06.406789",
     "exception": false,
     "start_time": "2024-05-06T12:54:06.319779",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Obtendo $e$"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 87,
   "id": "50c305a0",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:54:06.582770Z",
     "iopub.status.busy": "2024-05-06T12:54:06.580926Z",
     "iopub.status.idle": "2024-05-06T12:54:06.601993Z",
     "shell.execute_reply": "2024-05-06T12:54:06.599946Z"
    },
    "id": "hyhJ3MQKTyNX",
    "outputId": "2849bd05-6c70-4d97-980d-67e140f27850",
    "papermill": {
     "duration": 0.112528,
     "end_time": "2024-05-06T12:54:06.604644",
     "exception": false,
     "start_time": "2024-05-06T12:54:06.492116",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "5"
      ],
      "text/latex": [
       "5"
      ],
      "text/markdown": [
       "5"
      ],
      "text/plain": [
       "[1] 5"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "e <- 5\n",
    "e"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "72c32e8f",
   "metadata": {
    "id": "Dsm3bg9gTyNX",
    "papermill": {
     "duration": 0.087492,
     "end_time": "2024-05-06T12:54:06.782071",
     "exception": false,
     "start_time": "2024-05-06T12:54:06.694579",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Obtendo $n$\n",
    "\n",
    "## $$n = \\frac{z^2 s^2 N}{z^2 s^2 + e^2(N-1)}$$"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 88,
   "id": "a7d6e3de",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:54:06.960592Z",
     "iopub.status.busy": "2024-05-06T12:54:06.958710Z",
     "iopub.status.idle": "2024-05-06T12:54:06.981123Z",
     "shell.execute_reply": "2024-05-06T12:54:06.979089Z"
    },
    "id": "0XxWfaPdTyNY",
    "outputId": "8494180f-9149-419f-dee9-f02ec3e81b93",
    "papermill": {
     "duration": 0.114118,
     "end_time": "2024-05-06T12:54:06.984105",
     "exception": false,
     "start_time": "2024-05-06T12:54:06.869987",
     "status": "completed"
    },
    "scrolled": true,
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "22"
      ],
      "text/latex": [
       "22"
      ],
      "text/markdown": [
       "22"
      ],
      "text/plain": [
       "[1] 22"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "n <- ((z ** 2) * (s ** 2) * (N)) / (((z ** 2) * (s ** 2)) + ((e ** 2) * (N - 1)))\n",
    "round(n)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "cd8da98b",
   "metadata": {
    "id": "XNH7CMglG3Hv",
    "papermill": {
     "duration": 0.086732,
     "end_time": "2024-05-06T12:54:07.158507",
     "exception": false,
     "start_time": "2024-05-06T12:54:07.071775",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# <font color=green>6 FIXANDO O CONTEÚDO</font>\n",
    "***"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "a82ec8a4",
   "metadata": {
    "id": "iRYqVAxuG3Hv",
    "papermill": {
     "duration": 0.085732,
     "end_time": "2024-05-06T12:54:07.329465",
     "exception": false,
     "start_time": "2024-05-06T12:54:07.243733",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## <font color='blue'>Exemplo: Rendimento médio</font>"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "518d11ab",
   "metadata": {
    "id": "ggloHI5sG3Hw",
    "papermill": {
     "duration": 0.124676,
     "end_time": "2024-05-06T12:54:07.539582",
     "exception": false,
     "start_time": "2024-05-06T12:54:07.414906",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Estamos estudando o **rendimento mensal dos chefes de domicílios com renda até R$\\$$ 5.000,00 no Brasil**. Nosso supervisor determinou que o **erro máximo em relação a média seja de R$\\$$ 10,00**. Sabemos que o **desvio padrão populacional** deste grupo de trabalhadores é de **R$\\$$ 1.082,79** e que a **média populacional** é de **R$\\$$ 1.426,54**. Para um **nível de confiança de 95%**, qual deve ser o tamanho da amostra de nosso estudo? Qual o intervalo de confiança para a média considerando o tamanho de amostra obtido?"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "58b4353d",
   "metadata": {
    "id": "JZDvLD-NG3Hw",
    "papermill": {
     "duration": 0.086004,
     "end_time": "2024-05-06T12:54:07.711894",
     "exception": false,
     "start_time": "2024-05-06T12:54:07.625890",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Construindo o dataset conforme especificado pelo problema"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 89,
   "id": "c306e1bc",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:54:07.891028Z",
     "iopub.status.busy": "2024-05-06T12:54:07.889214Z",
     "iopub.status.idle": "2024-05-06T12:54:07.920276Z",
     "shell.execute_reply": "2024-05-06T12:54:07.918190Z"
    },
    "id": "qlnYQeaKG3Hw",
    "papermill": {
     "duration": 0.124662,
     "end_time": "2024-05-06T12:54:07.922937",
     "exception": false,
     "start_time": "2024-05-06T12:54:07.798275",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "renda_5000 <- dados[dados$Renda <= 5000, ]"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 90,
   "id": "efd38971",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:54:08.099076Z",
     "iopub.status.busy": "2024-05-06T12:54:08.097218Z",
     "iopub.status.idle": "2024-05-06T12:54:08.119656Z",
     "shell.execute_reply": "2024-05-06T12:54:08.117623Z"
    },
    "papermill": {
     "duration": 0.112978,
     "end_time": "2024-05-06T12:54:08.122589",
     "exception": false,
     "start_time": "2024-05-06T12:54:08.009611",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "1082.79454903068"
      ],
      "text/latex": [
       "1082.79454903068"
      ],
      "text/markdown": [
       "1082.79454903068"
      ],
      "text/plain": [
       "[1] 1082.795"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "sigma <- sd(renda_5000$Renda)\n",
    "sigma"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 91,
   "id": "242887f8",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:54:08.298811Z",
     "iopub.status.busy": "2024-05-06T12:54:08.296971Z",
     "iopub.status.idle": "2024-05-06T12:54:08.324936Z",
     "shell.execute_reply": "2024-05-06T12:54:08.322909Z"
    },
    "id": "VKuxbygIG3Hy",
    "outputId": "98078826-90d1-488e-b11d-cf4e6f5bdc3c",
    "papermill": {
     "duration": 0.119184,
     "end_time": "2024-05-06T12:54:08.327645",
     "exception": false,
     "start_time": "2024-05-06T12:54:08.208461",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "1426.53721449472"
      ],
      "text/latex": [
       "1426.53721449472"
      ],
      "text/markdown": [
       "1426.53721449472"
      ],
      "text/plain": [
       "[1] 1426.537"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "media <- mean(renda_5000$Renda)\n",
    "media"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "ff172582",
   "metadata": {
    "id": "F33TdkXdG3H2",
    "papermill": {
     "duration": 0.087955,
     "end_time": "2024-05-06T12:54:08.504302",
     "exception": false,
     "start_time": "2024-05-06T12:54:08.416347",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Calculando o tamanho da amostra"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 92,
   "id": "fbc20346",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:54:08.688912Z",
     "iopub.status.busy": "2024-05-06T12:54:08.687159Z",
     "iopub.status.idle": "2024-05-06T12:54:08.714802Z",
     "shell.execute_reply": "2024-05-06T12:54:08.712241Z"
    },
    "id": "sWIvnmygG3H2",
    "outputId": "42b7f8db-3a43-4e5f-f61a-9000e4e5e94b",
    "papermill": {
     "duration": 0.125656,
     "end_time": "2024-05-06T12:54:08.717973",
     "exception": false,
     "start_time": "2024-05-06T12:54:08.592317",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "45039"
      ],
      "text/latex": [
       "45039"
      ],
      "text/markdown": [
       "45039"
      ],
      "text/plain": [
       "[1] 45039"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "z <- qnorm(.975)\n",
    "e <- 10\n",
    "n <- (z * (sigma / e)) ** 2\n",
    "round(n)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "a2a9ccbf",
   "metadata": {
    "id": "xRN_gmmLG3H6",
    "papermill": {
     "duration": 0.088312,
     "end_time": "2024-05-06T12:54:08.893461",
     "exception": false,
     "start_time": "2024-05-06T12:54:08.805149",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Calculando o intervalo de confiança para a média"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 93,
   "id": "2a13e9f7",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:54:09.072967Z",
     "iopub.status.busy": "2024-05-06T12:54:09.071257Z",
     "iopub.status.idle": "2024-05-06T12:54:09.091656Z",
     "shell.execute_reply": "2024-05-06T12:54:09.089707Z"
    },
    "papermill": {
     "duration": 0.113934,
     "end_time": "2024-05-06T12:54:09.095136",
     "exception": false,
     "start_time": "2024-05-06T12:54:08.981202",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "limite_inferior <- mean(renda_5000$Renda) - (z * (sd(renda_5000$Renda) / sqrt(n)))\n",
    "limite_superior <- mean(renda_5000$Renda) + (z * (sd(renda_5000$Renda) / sqrt(n)))"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 94,
   "id": "3630c179",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:54:09.272391Z",
     "iopub.status.busy": "2024-05-06T12:54:09.270742Z",
     "iopub.status.idle": "2024-05-06T12:54:09.291594Z",
     "shell.execute_reply": "2024-05-06T12:54:09.289084Z"
    },
    "papermill": {
     "duration": 0.113513,
     "end_time": "2024-05-06T12:54:09.294772",
     "exception": false,
     "start_time": "2024-05-06T12:54:09.181259",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "1416.53721449472"
      ],
      "text/latex": [
       "1416.53721449472"
      ],
      "text/markdown": [
       "1416.53721449472"
      ],
      "text/plain": [
       "[1] 1416.537"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "limite_inferior"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 95,
   "id": "08bd0c30",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:54:09.474192Z",
     "iopub.status.busy": "2024-05-06T12:54:09.472445Z",
     "iopub.status.idle": "2024-05-06T12:54:09.490908Z",
     "shell.execute_reply": "2024-05-06T12:54:09.488996Z"
    },
    "papermill": {
     "duration": 0.111365,
     "end_time": "2024-05-06T12:54:09.493650",
     "exception": false,
     "start_time": "2024-05-06T12:54:09.382285",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "1426.53721449472"
      ],
      "text/latex": [
       "1426.53721449472"
      ],
      "text/markdown": [
       "1426.53721449472"
      ],
      "text/plain": [
       "[1] 1426.537"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "media"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 96,
   "id": "d0d4baf1",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:54:09.677937Z",
     "iopub.status.busy": "2024-05-06T12:54:09.676072Z",
     "iopub.status.idle": "2024-05-06T12:54:09.695657Z",
     "shell.execute_reply": "2024-05-06T12:54:09.693556Z"
    },
    "papermill": {
     "duration": 0.113112,
     "end_time": "2024-05-06T12:54:09.698285",
     "exception": false,
     "start_time": "2024-05-06T12:54:09.585173",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "1436.53721449472"
      ],
      "text/latex": [
       "1436.53721449472"
      ],
      "text/markdown": [
       "1436.53721449472"
      ],
      "text/plain": [
       "[1] 1436.537"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "limite_superior"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "84c98abe",
   "metadata": {
    "id": "xWAG8q8oG3H8",
    "papermill": {
     "duration": 0.089912,
     "end_time": "2024-05-06T12:54:09.877287",
     "exception": false,
     "start_time": "2024-05-06T12:54:09.787375",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Realizando uma prova gráfica"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 97,
   "id": "5e52597e",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T12:54:10.060415Z",
     "iopub.status.busy": "2024-05-06T12:54:10.058642Z",
     "iopub.status.idle": "2024-05-06T12:54:19.756051Z",
     "shell.execute_reply": "2024-05-06T12:54:19.753902Z"
    },
    "papermill": {
     "duration": 9.79389,
     "end_time": "2024-05-06T12:54:19.760219",
     "exception": false,
     "start_time": "2024-05-06T12:54:09.966329",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "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\nEmwgM95iV689e/bsx48fVlZWksEHye7du4kjL21tbWNjY+t614QtGC9ZbmdnR5rrrebqNHmi\nsLBw4MCB+I2TsbHx7du3ZWvszM/PHzFiBB4teXh4KHBZ7TqpdvKEp6fn5cuXiSX79u3TsEtB\ndnZ2z549if93Nzc3hdxgSyFl8gS02CkYjUZr3Ljxjx8/iIV1HaEvvU2ez+d///5dndfXwn34\n8MHLywv7qZMMep49e0bc/Pjxo+Tb8ccikaioqKiuiSqwgIN0aCwW1zB0Or02+WnDw8NXrVqF\nPb569eqrV68SEhJqmo7Xtm1bObOrm5mZyb82bsMUFxf35MkTExOTCRMmKDY/yy/Z2NjUMsuJ\nt7c3g8E4depUWVlZv379/vnnHxnawknZEHHKTpt8+fLls2fPlpeX9+vXb/78+Sq+VTYyMrp5\n8+bBgwffvHnTqlUrLy+v2kR1BQUF2dnZLVu2JA7Z/Pvvv4ltYNhMf2UPXK69FStW3Lx5Ew96\nOnfuPGbMGGqrpHAPHjwgRfPENPWqB4Gd4vn4+BDTww4ePNjKyqpOe2jWrJnkCAwcm82uL3M5\n4+LipDRgNG7cmLgpGZe0bNkSe7B9+/bdu3eXl5c3a9Zs06ZNtV+2WUdHx93d/cSJE3iJk5NT\nfVmdUBnCw8OJm58/f75165YGLzxQTy1YsODcuXPY461bt27ZsuXjx4+6urojR46UeWqCMtDp\ndLynW+Y8dpLzlGk02syZM2vZD/vp06dt27a9ffu2efPmixYtqmVIevz4cV9fX+zx/fv3Hz9+\nfPr0aRWPuDUxMan9bAmRSOTn53fy5EmRSKSnp7dhwwa8BV2yeyctLU19Ars//vgjMTHxyJEj\nWHJET09PmUfC8Hi8zZs3R0REVFRU9O/fPyAgQE0u5pIT2+VZuk1+ENgp3owZM4yNjSMiIsrL\ny/v37z937ty6Xi/8/f2JKxdZWloSW7P8/PzkzHiUnZ2tr6+vgrRJ0jv6Fy9eTNy0tbUdN27c\nxYsXsU06nb5u3TqEUERERFBQEFb4/ft3Ly+vmzdvSq4cVZNNmzYZGRldunRJKBQOHToUb69S\nAbFYnJWVRaPRmjdvriazNCQnOUr2nwJq3bt3D4/qEEKFhYWzZ8/GHgcGBp4/f14ZS+FJl5ub\n+/HjR3Nzc2WEla6urvv378fXbWMwGOfPn6/l4Nrc3Nxhw4ZhfX+pqalxcXHx8fG1WUhj27Zt\nxE0s9Yz8GQyU59ChQ8ePH8cel5WVLV++3MbGBquwZJec9NUXhUJhfHz858+fW7du/eeff6rg\n0mRhYVHLZVSk+/vvvw8cOIA9jomJ+fz5c3x8vDqsdNyvXz/SiGQ3NzcK60P9J6KRRo0aNWrU\nKHnefvHixdOnT5eVldnb23t6et6+fRsbbjJs2DAnJyeZ95ycnLxw4cJPnz7RaLRx48bt2LFD\nqR0QQ4cODQwMJGal6tu3b2Vlpb6+/rRp0yQzA+/fv3/AgAH379/X19d3d3fHbr7xUA/D4/Fi\nYmJqCuyEQiFpIr2WltZff/2l4gxqCKG3b9/Onj0by2hga2sbGhoqZTSbyvTp04cYNDCZTGoX\nxsnLy7tx4wafz3dwcKB8KpmaePPmTU1PcblcPz+/hIQEVdZn06ZNe/bsEQgEdDp9+vTpwcHB\nig0FmjRpcunSpc2bN2dkZGCtbrWfMnXy5EniiK7KysoDBw7s3r37l2/EJ1ThSGvhqJu4uDji\nplAovH79OhbYLViwIDExEU8tZGFhIeXXp6qqauzYsXjiIQcHh7Nnz9aXFFrEvheE0PPnz9PS\n0uTPACAbgUBw9OhRLEnF6NGjT548uXLlytTUVD09vZkzZ/r4+FBSKwwEdmqqX79+xKubo6Oj\n/CtEFRYWzpgxA7szFovFFy5cMDIywhvDaonP5584ceLevXsGBgZubm69evWS8uI2bdocPHjQ\nz88vPz+fwWB4eHj8/fffUjIYMRgMd3d3d3d3YiFpJgqqbrheeXn5mjVr/v33Xx6PN3DgwM2b\nN1PbRC8Wi2fNmvXq1StsMz09fc6cOfHx8RRWCbNx48aMjIznz58jhNhsdkBAQJs2baiqTHJy\n8uTJk7EmQzabvWvXrgkTJlBVGfUhvVXs9evXYrFYUaGVWCx+//59WVlZ+/btq+08iouL27Fj\nB/ZYJBKFh4fb2tpOnjy5NjvPysrKyspq1arVL4eOtGvX7siRI3WtPEIIW5RZekm1OnXqlJ6e\njm8yGAwFTqhSBsl2KbxkwIABZ8+ePXDgQE5OTpcuXfz8/KRkJgoJCSGmk0xMTDx27Jhk5ikZ\nYMmllZdtWyQSSWaKqNOKR4rl7++PZ+S+efOmr69vTEyMlpaWnp6e0LU3fAAAIABJREFUalae\nkKK+pkMDMkhKSsL7OzDS08pXa+7cuStWrLh8+fKpU6dGjRpVbXZcImdn55cvX6ampn748CEo\nKEiGvJSkFkoajSa5JNTKlStPnjxZVlbG4/Hi4uJmzJhBSo2rYl++fMGjOkxaWhppSg0lTExM\nrl+/HhMTc+LEidTU1LpmMJGNSCR68+bN06dPiQMuxWLxokWL8I5gHo+3bNky4tXw8uXLXl5e\ns2bNunDhgmZP3icZMmSIlEaI33//nRjVicXi06dPjxgxon///v7+/nUa4pabmzt8+PDevXsP\nGTKkW7du1TYE3rp1i1SCL5cphUgkWrJkSbdu3UaPHt2lS5fAwMDa16pOJEfU1XKM3ZYtW/Do\nh0aj+fv71ykjleqRUo5zOBxij8fAgQPPnTuXkJCwc+dO6XOZSVPWqi2RwY0bN2xtbTt16qSv\nr798+XJl5Aeg0+mkplwDAwOqes/z8vJIy7Ts3bu3srJSTRJpqVFgV1VSXCFqQJdvdVDX38tn\nz54RY0GxWCy5zJQkBoPRokULyVz8teTp6Un89orF4kOHDhFfwOfzL1y4QCxJT08nxVUqk5WV\n5efnV+24bzVJts5gMHr27Onk5KSaKTjfv393dHTs27fvkCFDunfvfv/+fay8pKSENA+6vLwc\nnw++c+dOT0/PqKgoLG+t8iIDNcRkMs+fP79ixYo///zT1dW1T58+xGeJS6cghA4fPrx48eKU\nlJRXr16FhYVNnjxZsoW7JsuWLXv8+DH2ODc318vLS3LApWQDTG0Gb5w4ceLUqVPY5UUgEOzc\nuVNJzdUTJ078888/8U1ra+taZoPv2rVrcnLyP//8s3bt2uvXr5PG+6ohNze3VatWYcGoubn5\n4cOH27ZtK8N+fvvtN1IJaRKbDL5+/Tpr1izsxlUoFIaHh9emN1wG27dvx1OfGhoa7t+/n6pc\ncbm5uaRfz6qqKvVZKFnVeeyOzpuutfGg22/kS0Nl4cPZnkF9D5ya8/t/RvTzSjJDd4c9eP6h\nXMS0aNfVdc783i30EEIIie6c3X858UlWKaODVc8ZizwstWv8vVR9Hjt1VlhY2KtXr4KCArxk\n1qxZdeqKjY2NnT59OrGEzWaXlJRIyWMnPz6f37p1a1Ij/OPHj/EhWZWVlS1atCB9/rGxsaoZ\ne0HMY5ednd2/f3/J4TtIImmfhqkpjx1CyNXVldjqY2pq+vjxY11dXT6f36pVq8rKSuKLsX9r\nZWVlmzZtiM17DAbj9evXFCb8/KVa5rHj8XjFxcWSP65SVFVVhYaGJiQk6Onpubq6khqwu3Tp\nQlzfAiF06dKl3r17/3K3YrG4efPmpFVZz507R8ol+fz5c0dHR3x9TxqNFhkZWe2MS+KsWA8P\nD1Jbfl0vNbUnFotv3br15s2bFi1aODk5UTiUvk557GQjFotLSkpkyAKNe//+/eDBg/HLtaGh\n4e3bt+UcuHLs2LFly5YRSzp27KikkaB8Pv/Zs2dlZWVdunShMHEVl8vt0KED8R/922+/PX/+\n3MjIiM1mq6YrVsoUGVW22Inf3TsS9b1IIBEAiUWVB1fsKBYS+87E+33WPshrumBN4Jb1yzsy\nMrYsW5knECGEPlxYsyPiQe9xs9ctmabz/sZqn1B1j6fUhpGR0dGjR7F4iEajjR07tq5TCtq0\naUMa3CPbXWOdVFRUSA6tII6Y1tLSIrVqNGnShJJ1mo8cOSIZ1dFotEGDBuGTueQkFAp//PhB\nYSZkXFZW1saNG+fPn3/w4MFqV0lBCAkEAtL1PS8vD8vOwGKxSAtRODs7Yydnfn4+KTwSCoXZ\n2dkK/gNUi8/n+/n5tWjRomPHjm3atCENA5eCw+F4e3ufP38+PDxccuIU8T4NQxpuURMajSbZ\nbSTZPmdtbX348GFsIGaLFi327t1bmzwaksP1lDdJi0ajDR48eP78+SNHjlSHCZJKRaPR5Inq\nEEKtW7eOjY0dO3asra3thAkTYmNj5R+OLNmoobxmDhaL1a1bt/79+1ObjlRHRyc4OBg/39hs\n9rZt29SkTwapbPJE9t2daw7dzy2u/l42/djqVIMBKPu/Scarim/fyuX6bpvfuxEHIWS50i/G\nbWVELndBU/b2iIw2U7dP+NMSIdQmGLlM/+fMj6mTmio9c4dm6N279+PHj799+2ZgYFDXpT8R\nQu3atfPy8goJCcE2mUzmpk2b5KlPYWHh2rVrr127RqPRhg8fvn79eslWGQMDg9atWxMzcOrq\n6pKWkd29e/fUqVOx7temTZuGhIRQkkZIcmKdo6NjSEiIojLLHD16NCAgoKSkRFdXd8WKFfPm\nzVPIbmXw9u3bIUOGYPf958+fj46OrnaNEDqdjq04QizEo4eVK1c2btw4KiqKx+MNGTIE70Rr\n3LixoaEhcX1JbW3t2qRfVmfbt2/Hh1oXFxf7+PgIBIJqV1yok65du967dw/fZLFYtra25eXl\nFy5c+P79u5WV1fDhw2taWtrNzS0sLAzfbNOmTbWrUQ0bNmzYsGECgaD2YZO7uztxZCSbzXZx\ncantnwSUrGPHjqTRLHIaPHiwjo4OsflKnqQQ9YWbm1vnzp1v3LjBZDKdnJzwrKvqQEUtdsY2\nE1auC9oavELyqZJ3UX9frfhr3f+MDKUzTT09PXsa/P8NJY2JENJh0KuKE79UCocN+s+sMY5R\nP1s99qMEtZ6mrobMzMxIUV1ycvLUqVOHDBmyZMkSUs8Oyfr16/HGMIFAEBwcTOrNqZOFCxee\nPXu2qKiosLDw1KlTS5YsqfZlu3btwu9TsXsjUv1zcnIsLCzatWs3dOjQyMjI2nRFKYNkAi0b\nGxtFRXX3799fvnw51t1ZXl6+du1aUgYEVQoODiZ2vj9+/Pj8+fOSL6PT6a6ursSSDh064CMm\nGQzG7NmzY2Njb9y4sWLFCrxRh8Vibdq0CQ9HaDTaxo0bZR6jqSZIWXsQQhs2bJC/5XXLli1N\nmjTBHjOZzA0bNmhra/ft29fX13fbtm0eHh7u7u41TSRat27djBkzsG70vn37njhxQsrQ7zo1\nhjk4OOzfv9/S0pLBYHTo0OHYsWO1yS0H6ilzc/PQ0FDsPKTT6VOnTlX/MYtEfD7/w4cPMmT0\nbN++vbe399y5c9UqqkMqa7FjN2rephES8siNKCJe9qa/TjqtCGmr8z9tmCxdmzFjbBBChU8f\npuXkPo6L+K2T89TGOhXfnyGEOur8t9qddJjxL4rxze/fvxNHzVtZWSk1DS9+seNwOOo8xg77\nWGrqoExOTh47diz2G/P06dOEhISkpKSaxjMdO3YMS5aBSUpK2r9//9KlS2WY5Z6Tk0MKTWJj\nY0tLSyWHDjg4OKSlpZ07dw57fWZmZklJCT5Q6enTp2PGjMHiy8zMzPT09KSkJPxZHo937dq1\nHz9+dO7cWRk52/D4g81mz549Ozo6Ojk5GSvp1KmTj4+Poub/X7lyhXSOXb58mao7Y8no/9On\nT9X+pVu2bGEwGOfOnePxeA4ODjt27KjNV3LKlCk2NjYxMTEikWj48OFdu3bFyl+9ehUQEPDy\n5Utzc3MfH5/BgwfL/7coCpfLjYmJ+fnzZ48ePTp16kR6VvL+p7y8vKysDA/LZGNlZZWWlhYf\nH19SUtK3b982bdosXbqU+N+5devWlStXqs0jw+Fwdu/evXPnTj6fL/9ZymQyaTQavp/JkydP\nnjxZgZlZSCQzVlIO+0uZTKbyUn6oLWdn5xEjRnz//t3c3Fyen8LU1NTPnz936NBBZXcCUVFR\nPj4++fn5dDp92rRp27dvl6dDH/s5YDAYyj4HfvEhi1VIUJXl7Ox8IqccL7ny98zZW26KxWKR\noMDZ2fngjzLSWzJ2BSz1njt+zLgdJ24IROKi9xudnZ2rRP99wfW5k6YsfIhvRkdHdyPIyMhQ\n7p/0K+Xl5T9+/KC2DsHBwXj+yaFDh3K5XNILJFfu27NnT017mzFjBunFrq6uslWs2mXTPn78\nWO2LP3/+TFx6yNzcHJuwIhaLJ02aRNpJcHAw9lR+fj4xPZWnp6dsVa09gUAQERGxbt26EydO\nVFVV4eU/f/5csGCBtbV13759jx49KsOeJTtesR/OalVVVWVmZpaWlsryN9QCKdcgQuj06dNS\nXi8SiXg8npwH/fbtGzHoZzAYd+/elXOfivLp0ye8s5hOp2/cuJH0Am9vb9InpqurSzxDaqOg\noGD//v3r1q2LjY2t6TWS2X39/f1l+ZPU1ZMnT/r06cNkMk1NTdeuXSsUCqmuEVCAqqqqYcOG\nYWcsjUabO3euCg765s0b0qCdwMBAFRxXfgKBQMqzVAZ2OQ/2jp+0+idPKK45sMOUfnkwZczo\ndbe+l3zd6uzs/KPqv9/kMzNdZ/in4pvqE9hxudypU6di8Xvbtm2p+gVKTk4m3TH36NEDy3GK\nI808QAj99ddfNe2QuAwuZuHChbWvT0VFRVFREfZYKBS2atWKuKt27dqJRKJq3yj5u/j3339j\nTxHzHWB8fX2xp7BVLIliYmJqX1tF4fP5pMbCAwcO1HUn169fJ/0rL168WO0rjxw5gvVcM5lM\nX1/fmj5Sebx7947YptuvXz8+n6/wo5Bs3ryZ9N90cXFR9kFriXR3RKfTnz17RnxBRUUFqRFi\n+/bttd9/SUnJ7NmziW0J06ZNq/aVpL5vhNC+ffvk+tvUSUFBQdOmTYl/3ZYtW6iu1H/Jf/ei\n2c6dOzdu3DgnJ6ddu3aRPivJb3dkZKTCK3D//v3NmzcfPHgwLy9PLBbv3LmTdNBu3bop/KDK\nID2wo3IO0c+7z3ilPzzH//eCeMXL/bqubeSZgJJ3d+++54xw/M+SiHrmvUaaaF278YPV2Rqh\nhNcV/N/Z/2nnzKwQNOr031lCTk5OAwYMwDeFQmEt54jJhs1mY4O9CgoKxP/bNLpmzRp84tvb\nt2/HjBmTnJyMtzl9/vz54sWLpaWl/fr1I+UXUCzJ/ruUlBSskwvv3urYsWNSUhLxNe3atavp\nc3NzcwsJCcGHI+jq6np5eVVWVv4y3UlxcfHSpUuvXLkiFArt7Ox2797dtm3bgwcPzpgx4/v3\n7wghMzOzAwcOSM7yw3z48IFUkpmZiVWyY8eOpKSp7du3x57Ce0VxiYmJ0lfLqCsGg4GFOMXF\nxTUNmbp3797Dhw+JJcHBwXUdTt6lS5eAgIBNmzZxuVwOh+Pr6+vg4CD5b0pPT589ezY2X0Eg\nEGzbtq1p06aS7axyMjQ0vH///rFjx7Kzs21tbWfOnCkSiZT6XUMIYecJUU5OjrIPWkspKSnE\nTZFIdPv2bdIaEomJiSdOnLh27VqjRo3GjBnj6OhY+8pPnjyZNG7h+PHjY8aMkZyj6u3tHR0d\njeeRadmy5fDhw1XwKXE4HG1tbeKUF2WIiooiJfoOCwtTTZ5t6Xbt2nXw4MH8/Hxra+vAwEDF\nXmTqCyaT2ahRo5pOtoMHD65ZswZ7fO3atdu3bxPn7ty8eZP0+vj4eOKvufwCAwPxZVT8/f0v\nXbokOZ3/58+fbm5u+vr6kyZNqmWya6FQ+OXLF5FI1LJlS0NDQyzdieSq3ApnYmJS01NUBnat\np63aPvY/6ZHEohLfZevtVwe6NDZBCPErEg4dfNlz0ClTFh0hhMSCl1yBTgtdLUNrM/aB2KSf\nA4Y1Rwjxy548LuVNGPjfPKtsNps4/hdrHFLen4DvHAuTiU9FR0cTN/Pz8+/evevs7IwQevDg\ngYuLC5bQYffu3d7e3thq98pQ7ZBzHo8XEBCAj+Zevnx5YmIinhvWxcXFycmpps+tRYsWMTEx\n27dvz8zMxAb0tG3bFmsTkl6T5cuX48mNHz16NG3atISEhC5dujx8+BDLf9G5c2ctLa2a9iOZ\nV6Vdu3bYi5cuXXrz5k1sVVaEkLOz8+jRo7GnJE99U1NTxZ4SUs4BnOSVTrbEh3PmzPHw8MjK\nymrevHlNwzqvXr1KmoUaExNDyj6oEI0bN8abb7G+fqV+1xBCknM27ezslH3QWjI1NSXFnSYm\nJpJ1mzp16tSpU7HH/8femwdC1Yft42eYGfselShJQkXKUqIilKUsyZKQSLIlpZRUVCqVJUpJ\nWRJZI5KlbFkSbYiiRJKyU8KYMb8/zvs9v/OeMzMGo3re57n+mjlz5syZmXM+n/tz3fd9XfSf\neXNzM8VGmfr6enTiVUpKKjc3Nzw8vKOjY9myZSYmJmfPnm1ubhYXF3dycpo5fwXw68z034Ge\niYeHh//4NXDnzh1Iqv3NmzeWlpYlJSW0reF+M7Kysq5evQouw7y9vWdCpurZs2ehoaEdHR1S\nUlKenp4Ia2wymXzp0iX4lvT09GPHjkG7oeVLuLm5GfjPvnv3Ds7P9fX1eXl5Xbly5fTp0/B+\n3s+fP3/+/BkAgNu3b8fHx09Yxdvc3Lx7925w9pGUlLx37568vDww8zcCbfzJwI519gKJ/1c3\nTCb1AQDAu0BcfA4HAAB8Ug4LcY5e5245Ga/nZhquzo+pGWY7Yi4GYHAHTaQ8b50qmH1Yinc0\nIzSQY56WlfDfqHWC/l+hLUePHoXLdF29etXS0pKxlp1kMvnr168cHBxbtmy5ePEimgZraWmB\nHvPx8RUWFubk5Hz9+lVWVhadmUVAWlr65s2b9J9MU1PTjRs3EF2BTU1NtbW1K1euZGVlpWd1\nC/IQ0GnLyspCLBQnJ2d+fn5eXt6XL19kZGTgU52zs/OTJ0+gQEdERMTY2Jj+M2cUZGVlsVgs\nnM+jqCtBD/B4/KJFi2jsgNa2mKHq9fLy8pqamjlz5ujo6PyellUdHR0rKyuICFdWVqbWRv37\n4enpCUVsAAAsXbqUgUw8NRobkZSEICMjExoaCgBAd3c3pJhdUFCQkpJSWFjIwsLCx8f3D5V8\nW7t2LQsLC3z8/BsaaBISEuBPBwYGsrOzGWLAyhDk5+eD5cUAAHz58qW6urqkpISfn5+BH/Hi\nxQtjY2NQyLq2tra4uLi4uBheETsyMoJmczs6OqDAztbWNj09HRqrOTk5zc3NGXiG9fX1iEm5\nrq5u/vz5t27d8vT0/PLlCw6Hg4S4AQAYHx/39fWd8OpydHSEOIXGxsYdO3ZAT/8g/tJ7mwkn\ndPay19WI+Et+OcNk3ILF8u4XToKadhJmZ5xGg+MDfXpGMIvk1p8+uGdGZq1pQ19fH84zAwBQ\nUVGxZcsWDAbT1NQE304mk5uamhgY2FVXVzs7O4O5Sw0NjSVLljx79gxxTSOCAzweT6O/sq+v\nD3SCUlFRmexwUF9fr62tTVGOn37vIwAAeHl5i4uLExISWlpapKWlTUxM4NQsDofT09NDv0tF\nRSU5OfnatWtfv36Vk5Pz9PSEy3sSicTo6OicnBwAAHR0dGxsbGZothMTEztx4oSvry/4lefO\nnYsuKGEU9PT0goKC4CMUOpatrKwE5Ze2bNkyNe9zNzc3aDJbuHBhUVHRDBmUjYyMfP/+XVhY\nGCQFAwMDd+3aVV9fLyIisnbt2hmKWaeAnTt34nC4q1evdnd3r1692tPTk4GukUuWLOHk5EQk\nd2RlZdF6xQjcuHEDrpjd39+vqqo6NDTEwsLi5OR09OjRv+cHpBPz588PCgo6fPgw+Guoqamd\nOHHiT58UhZZn2gYkvxk3b96Ej//fv39PT09nbP76+vXr8DGns7MzMTHR2dn56dOnt2/fbmlp\nmT17tqCgYFdXF7QPDoeDE4fKysp37twJDAwEu2KPHTsGeQsxBOj2c3CLpqbmq1evOjs7y8rK\nHBwc4DvA6Q+K6OzsfPXqFXzLu3fvmpqa/rj6ye+2FPvN+IOWYr9+/dq5c+fTp0/hG4ODgy0t\nLZWUlBAumQUFBYxySvj58+fq1avRSrlwsLKyZmdn0/mJ9+7dO3LkCEhW8/Ly3rp1C1HWw8XF\nRcNSDG0uBGLevHmVlZVT7gkfGhp6+/YtCwvL0qVLpxyNeXt7w4U6HR0d6bG+RQBuKUb7Ymtq\nanr27BkPD8/GjRtnVIUHzHF0dXWxsrK6uroi3EXBtkro5G/cuGFgYED/wT9//hwREQGJVIOw\ntbW9fv36FISgaIBMJp89e/batWtjY2M8PDxnzpxh7AqesaDTUmzKyMjIcHFxASvncDiciYnJ\n6dOnJzQhcHFxSUxMpPbqxYsXGVh8CbcUmwIiIiJu3rzZ3d2toKDg5+dHW+1icHCwoaGBn5//\nNzjf0INz584FBgZCT7FY7JMnT6a2ZJoJaGtrI+KPY8eOHThwgIEfYWxsjJjsXF1dVVVVzc3N\n4TMjBvM/IQcoTonwnplRjI+Pm5iYwE9SQUFBVVXV3t4ejPDq6uoQLPuyZcsKCwtpHLO3txfy\nroXw8ePHefPm/Xssxf5dYGdnX7VqFWIjGOJ4e3vDN27duhWMsbq6upKTkxMSEtrb26f8uVVV\nVbSjun379pWVldEZ1fn4+Li6ukIlCP39/c7OzpOKlRGVziDExcWjoqKmHNWVlJQoKCjo6elp\namqqq6u3trZO4SADAwO3bt2Cb4mMjJxOaDKhQeTixYutrKy2bt06o1EdAACGhoZv376tra39\n9OkTIqrr6+s7c+YM9JREInl5eUHUaV9fH2256eTk5DVr1iCiOgAAENPG9FFSUrJhw4aQkBCQ\nBhgYGHB3dwdrMf+dMDAwePbs2bVr1yIjI9++fXvlyhV6rKXQsw4c6enpjDvBaeHOnTve3t4t\nLS0/f/4sKioyNTWlGCB2dHTU1tb++vWLm5tbWVn5L4nqAAA4ePCgvr4++JiDg+PChQt/T1QH\nAADaNVtJSYmxHwGpjkOQl5cH+77hG8lksrKysre3d15e3u+J6n7+/FlSUlJaWjo6OhobG3vw\n4EElJSWwdKS6ujo4OHj9+vWgXeGyZcssLS2hN+JwuAnX+fz8/BoaGvAta9asQUg9/BH8F9jN\nINDVTuAWAwOD9PR0c3NzPT09sPUaAICysjJlZWUnJyc3N7fVq1dnZmaiD/jp0ydra2tpaek1\na9ZERERQZFsnzK04OTnR6c5UVFQEnhsc3759m1QghR58z549W15eDlaYTgG/fv1ycHCAvGLf\nvXsHWVHRRnd3t6enp6qqqq6ubnx8fHd3NyIXTCQSp9Y8GBISMmvWrHnz5q1atQpM7P5xYDCY\nOXPmoLnM1tZWeMYEAIDu7u7+/v6ampoNGzZISkouWLDAxcWFYpA6MDBw6NAhipGfkJAQA0/+\n6dOn27dvhyuNAwBAIpGys7OpveXfgHnz5m3fvt3AwAAu6Egbe/bsobGEm1QtxIwiJiYG/vTb\nt2+IZhECgWBnZycrK6uhobF8+XKKNie/AQ0NDQcOHDAzMzt9+jS88BGPx0dFRX348KGsrOzD\nhw/W1tZ/5PSowcvLCwq8MBiMi4vL2rVrGfsRHh4e8CvN2NhYX18fbZwNAMDIyIi7uzs6EJwJ\nVFZWKikpbdu2zcjIaPXq1R8/fvTy8tq0aRN8fOvp6QELUgEACAoKunXr1u7du93d3YuLi1VV\nVSf8iLCwsM2bN2OxWGZmZg0Njbt3787Ul5kM/tIau/8b0NfXDw0Nhc+jRkZG4IO1a9fCby0y\nmezq6gqRt+Clr6mpCXfOHhoaMjU1BbP+3d3d3t7eTExM6PpcJSUlYWFhtDAEiGXLltFfC4VQ\n6ACBwWComVIAAEAgEIhEYlZWVmlpKQcHh5mZmZeX1+PHj6E4TF1d3d7enpp5JT2oq6tDhF8V\nFRWjo6O0+b+xsbEdO3ZAxFJVVZWjoyM3NzecouPj45s3b95kzyczMxMq4f/8+bOdnd2TJ0+k\npKQme5wJQSQSY2Njnz59ysXFZW5uPmGPC0UICwtD2RAQXFxcWCzWysoKvGZAgWWQdUC89/37\n9xQDPmZmZg8PjymcDDWEhoZSc8GaEAMDAy9fvsThcAoKCmi/4MHBwYcPH/b29ioqKjKctPgL\nwcrKmpOTk5aW9vHjR1ZW1kuXLsHpdohk+uNAF3Igtly8eBHqqR8cHHR3d5eXl2dsw9mEaGho\n0NbWBrPhBQUFmZmZBQUFnJyc0A5iYmKLFi369evXhOQ9/ejp6bl//35fX5+SktL69evBjSQS\nqaGhYXh4eOnSpfT0LXFxceXm5paVlXV0dMjJydHmcacGTk7OvLy8goKC7u5ucXFxsB9u6dKl\niKIjAADoX5bQg76+Pl5eXop0BpFIdHBwgKr6vn796ujoWF5e3tbWhtgTbIMFAACDwWzdunVS\ndj6CgoJ37twhEAjj4+OsrKzo3t4/gv8CuxnE8uXLw8LCvL29u7u72dnZ9+/fT9HYBwCAnp4e\nxNU2ODj44cMH+BqosLAQUcsZFRWFDuzY2dljYmJcXFzev3+PwWDWrVv36dMn8MJdvHgxOolG\nAxRzPdu2baMon9Pf33/o0KHs7GxQOBHcGBkZeeTIkfLy8sTERLB9wdDQEB3Vtba2vn37VlBQ\nUEFBYULGER7sgsDhcBOaC1VUVCDShdevX8dgMExMTGAMgcfjAwMDp1DwjqhhIhAI6enpXl5e\nkz3OhNi3bx+UO0tISIiMjJxUbRwIISEhBwcH+GXg5eX14sULxEogLS0NHdih+2aYmJi0tLSc\nnJzQohvTAUXeFIvFThiIFBUVOTg4gFk8UVHRu3fvwku1Wlpa9PT0IBZhaiWV/zjg8XioNlFU\nVNTb27u/v5+ZmXnXrl179uz5s+cGQU1NDe5Dg8ViEZRSfn4+/CmBQCgqKvrNgd3ly5chdUAA\nAD59+pSSksJwhUg4Ghsb9fX1oay0iorKqVOnBAUFrays6urqAACYNWvWtWvX6Om/ZmJiYuxN\nigYWi9XV1eXl5YWW8X5+fpWVlfCGCQwGs3fvXopvr66uzsrKIhKJmpqa9MjXpaen+/j4fPv2\njZub++DBg05OTogdmpubEcPahw8fOjo60KoC07+QGNgpxRD8F9jNLIyNjY2MjDo7OwUEBGjU\n+HNycuLxeESSCzGPogUPqZVnrlixorS0tKuri52dnYODY2zt0R41AAAgAElEQVRsrKGhgZmZ\nWUpKalLuisbGxsHBwfBZ1sDA4PLlyxR3Pnz4MEK6D0RAQICWlhaNcoqgoKCAgACQSFBUVExM\nTAQ1n6lh6dKl8vLy8CjNwsJiwv4JiiU7oPKckZGRoqKipqYmQniJTqBTk4hcJ0NQV1eHqIg6\nc+bMFAI7AAD8/PyWL1+en5+Pw+FAmVzErAlQSdJJSEhs2rQJniMDNTmnxh3SgJycXE1NDXwL\nFxfXhQsXqOmFDg4OxsbGNjU1ZWRkQExPW1ubs7NzQUEBtJuPjw88N3T9+nUjIyNIpvvfAFNT\nU0NDw9bW1jlz5tC+y34zjh8//vbtW1DkGY/H+/r6IjhvyBSRxpaZBrpcmFpipLS0NDAwsKWl\nRVJSEp4GpRPgUnzx4sXHjx+HD1zl5eXa2tqioqIQC9Dd3e3o6FhdXT39f/PXr1/+/v6ZmZlE\nIlFbW/vYsWNEIlFISGg6hryioqKVlZW3bt1KS0vr7e1dsGCBk5MTZBREIpHu3LlTWFiIw+EE\nBQVv3boFMgI3btzw9vamrWRUW1vr5OQEjrSDg4MnT54UFRUFZWIhwMlUEExMTBwcHDY2NvHx\n8Q0NDeBGERERV1fXKX/HvxP/BXaMAZFIBOkf9EsYDGZCn29WVlY7O7vw8HBoi5GRESItqKSk\nhBDaoV0nISgoCD7A4XB0KmhD6O7uzsrKGhwcPH36dHp6ek1Nzbx581xdXSlKigwNDSUmJlIr\nxCaTyTExMfCWMThevnx57tw5iOGrqqo6d+6cv78/jXNjYmKKjo4+duwYqMi1bds2anoHZDK5\ntra2q6tr2bJlcnJyCCU5CAQCYTrUxaZNm+C+FxgMRktLa8pHowZ0Pw39HTbv3r27evXq58+f\nZWRkXF1dhYWFzczM4MZTSkpKAgIC8AheV1eX4qGuX7++adMmSMsaAACwqRZKEjEEx48fLy8v\n//jxI/jU2Ng4PDycWvq+v79fQ0MDnV4BAKC2tnZgYAAinkGSA7EDFNgNDw8XFhYODg4qKSn9\nDeXPMwQ8Hv/39BxA4ObmzsrKqqmp6erqkpWVRZdsmpqawltneHh4Nm3a9HvPEViyZAnCX4Ri\n6+6rV6/MzMzA9V5bW1tlZWVhYSGd+hckEsnZ2Tk1NRUAACwWi64lAI8Jf9rb2/v69esJ2bj3\n79/X1NTMnTtXRUWF4q105MiRe/fugY/j4uISEhJIJBIXF5e3t7ednR09Jw8AQHt7u7Ozc0lJ\nCS8vr42NjY2NDRcXl7u7O8Uo7fDhw7GxsRSPExAQYGNjQyNp++DBA8T6OSUlBRHYCQsLa2tr\n5+XlQVuMjIzA0SAvLy8uLq6pqUlISGjNmjUzKp3xR/BfYDddgJfyo0ePmJiYtmzZ4u/vT6ME\njQZ8fHxmz56dkZFBIpG0tbXRDQHi4uJnz549fvw4OGQsW7ZshhJJdXV1hoaGAwMD4NNDhw7R\nKAjt7OzU0dGBahQogobLEFpgD2FuRhHCwsLR0dG09/nx48eOHTtASzGQAzh16tSpU6fQ9/A0\nWXRbW9uPHz9GRESANRbe3t4z4SYkISGBqI2jM33Q3Nyso6MD0r3l5eUPHz4sKipCkME8PDy3\nb992dnb+8uULAACamppnz56leDROTk70D/jmzRsosOvp6Tl16tTjx49ZWVkNDAy8vLwoTk60\nwc/PX1JSkpub29HRIS8vj+7pg+PatWsUozoAAHA4HPzThYSEwC8IAVpxtba2Ghoagq9isdhT\np05RSxj9hxkCBoORk5Oj9qq9vX1PT09ERMSPHz+kpaUvXLgwQ7qJNACWC0O8nbq6OkXK/ObN\nm3AW/+fPnw4ODpycnKKiok5OTrTr227dugVGdQAAEIlEOm2pJrzF/Pz8wsLCwNFDXl4+NTUV\nwfD9+vUL0Y8CcvY/fvw4evSohIQEPSu3kZGRbdu2vX//HgCAL1++eHp6jo+PU1PLa29vpxbV\nAQAwNjb2+fNnGoEdehSiGJxdvXrVz8/v0aNHzMzMW7ZsgfQoWFlZ7e3tb9686efnd/78eQwG\ns2PHjsuXL0+Hnvyr8J+O3bSAx+N1dXVB8V4Q+vr6UVFRM/eJ3759e/36NR8fn4KCwgxdhbq6\nulVVVdBTJiamsrIyamEEXKiWGvz9/alRYnFxcQg5pTVr1kBV0tOBl5cXXM2EmZm5sLAQj8en\npqYGBgZCqUYMBpOQkDAd8XpQx+779+9v374VExObueLZU6dOXb16FXyMx+OTk5PpyYG6u7sj\n4nJqaQ4ikdja2srFxUW7xVVPTw/BW0RGRoLZ8MHBQSMjo9LSUugla2trarl7RsHBweH+/fsU\nX7KxsYG7GOXk5FhbW0MjnpycXHZ2NhjWm5ubw60qsVhseXn5pFLzM61j9/djmjp2dOLXr1+/\nx+YEgYaGhqioqI6ODgwGIy4uLi8vv2XLFgT1xcfHx8zMbGhoSLEoBQAAFhaW/Px8GhJ9lpaW\ncIaJHsjIyDx58oRGLUpZWZmhoSF8y969e+GaRwAA9PT00Oj3srKyopZy+fXrFxaLBW+ivLw8\nuFwIAAASEhIVFRUU31hdXa2jo0PtE5mZmd++fUvDC/XZs2dbt26FRy9BQUE7d+6ktj8aVVVV\n+vr68Cato0ePWlpaTpheow1ubm7QK/Y/Hbt/MJqbm+FRHQAA2dnZM/qPzpkzZ/PmzcrKyvRE\ndaOjo69fv25oaJiUrgFCZmJ8fByxBQ50egv43ytIHR0dW1tbam/X1dVF3EgQ7d/U1JSdnV1b\nW0vtvSQSKTo62sDAQEtLy9/fH9FHiVDLJJFIZWVlixYtOnz4cGRkJKhpPmfOnMuXLzPEkmj2\n7NkrV66c0ZaoU6dOJSUlubi4HD16tKysjM7KNrSoITWZQywWu2jRogmFS/bv3w9vcJGSkoKS\nYk1NTfCoDgCAhISEmQ500No97OzsIiIizs7OiNlr8+bNiYmJmzdvVlRUdHFxSU5Ohsjaly9f\nwvckEokMV+abLJ4+fWpiYrJ69WpbW9t379792ZP5ezCjUV13d3dwcPDRo0fj4+Phmb6XL19q\nampGRUXl5OQ8evSosrJSV1eXWm0ADcJ+dHT02rVrNE4A3Rm2fft2xAHFxMR27drFw8PDwsKi\nra0dFxdHu8IYvkoHgZY7EBAQoBFuwofWwsLCTZs2iYmJLVy4cOHChWJiYmJiYo6OjoODg1CS\nBwKNXI24uDiNVImrqyuNqA4AgNWrV589exb8ubBYrKOjIyKmnBBPnjxBTBnnzp1btmzZxo0b\n4aUm/1D8l4qdFuBNUiDGx8dnonZ+Cnj27JmDgwOYOFi6dGlsbCyd8nWzZ88G7cggUMx65Ofn\nnzhxAt7LBuLYsWOurq7v3r179+7dokWLaOvV8fPzp6Sk+Pr6vn79WkhIaN++fWB2w8vL6/bt\n2+CCTEdH5/bt2+jB6/jx45Bp2+vXr5OSksrKyiDtX7QIMFRLq6+vr6+vPzIyMoUs4Z+Furr6\nZB1IZWRk4CWAAAAsXbp0Ouegra2dkJBw8+bNnp4eBQUFDw8P6GdEZ47GxsZGRkbgSjSvX7+O\niYnp7e1VUlKys7Ob/l+wb9++pKQkKEEmKipaUFBArRyC2g/Iy8uLoJoYK8owWVRVVZmamoLZ\nho8fP5aXlxcXF//+5OO/Cm1tbZqampA6XVJSUmpqKrh+Pn/+PDy7Wl1dnZOTg6jogrBv3768\nvDxqjgUUBdshWFpaPnjwACKiWFlZDxw4sHjx4ry8vIiIiM7OzpUrVx4+fFhYWPjixYvj4+P0\n6EahV5sU745r167t3LmTYuUu9E2rq6t37NiBSIKNjY2BP9TBgwcRdcw0Ylx+fn4fH58TJ06A\nXxaHwx08ePDr169EIlFLS4seIZ49e/ZYWlq2trbOnTt3CuVP1MLKmpoaCwsLDw+PRYsWzURR\nze/Bf6nYaYGJiUlBQQEu1bNy5UqEtCYNDAwMPHz4cGBgQElJCW1TMR2MjIwoKCjAuZm1a9fS\nKTSfmJjo4uICfyM0wEFoaGjQ1NREN4QuWrSooKBgmqvqrKwsBMnn6+uL6Gbv7u5eunQpYsnl\n4OAAFYfdvXsXnnCcM2dOSUnJTMzWFC3FSktLCwoK8Hi8gYEBbXMkRmF4eHh0dBQ9wA0ODuro\n6EBrUDU1taSkJIZb4rKzs2Ox2M7OzhUrVsCbMGRlZeEpTlB5GOKPVVVVU1NTpyNqCKK3tzcy\nMvLTp08SEhJ2dnZTGOWjoqLgFh2ysrKPHj2aVPElY1Ox6PzyhH2CvwcEAqGvr49iumqGUrFd\nXV3h4eGNjY0LFizYt2+fiIgIY48PwcnJCVFnduPGDdBnWVVVFSwdg4AekYD/l4oFdeyePXvW\n0tLS0tKCKEXYt2+fn58fjdNISkq6fPlyW1ublJTUyZMnp9+W1Nvbu27dOmguwGAwcXFx2tra\n6D2Hh4erq6uJRGJ1dfWVK1dGRkbY2Ni8vLygb+rq6go1WCCAx+NbW1tjY2OPHz8OUhsSEhJp\naWlz586lcW7V1dXgOKmvr/+bxWuampo0NDTQ1Awc2traMTEx8NGyvLw8OTl5aGhow4YNZmZm\n6LzZX5KK/Y+xmxawWGxSUpKpqSkY20lLS9Nm2uH4+PGjvr4+JPnj7u6OsBqbDurq6hAZt/Ly\n8uHhYTTVj4aZmRkPD098fPzg4ODatWudnZ3Rl296ejoiquPj4zM1Nd2/f//0cyXosoyysjLE\nMNrZ2YnWsIU3XlhaWg4PD4PLXEVFRT8/v6lFdT9//rxx48aLFy+EhIR2795NT39xcHAwFF+G\nhITcvHlzRpVg+/r6Dhw4kJ2dTSaTV65cGRoaKikpCb3Kzc1dUFCQkZEBWmvTSCFNH6ysrOHh\n4Xv37oWU5MLCwuA7nDt3Dl4VUFpaWlRUhPDkmQL4+fkRzmkQ6uvrQ0NDP3/+vGTJkgMHDoiK\nilLczdbWFo/H37lzZ3BwUEVF5ciRI39WmAqdw4L7HEwBBAIhKSmpoaFh/vz5O3bs4OLiIpPJ\nbW1tP378yM7OLi8v5+TkBL1wqB2BRCL5+PhER0ePjY2Jiopevnx5suQxhI8fP75+/VpQUFBF\nRQWcNXt7e58/f87CwqKsrAwfQPr6+rS0tCAaKSkpqbCwcIZiO0SaAgAAKB0hISGBCOwm7Cxe\nvXr16tWriURiVVVVSUkJuFFcXHxCKW9TU1NTU9NJnPdE4OfnT0tLO3v27Js3b+bOnevk5EQx\nqgMAgI2NDeyuVVdX379/f1tbm6ioKPxGQCdbIZBIJDKZ7ODgYGpqmp+fz8fHp6KiMuFNpKCg\noKCgMKWvNV0sXrw4KirK29sb/b9DyMvLi4mJgaqD0tLSHB0dQS7s/v37FRUVkGXF34b/GLtp\nAY/Hc3Nzj42NlZWVDQwMcHFxSUhI0BnZmJqawul6DAZTWFg4zTQZBLSfMQ6Ha2lpYdR05evr\ni5izNTU1J+yioBMIR20AALZt24YwNxsaGpKUlEQEl+rq6klJSQw5BxBjY2N6enpQuRUWi83I\nyEA4FiAYu+7u7uXLl8OvutmzZ9fW1k4ovDxl2Nvbw4u1JSQkSkpKpqPyNTg4+OnTJxEREdpl\nLnCAjB1o49Hf3//q1SssFquoqIjItK5YsQKR67l8+fLM+S81NjZqamoODw+DTwUFBYuLiyEZ\nIMaCsYzd+fPnEUzP7du3qeX+JgSBQNDX14cuY3Z29jt37pw7d666uhqxZ3Bw8NatW0+fPv3g\nwYPx8fFNmzb5+vqCPdQhISHwmkUODo7S0lJ4jEUnYxcYGBgQEADG9zIyMvfv33/+/LmTkxPI\ncMybNy8hIQEiuYOCghDiR/b29ufOnZva70Abu3btevjwIXxLaGgoqO388ePHTZs2QWHN5s2b\nY2Nj0Xc0nLGDNo6Pjz98+LC+vn7+/PlGRkb/uPIPOK5du3by5EmKL2lra9+9exeLxcIFin8D\nWlpazp8/X1tbO3fuXGdn5yksNoaHh3ft2gUXvIRj+/btEFkjLy+PaKsvLS1FtDn/JYzdpNbu\n4x3NTeCjkc6qk57Obt7n85tn/Oz/Ebh69aqRkdHGjRuXLVtGjaxGANF2QCaTa2pqUlJSjh49\nGhAQQE3BgU7IyMgguKVt27YxkITQ0NBAjGuQ7OSk0N/fX1VVhZjszc3N4RVyoEo+4o0cHBwI\n+ToMBoP24ZgmcnJy4EX0RCIR7ceAwKdPnxBrie/fv8ONyxiIL1++ZGdnZ2VlwTd++PCBRsfJ\nhLh69aqMjIympqaMjIyXl9cUFn68vLzq6upqamroOQzNc8DJRYYjPDwciuoAAOjq6rpz587M\nfRwDsX//frjIi5mZ2XRI37i4OPhl/OvXL3Nzc3RUBwDApUuXDh06FBUV1dPT09fXd+/ePRsb\nGzAIQ3R6Dg0NIWo36cGbN2/Onz8Psbb19fU+Pj4uLi7QLNje3g5Xi0WXfCFmVkZhdHQUwclJ\nSEiAeVgAABYtWlReXu7j4+Pg4BARERETE0P/Og2UwTpy5IiFhcU/Lqrr6OgICQnx9fUFEwJ7\n9uyhKNKprKxMrW12RtHX12dgYJCamtrY2FhcXGxubg6Rowh8/vzZwcFh5cqVWlpaiAmajY3t\nypUr1LwuoLqO8fHx33Y1Th/0pmIJAxU71PQffJxDGHpLJvYZyKzP6xkGACA88Eb0+1rL+UiJ\n538Vzp07l5KSAj7+8eOHh4fHihUrJnQLFRQUhHutAAAQHx8P6q4BABAWFvbw4UMaBt60wcTE\nFBMTc+TIkaKiIhwOZ2RkxFjROzU1NW9v74CAAAKBgMFgbGxsaLS+UsP169fPnDkzOjqKwWC2\nb98eEhIC5mUWLlyYlJR0+vTp9+/fL1iw4ODBgxSLWPfu3SsiInL27NmOjo758+cfPHiQWoph\nykAry08oCzxv3jyE4BwvLy9aA336CA4OvnDhAkVCespGq2VlZb6+vuDJj4+P37p1S1pa2sbG\nZlonCoOfn5+uri7UY2Fqagr+s4WFhYmJicPDw2pqajY2NowyFUB7kFPrCP7bwMbGlpWVVVJS\n8uXLF2lp6WkW4KI7nKg1eH3//h1Rifvs2TNFRcVbt26hLyr4luHh4cuXL+fn5zMxMRkaGu7e\nvZtiHWdVVRViqQDmOuBb3rx5A2maoOP+mfA5BQAgIyMD8SuJiYnBV8JCQkJobdH/23j79q2e\nnh5k5WJubh4aGhofH//y5cunT58ODg6KiYnJyMgICQmJiIjMXEaCBtLS0uBD9Pj4+PXr19et\nW1dcXOzv7//+/XtxcfHDhw+rqamZmJiA5VJtbW2urq6nT5/GYDBr1649efKksLDw7Nmzk5OT\n+/v7GxsbTUxMoNUgGxsbxCkwMTGJi4tDqukAAGAwGLQ72V8CegO7e4bb79cTdh91BQCg84V7\nXs+wc3bjGenvm2Q3HjJLsqygLEL4LwGCMhkbGysoKJgwsPPw8IAzTEuWLIGiOgAAhoeHT506\nBYlVTgEiIiJ3794lEonMzMwzcdft37/f2tr6w4cP0tLSs2fPRtt400ZVVRXUEkUmk5OSkmRk\nZJydncFXlZSUMjMzJzyInp4ejaogAoEwHZKSTCaj2zyhv7WiouLWrVs9PT2KioonTpyAFnbC\nwsJ2dnZQuy4AAMeOHWO44mBVVZW/vz9FOk1UVHSyRiMAABCJxJ6enry8PMQxc3NzGRjYSUtL\nV1RUJCUlgV2xoJDVvXv3IJImOzu7qqpqUo7GNLB06VKEKtiUV0q/H0xMTPQ4ZtID+ovSJCUl\n3759i9jY1tZma2trYWEBf4mNjQ1O0ru5uUERYVVV1bNnz9zc3OTk5BAjD9p+mpeXF7FYYmFh\ngW5bGxubpKSkN2/egE8XLlw4Q+5P6CXct2/fZuKDEBgdHQ0PDwclNo2MjMzNzWeuBHay8PHx\ngY/q9+7ds7KyUlJSWrly5V9ixIfO+/f09DQ0NFhaWoIVEbW1tba2tocOHYI3OAL/b8mXlpbW\n2NiYl5cHriR5eXmVlJTS0tIuXrz48eNHCQmJQ4cOwZcW586ds7S0hBZFzs7OdBqK/H7QG9j5\nP+9csDX95mldAABqzpSw8KiF6CxmBhaH7JRYFxsIAP/qwG5qPoYGBgasrKzR0dEDAwOrV68W\nEhLy8fGB7wBfHEwZDO9/hIOPj09RUZGLi4t+iggKtgoKChAxxOPHj6HAbjogEolnz56NjY0d\nGhpauXLlxYsXp1C5SCaTbW1tETU3fHx8YIlJUVGRmZkZ+K1LS0tLSkrgfRtnz55dsWJFfn4+\nKyursbHx9JsD0CgvL6cY1S1evPj69euTDWfDwsIuXrz469cvdKoIj8d///793Llzz58/5+bm\ntrGxsbCwmPp5A8CcOXMQzAeiZCotLe3AgQMTrovogZubW25uLqTCuGHDBrBk6t8GKyurgICA\nCZdeXFxcQUFBbm5uaNm89vb2devWff369d69e+Pj44KCgpcuXYLkk9ra2hA8X2ZmZmZmprKy\n8r179+B09ebNm+FWpwAAuLi4xMfHw1Und+3aBY1aLCws2dnZKSkp7969W7hwoZmZGUN07Pr6\n+oKCgiorK3l4eKytrfX19dFEIEOuwAnh6uoKtT8XFRV9//4dLtg+MDDw5s0bDg4OWVnZ3++N\niyZ6GxsbERXGfxbo+HLVqlUI7UwikUitfg4AgLq6uufPn8PNORUUFBITEynurK6uXlRUlJaW\nNjw8vH79+pkY2BkFemf9z6PEZWv+p6Es5nmXgGwQSEFwiHMQh6de0PN/A5aWlvB5nZOTc/Pm\nzRT3/PTp0/Xr19va2mRkZJycnDZt2gSJu6J1j+iUnaOB1tbWS5cuNTQ0iIiIuLi4/Kn+IxDR\n0dGXL1/+9u3b4sWLfX194dpmINBbpoagoCCosaOqqsrCwqK0tHSy0sEPHz5ERHUKCgp3794F\nC8kvXboEj2VfvHjx8OFDqG6XiYkJYcbKcKBV+pSVlbdt2/b48WMfHx9VVVVnZ2c6p8CsrCxf\nX1/wMbr539jY2MzMDKJqXrx4QSQSrayspnf6/z/Gx8cpeqszZFrl5OTMz89/+PAh2BGspaX1\n99AhMwQwJQpeunp6egcPHmRjY+Pi4srNzdXX1webbZmYmFxcXFpaWrKzs0kkkqysrKqq6vz5\n8/X19YWEhMLDw62srNDFQ6ysrCEhIadPn+7p6REVFYWvGKl17FZWVvr7+8O7H7i4uFJTU0+f\nPg22mdvb25uYmGhoaJw5cwY0g9+2bRvCigaPx+/YsYNRvw8AAEQi0cLC4sWLF+DTwsLCa9eu\nmZiYbN68OScnB9zIy8tLv0HqlNHa2ooQtQkJCXFzcwMJ/tzcXBcXF/Avk5SUTEhImP6MMCnM\nmzcPcW8i7Mv/CN68edPa2rp48WJpaWkNDY1du3ZB9pJLly49cuQIWk2GnZ2diYmJGvswqQJo\nSUlJLy+vKZ34bwW9XbFa/Gz1shHtRVaj/fns/Jt0H7Zk6swHACBKTdjx9ezRH39YpZ0afk9X\nLJlMPnLkSHh4+M+fPyUkJM6fP09RfKi5uVlDQwNaNy9YsKCwsBDy7BsfHzc3N4fCOxwOl56e\nPp3lUU9Pz/r166GiIjwe/+jRI4pJOiKROB1iD2TsaPMBOTk58GgAj8dHR0fb2dnBa9sDAwM7\nOjpAZQpbW9sp16WtWrUK4V0bFRU12drzgICAixcvwrcoKCg8evQIfKyoqNjS0gJ/NTQ0dOfO\nnb/NTLqzs1NNTQ0+ocIHOAAA1NXVExMT6UnB79mzB0G3cHFx/fjxQ0BA4NChQ2JiYgiKTlJS\nEuG2AvzvrtjJYu3atXCpdyYmpurqamq6JH8t/hJLMYQYG7ynb3R09MmTJ729vatWrQLbTgkE\nApFIRC8ARkdHLS0ti4uLoS2SkpLFxcXURomhoaFly5ZRNDaVlpamVs/+p1BUVLR9+3b4Fikp\nqadPn46Pj2dlZSUnJxcXF4Pj0ubNmyMiIuiRiAJBsSuWBqqqqnR1dREbP378yM3NPTAwsGrV\nKnj14bp166ZTmTMFlJSUbN++HYqH1NTUUlJSaC+NZrQrlkgk2traQsH3zp07AwMDMRjMq1ev\nwK5YdXV1LBZ7//59BwcH+BsvXrzY398P79qBwMrKWl1dPU0bMTj+YV2xvrskO0pst9i7m6uZ\nY7D8/uvmEkc+hJ/dt7fsm5AyZQWpfw8wGMyRI0eam5s/ffpUUVFBTVIyJCQEHv20trbGx8dD\nT5mYmOLi4s6dO7dt2zZ7e/uCgoIJo7rOzs6mpiYo5T82NnblyhUNDQ1VVdUTJ05ER0fDS8UJ\nBAJaY6+oqGjdunXCwsLLly+HO6syHAhym0AgVFVVxcTESElJYTAYISEhLy8vf3//ixcvJiYm\n+vn5aWtrT7ZoD35wxBbaKpQQSCTS9+/fwaUO+laH6/7LyMggXqXhXz4TEBISSklJUVNT4+bm\nlpSUvHLlClwHGACAwsJChE0WHPDlHHoha2Fh0dra+u7dO3t7e3QVCw1BtdevX5ubm69cudLY\n2BjhLUYDFy5cgJO1Bw8e/MdFdX8Jent7oS4uECkpKdD/xcLCoquru3PnTkhMBI/HU6R1WVhY\nbt26ZWBgAEZyysrKCJlWBDg4OAIDAyky7hMuzwoLCzU0NERFRdetW4fgyCcEmUyOjY3dtGnT\n2rVrPT096Ywn0LuBFVdMTEwrVqwoLCyEVps5OTmQIOVMQEJCAvGjQWbTb968QfSUlJWVTcoZ\ncvpYt25dTk6OpaWljo7OqVOn4uPj/yzhHRkZCUV1AADExcWBK1J5eXlra2stLS3wEjUyMrK1\ntYXWtNu3b7e2tnZ3dy8vL7927drVq1fFxcXBl9jZ2YOCghgY1f09oJenWR1QcKp9s3/UlTEM\nm21g6XIO3M/2DKfj1zlF1OKSjWf0FP8pwGAwtEcxdH0uIt+Bx+Pt7e3p0ez48eOHo6MjWBg+\nd+7c0NDQ9evXnzt3DtJLBPtJEe9CNOE2NzdbW1uDoxiLQc4AACAASURBVNi3b9+8vLyEhISm\nrJVFG2gag0AgqKurP336FKy6O3r0KHzAbWpqio2N3bdv3xQ+a+PGjXDbe3Z2dngJBTWEhoZe\nvnx5aGiIn5/fz8/PxMQkPDwcKnPE4XBwNw5fX9/KykrIYsHe3l5NTY2aMeLIyEhkZGR1dbWA\ngICNjc0UOhsoYvny5WlpadDTQ4cOIXag2AH6+PFjX1/fxsZGUVFRT09PUEfjwYMH0A4YDEZP\nTw+a7+Xl5ZmZmeEzClyGA47m5mYjIyOQtmlra6usrMzOzqYn3lVVVS0rK0tPT//586e6ujqd\nHrhokMnkx48fNzU1zZ8/f/PmzdOvLv3582dycnJ7e7u0tDQU5fzNGBwcRGRgyGTywMAAWD8w\nKfDw8ERGRhIIBAKBQA93bmRkpKKikpub6+vrCyduWVlZ+/v7qXmBvH37dufOneBKrKGhwc7O\n7sGDB/SnKSIjI48dOwY+bmxsrKmpycjISE9Pf/36tYCAgKWlpbCwMPpdy5YtQyTmVqxYAT4o\nKSlBjFR5eXkIx2EIw8PD9+7d+/jx46JFi8zNzekn9iDw8fGdO3fu8OHDINMPxhngS+iAm5WV\n9ffHVfLy8rQ9IWcIw8PDX758ERUVhVf9ooXrKyoqjIyM0G8PCAhwdHRsampauHAh1P0gLi4O\nhnSGhobPnz8HK7BnSNXyj4PeoYoJK3AiserYr+4hZn4eFiYAAFj5dNIfrVm/UY5p5LcuI/65\nWLx4cVFREXzLlFv3T548CbX7dXR07Nmzp6ys7ObNm/B9WltbEe+CZtnR0dGKioqEhAR4JhQA\ngPj4+BkK7DZu3Jifnw89xWAwGzduBB+Dlf7os0XkOumHr69va2sryBjx8vIGBQXRtrUBACAr\nKwuqzOjt7d2/f7+EhERmZmZISEhNTc28efMcHR3hMYqYmNizZ8/S09O7u7tXr15taGhI7cgk\nEsnc3BzKXd69ezctLW3KsQsNLFu2DE7RMTMzo1tGGhoabGxswHm0tbXV1dVVSEjIyMiosbHx\nypUrBAKBg4PDx8cHfnoSEhInTpw4ffo0OPcICAhABXkIREdHw5NxBALh9u3bISEh9Jz8ggUL\n9u/fTyaT79+/7+bmxsrKum3bNmVlZbq/PUAkEnfs2AFVMsjJyWVmZk5hroXQ09OjqakJLb1i\nY2NTU1P/8thOVFRUWFgYvoAUFhaeTmEWHo+nvxFn/vz5oPyehYUF1Oj69OlTBwcHarLh4eHh\ncH6dRCLFxcXRH9iFh4fDn758+dLAwAC6C65evXr8+HE+Pj4lJSU4BywlJXXw4MFLly6BQbCg\noCBUBYhuUKBW+Ds0NKStrQ2VENy8eTMvL28K3jZgn2lxcTELC4u2tjY0Uq1YsUJWVrampgba\n09ra+jdIigwPD/v6+qampo6MjKxfv/78+fMz5+FGDcHBwZcuXRodHWVlZfX09IR6rdB10ugm\nawhQGIcGHo9XVVWlfQ7d3d1VVVVsbGyrV6/+x6kPApO1FMOyz+L5/x/LGGwG2vI2iW99NzaC\nnJX/AxoHDx7MycmBOsKUlZXprK9vbGxsaGgQFhZWUFAA722o2AtEX19fcXExOuGooqICdXXI\nyMiAVcmtra0mJiYUwyY6U5ZTgK2tbV1d3d27d8lkMh6PB7WF4Dug+8YXLlw4tc/i4eG5f/9+\nc3Nzb2+vtLQ0us8ADUQJM4lE2rlz5+DgoKio6KFDh0xMTNBv4eXlBSWOaEuZFBUVwSvSSCSS\nv78/Qh+HBoaGhq5fv/7ixQtBQUE7OzsabF9AQICxsTFIlmAwGC8vLzRlm5qaCp9HyWRyQkKC\nurr6kSNH3Nzc2tvb58+fj57Iraysbt++DUbePT09Dg4OWVlZ6AkPTVhSozCpwdvbG1qcREdH\nh4WF4XC46upqQUFBc3NzeCocjYSEBHj70Zs3b8LCwjw9PSd1AhDOnz8fGhoK/63Ky8uTkpIY\nW8UPAEBNTU1ISEhLS8uSJUs8PDymaZfJzMx89epVW1tb8Jfn5eW9evUqw6V2aGPRokWIzEBh\nYWFzczNilh0fH3d0dETcdwAA0FOAMT4+3tbWRiKR0HUC8LXN0NDQ0aNHAQDA4/GXL1+GN0Qf\nPnx406ZNYFesjo4OFDFoamry8/PDiw0Q1XgQIiIi4IWhTU1N169fn1redsmSJegVPhaLBX1X\ni4uL2dnZTU1Nf0/N/smTJ6OiosDHubm5X79+zc/P/52XEDz9PTIycvr0aSkpKVCg1MbGJiUl\nBapjZmdnn2aHPjVkZWW5uLiAl6KoqGhiYuKEDnJ/G+gN7Mikn2Hue2KeVPcM/6/y8G+fWzFs\nyHqj/0ARAgICJSUliYmJnz9/Xrp0qbGxMT0EwMmTJ8PDw8HFpYqKyr1799jY2NB3Gicnp7S0\ndENDA7SFi4srLi7uxYsXDQ0NoqKimzZtwuFwTU1N+/bto0aGQSwaw1FbWztr1ixbW1spKSlD\nQ8Nfv341NjYuXLgQWiK7u7tnZGRAirJSUlKTkk978+bNy5cvZ82apaWlBS6waKzY0EDXmYF5\n4Y8fPzo5OQkICEzZFhPdXUiPWHlfX196enpnZ2d6ejokOpCUlJSenk6Nx5KTk6usrHz48OGP\nHz/U1NQo5kARBC18CxsbG7WoIiwsDM6nvn79OioqytHREbHb6tWrEfpzk2r9aWtrg4v/kclk\nDw8PKC925cqVR48e0WC40WYbcLZjUkB3k4BAi4BME42Njfr6+uBfUFNT8/jx46KiIorZQ2po\namo6evRoRUUFJyenlZXVkSNHVFVVnz9/Dq4l1q5dOzV/5CkjMjLy4sWL6CJXtMdodHQ0OqoD\nAGBCz/u2tjY7OzvQSAORr0TUDEAgEAienp4bN26E593k5OTQ94iAgEBcXNyRI0fq6uo4ODjs\n7OyoCTChpUCamppon/lkMW/ePCjG+j0YHx+Hl30DAFBbW1tTU/M7s7HZ2dmILQ8fPgQDOwUF\nhbi4uEuXLrW2ti5ZsuTYsWP0j/CdnZ2FhYUkEmn9+vW0e3v7+/tdXV2hBUZbW5u7u/tkqz//\nOOgN7F75bXALe7F4jZYkb0NexZfNWw1ZgJG3hQUYfvVr92Jm9BT/L4GTk3NSXfRFRUXwjofy\n8vLAwEBvb29jY2N4GmLOnDkqKiohISEWFhZg4RcbG1twcDAXF9eGDRtAmVMikQiWsFD7LCUl\nJfRszRAkJye7uLhAwdONGzfA2jVhYeGrV6+CrLiQkNDTp0+jo6NbWlpkZGSsra3pz6P5+fmF\nhYWBse+CBQuysrJoszto6OnpUWPRyGTy3bt3pxzY0WOi9erVq8zMTCKRuHHjxvXr1zc3N+vo\n6KB7FIhEYkBAAI3OuFmzZqGj4f7+/tDQ0OfPn8+aNQs9k9EjxQRnJkBQDHEsLCwyMzOhsj91\ndfU9e/ZMeHAIbW1tiPoweLXTjx8/fH19oVlnbGzs/fv3zMzMkpKS4CIHXSszteqZly9fUozq\ngBnQeoiIiICH2n19fbdu3dq2bdvcuXPpCciGh4d37NgBLtJ6e3tDQkKYmZmPHj3Kx8c3Hf+x\nKSMpKYniAMLLy/vo0SNvb282NrZt27ZZWFhgMBh0YzUAAObm5jt37qT9Kc7OzpA92q9fv7BY\nLEjh4HA4MzOzuLg4iu8aGRmpra2l52pXVFQsKCgYHh5mZWWlkfpEx9/0dPwQCITo6OiXL1/y\n8/Pv2rVrRv30pgASiYS2JKGYxvn48WNwcDBIxLq5uTGQ0ELXEcK3bNy4cQrsQ0lJiY2NDVgo\nwsrKGh4eTuMGqaurQ/R3V1VVjY2N/X4dwemA3sDuWOhbgWVnGsu9yaSf4px8qmGx3qJcw53F\nyxbq/hSeONX1H6YGuBcFiNu3b69atcrb23twcDApKWlsbExGRiY4OJibm1teXr6ysrKkpGRs\nbGzNmjWIwrIbN27QiOoAANi7dy8NBhH8uK9fvy5dutTQ0JB+cp5IJHp7e8MpMagj4evXr3Z2\ndpWVlWBtNT8/v4eHB52HhfDixQuoZQQAgNbW1lOnTl2/fn1SBzExMWlsbAwLCwNvYMTohia6\n6IeKioqxsTEU7nByciJq1FJSUpydncHfJzw8/NixY9XV1dQ6TydrTUggEExNTaGJ8OHDh4aG\nhllZWUQiEYPBWFhY0EOLoisUKYY4GAzmxo0be/fubWxsFBMTo+gCRwMLFiygoTUFwBiRurq6\n3bt3g1LykpKSUVFRkpKSVlZWkZGR0O/GxsY2tVUKNW2O+fPnMzwPi27PvHbt2pUrV5iZmW1t\nbf39/WnXVJWXlyOo9/j4eDD5+EdAsa2em5tbQkIC6gkoKSnp6urav38/uiHD0tIyODgYsZFA\nINy8ebO4uJiDg8PU1FRFRQVRQU8kEs+cOcPLy6usrCwiItLU1FRZWUnx9CZFXk64qty7d29C\nQgLUnyQoKLh3717abyGRSGZmZlC3eExMzIMHD6ZpFsdY4HA4NTU1uMyNgIAAuvyjvb198+bN\nYLr/+fPn2dnZRUVFjOpkNzQ0jI+Ph9Z4GAyGYnsE/RgfH3dzc4NitZGREXd3d01NTWqVc+hK\nPg4Ojr+8uBYNertsng4SxMz1AQDAMHNaCbEXvOwBAIBNaH3sLrEzJjcnevd/mCLQF9ng4KC1\ntXVRUVFwcHBLSwtofgxR5Tw8PFu2bDE2NkZPxrTVpGbPnk0jCdLZ2amqqnr06NHQ0FBHR8ft\n27fT33gPuolTe7W3t7eqqorOQ1HE69evEVtoyHzQwLFjxz58+FBWVnb79m3ES9N0drp+/TqY\nuzx+/HhFRQUkNgEAAIlEQkS9AQEBaE8nCJOV7S0oKIC7v5PJ5M+fP79+/TojI+PFixchISH0\n9Nk5OTnBuxrnzJmzezdVp5mVK1eam5tPNqobHx8vLy+Hfzt0TAM2AYyPj9vb20MGQY2NjeCE\nOmfOnEePHoFiK0ZGRtnZ2VOjQyjO6Obm5nl5eZDkJKOAnjJB8olEIkVGRsbETJAJoZFY/yNA\n69hZWFjcu3evuroavvHKlStkMtnKygo+WbKwsFAMxJ2dnU+dOlVYWJiVlWVtbZ2cnIy+MNTV\n1c3MzMTExLBYLKh+bGxsjOjdXrNmzTQFiTo7O8vKyqALb9asWQUFBW5ubjo6Om5uboWFhRMy\nxE+ePIFrABEIBLh0Mz0AfeinWQkN6l5ZW1u7uro+f/4c8WpQUBCk5SQoKHjjxg10jfLt27fh\n5bODg4MRERHTOSU4NmzYcO7cOXDi4+HhuXDhwrp166ZzwK6uLoRn3cDAQHNzM7X9ly1bhqgh\nsbOz+yNOuNMBvXEoHxYz9uN/aAxlEY6kjHbAQAwAgAXGIv2RQQDwb5eymyEYGxuHhIQg+Bsy\nmXzt2rVNmzZNqmcNfX/i8fjx8fHx8fEVK1YEBATQ6DC6cOECXIL86dOnqamppqam9HwuHx8f\nOzs7DcXOaS6G0CKNNGQbaYOdnV1SUlJSUtLd3T00NBQMXrdv304jjqEHGAxGX1+fIvk/MDCA\n+HOJRCIPDw9iJAIBGZrRxvj4eFJS0uPHj1lYWNALg+/fv8+ePXtS0k0iIiIFBQXXrl1raWlZ\nvHixs7OzgIAA/W+nB/v377937x74GPy53NzcfHx8IMYah8OBxeOfPn1CWO3V1dV1dHTMnTtX\nXFwczt1ODfr6+hcvXoTXhFlYWFy5cmWah6UIJyen3NxcauuQnJwcyICcIpSUlDg4OODdBvSk\nGl+/fh0REdHZ2SknJ+fi4sLAIjxVVVV4pSMTE9Pu3bvRN/7g4ODo6KiCgkJ0dPTFixebm5ul\npKSOHTsGhfXZ2dmZmZkkEmnZsmWItHhISMimTZvgYmZycnLwPCAUIILBcVJS0tDQkLq6uqen\n53S0QkJCQi5cuAAS+Vu3br1+/ToOh0ObQAIA8OvXryNHjiQnJxMIBE1NTT8/P2g4QqimA5Sk\nAOCoqqpKSEj4+fPn2rVrLS0tHz9+fPDgwc7OTmZmZhsbG39//yn0NJDJZGtra0jzMjExMS4u\nDqxgAyEqKlpQUFBfXz8yMrJ06VKKModQJTSNLdOBnZ2dra1tV1eXoKDg9BVeuLm5EUkYDAZD\nQwCIiYkpJibGz8+vpKSEhYXFzMyMHntiMplcXV3d3t6uqKj4mzVNKYLeOdV+HtfFqPNtvomi\nLMyiW+d9CYoAgLUAAHx7QkEr6z8wCnPmzElNTd2zZw+iVhdSUOvq6kpOTu7r61u1ahU1HzMQ\nVlZWWVlZEMXNzs5eWFi4cOFCsKuc9mmg64LRdVfUgMfjvby8Tpw4QfFVDg6OSalaoKGtrS0p\nKQk/H7jg3NTg7e1ta2sLphSnafOclpYWGhr67du35cuXnzhxYtmyZfBXubm5eXh44GEEExPT\ngQMHHBwcoH9q4cKFurq6s2fPNjU1BSOqtra20tJSVlbWDRs2oCdmb29veBcCAt3d3WJiYioq\nKv7+/vR/NVFRUYSjKwNRX18PRXUAAJDJ5Pfv369YsSI5OTkyMhLsCLa1tQWZTvRKBoPBMMqM\nDgCAefPmxcfHHz9+vLa2lp+ff9++fdO/nKiBlZU1Ozs7Nze3tbX19evXcFVCAAC6urrev39P\no19ESEgoLCzswIEDIH2ioKAw4X/06tUrPT09cJIrLi7Ozc3Nz8+fjigMHD4+PrW1tSAphcPh\njh49umLFip6eHjweD2+nWLJkCTjgwA0VAQDo7e09efJkRkYGxDuiuyu+f/8eFBTEzMyck5Mz\nPj6uqqoaHBxMkU1hZmbeu3fvhOlRevDs2bOzZ89C9+ODBw+WL1/u7u5OcWd3d3eoszs5OfnL\nly8ZGRngGS5atAixM40m6EePHtnY2IAfev/+/ZycnLKyMvCXIZFIt2/fFhYW3r9//xS+C1zJ\nnEwm+/v7wwM7AACYmZmXL19O4yBoHSXEsDZ9MDExMUo3mI2Nbffu3fC+LhMTE9pF2LNmzZrU\nWm50dHTHjh1gTgyDwbi4uCBci34/6LUU6yg+PE/9EpZj7vuuz0J9kVzz9inbHDJeOHb5bOj4\n0kudLylf5X8cv8dSDACAnp4eOn/JKaCyshLB94Aswvv373V1dSE5UFNT06tXr9I4TkpKSmBg\nINiTe+LECXpke0E4OjoiavYvXLgA8Vj0WIrl5uY+ePDg3bt3iF5FDw+P6VcFffv27eLFi1VV\nVaD7JO0Al+FgZmYGoyv0xZabm2tlZQVdGPz8/CUlJYgBKzo6Gq7K4erqeuLEiYqKiqioqJ6e\nHkVFRWdnZ3gSMDk52d3dHZwp+fn5ExIS4E7YX79+XbFiBfxSREyrEBYvXlxYWMiokGg6lmLZ\n2dmIUj88Hk+RswRhYGAAt2bW0tJCtPJNB2NjY9HR0bm5uUxMTFu3bt2xYwednAFtS7HOzs6T\nJ08WFhays7Nv27bN09MTEaHW19draWkh/ikMBuPs7Eybpv3x40d9fT0XF5e0tDQixOns7CQQ\nCHAdsh07dsDlJAEACAsLY5SpMQsLCxsbW1FR0bdv32RlZaH2gpiYGC8vL/DW4ObmvnfvHkWN\nazMzMxpm7SAggzJqZmiMxdjYWFVVFbqBd+3atRQ7bNjZ2Xl5eREVuqWlpWB0TiaTbWxsIKUq\ndnb2nJwceGEGHCoqKrTbbGVlZRFmM/QgNTUVkfLm5eVFfFBNTc2XL18kJSXRcSdYgkwgEIyM\njKA07qpVqzIyMsCRZEYtxaaMsbGxiIgIkAbevHmzs7MzY6XpLl26dOHCBfiW1NTUaWaQ6QGN\n3BS9gR0AAG/uB/neyAzKyF/AwpzooWUZ/IREJnMv2pRSfl9LiDFrPobjLwnsyGTykydPampq\n5syZY2BgQI+yGgJw0RMJCYmsrCwBAQFzc3PEvZ2RkTET4rfv37/X0tKCVtISEhJPnjwBR9XR\n0dHk5ORXr14JCAjs2rWLtlgDkUi0tLSEhm8dHZ2oqKjfrLPFcNAI7NBz1ZkzZ9AsQlFR0YMH\nD8bGxjQ1Nbdu3UqjnqO/v19OTg6e3kJ4cVZXV+vo6CDeFR8fX19ff+XKFUTglZSUNOVuXwQm\nG9gNDw+3tLTMnj2bn5+/oaEBMQguWbKEhiPZ9+/fjxw5AgYourq6Fy5coJhYIZFIsbGxmZmZ\n4A+7b98+euoWPD094Za7Bw4cgLwNaINGYDc+Pq6npwcvNXN0dDx9+jRit6ysrOPHj6Mj2vT0\ndPrXYCA6Ojr27t0L9hlIS0vfuHEDDCA0NDQQujDe3t7UyCd6UF9fX1RU9PTp0/b2dm5ubmtr\naxMTE3Qo3NjY+PTpUxYWls2bN1Ocjdrb2yH7BxqIiYlBm6vOEL58+WJqakoxutLQ0DA0NPz8\n+bOUlJS+vj40gmGxWDSDnpubCy29SCRSWloa2BW7Y8cOGn3W8+fPp10xOYXAjkwm79u3D7FE\nV1JSgrQ8xsbGbG1tc3NzAQDAYDD29vZQFWBVVZWXl1ddXR0vL6+jo6Orq2tOTk5TU9PixYvh\nLi9/Z2AHx+jo6OjoKLpGhRrIZPKEBXYmJibwjhOAQYTFhGBMYIfAYFvjpyFWmSXzcX9xWeHf\nENiRyWR7e3uoI1VERCQnJ2cKPHNNTc2rV6+EhIQ2btwITlErV66E5I5BBAQE2NraTvpr0IEP\nHz5ERER8+fJl+fLljo6O4Pg1NjZmYGAAdT/gcLgVK1asWrUKtDSgdiiwm2/RokXTTMJODW1t\nbV5eXiUlJWxsbKampj4+PtNkrWgEdrq6uojWkMOHD09ZNRegxN0CANDa2gpRFz09PcuXL4dz\nBrNnz66trcVgMOLi4ghf6ujoaD09Pfo/vbe3982bNxwcHPLy8ojm/0kFdnFxcT4+Pj9//mRi\nYrKysgoICPDw8IBc4JiZmePj4ycsFwN/ahoFmv7+/lAzJkAHnw0AQHd3t4yMDILv/PjxI7X1\nfU9PT0xMzOfPn2VkZNzd3dnZ2SkGdm/evNHU1IRvYWNja2pqonjhbdy4EcFqHzt2DJQWpx/b\nt2+Hm9xISEiUlpYyMzM7OzsjTCDi4+O1tLQmdXAIV65cOXv2LKKReWqRYlNTEz0r0tjYWPS6\nZYZgYWHx+PFjii/NnTsXqjles2ZNamoqeDvw8fGtWbMGfsvPmjXr1atXU+CH1NXV6+rq4FtY\nWVnhbRPHjx+fbCo2Njb24MGDiGNmZmZCIXVYWBiiZx/8wb9//66qqgpvmKA20fzNgV1/f7+H\nh0d2djaJRFJUVAwJCaGt0vL9+3cvL68nT55gsditW7f6+flRCwd3796dmZkJ3+Lr6+vk5MTI\ns6cEGoHd1CsTuUUl5aT+6qjuLwGYhYSefvnyZWoC5bKysjY2Njo6OhDxgKbHGC61BUFCQiIg\nIADUU4BWpenp6fBRDMxcXL9+XVtbm0YnrIqKyo4dO9BRXWdn52TlPCaLsbGxnTt35uXljYyM\n9PX13bhxw9fX9/379x4eHubm5mfOnKHhcD8FoOeqafKpaD6AnZ0dHh8ICAjAV4pYLPb8+fPg\nihPR9czOzk7N9ZUiMjMzV61aZWpqqqent2HDBsSKgn7U1NR4enqCHZTj4+MxMTERERFBQUER\nERE7d+50dnYuKCigpwkAi8XSiOrA1j/4lqSkJBrpXRBdXV2I5RmBQKB2JX/79k1NTe3cuXN3\n79719vZes2YNNYoF3S46PDw8f/58dXV1tJ4RujGlpKRkUtzMz58/EfzBhw8fQOlBb29veHWR\ngYEBIuKkH83Nzf7+/mh5mgmjZ4pYuHAhPdZVNBq8GA54uh8EMzOzqKiohoYGvJOsoqIC7kwd\nHR0NWeZgsVhOTk5/f3+0PvOEOHv2LJxgtre3v3nzJkgHMDMz29nZTar0s7e39+HDh3fu3EFs\n37FjB5woRX9lkDjPyclBuMjAi2L/KTh8+DCYjQUAoKqqytraGi3aB4ednV1WVtbw8PCPHz/u\n3r1LY0GOaIjm4eGxtLRk1GlPDbSaJ+Tl5TFMLC9fPAMf09gTLqnwr8KnT5+Cg4MbGhrmzp3r\n4uJCsR0G7gYBor6+niGf7uXltW3bNmhsVVZWnjnrCBD5+flVVVW8vLzbtm2bPXs2ta6u9vb2\npKQk+iuXv379unfvXnCSk5GRuXHjxmR1PSbE0NBQY2Nje3s74sePi4u7c+cOuBR+8uTJgwcP\nCgoK6HE9pwcHDx6srq4GtViZmJj279+/du3anz9/RkVFNTY2zp8/f/fu3ZPqMJWUlNTS0oKX\nSTk6OiJy2a6uroqKio8fP8bj8Vu2bIGKeM6fP9/a2gpm4ri5uYODg2mwqgj09PTA1dgbGxsP\nHTqUmJhI+12gWh7i9B4/fozgNR89euTo6GhkZDRNwSo4KDJnXV1dtFc+CxYs4OTkhMdhQkJC\n1H6loKAguHdWTU1NZGQkxT7W5cuXI1pkAAAYHx+vq6vbuXNnSUkJfIW2Z8+eoqIieHxZWlpa\nWlpKf3KHYuaorKysrq5OSUmpvLz8/v37HR0dK1eu1NTUnLKOw9u3bylqHg0MDBCJxAlb3Rsa\nGjIyMggEgoaGhqqqKhaLjYiI2L1797dv3wAA4Obm1tPTw+PxcM0XWVlZGksRIpH48+dPuC7P\nNMHFxYVo6U1NTQUbVNHfBXosIyPz4sULDw+P6OhoIpHY0tISHh5eW1ubmpo6qQZPFRWVp0+f\npqSk/PjxQ1VVFewy0dbW7ujoEBAQmBQFWFRUZG9vTzG4RATK6HGPm5u7qakJbYDBEPPJzs5O\nNjY2hqsIUQSRSESQah8+fKipqaGmI9jc3IwQRMzIyAgMDESXUdXX1yOUiTQ1NUVERBDpkd8M\nWrcfJycnhul/yAAG3jD/Z9DV1aWtrQ11ej969CgvLw8SAYKAzrpO1heBGlRVVXNycqAqewcH\nhxmtV/Pw8IDWfJcuXcrKykK7kUKAO5FPCFdXV4i6qK+v371799OnTyl+l4yMjKSkpF+/fq1b\nt27fvn10DnBpaWmHDx+mOLSNjIzAJ9FPnz6lEg4/9AAAIABJREFUpKTQlpmgH2xsbPfv33/5\n8mVHR8fSpUsXLlwIeodDhTtRUVGFhYWTysvfuHEjMDCwsLAQj8ebmJhQlGJZvXo1Wklu9uzZ\n+fn5tbW1g4ODcnJykyI/Xr16hWiOKSoqGh8fpzZXdXV1HT58OC8vDwAAHR2dCxcuQPEr+m+l\nJune3d3Ny8s7NTUcfn5+EREROAHMwcExoRMrOzv7hQsX9u/fD4aeLCwsgYGB1O4pSNIMAtpm\nCgQ3N3dYWJiLiwv6ChwYGMjOzra3t4e2aGlp3bp168yZM58+fYJfmcHBwba2tvQMHRwcHJqa\nmvDoH4fDeXt7AwCAxWL9/Pwm5QhCDdQWJLKyshP+ZQ8fPrS3twd/5NDQUDB7q6io+Pz585cv\nXzIzM8vLy7OwsJBIJDExMVDyQ1VV1cfHh+KlMjY2duLEidjYWAKBICkpGRgYiM4GtLW1xcfH\n9/f3y8vLU6wCRMPW1vb8+fPQ06VLl4JhJfovQIiGsrCwIGKI0tLSN2/eTNaYS1xc/PDh/6Uj\nxsTEhF6ZkEgkUNJcTk4OncMhEAhOTk4Uhz4cDmdgYADfYmNjk5GRATEFHBwcWlpaBgYGCPNf\nAACmnL4H8ebNGycnJ1DKQFdX98qVKxSHo97e3vT09N7eXiUlpWn2IoDCXuiN1PZHR64kEolA\nIKADu4qKCsQKB21v+Psx9Rq7fwRmtMYuODgYkVQ1NzdHK2n9+vVLU1MTmsuxWOyDBw/AMaK5\nufnDhw8LFiygIWrwl+DFixeIblM1NbXExER4jR0coaGhcNdtGhgcHEQLAZSUlKD7xaKiouAj\n3ebNm2NjYyekHFpbW9euXUuxVxEAAF5eXkSWwd3dHZwF6QSNGjs0rl27hmhy3LNnz2R1Sn8P\nmpqa3r59O2fOHGVl5crKyi1btiB2uHTpEtTNiqixQ1QTb9y4EcrdfPjwQV1dHT5uXrlyBWHm\nnZOTc+TIka9fv7Kysjo6Oh47dmwKxFJxcbG1tTVIuuBwuODgYDqVF5uamh4/fozFYrW1tWks\nXQ4fPoxgMoKDg3fv3k3tSuvr63v16pW3tzci/kOX4wQGBlIULnnw4MGaNWvo+QpdXV1ubm5g\niRiCLMThcBUVFTS+F50gkUgGBgYIVmPWrFlJSUm0xTLIZLKsrCzIzIHAYrE1NTVTs4ADACAg\nIACuLsHPz19WVgYvP3r79q2Ojg6UKNfV1Y2Ojp7wiiKRSKGhoXfv3v3x48e6detOnjwJBlUt\nLS3q6uoQrTt37tyioiKwfYePj4+ZmXloaIiHhwcx2d+7d28m0im9vb3bt28HizLxeLyvr6+9\nvf3r16+fP3/Ow8Ojq6vb3t6upqaGfuPcuXPPnDmzdetWxPaHD/8/9r48Hqq2//+cGWYMKUS2\nCCWU0iItyhKR5ba0SCnKVsTdnrrTohUVilIId4tS2mizlVZFQpGUJUsR2ZdhzPL743q+53e+\n1xljbD3dz/d5v/zBOHPOmTPnXNfn+nzen/f7flBQUElJiaioqJ6enpyc3KlTp6BtzMzMIiMj\nuTJE+eHY0en0uXPn4nkRXPmvX758sbCwwIgQzs7OUOdpf+Hg4ACWmgBjx4598+ZNbw1VPT09\ns2bNwp/k9OnT8W8HSElJ8fb2hgg82traL168+AUZOx4cu3+YUcZvBeI6hqtOo7CwcGJi4qlT\np/Ly8mRlZTds2ACapHbt2hUdHQ0Ca+D9il9HdnZ2VlVVKSgoDHdLP58gCtcVFxcLCgrevn37\nxo0bmZmZycnJ2Pyhr6+/fPlyPveMoiiKwgsMrsPuyZMn8X8+evSosLCwTwmlFy9eQHMtZhau\nqak5ceJESD9syKvAeBCL15Ar1G+CQ4cOhYWFgRWtjo7O1atXJSQkoPELODDiX6mvr8/Ozu7u\n7oY4Xunp6T9//gTD0IQJEy5cuLBr166qqqoRI0Z4e3tDUV1paambmxuI/Lq6ukJCQuTk5Hpr\nCWIwGElJSVVVVZMmTVq0aBH+ttHX18/MzASVXwMDA/79wlVVVfGsagaDERAQcPXq1c7Ozvnz\n5x89ehR4YGzevPnu3bvYNZk0aZKbmxsPRxZxcfGFCxdaW1vjb2MBAQGoMbmrqysoKIj4dhRF\n+XdtkpKSunr1altbG5PJhMqXPT09ubm5gw/syGTy5cuXQ0JCXr58KSgoqK6ubmhoSIz+iejo\n6MBHdQiCMJnM8vLyAQd20PPb2Nj45MkT/Pjj5+eHpz8+ePDg2bNnPIx2EARhMBg5OTlaWlpr\n166FqlVKSkopKSlAr1tDQ8Pb2xtqys7KyqJQKPgjUiiUQSq9cTichIQEIJVibm6+dOlScKvv\n378fa7VhMBh79+4tLi7++++/wXA6ZswYYhWVTCZnZ2f3di9ZWFg8evTo/fv3nZ2dN27cIKY2\np02bdvHixcF8lpycHIjtmpiYGBYWBo35vr6+eHprdHS0nZ3dYBzYgoKC3NzcQKu4iorKuXPn\neLTJCwoKRkZGurq6gtKTqqoqMfQsKytzcXEh5vY8PDwGfJJDBV6B3d27d/ncC5TR/X1ApVKH\nULwUgra2NmSloq2tLSIiwmKxHj16VF5erq6ubmRkhKKoiIgINFjfunULb61469atBQsWYKS0\ngIAAf39/IB28e/fu3mibSUlJqampIiIiy5cvx4uZDQcwRjCGsWPHioiIiIiIeHt7e3l5NTc3\n37hxo7KyUlNT08bGhn9CiYiIiImJCeixB9DU1Jw+fTq0Bw6HQ4ykW1pa+tSOIXI4JkyYcPbs\nWWFhYU1NzZ8/f75+/RorHBsZGTk4OPSroo2NRzQajUduH4DoczVx4sQByN8MK54+fYrX58zK\nygoLC7O2toYmCTExMezMBQQEEhIS3NzcepMzPHTokJ6enr29PYVCAXS65ubmkSNHEu+T9PR0\naKxMTEzkShVvbW01NjbGGE4mJiY3b97Ef3dQiMYPfvz4ERcX9/PnTx0dHSA94+/vj12N5OTk\nysrKzMxMCoWiqqqak5MTERFRUVExefLkP//8U1hYmMFg8C5E+vr6lpaWAhU0ERGRwMBAbW1t\n/AbNzc1cc34eHh79zeuDb0dCQgKqxMnKyvZ2yzEYjI8fP5LJZA0NjT4rqiIiIjY2Nh8/fvzy\n5YuoqKiysvLo0aP7ZF/RaDRxcXH8nI2iqKqqKnRKra2tx48ff/ny5ciRI52dnYm5JQzEh45M\nJouIiLS2tgYEBDx79ozIaa6urubx0H358mXJkiXA4ERMTCw6OhoqVkybNo2riRaJRGpoaFix\nYgU+qiORSEFBQTzWFY2NjadOnfrw4YOCgoKXlxfXO9bPzw/LVyUlJVVUVADJd6j5hslkYlEd\ngiB1dXWnTp2ysbHBq+6tWbMGrF3b29sLCwtFREQmTZqEPYZ5eXn4xgjitTU0NORx6cB+eA9o\nXGdkERERFEW/fv2am5srISGhq6tbXFwMbVNaWjqYgqyKikp6enp1dXVXV5eysnKfg7yBgcGH\nDx8KCwvJZLKmpiaRBpCWlgbd7TQaLTAw0NnZmcViDfeo3sdcw+kd/B+Dx07+vegaTnR2duJF\nlbS0tH7+/Nnc3IxneJiYmLS3txPf6+7uDl1DGxsb8K8bN25A/7p58yZxD3gFBBKJdOXKleH+\nsPg1LoqiiYmJ4F9MJpPJZA5m55WVldjQOWfOnIKCAq6bQb0pAgICJSUlfe7827dvUDLgyJEj\n+A3q6upCQkJ27Nhx6dKlzs7O/p58d3c3uNkYDEafGzc0NOAzgqABpb9HHG4QbUJmzZqVnZ2N\nH5HJZHJGRgb2lhcvXvBDhps1a1ZLSwvvox8+fBh619y5c7luCWk3IAgSFRU1mA+em5uL5/qs\nWLGiq6uLKJJ36dKlly9f/vz5E/9ecA/09PTwc6CioqLo6OjHjx9jg0NZWZmtra2oqCiRGg8a\nC+h0+sA+FF7zBUGQGTNmtLW1cd3y1atX2PpNTU0tLy+P955zcnLwp0qj0T58+MDPKUHJDw8P\nD2iDjo4OqH88Ojq6t71Bqh8jRowoLS0FNNxebkPk7t27PE4PqnfTaLSysjJ+PhebzSZ2FMnL\ny/N4S319PZ76KSIikp+fT9wGiioEBQXr6+u7urqIdsMQpKSkQF1eRUVlwoQJPj4+TU1NXV1d\niYmJWCFvxowZ2Ae8fPkytAf8obW1tcFxewMYDHlfpcbGRogpuHLlypiYGDx5UVNTk6hreOfO\nnT6/gl8JohTl3LlzWSwWh8NhsVjDfXQ6nc4j8uE1FuOVkNg9dXsd1mbT5Zy93RfO0RQjd30p\nzDwXGFqjsCzjAZfCwW8COp0+rDp2cXFxr169+vjx4+jRo01NTTkczvHjx/G8k5SUlPPnzzs6\nOkJvJCaBhYSEQFUeqiwg3GSsq6urQ0JCsD/ZbPb27dshZ5ghx6VLlyIiIrKyssTFxZ2cnGbN\nmgVOmB/nCd6g0WiXLl1qa2tjsVig8MGVoODv7798+XLAbkFR1NfXd9SoUX1SGSgUyqVLl3x8\nfN6/fy8qKurs7Ozq6op/F4qiWKfbAD4FmUwG32ZHRwc/N9ujR4/+/vvvoqIiZWXltWvXAvGz\n/h50WEFsSRkxYoSSktKlS5cOHz78+fNnZWVlHx+fyZMngzOvrq5evHgxP589Ozs7PDzcxcWl\ntw3odLqenh7k7bh48WKul4jospqdnT2Y6sGOHTvwya34+PgVK1YQb4k1a9YgCCIqKhoQEICV\n/EDUS6fTe+PYYSguLl63bh0g3aqoqERHR2toaCxbtgz/cTByAolECggIsLW1JWqmAIAMH4/+\nGwcHBzabffny5dbWVl1d3V27doGJAdqMxWKtWrUKIwYUFxc7ODiYmppmZmaKiYmtWbOGyJcP\nDw/H74dOp0dERPRmHoiHnZ2dlJTUrVu3urq6Fi1atGzZMuj7ff78OSS9cezYsd7qvNu3by8r\nKwP9ClJSUsHBwSNHjszIyMALd+Ohr68/Z86c3h46BoMBpcHodPq8efNA7pD35xIXF+f6FPB4\nwKOiovCcy46OjiNHjkCBb3l5OSTM0dPTU15erqys7OjouH37dux1EMbhtwTR2969ezFbWyaT\nWV1d7ejoiHGL3717t2HDBiDaQuwBV1VVPX36dGFhoaysLFjb8/g4AgICFAqlzwFtw4YNAQEB\n4JY2MTHR19eHuBYFBQULFizAU3RmzJiho6PDe88cDicpKen169diYmIrVqwYPN+AN/T19aGR\nytTUlMlkUiiUnp6eXzCq8+gd5BXY4TM0TzZoZneqPqt4M1viX6v2Rea27hvXGchOX7ZnTdGF\n4Q0pflugKGpmZmZmZoYJFOfn50Pb5OXlEQO7FStWREZGYnMAmUxevXo1+J1YnCImjSsqKjj/\nO6VaU1NDp9OHyvaRK2g02gDcCflHn33v2trar1+/fvDgQXt7u76+fp+rVQwzZ84EafOhdZIZ\nGERERH6BduVgYGNjExQUhDGgURQFfZSGhoZcnSrCw8N7CzuIOHjwYHZ29r59+6AOvoSEhEOH\nDn3//l1GRmblypWJiYnNzc0kEsnJyak33RxiNMO/gAtXcPVE1tfXJ5KmEQRpa2vbvHnzjBkz\niK0/vOHu7o4dqKyszM3N7fz581CQKiAgsHXrVg6HY2JioqWlxeFwIiIiYmNjW1paZs+efeDA\ngXHjxjU2Nm7cuBF0SGhoaJw9e5YrkQtFUUdHR+IQBKGsrAyiexYWFhYWFoLfHz58GBERAenR\nEHsteahXAly4cOHs2bM/fvyYNm3aoUOHemsUJbLvedjMCwkJRUdHNzQ0/Pz5U0VFBWSYiHsg\nk8m2trbAKLmlpYUoCQkgICBApVKhwLe2tjYyMpKYISbC0NBQVFQUP6nzVlQmqgcQ1Rbl5OSg\nfYqKioKkl5OTU09PT3R0dGNj46xZs3x9fb29vfHqY1zFot+9ewd1jAGFHRRFp0+fbmtri1mo\nkcnkAwcOtLe3p6Sk1NXVpaWlbdmyhQdnnx9cu3YNizIRBGEymcQiFYIg5eXlt2/fjo2NbWxs\nnD17tqenZ2/t8xi8vb2xjOnp06fv3r07GE5en9DQ0AgKCtqzZ09rayuJRFq9ejVk1/ZvBL/N\nEzvjvoxfnYFFdf96s7BGsOtE3fPbkQvve3vj/zUQb3quj4G6unpcXNyRI0c+ffqkoqKyY8cO\nrIBra2sbFxeHxW0oihL1vRQVFaGGA2lp6WGN6vDgcDiRkZEgBzB37tyAgACo4X/4IC0tPWBr\nDX6iuo8fPwYFBX358mXChAlbt24l2l33F21tbSUlJWPGjBk+7eghB8imHDp0KD8/X05Oztvb\nm7e6AddJF5qKMHR2dt68ebOoqCg1NRXLW2dnZ3t5eYHOg9ra2suXL8fHx8vJycnIyPBIk3h6\net6+fRtbHcnIyGCro4FBTk4O6m4ZO3bs8ePHq6urAU8La7sBYDAYT58+7Vdg9/37d4jy9eXL\nFzzBFIDJZHp5eWF3bFRUlK+vL/j93r17wMhr+/btmDVCUVGRk5MTIP/xfzJ49Pl0nDx5EhqI\ndHR0oCmZt/XZjRs3du3aBX5/8+aNvb090ToZYPLkySQSCc8i6nMVN3r0aLwCy+TJkwUEBPD5\nsxkzZnR2dp44cQJBECEhoQMHDnDNHAM3lMjISOh1oroNV8jKysbGxnp4eICHwsLCAh/EEEEk\n3RKbt6hU6tGjRzdt2gQuCJlMPnbsGPZFu7q64uVy4uPjg4KC3rx5IyYmtnbtWq4ObMSZgkql\nYlzh8PBwQ0PDV69eiYqKrlq1qrGxccmSJeDQ2dnZ9+7ds7CwGDNmjJ2dHW8DSQxdXV3v378n\nkUhTp06lUCiBgYH4/z5+/JjrgmTkyJG6urr8m+nl5OTg6+Dd3d179+598OABtBmTyXzw4EFp\naamqqqqZmdkgBcLs7e0BHVNWVhbUmoqKiqqqqpSVlQdgLjWE4DewK6Ez5Snc6PAkhNU9vG4B\n/yy4urrGx8dj5FkxMTGocxCDnp4eVxaIvr5+QEDA0aNHm5ubxcXF9+zZQ+xXV1BQcHNzwwi8\nKIoePHgQ/F5SUhIaGvr161c1NTVvb2/+O+n4x/nz57HRKiEh4dOnT8+fPx/yo/x6fP361dLS\nEoQjHz9+TE9Pf/LkCbFrhH8ATwJQy7O2tj579uyA591fDA0Njbi4OD43njx5MuSJvmjRIkD3\nfvv2bW1tLbFX9OPHj5mZmVhNICEhAb8Nm82+ffs2UWcBDw6HA/RFgeXXggULtm7dytU0ln/s\n3r3b1tYWO5PZs2cbGxuTyeTHjx+/f/++vb197969WBILoL+9WVy3DwsLg/oJ5syZg4+0oqOj\n8duXlZU9fvwYmrQqKyvz8/PxPbAcDufNmzfPnz9vbW1VU1MzNzfncX0UFBTmzZtH9B7A8OPH\nD+iVNWvWZGRkYE6j1tbWLi4uPFwWIOeDxsbGe/fucY2uJk6cuG3bthMnToC1q4SEBFf9Fx5Q\nVFTcu3evn58fiEgkJCQmTZqECcl2dXXt2bNn1qxZXOPF/fv35+bm4r19EQRRUlLi89CLFy/O\ny8srKyuTkJDos9VXRkZGUlISyy/KysoyGIzFixeLiYm5uLhgCyp7e3tNTU2wADA1NeXRYysu\nLk7kfkGYMWOGmpoavjth1apV2O9kMnnlypVYrzpeAx9BkO/fv4OoNzg4+P79+2VlZSBdOmvW\nrJ07dxLtQ96+fevi4gISk+PGjbt48SLxRlJRUYH80xAE6a/aImh24f1KV1eXlZUVltHU0dG5\nffs2n2NydnZ2YmIig8FYtGgR3q+FQqEAZS42m71x48aEhAQEQVAUXbt2LRTC/krwG9jZSQn/\nfdHna2C6EvX/R7is7sq/LnwRHjMs5qT/UKipqd27dy8kJKSsrExdXX3r1q0DSNWsW7du7dq1\n9fX1UlJSvektHT58ePbs2Y8fP6bRaEuWLAEDekVFhYmJCQhNXr16lZiY+PTp0yFfOkDL2YKC\ngufPn/OpsPXLkJ2dnZ6eLiQkZGFhwWdrZExMDD7J1NHRAaRiuW7MZrOvXr2amppKJpPt7e2J\non1FRUXbt2/HcgZ3795VVVX18fHBNmAwGCQSaWACvLzR2NjY3NysqKg4HDsnYv369Q8ePMCG\ny1mzZsXGxlIolKioKARBqqqqwsPDY2JiIPoR/lIzGAxon8RXIBw/fhyvXmZsbDz4NczcuXNT\nUlJiY2Pr6+tnzZrl5uYGFvRAMhdBkFWrVuE1DiUkJPghtjKZzHv37pWWlqqoqPzxxx9GRkaQ\nRVhHR4eNjU1ycjKY4CdOnIgFtV1dXXv37iVOUWlpaTykVRAEYTAYDg4OeJ70wYMHb9++zSMJ\nHRERsWvXrpSUFBRFR48eDVUJicEEmUyOjY3NyckB+Y85c+bw7oUnWq7xoLTu3LnTxMTk9evX\nI0eONDc3Jyrkd3V1RUREvHr1asSIEatXrzYwMIA28PT0NDQ0fPnypaioqKmpKaRiyGKxMjIy\nuAZ2VCr1ypUrhoaG2BVQVFTsV5whKCjITwtzWlraqlWrsMKLkpKSkJAQFv6mp6f//fffWMpN\nU1NzkJopGCgUyuXLl318fF68eCEsLAwss3vbmKhFANDZ2enh4QGs6hAE+fTpU1ZWFv5+QxCE\nxWK5u7tjl7GiomLDhg2TJk3Ky8vDtiGRSEA9HtNIkpKS2rVrV3+z78THH8gS4XHu3Dl8nTor\nKysmJoYfh6Tr1697eXmBbyo6Onrbtm1Y7hnDxYsXQVSHIAiHw4mJiZk7d+4Quun0C/yO+3vO\nrYqwjtDSNPPb5zFHU30U2vq58M1Zv31pTV1usfAn/D+OqVOnQivsAQBFUd6EIRRFraysIBWA\nc+fO4efLhoaGmJgY4i04SBC93iHGxr8dZ86c8fPzA89hYGBgTEwM8OThjYaGBugVHkqb+/fv\nP3fuHPg9MTGxtLQUkuR48uQJFMqkpqaCwK6qqmrbtm3Pnz8nkUiWlpYBAQFD5exCp9O9vLyA\nN7GsrOypU6e4suKGFjQa7cmTJ/fu3SsoKJg4caK5uTm+wKGgoHD06NGvX7/ivRCoVCpeoGfR\nokVQOx7vgKm7uxsvyIL8z2jbZ4Kkubn50KFD6enpZDLZyspq586dUFlq6tSpXGXkAFxdXZua\nmiIjI1tbWzU1NQMCAvo8Ynd3t7W1dU5ODvhz+vTpMTExxsbG0K0lJSX19u3b9+/fCwkJ4bUV\nDh48GBsbC+1TQEDg+vXr0Ivjxo3Dt42fO3cOmmWbmpp27NhBLE5hkJaWjo6OTkpK2r59OxTV\niYuL95YzmzlzJp9MJj09PWhG561eMW3aNGJrJACHw3FxccG4j3fv3j137tzSpUuhzTQ0NDCd\nc2KtmQd3RUJCIiMjIyYmpqysbMKECevWrRuMTS2dTg8ODgaLQEtLS09PT5AlOnLkCJ5OQ5S0\nPHXqFNdaKgCDwaiurh47duwA6gBKSkrx8fEsFqvPWqSmpibRFRMAWm8UFxcnJyfjK1RlZWWQ\nqXRRUVFcXJy7uzvGyt2+fbuamlpCQkJ+fv737981NTUHtkKbM2eOqakpxmogk8kYewEDUfim\noKAgMTHxwYMHKIpaWFhYWloS98xms/fu3cv53zYw8+bNI5PJkydPxoZu4KuLx/Pnz3/3wE7R\n6vzjEAG7nee3OP7/0ZlMkfIMST9jBcfF/8W/C5DyJ9dXBo/Zs2fjWUEUCqVfdvLDjYaGBvyI\n2dPTA1b/fWrNT5s2DVIr6I3c3djYCAlZHTlyxNXVlc1mx8TEvHjxgkajEWM1CoVSUVFx69at\nqKgojJd269YtQH8Gf7LZ7OvXr2dkZNBotKVLl86fP5+/D/0vHDp0CER1CILU1NS4urq+fv16\nwNKvRNTW1t68ebO1tXXOnDn4kFFQUHD58uU8oufAwMBly5aBmUBISCgwMBBP0DE3N9+6dWto\naGhPT4+AgICHhwfvAZEo9sbhcH78+NHnJ12/fv3jx4/B72FhYc3NzZAaCG+QSCQfHx8fHx/+\nG3GioqKwqA5BkNzc3Js3b65fvx4yrdHT0xMRESGmvYm8ckFBQVtbWyiwExQU/PvvvxkMBjbH\nQ5VEAN5mRxwOx9XVFbt/MCgqKqampg6yzI0gyI4dOz58+PDkyRMEQSgUiq+vL5PJ3LlzJ51O\n19XVtbOz41/88u3bt1BHy4kTJ4iBHR6rVq0C4rQAwI6Wx/bi4uJbt27l83x4Y8uWLTdv3gS/\n5+fn//jxA0TJfQ7OvWXLEAQ5c+aMv78/uA937Njx559/DuDE+GGY7du3LzMzE+/Oh4H4fUEa\n5kR1fRRFZ82alZmZee/ePWCDi80dWlpaXM3W+QSKojExMZcuXQJdsWvWrCE6oBBzJV+/fsXI\nAAkJCbt37yZ+6a2trdDnYrFY4GYTFRUNCgqysbFBuKn3DZXn+ADQP0uxnravyfdSC0q/95CE\n5CdMMTY3URzxW3tXDKulGIIgFAoFkLuxrlgiioqKYmNjGxoaZs6c6ezsPHyCyQiCHD9+HKrr\nHzt2DE+tHRJUV1cvXbq0rKwMQRAKhRIUFOTs7MyPUAh+4hk+ZGdnE5e5paWlfaoV9PT0AEI3\n+HP+/Pnx8fFcT7ioqIiYbCgsLPT19cUayhAEERISwrfXbdy4MSoqiiiHQSKRysvLwSC4fft2\nvKV0WFjYihUreJ82HtOnT4eGYAcHB2lp6SlTppibm/fLhpyIDx8+WFlZYUttFxcXzEwTshTj\nCiAk0dbWpq2tzZUe0NTUVFZWpqys3GcMwWKxpkyZgp/2aDRaUVERb1HQiooKSA1YQECgrKyM\nRqN9//49LCwMHN3T07O3nMH79++fPHlCpVLNzc2hQg/okWpra4O+Xy8vL2i1sGTJkrCwMDc3\nN8BOAw2wvYmQKyoqQhXMs2fPkkgkqP9OTk6Ow+HU1NRISEjs2LHD1dXV29sbrzSL7Q0fZQK8\nefPG39//y5cvYmJiRFVYBEGUlJTwtoG2rmOuAAAgAElEQVRfv36Nioqqra3V1NR0c3PDrjmV\nShUWFu6zMbaoqOjHjx+TJk3KyspydnbGhs2VK1dCWVgeSEpKglySRURE+jRxOXPmzNmzZxsa\nGiZPnnz06FGipWyf4HA4CQkJd+/eZTAYpqamTk5OeLYDsBTr7OwERnYAtbW1UIQhKChYUlIi\nLCy8ZMkS3uxkS0tLonUEgiDp6ekQ9+Py5ctcl1WfPn169uwZlUo1NTUdsEd5Z2dnUlJSXV1d\nYmIilnMlk8lz5sx5+fIlthmKok+ePNHX18dno+3s7EAoD2BlZYVX5ucTra2t4L6dOXNmn8M4\nD3z79s3AwACrL40aNQrSqKJQKJ8/f4aGETabraGhAcV2GGg02ps3b2RlZbOzs62srLC9UanU\n1NRUojHmEIJHe3L/Arvi9PiryZmVdY16AefsBV+9+T5VX3NQ+gLDjX97YAeEtTCpm7lz596+\nfXuQnTg8ADSTMX53n+TQhoaGzMxMISGhOXPmEJcXXV1doaGhqampAgICNjY2zs7O2CjGYDBe\nvnzZ2tqqra2trq7ep47du3fvMCU5FxcXHx+fQQYZPFBdXQ1l2kaNGvX582d+jsjhcJ48eVJS\nUjJhwgRDQ8PeknwdHR0aGhr4GVdSUvLmzZuQT5GkpKSUlFRRUZG4uLiHh0dSUlJvKRMQd379\n+hXKfUpJSRHLBzwwY8YMqPaBAZQ7B3PZrays8DkPBEHS09MBS4mfwC4rK6usrExFRUVHR2fA\n54DhwYMHbm5ugIpHJpNPnjxpZ2fH1aUbQ0FBAbEw/enTJw6Ho6+vj+VQxcTEHj9+TIztoqKi\n9uzZA4jkVCr10qVL+L31FtgdOnQIilc8PT39/PwQBPn8+fO3b9/U1dWxpvLPnz/HxsY2NTXN\nnDnT0dGRQqG4uLjgU2ji4uJZWVkIgixYsACf74F6SC9duiQjI2Nubg7pn4WEhGCSjdgRjY2N\niew3PJYvX3727Fnwe2pq6tq1azEG5OTJk5OTk8Filc/ADsOsWbOgUOz58+fEnlA2m028aT9/\n/jx//nz8kKusrAyuTJ9gMpkD5p4GBwfjnZ0dHR3xBnFcAzuui8APHz7IyMgUFRVZWlpiT42b\nm5ugoCB2qWVlZe/fv891jbFlyxaIuoDZlHd3d2O5g9jY2F27dgEupoiISFxcHCT7DMBms+Pi\n4h49ekQikczNzVesWNHbuMdgMKKjo9+8eSMhIeHo6DhmzJg//vgDNJKjKLp161ZfX1/IK7ax\nsdHX1zc5ORnQTvz8/PobmWVlZTk5OYF9SkpKxsbGDiAix/Dly5fTp0+XlZWpqqra2touW7YM\n2iA7O5vYKLN7927AGOaKyMhIkLR79OjRyZMnS0pKNDQ0fHx8eNvWDR5DEthxzq6bvzH2Xz1T\nG0ua9rc7Sk+/p+camnZ+o0C/Hbp/Ef7tgR1xTXbp0iXIoGZowWAwEhMTy8vL1dTULCwseASR\nycnJHh4egJMnIyMTFxcHrSzd3d3x+Sdvb2+8+ujPnz+zsrJoNJqxsbGQkBCPwK6hoUFXVxfP\nYNu/fz9Xkyg82Gz2lStXAB3K2tqah6cQhK6urqVLl+JH+eFIW168eHHHjh1gNhUQELhy5QqK\nohBBm0Qi1dbWAms4hFv2BWDOnDlAXvXFixfEEmRVVRX/8nuHDx/m0UwaFRU1GP1eNTU1aNl6\n5swZ8JF5B3YsFmvt2rWPHj0Cf+ro6CQkJAxenae0tPThw4csFktPTy82NjYhIYHBYEyfPj04\nOJhriwCDwQD2MNgr6urqz58/P3bsGMSr8/DwwNrMARobG6dMmYJv6VBQUMjJycGmwN4Cu5qa\nGgMDA+y6jRo16smTJ1xn65ycHCsrK+wQCxYsSEhIaGpqWrt2LZDMlZaWDgsLA10CBQUFu3fv\nzsnJERcXV1ZWxouiIwhibW0dFRX1/Pnz48ePFxYWkkikiRMnenh4EClE+/fvxyIJrpgwYUJi\nYiKocd+8edPDwwMa6A4dOgTSh/0N7GRkZKD+jytXruC5lXfu3AHszPHjx/v6+kKVUw8PD4yr\njvyPF86cOXP4PPoA0NPTM2HCBHzQhqLo+/fvsUwY18Cuu7t76tSp+AdHQUHh7du3IFr9+fPn\n7du3m5ubdXR0amtr8/LyWCyWtLS0goKChYVFb6uUbdu2QYatK1euXL169c6dOz9+/Dhy5Eg3\nNzdXV9epU6fi71gVFRXoPgGA7oGtW7fu3r2bz2vS3d2dmpra2Niora09adIkAQEBKLAbJNhs\ntra2Nn6xOnbs2Ldv3w5JcoROp6urq+O/LITbs//06VM7Ozts4UR0NsfftyNHjqRQKN3d3b9A\noJhHYMfvwqX0ypKNsa+MNoYEbV6upSqPIIi4auBR94bd572sphs98BhG3/R/NIjUBK5khSEE\nhUIhrkKI6Ozs9PLywm6+2tpaLy8vvHd7dXU1PqpDEOT8+fM+Pj5gOXj//v2NGzeCYG7s2LF3\n794ltiBhSE9Ph/oS4uPj+wzs9uzZgy2SEhMT9+3b5+3tzc/nWrx4Mcb2FRYWDg4OXrJkSZ9v\n7C8cHR2nTZuWmpoqKCi4YsWKyZMn5+XlQYkTNTU1FEWxsExeXh6vMg8wdepUTGheWVkZ2oOC\nggJ4O4PBYLFYfQZDO3fubGxsvHr1KpPJhArBCIIUFRUNJrCTlZWFAjs+O74vXryIRXUIgmRl\nZU2fPv3+/fv9lfaFMH78eHAX7d69GxNnyc3NXbNmDWj3g7anUCjh4eHu7u4g+JCVlQVXvqam\nBtqSKBJbWloKNepWVVW1tbXxTj8kJiYeP368s7Nz9OjRwsLCzc3NLS0tZmZmO3bsIKogHTly\nBH+I58+fp6enL1q0KDExsaKiorW1VV1dHcu+a2pqJiUlAVFZX19faMIGq9kFCxYQlZIg8Eiy\nkkikvXv3uru7g4N2d3fv3LmTuHzdv39/c3PzADq0lJWV8Y8DiqJ4Q9XXr1+vX78ePAslJSWu\nrq4PHjzAZ+Kh75fD4dy4cWNYA7u2tjYoCOBwOLW1td++fQM6unp6eninRwAqlerv779582bw\n3lGjRoWGhmI5SElJSTc3NzabbW9vj5UsxcXFU1JSeOSeraysLl26hP8uDAwMVq9eDW7slpaW\nEydOtLa2QndsWVlZR0cHtNvm5ubz58/jXwkLC/vzzz9FREQePnz47NkzoLrQW0MulUrl2nAw\nVKiuroZKENXV1QUFBYNh42Gg0WiHDh2CdKfDw8ONjIzwybbo6Gj8mAw9AkpKSn0+Zb8e/NZl\nDm9LldDYlRa2aeqEf1GeBYTVd5176Tdl9NMDfajm/F8GcerCOwP+YnA4nGvXri1fvtzKygoM\nx/j/fvz4Ea9BRaQUMBgMEAi2trZ6e3tjKbrq6mreHeNE6Yo+bZfq6uogKsaJEyf6lMBAECQ6\nOhrfw9XZ2dmvUma/MHXq1G3btm3ZsgXkh5SUlPDEWyEhIYyCBrBnzx58jUNfX//169epqalY\nTCwvL4/39hAQEAByhi4uLuPGjRs3bpy1tXV5eXlTU1NFRQVXtQtAeayoqCgqKsKLLQHwKSgK\nQHSd2rt3L/78dXV1+dS4IRL5GxoauGriDwyQC19VVRXXzASCIAYGBllZWdeuXbtx48br169B\nHZmoTEFkxhD5SaKiorwpfS9fvnRzc/v06VNXV1dDQwMIBBEE+fHjx/bt24mixMQaOlbkUlJS\nAuKu0Abg6yA2BvFfEyBGQgsWLJg/f/6yZcuSk5O9vLywg1ZVVXGNAtls9smTJ7GWFP5x5MgR\nfEnUxcUFPzbGx8fjZ1Mmkwn1iwxAIgeP7u7uK1euHDlyJD4+HipY9wYxMTFIiV1ISKi2ttbc\n3PzatWspKSm+vr5mZmb4B7OkpMTc3Nzd3b27u3vGjBnBwcFv3rwhiu4+ePAAT0RramqCemsg\n6OvrHzt2DFj1jBgx4ujRo52dnVCuFL9KBxAVFSWuDOvr66GRhMFgNDQ07Nu3z9HRMSoqKjQ0\n1NjYGL8w+5UYMWIEsS4MNa4NBo6OjsTs/uvXr8vLy4FXMsLNYWX27NljxoyhUqmGhoZXr179\nZdYA/IPfjF3CT7rG1lXE120dVfx2JQ3pKf1HYf/+/ZmZmVgMZGFhwbXuXlpaevjw4fz8/DFj\nxnh4eAwmrcIDoaGhmHYlRJZCEIRCoeBv0PHjx0PmAYqKikDb/ePHj1Ce+e3bt3huB4QFCxZQ\nqVR8MMfbyQBBkNraWmhh1NnZ2dLS0mfbI1Hxi5gkGz74+PgsWLDg2bNnIiIiNjY2UMXN0tIy\nMTExLi6ura1NV1fXyckJMslhsVjbt2+fO3duRkYGlUq1tbXV0NDANyq+evXK2NgYzK9jx449\ncuTI169fa2trp06damtri5UnKBSKpKTkzp07U1NTscuurKzMT+aSxWIdO3bswoULHR0dU6ZM\nCQwMBGIWubm5aWlpCxcubGtrGzVq1Ny5c93c3Phk7HEtz2VlZfX09PRpE8QPiBMzDwKGmJiY\nkZER/hUXF5dbt269f/8v+xx1dXUPDw/oXQoKCvb29vh2hLVr165bt+7t27cSEhIuLi7E7ofL\nly/jQxMI8fHxENtdWVkZ4pzxmdHU09Pbt2+fv79/d3e3gICAm5sb/w03dnZ2GRkZWE3T3Nz8\nwoULXClokpKSkPEGHo8fP8a8s4qKis6dO1dTUzN58mQvLy+8IQQeCxcufPz48c2bNzs6OvT0\n9CDrLeK6AqIxLFq0COoO6XNUwdDe3r548WKsUyQqKurevXt9trVVVlYqKSlhQxOZTD5y5Mjp\n06fx3/KzZ8/S0tJACofJZDo5OX3+/BlBEBaL9e7du3HjxnGVZyOOUUR3OwguLi5r166tq6sb\nM2YMmUwmdiSgKLpo0SK8xtDmzZuJD6yCgsKIESPwloCioqJfvnzBtJzAye/Zs2dYGUS9QUJC\nQlNTE6ImY4/qkEBOTg5SHU9ISAAOJZKSkqGhobNnz8b3iCAIsmXLFmgM+d3At9wJldz2hcty\nramwhUztRxrg/xrU1dUzMzOvXr1aX1+vo6NjbW1NXH80NTUtWbIECEdVVVW5uroKCgrykC8a\nGDgcDm8pfycnJ3xKQEREJCgoaOPGjWAdLCoqevr0aXDyxPKTiIgIjxl63LhxISEhPj4+ICIx\nMjLCq7z29hYKhYJfgktKSvIjuEBkLw2H9wYPzJs3jytDGWDOnDlcq0UdHR1//fXXzZs3mUzm\n7NmzT548CbIXDAbj3r17+C2xrEl1dfXatWux8Pf69evXrl3DD9waGhopKSnnzp0DfXkbN27k\np/3+zJkz2H3y/v17BweHly9fvnnzZt26ddgE5uDgwE9ZHKC+vp6o8IQgCI1GGyr95MWLF+Nl\nQSQkJPqlvyMkJPTw4cNbt26lpqY2NzdPnjy5pKSEWOsJCgqaMmVKWlqakJCQmZnZ8ePHQY6t\nvr5+586dYmJikIYt73YiYnrpwIEDb968wYp9ZmZmRNHd3uDl5eXk5FRRUSEvL9+bCypXoCga\nHh7u6elZXFw8fvz43vR9EAQRExNzdXWFynYYsDXhp0+fTExMQFgG1A0fP37cmw20hoYGUWwM\nwNDQEE+hQxAEmkqtrKz+/PPPs2fPgmYIT09PjIZbVlb24MEDJpNpaGjItWZ35swZfP9vXl5e\nTEwMb6PPlpaWJUuW4LOqBw8edHR0xKtkA3h7e69cuXLTpk1FRUUgqsOQlJTEdTHDj7guEWQy\nGcsg6uvrQwPm1KlT8W03urq6XJ9ZUFjYtGkTFrK3tbUR5dYrKyuHahnWXzg5OW3fvh3/ylCp\nfgK4uLikpaVhAymFQsHWVz9//ly/fn1qaurTp09BWy4wzv7NozqE/+aJKwvHrs2kPq8qnCMp\nhKLoxpKmsPFind8fT5lgSp8R8f3Fb2o+8W9vnuAHly5dgrRzdHV1IY+mQeLdu3dnzpwhKlSZ\nm5sXFBRQKBRbW9vNmzcTaz1VVVUZGRmCgoJGRkZYtozD4djY2ODdh7Zs2fLXX3/xPof29vZP\nnz5JSUmNGzeOn3OOior666+/wFUVEBCIjIzkh8zR3Ny8cOFCbPwdPXp0RkbGgPv8+QGZTAZT\n6WButq1bt+INl1RVVTMyMigUCp1OHzduHJ+31oULF3i0mLS1tRUWFoqKimpoaPDItM2fPx/S\nvAgLCztx4gSUTHrx4gW+gllZWZmVlUWhUIyNjSHy0/3799euXUs8kJeX1/79+/v4SPyhqanJ\nzc0N1J7k5OTCwsIGwHo5cuRISEgI+J1EIkVFRf3xxx8MBiM/P7+rq2v69On4sPj27dvu7u74\nt2tpaeXl5eGbJ6KioniQ0E+cOEGk2VVXV8fFxTU2Ns6YMWPp0qXD1z4/MLBYrMuXL9+/f7+p\nqSk/Px+7LalUalpampaWlrCw8PLlyyFurr+/P1ffMN7gcDh//fUXoDeRyeQNGzYcOHCAuFlD\nQwNotcbygvi+XRKJBAQmoXc5OzuDdiUMq1at4r3ujYuLw9MkEATR0dEREBDozYTN3t7eyckJ\nSkOSSKSqqiriMMtgMCwsLDAlESqVmpyc3F+j6vj4+N27d4Nairm5eV1dHUSBAN8R1/e+f//e\n3d2dWO7AIC8vjxeX7g3E5om3b99++vRJXl5eX19/YC35ra2tBgYG+JA6JiZmaIl9SUlJoaGh\n375909LSyszMxOcvkf9pORcTE7O3t1+9ejVvT5HfpHmC38COXv9Ac5x1NXn82vWrIk7uNzh8\ncmHz+wtnr3xjyV4rL1oqy4tr8m9EbEfsbYHbfW83UJBIJLCIYTAYAw7sSkpKIB7YyJEj+V+s\n94nm5uYXL14Qq0IkEsnExGRgwnIMBqOoqKiuro5MJisqKk6cOJFH1YkfgLCjoaGBSqUqKSmB\nfFVzc/OPHz9IJJKMjExvi36u51ZWVtbW1jZixAgVFZVhFQ5EEARFUXANe3p6BnwR7t+/DxW5\n5s+fDzKUmZmZPHRK8VBXVyd6igOUlZV9/PgRnJ64uPjs2bN7+97T09OhVNO0adPwszjA7Nmz\nMS26kpKSoqIisAGNRps3bx6efFZfXw/V/VEUnThxoqqqKhjouepZDAB0Op3JZIqIiAxgb11d\nXampqfjPKCQkNG/evDdv3oCrQaFQZs6cKSoqWlJS0tLSwmazofqyiIiIubk5k8nEvkcOh/Pu\n3TvQh4GiqISERFNTE5vNRlF03Lhxfbra/85gsVi5ubk/fvxgsVgiIiJTpkwBBUEymfzkyROo\nU0pVVXXAal5dXV2A789/Y3hqaiq+aEsikUxNTaFUU0FBAZDhxKCmpsZ7wi4tLYUKdoKCgrzJ\neSYmJs+fP8efjLS0dG9SHSwWq6ysrKWlRUhISF5evq2tjc1mS0pK9kvklslktre3U6lUGo32\n6NEjKCs8Y8YMopcrh8OpqqqqqKjg3c6sra3dG0OXTqf//PkTRVEpKSkajSYoKIitbXJzc7GA\nTFxcHLg18P9xMACqdHNzM5VKVVFRkZeX7+7uLigoqK+vJ5PJ8vLy6urqQ6WflZyc3BsFnEwm\nGxgY8GbWCgoKgkCQT+LmgGHNsHYWde713xy+0fL5wUpDDdL/VBJRlKy5cGXSxyb+9/Dr4UP3\nQTjIf3/++/Pfn//+/Pfnvz///fnvz3/Gz46OHTwin/4JFCMIQq8vLyz9ziTTxqpOHis2vLmQ\nweOXZeyamppaW1uFhIQGVv4vKioqKSkB38WoUaPmzZs3hGyG58+fQ6sxaWnpSZMmiYqK9vT0\nvHr1CnT9oCiqpqbWW8oHoK2tLTMzExBoSCSSlpaWgoKCoKAgh8MZTMn7+/fvUNVAVFQUr/7K\nYrGePHmC1xrQ1NTEiyP8GzGYjB2LxWpqakJRtKSk5MePH9jrVCrV2NgYv7pta2sDkv3YAyss\nLNzV1YUdceTIkXp6elyXrcQ1qICAQG8kThaL9fbtW3AygoKCWlpacnJydXV1b968wQ6trKyM\nSR5++/YNMjMQFBSEKlAdHR0fPnz4+fOngIDAuHHj1NXVURSFvnR+VsODQWtra2VlJZPJHD16\nNJHSRKfT8TRzBEGgdh/eGDVqlL6+PpVKxWfs/pNAp9OrqqoYDMbo0aNJJBLUdCwhITF//nyQ\nsWtvb3/27Bn2qI4ZM2ZYJUggcDichw8fQmPRokWLiH2LnZ2dpaWlHR0dI0aMmDBhAj8ZwaKi\nIqynYeTIkd3d3TzuECqVCrqVORxOZ2cniUTis3cyIyMD331MIpEWLlzY0dFBIpHExcX5z0vV\n1dUB+UMArsnCyspKHgXWyZMn827fYbFYKSkp+NSUsLCwubk5yBR+/PgRagoB4ySFQlFRUSGK\nAPOPlpYWqOeXTCabm5v3aRrJD9hsdmFhYVVVFTDShe6lPued3yRj1+/A7p+FX8Ox279//5Ej\nR8CArqure+3aNf4LBxg+f/6cl5cnIyOjq6vbZ766qqoqNDT0y5cvEyZM8PLy4s1aI8qUX7x4\nEUy9kNAliqIpKSm9GW8jCGJubo43F6JSqXl5ecrKykTnCQaDceHChcePH4PuziVLlvB46q5e\nvQp5HY4dOzY3Nxf7k8jTGj9+PH7YGgzYbPbly5cTExOZTKaRkdH69ev7VZ4eMMcuJydn3bp1\nQERNWlp69OjRoCIvJycXHh4OdWBAX6K8vPzr16+rqqqioqJqamqmTZvm7u4OVW3Al0KlUolq\ncxISEoBI193dfeLEiTt37rBYrIULF+7Zswd8lqqqqsbGRlVVVYww9/Hjxxs3brS3t+vr61tY\nWGDf5tOnTyHdxN50UCGsXLkyLS0N/8pff/1FlAGDwOFwqqqqqFQqKAR3dHR8+fKFa6yGx5Mn\nT1auXImFXFOmTElJSYFaN/bs2YPJKKAoGhoaunXrVn4UNAQFBcPCwphMZnp6uqCg4NKlS4n+\nFv9o5OXlWVlZYSVFbW1taBkmJyeXn5+PCRR3dHQkJCQAQ3cLC4vh85jhirCwMGDsAbBmzRpI\nfXowKCoqys/Pl5aWXrBgwdGjR4HZA4CUlFRXVxdgVomIiFy4cGEAFHsGg0F8WkeOHAlCPQUF\nhStXrvBf13779u3ly5ebm5vnzZu3du1a4rBGtEUBQFHU3d394MGDvL+7wsJCImWopqYGPFmn\nTp06fPhwb+8NDg7m2iDMD16/fv3HH39AJ1xdXT2EfpUcDofBYERGRuLvJSEhoefPn/MOSf9h\nHDsEQeg1n17mfGzo4BKH9svO8lfiFwR2ubm50M2trKx89+5dSPFoCMG/lj1AfX29qakpxnUw\nNzefN2/e169fJ0yYcOHCBaiv/vDhw72J0rHZbDk5OSghcf36dSsrK2Jg5+npiW9U5G01UV5e\nPn/+fPwkumrVqpCQkMLCwqampsmTJ8fExECacNLS0gUFBb3tsF8IDAzEt7Zh5jx8YmCBHZvN\n1tHRAUJlAOPGjYuPj6fT6RMnTiSOUOPGjYPEUZctW1ZUVEQmky0tLTdu3Ih/C5vNPnz4cGRk\nZFdXl6qqan19PaRZ6OrqCmzIfXx8oqOjsdcNDQ0htbA+0dPTY2FhgY/Cg4KC1qxZA37v7OzM\nzs5ms9kzZswYNWoU/o1aWlqgExzDtm3bgM5te3t7c3OznJwcNK8UFBSsX78edBrq6ura2Ngc\nPnwY5JtNTEwiIyOJosQA+vr6EI3VwcEBa5UA4HA4d+7cAVawy5Ytmz179o4dO2JjY7ENVFRU\nIGIWBohuFRoaSuwr/OeCaCUHAdw2VCr106dPr1+/lpWV7S15/Gtw586dO3fudHd3L1q0yNHR\ncTDN158/fz5x4kRxcbGSktLmzZvxXcMMBmP//v1xcXFdXV0zZ848efLk+PHjMzIyuru7gc7Z\nAA7H4XBUVVWJwmkYNDU18Yp3g0RMTMzOnTvxr6AoCox0+ZGorKmpgaiiFAqlqakJjFQ/fvzQ\n09PrzWJ16tSp6enpAzvt9vb26dOn48e02bNnQ+oBQwIWi+Xr6xsbG8tkMqWlpY8fPw7VIoj4\nhwV2X2/umLkyqLGHe6Xpt037/YLA7tSpU3ijLYC5c+cSW1CHCkTbKKILCoTOzs47d+7U1NSo\nqqoePny4vLwcvE6j0SB1KN5zEtFUKjU1dcGCBVBgR3RbB9pIPDKRly9f3r17Nyjyamtrnzt3\nbuPGjSDxIygoyGQyoXsM7185GDAYjPHjx0OiWXl5eXx6KiADDewqKyuBPhweb9++bWtrA0J3\nc+fOXbFiBbhiHA5HQUGBR93H2dk5ICAA+/PMmTP4FkIBAQH8iU2ZMiU5OVlQUJDBYCgrK0NJ\nqdevX/fXEKKhoSE4OPjFixeioqJr1qzBfNU+fPiwevVqEL1JSEhERERgIo6ZmZlQAy+Kovfv\n39fS0tq2bVt8fDyHw5GVlQ0ODsbSHgwGY+7cuZWVldhbIJcOd3f33mRdiWExjUarqKjgXbuh\n0+lHjx69detWd3e3kZHRgQMHtmzZws9sJCMj05spMB4MBqOgoIDBYEydOrW3kPR3wOTJkzEj\nXQAdHR3Msk9UVPT+/fsaGhp4P83p06ffvn17+Arrvwbfv383MDDAeCxcbd1B0Q10aHG1FOsv\neCe6EAT5/PlzvxRteIBOpy9atAjrgh8xYkRaWlq/Hv/169fj5cE9PT3PnDmDdcUWFxcHBAQU\nFRWRSCRI+YV/b1+uSEtL8/DwALGdiopKXFzcIG1seAAIjMvJyfFT6v1NAjt+lzLe68+0khX2\nhx0znKT42zrD/lvAtVszMzOzurqa2II0JMCTsQCInkgQhIWFV61ahSDIsWPHsKgOIWh+ysvL\n816ReHh44OdOXV1drs19xDMEbjw8OltXr169ePHiDx8+SEhIAEcHrJxHJCtoaWlhSsv9RUFB\nQXl5+fjx4ydNmoQgyOvXr4lSqHV1dfwHdgODsLAw5DmIomheXt769etBTvTatWsZGRmgOIii\nqJmZGQ8FnIsXL+7duxcrxd68ef+Z6tgAACAASURBVBP/XyaTSaFQzMzMBAUFDQ0Nly1bBrIp\ndDqdWGrk4THVG0aPHh0UFET0it24cSOWk2tsbPTw8MjLywOZxfz8fGgnkpKSs2bNOnr0KKY6\nW1NT4+rq+vLlSzk5OTabferUKXxUhyAIxGhMTU3tLbCTlpbG3/YIgtDpdG1tbQEBgc7OTk1N\nTV9fX6K6BHAcwt9pcXFxycnJeXl5p06d4sGlq62t7dNpvqSkZPXq1UBgYsyYMREREURDgt8E\nY8eOhQK7Xbt2tbe3Z2dnS0hI2NnZjRkzJi0tDe+Snpube+LEiaGSs/l34dKlS3h2cnd3d0RE\nRHBwMH4bEok0tH33f/755+jRo+Pi4r5+/UqlUiELSkFBwSH0OaDRaA8ePIiMjCwoKBg7dqy7\nuzuPyk9CQsLp06dBhX3fvn0zZsxAECQkJERFRSUlJQU4ent6euLfoqamBgoCnz59MjAwwD8y\ng7zbjY2N3759m5ubS6PRpk+fPoRFWCJAn/Lw7X84wG9g97i5W8vv7gH3ITBo+w+DnZ3dwYMH\nib3ifHInORxOWFhYREREQ0PDtGnTjh49yoPiBqCuDjvz8q94RFQqmj17dmdnZ11dnba29t69\ne6F6GQTgIXj9+vXOzk49PT3gHVlSUoKiqKSkJFZ8mTBhAqSWqaio2KdeiaSkJEZOIvrhYFBQ\nUEhJSeFa6CkqKsrKyhITE1u0aBExBcJms9evX4+FR3Z2dgcOHIDUyBAEodFov8D2TVJS0tzc\n/P79+9gr5ubmwcHB+LHv9u3bWVlZdnZ2W7duDQgIaGpqApdFVlYWCuWZTGZraysW2BETh8Bq\nFj/1IggyatQoDQ0NvAObhITEgJUpIDQ2NuL3jCBIfX19cXEx6LoguhGoqqoiCALVU9rb2zMy\nMlatWrVlyxbMDbY38Jhf/fz8HB0doRexMLG2tvbdu3cZGRl90idIJJKZmZmZmVl3dzfm8IsQ\nfMEnTJjQZ/nP29sbexjr6urc3d3fvXvH9SPk5OSUl5dPnDjxVyqkcDiczMzMqqqqSZMm7dmz\nx87ODrszjY2N58+fDxYb+JOE9oAn4/5DAem2IAgyYHv7urq6kJCQ/Px8WVnZDRs2QAUNPFAU\nNTIyOnToENcipp2d3QAI3DwwcuRIyCyVK1JSUjw9PcFN/vLlSzs7u6dPn8rLy9NoNB8fHx8f\nH7BZb7e9urr6wYMH/fz8wKQwbdo0HkE/h8M5e/bs6dOngfiLg4PD/v37iaHbqFGjhlAUDKCk\npCQxMbGzs9PAwGD+/PlDu/NfCX4DO92RlM4xQ3k//cdATk4uLS1NX18fr2qopqbGZ9fP33//\njVVRs7Oz7e3tX7582ZsJD4Crq+vdu3cxVtOUKVN4W7XiQVyQgfiMz7eTSCQ3NzdMYb+oqMjS\n0hLk2LW0tC5cuADaOCQkJA4ePPjXX3+BnAqJRJKWlo6Pj7ezs+OzcYlHZUpeXp5rVBcSEnLs\n2DFwRFlZ2cTEROgriI6Oxie9rl+/TiKRoLEbRdHAwEB8DFpRUZGens5ms42MjJSVlfk5eT5x\n6tSp0aNHg1DG0tISWwTj8e3bt+Dg4Nu3b1+/fj0hIaGmpqazs1NWVnb69On4cX/s2LF4EebF\nixdDQRXCLaZHEOTMmTMODg4gTBw1atSZM2eGatoAxhJQiIldWAsLiwkTJmBNcyiKgu4ZrrfH\np0+f+ozqEARZsWJFV1dXenp6a2vrzJkz8f3dZmZmoMOpt1p5Y2NjQkICJs3f2dkZEBBw7949\nDodjamq6e/fukSNHMhiMly9fNjU1aWtr+/r6ysjIgIabxYsX0+l0jLFHoVAgPigRHR0dUP9B\nXV1dYWEhdAMwmUxnZ+eHDx+CP5cuXRoeHj4krX+80d3dbWdnh0nvOjg4pKSkREZGvn37lkQi\nSUlJFRcXQ8tLYnGQH5+YX4Da2to7d+60trbOnTu3v7LVxDU2D2cOHujs7LS2tsbu9vv37ycm\nJvIwRzl//jwU1dFoNDExMRsbGx6S18OKv//+G790aWlpuXXrFj/2M21tbRQKhUqluru7W1pa\n5ufnjx49WltbmwcFMzIyEmOSdHR0gKoFb/PcIcGTJ09Wr14NQs9Tp07t2LGD/5nxdwO/HLvC\nsD9m+ja++JymPea387vlgV/mPAE8l8BsOnHixKioKN6Zj87OTiqVSiaTTUxM8MRzBEFCQkIc\nHBx4H7enpycxMbGkpERFRcXa2ppCobS2ttbX1ysqKvLWSamrqzMwMMAEb+Xk5J48eTKwIZjN\nZuvq6uIb2mfNmvXgwQPsz4KCgl27duEbJLdv346t7XgjIiKCq+0YiqIXL14kuhZ+/vwZUP2w\nV4yMjPBWkkRXRwRBpk+fDl18qNn24cOHbm5ugNxGoVDCw8OJ1g5D4jwBYGxsTKxRAsjJyT19\n+hQT00lJSXFzcwNUHhqNtmrVKhcXF5D0QhCEwWDY2NhAKRMzMzN8BzSGjo6OrKys7u5uHR2d\nAU/GwsLCxFLs5s2br1y5gv0JdWbU1taePHny3bt3UlJS69evB8laf3//kydPYtuIioq+evUK\nOJv1dmgURUVFRZ2dnR0dHa2trUGTEIlE2r179+bNm/Fb1tTU7NmzB7IcwJ8tdst5eXnFx8dj\n/zI3N/f397e1tQXBsaCgoJ+fH2Qg9uHDh5SUFAqFYmlpCRYAJSUlDx8+ZLFYRGMrBoOhpKQE\nJfWfP38ORUtE7wo8BZbD4bx69aqqqkpdXb3PNH+/cPz48cDAQPwr586dO378OLY2IFojvHr1\nauXKlRi3jEQiXbt2DUvAV1VVBQcHf/r0SUFBwdvbW1NTcwjPlgc+fPhgZWWFLbn75CJDYLPZ\njo6OycnJ4M9Zs2bdunWLx8qnN47d5cuXoXZvU1NTSKkAD4i4hiCInZ0dPkPMZDLr6+ulpaV/\nWYeKtbU15LFhamp69OhRyPoM7zxRUlLy559/Zmdnk8lkMzOzoKAgPqmBmpqaEJlHSEiosrJy\nuJc0Ojo6eMIGiUR69+5df4uwvwnHjv+uWJa3utS5rzQjMwMFSTibEhkZOYjTG0b8SksxJpP5\n6dOnyMjIp0+fMhgMIyOj/fv3E3NveXl5W7du/fDhA4VCcXBwePXqFeTgdOzYMaIHDg8wmUwf\nHx/gOC4hIQFmIB7b//jxIzIysrS0dOLEie7u7ryzgzzw+fNnIk+iuLgYCw6ampo0NDTwtUUK\nhfLlyxcsG1dSUvLs2TNBQcFFixZBrl8cDuf06dPR0dGgQj169OjS0lJpaWk3Nzcoquvp6UlL\nS3v48OHVq1fxr2OKHgiCXLt2jevicunSpUDpA3vF09MT62/v6emZMmUKPqUnJiZWWFgIFQWG\nMLB79erVsmXLeivi47tNEQSpra09e/ZsVFQU2F5QUPDUqVPLly8H/2Uymebm5ljYKiQklJKS\ngl9sdHV1lZeXy8jIDAkRm2tgR6fT/f39k5KSGAyGiYnJ3r17+zwWg8Hw8fGJi4tjs9ny8vLB\nwcGGhoZc7zQM2PPi5OSEX1eQSKSnT5+CUOnJkyf+/v6lpaVjxozpzV792rVroFGjtbVVVVUV\nWgMYGxvjxVkEBARevHiB52uDQRazFHv06JGLiwtmbHXs2DFn5/8lOrVp0yZ8GnLWrFn379+H\npi43NzeIWIk180JJtRUrVoSGhg7VzGdnZwe1Xs6fPx8y/F26dCnmE5+ZmblkyRLo5ldQUIiJ\nidHS0mpoaNDX18emauKtOHywtLTELyxRFH369Gl/D/3s2TPQFWtkZAQCKQ6HU1NTM2rUKKg7\npLfALigoCDShY5g2bRqkm8h7+3379mEjWEhISFBQEJ1OFxMT8/PzA+Tp4QYkHQBAoVACAwPx\niy4ssGMymfr6+viGCWtra4gK0hsUFRUh8jeKot++fRtWp1omk0lkYiQkJGD9XnziNwns+C3F\nvti1IKy4CUGa0h/eIjZP/LaB3a8EmUz++++/sRTF1atXKysrb9++jR9tW1tb16xZU1tbiyAI\ng8GIiYmBltoCAgL9Le2fOXMGy8Q0NjZ6eXlNnjyZh86wtLQ0V+PtnJyc+/fvM5lMY2NjPT29\nPo9LfMxQFMWvIOvq6iCCOYPBaGhoAIHdtWvXtm7dCoISERGRy5cv4z84iqKbNm2CzBmJaGpq\n+uOPP6DIGAAfsOKpbBioVOqmTZtmzpx54MABMAHr6+sDuQ2A2tpaqFDb3NxcUVGBJcaGHPPm\nzcvIyIiLi7tw4QKxpQNS+5SSkkpISMCiwJ6enp07d1pYWIDLKyAgkJiYGBsbm5eXJy0tvW7d\nOnxh+sqVK76+vu3t7SQSycnJyd/ffziW/jQazc/PDy8E1ScoFEpwcPDRo0ebmppkZWXBszNx\n4sSJEydCXXUAwsLCpqam4Pd3797h/8Vms3Nzc9XV1UFzLviKW1payGQym82G2lbwxt4dHR1E\noWmocspkMnNycnprxGOz2du3b8c4pmw2e9++fUuXLsUTWI8dO0aj0W7fvg0WgUeOHCGGZUTC\na2JiImiX3rdvHz6DEh8fb2xsbGNjw/V8+guiyjqxUwQvVXP48GHikqaqqsrd3T0zM/Py5cv4\nBExXV9fZs2f7pSiEIAibze7u7sb6Bjo6Oq5fv15ZWamurr5kyZLepnxoZOBwOEVFRf0N7KZN\nm5aSkhIVFXXo0CEbGxstLa3t27dXV1ejKLpixYqTJ0/2ydwndtHxZkVv2LDhzp07GJtCU1MT\nSw8nJiZiRcnm5uYtW7aoqqryqOoOFTZv3pyTk/P48WP8i2AZZmJigtmIYygsLIQe2Pv37zMY\nDH66HKZPnw5lB2fOnDmsUR2CIAICAtLS0lCmcJjaH38B+B3NPcPejlBYlvm1oaeLTsSwnuI/\nBQwGA194QhDk5cuX0M394sULENVhqK2txfM2aDQa5EDcJzAKDnYakO4rP7h+/bq5uXloaGh4\nePjSpUvNzc2xAkRvUFJSggQ7jI2N8VOCoqIitKKVkJAAmbm2tjYfHx8sKOno6Ni8efMARHOO\nHTvGNapDEASfoiNGLXJycvHx8RoaGm5ubnl5eTdu3Hj27FlCQgK+40xcXBwaTchkMnGR1NPT\nc/78eWdnZz8/P6j1cgCYOHHigQMHLl68SBwBk5OT8Zeorq4O8pBtb2//+vUr9qeQkNCGDRvO\nnTvn5+eHj+rev3+/bds2cJux2eyYmBg+V9K/DDQaDRIXgPRIAWRkZCIjIzHaaG80r7i4OHwf\nD4vFwl/GkSNHJiUl4Rk8MjIyRDIlJASIcIt+8BtDM0R3dzekgScsLOzv719cXFxeXh4VFYUZ\n7+JBFJVta2vz9vY2MTHBqw8CDEY8AoKrqyueBS8mJka8/qCpHADq3MRQVlZWWVlJdDomds3z\nAJPJ9PX1VVJSUlRUNDIyys3NbWpq0tfX37lzZ1hYmJeXl5WVVUtLi7+/v5GR0eLFi8PDw7Eo\nE6oDIAjSm+EpHnQ6HT8Ie3h4nD9/vqysrKio6NixY46OjuDzcjica9eu4WWGuKKkpARilSgo\nKHDlmWAQFhZOTU09derUpk2bQkNDk5OTsfrv3bt38Vuy2ezeqAUAzc3NgYGB69at27t3LyZl\nOgBQKJT4+Pi0tDRo+QE8W4nbE1cC0GqKB6CiraSkZHh4eP9Pud+A8h329vbDJ6Ey3OArsOOw\nOwo6mTOOHZsz7rfgw/6eYDAYRPEIKB9LXNcymUy8lEBbW5uHh0e/nKmIUUt/sy9g6MQfNDs7\ne/Xq1bxzLSiKRkVFGRgYkEgkYFEFiZjTaDR/f39Mu05QUDAwMBCESiUlJVC1oqKigjh39gko\nSYMgyIgRI3R1dc+fP79y5UrsRWtra/w2ZDI5NjYWq+5JSUkZGBhg6/iWlpb4+PioqKiKigqI\nR7Vu3TooemCz2StXrtywYUNMTExISMiCBQt6I8n1C4aGhkQdxNLSUrzeh5iYGDTroyjKjyxq\namoqNOziK5i/J9auXYvn/4mIiNy9ezc/P9/ExAR7EZJamDRpEuB48V4ptba2fvr0Cf8KiqJn\nz57lfSXV1dV51GhERUWh7h8URQegWK6pqRkfHw/FIhwOByKGAgxhs4KOjk5cXNy8efMUFBRM\nTU3v3Lnj7OyM/7wKCgo7duzA/uRhsiQsLExk1PWrvTcoKOj8+fMgffD+/fvVq1cHBATglb3f\nvn27ZMmSkydPvn//PicnZ9++fZgOHMToNTAw0NHR4XGs+vr6VatWKSkpKSsr29raVlZWlpeX\np6Sk4LeBBnko0iJi//790Mi2Z88ePz8/bW1tIyMjqCkBA5VKXbVqla+vr729PaQ9Dm3JI1rq\n6OhYvHjx8ePH7927d+7cOQMDA/x1GwC0tLSI6xmuZB5NTU2oUW/hwoV86sKMHz8+Nzc3NDTU\nw8MjIiIiPz9/AP5j5eXlx44d2717d2JiIp8Bpb29/fXr1+3s7CwtLU+ePAkJmOPR3d196tQp\nW1tbe3v7hISE31DHl69SLIoKjKOSm/LqEYdhl4H452LEiBFaWlr4eV1CQgJKuc+bNw/zhwHQ\n1dWFhoavX79++/aNt0USHra2tniaPI1GI/YW8EZzczNRrgVBkDNnzjg7O/M4k7Fjx964cYNM\nJqMoypVeZm9vP3Xq1NTUVCCOgBUxiXkvGo0GOWLxA+IoQ6fTL126BEmrLFmy5OvXr8HBwV1d\nXaBjt7futuLiYhsbG0D+JZFIPj4+/v7+Dx484HA4ixcvXrduHbT948eP8eWJ7u7uw4cP4y03\nBgyIlQyAXy7TaDRPT0/86OPk5MSDdYGBKBM9GGn+XwMZGZnk5OSQkJDPnz+rqKh4e3urqalB\n29jb24OQvbm5efbs2VZWVjdu3JCSkpo9eza+jYaI9vb28vLyN2/eiIiIGBoajhgxQltb+/Xr\n16GhoZBomYCAgKys7Jw5c/bs2cNjlhIUFNy6dSteZtbJyYmYPYLQ2tra1tYGpSrnz5+/ePFi\nYn4OgpiY2NB6XRgaGkLGaNevX09KSiosLJSXl1+2bBk+Ge/n52dpaUks3ZiYmIwZM2b58uV3\n7tzBhJ01NDT6pFjgAT1NdXV1RCGV9+/f4/+MjIzcvXs3lUq1tLS8efPmpUuXWltb582bt379\net6LXi8vL+xxfvHixfLly6H+mwGAWFI4cOAAVrfZvn07i8WC+Jc88Mcff+AlgUgkkoWFRW8b\nx8XF4XvhW1tbg4ODecQr/MDT0xOf3tbT08Nso/GgUCgxMTHr168HJzB37lw+j9vT01NQUNDZ\n2WlpaTngWzo7O9vGxgaE4FFRUVDrCQ8Qb3uu8PT0xBbe6enpP3782Lhx48BOdZjA34COUu+F\nrpnuaRGi92zTH5r/1SfuDaGhoQ4ODiDjLSYmFh4eDolJSkpKRkRE/PnnnyBLZ2RktHv3biiw\nQ1EUhDhPnz49ePBgcXGxoqLizp07eyPQuLi41NTUnD9/nsFgjB07NjAwsL/rm1GjRomKihLJ\nnhwOp6ysrM8QU1hYmM1m99Y3MGnSJHzVBkBBQWHp0qV4HV0vL68BsChWrlwJKd6xWKzq6moi\njWbr1q3e3t4/f/7k3Uq2a9cuTKqKzWYHBga+fPnSxcWlt+3xpU+AwVdjAYi+GjNmzICivd27\ndysqKiYlJbFYrMWLF0N2ur3BwsLixIkTeB8LfiiV/QWDwWhsbOwzmuEHPT095eXl4uLi+Lkh\nNzc3PDy8trZ26tSpmzZtAiyf5cuXg/aR/fv329nZgZW0mprakiVLsDZDNTU1/FwLJG/+H3tf\nHghV+75/ZhjM2EURIpU3SmmRtBEqZUmJKG3I0qaityhlTYkWJZTK2iYqhCIqO5Fd2pC1CNmN\nMfP74/l+z/d8zhnTGMPb+/l1/WWOM+ecOTPnee7nvq/7upYvXw6IAeLi4jExMfLy8vz8/NjE\nkpiYGEgS//jxw9/fH1gqGRsbYyPjQ4cOSUtLx8XFkcnkNWvWILtekEhPT8/PzycSiW/fvgWc\nimnTpl29ehXpFKylpcU4sJs9e3ZQUNB484HwePzGjRtRyW+AefPmZWVlRUdHt7a2VlRUVFRU\n0Gi0DRs2gBZUDg6Oe/fupaSkVFVVTZs2TVdXd1RystiBhbHWJgRBZDK5p6cHRN6rVq1i8ufd\n2dmJahn58uXLoUOHODg4kBlulN8J3RuChISEBCpPhmLj3Lhxg/nAbvPmzZ8+fbpy5QqZTObj\n4ztz5szSpUtH2hlbex1LNRbg0KFD/Pz8Dx8+7O/vV1dXd3R0HKllZ/78+dnZ2XV1ddzc3MxU\nwCEI+vr167Zt28DjKSIiEhQUhAqzKBRKXV2dsLAw4/z06dOnkYnVhw8fWlhYYJ1+WAPQukNu\nuXTp0r59+yZAh4h5MNsVu3LlyobC3Np+CrfQFDE+9AQ89p/LOGEiu2LBnRwYGMjPz6dQKGQy\nubi4mJeX19DQEBUbkcnkz58/CwgIgFbqPXv2IBdhoN2surpaS0sLnn1xOJyfn99I0wMEQUND\nQ52dnVgSK5O4desWsm8ARkFBwS/DRH5+fqxX7C8xODgYGBj44sULHh6ejRs37tixgwX+PplM\nlpOTQ8YoBALh/fv34EthAXJycqgANyQkhMHY/fLlS9Sykkm7VRqNNjg4OJJ0QkZGxubNm5Fb\nJCQkEhIS6KbxWEBycrKTkxOSGqWtrX379m2WRe2RXbFIg0VJScmLFy9qamqyfKnp6ekHDx4E\nrKz169cHBgby8vK+e/dOT08PHrtlZWXT0tLgNC3WI9zc3NzW1vbLly9ycnJSUlKmpqZA1IZA\nINjZ2QUFBSGngWXLloG1VkdHx7Jly5CatKBpur6+XltbG1YaW7FixaNHjwBJDnTFFhcXJycn\nQxC0YcMGBmVHlFEvDBERkZycHOTUBfzmKRQKHo/X0NBAJomFhITevHkzfs7UzIObm5tEItHN\n/Y8FqLvEy8v76NEjExMT+DmVkpLq7OxEFtxlZGQKCgpGO9G2t7dj08AAsCKjqKioo6PjtWvX\n6DZP0O2KzcnJ2bRpExwaysrKolaDyP59JjE4ONjU1CQlJcV4MRweHo4SHzY2NtbS0hIVFV2+\nfPl45OmRcicsYPPmzRkZGfBLERGRwsJCuJKTlpZ26NAhMBQYGBhcu3ZtpPEKa30ZEBAAWx2O\nEdnZ2dgZ4evXr+Bi/mVdsaKioqLr9NiplfTfiMLCQqDLVVJScu3aNbDxwoUL0dHRqqqq8G5c\nXFzIlJK/v/+UKVOSk5NxONyGDRuActWjR4+Q8QqNRnNwcODn5x8pb0cgEFiO6iAIsrS0lJOT\nu3LlSlZWFrwR1UrJXnBzcx8+fHiMlQ4uLi5XV1ek1texY8dYjuogCBIVFUU9kIyLm5qamkgh\nDB4eHhcXF8anoFAoHh4eYWFhfX198+bNu3DhArYujNRoAJCUlGRXVAdBkI6OTnl5uY+PD7yu\nS01N9fHxYYsH1LVr1+BujMbGRgsLi4yMDOapBUi0trZaWVnB1IWkpCQ3NzcfH59Lly4hQ7Ha\n2tonT57Ayx6sC0JhYeFff/0FT9txcXHFxcUg21dWVobihsINsMLCwuHh4YcOHfr06RMHB4eJ\niYmzszMEQefOnUNOG5mZmU+fPoUtTKKioo4ePQqSOqDyhaR7wiguLh4pD9fe3p6dna2np/fp\n0ydnZ+fc3FwhISFbW9s1a9ZMnz5dQkLi7t27wNwJKPj/DlHd+OH06dP19fVAHGTSpEmXLl1a\nvHhxenp6UFBQXV2dgoKCnZ1ddnb2vn37wIApICBw9erVoaGhz58/CwkJMX9zREREVFVVsY8e\nBEEkEgmY5q1cuVJAQMDCwoKu3AldqKmpJSYmAuUmFRWVdevWaWtrI9MNyKkBBSqVmpiYCMRW\n9PX14QiSm5ubGbF0GRmZadOmwcRcfn7+2NhYUNpWUFB48uTJeIhI19bWenl5AfWAffv20e0K\nogsKhYKcfSAIam9vLykpAWTob9++WVlZwYNzXFychITESKa60tLSqMAOKOezBfLy8ihfpRkz\nZrDR540tYDawe/z48bhex38BTp06FRwcjN3e399/4sQJVJIfCX5+/nPnzqHU6rEJMBqNduLE\nCX19fRRHqq+v79atWxUVFeLi4hYWFixP/4BekJeXFx0dPTg4qK6ubmRkxNqhJhJWVlby8vLx\n8fFUKnX9+vXa2tpjOZq9vT0y1lRVVWVQ6YAgCIfD3b179+nTpzk5OYKCgtu3b//lCHLlyhW4\nzFpSUrJ9+/asrCxUTwa22PTL8tOoEBsbi+3me/nyJVsCOxS1oLe3NzU1FUtPZAbZ2dkobbyk\npCQfHx+UdSn0n+Ut7HSF2oLD4eBgurGxkcHOKioqOTk5ra2tAgICMKkO1d8KIZRo+vv7T548\nCZfqqFSqs7Pz5s2bsYQ8VMcGFn19fWZmZiC709/ff+3aNUFBQVCi3bZtGwP1stLS0lOnThUV\nFU2ZMsXW1hbVAMQCKioqMjMziUTi+vXrkavHoaGhsrKyvr4+ZWVlFgiyTIKXl/fu3bsNDQ0/\nf/6cOXMmuJMyMjJIpTcDA4OFCxcCUUxNTc2CgoJ58+YBrSIdHZ2goCBkBEYmk5OTkxsbG2fP\nng0qfc+ePUtLS+Pi4rK1tR0aGsK2ZAkICCCTNDgcjsnaIsDChQuRniIeHh6nT58Gpf/p06ej\nJOtgUCgUY2NjWD7wypUriYmJTN7n4eHhnTt3wm0fkpKSenp6N2/ehH+ZVVVVZ86cGa3ozC/R\n0NCwatUqkLVNSUmJjY19/fo1k+EjBwcHNzc3iqkJNyFlZGSgltyJiYnYwK61tXVgYMDFxWXr\n1q1wlnT9+vWMm2ZGBVFRUaSvEgj62XVwduF3J03/W5Cbm0s3qgNAZtqHh4c/fPgwMDCgqKjI\ngH+trq6OVQf88eNHZ2cn6EICLuNkMtnAwADu2Lhz505KSgoDEbtfQlVVlcEK8vcE8zQaFG7c\nuBEUFPT9+/dFixZ5eHjM82UWVAAAIABJREFUmzdv+/btQFSvq6tr+fLlhw8fxrYaoMDJyWll\nZWVlZcVk3R9VqG1tbU1PT0cVXg0NDS9evAhXNIDQ2ig/HCPQzRUxsHEbFbCNe6Pq8kYCe/PB\nFkVFRVRaDtl6qaen5+vrCycqcDgcqmEWiUWLFi1ZsgSpFYLdGZULl5SURMnawauppqYm1JKs\np6enqampvr4+MjKyp6dHTU3N2tqam5ubQSZJRERk+fLlGRkZqJpdeHj4LzPcbW1tJiYmIKb5\n+vWrs7MzHx8f3ZQhkwgMDHR1dQXfoJubW3R0NIhR6urqtm3bBuScREREAgMDkdaxbIeUlBRj\nEqGUlBQIdpubm21tbeFvITk52cPDA142d3V16enpwRJxurq606dPh6srt27dCggIWLBgwdat\nW5Ed6Fij4bHAyspq7dq1+fn5wsLCK1euHIlxGBUVhRSFrqqqunr1KpOWYpGRkchm3sbGxsbG\nRtRjSDc3OUZcvXoVWYtvaWm5ffu2o6MjM+/F4XDbt29HSi/Nnz8fZjJghwIUdef79+82Njbg\njgHWaW5u7s+fP5cuXbp9+3b2EuAsLS2XLVuWlpZGIpF0dHR+w5T5n8COPUC1ZaEAf/H19fU7\nd+4Ewj8SEhLBwcFqamp037Ju3TpLS8tbt24hN/Lz83Nzcx8/fhwk1VasWLFq1SpkH25fX5+P\nj8/vJkv2e+Lu3buwmlR2draJiUlmZqaoqKihoSG7hF7pAmssgVXJERMTi42N9fLyKikpkZSU\nPHDgACyfyxbQVQChmwTq6Oig0WijKtno6elVVFTAL4lEIjKNOjg4GBAQkJKSQiAQDAwM9uzZ\nwyB0XrFihZiYGFIIDWSRnZycXr16BVN7DQwMkJ3g/Pz8T5488fb2Li4unjx5so2NDVIVBQUO\nDo6IiAjQJUMikbZt2/bLWfzYsWMpKSkwj0pJSQmOyydPnkwgEJBfMRcX19u3b+FgMSUlJSMj\n48GDBytXrly1atWbN29QB8fhcGFhYcLCwig9IAiCsFuwSEpKQqlqR0REsBzYNTY2uru7wwFB\nV1eXo6MjYPgdPnwYFulsb2+3tbWtqKhg19pgLMjMzETF1snJyXBgd/HiRaSNMsrtg0ajnT59\nurKyMiYm5uTJk9nZ2UJCQubm5sDImI2YNm3aL0srlZWVqC10FePoAiuIA/ygkWAgxMgysGfB\nZsQZ4MyZM5ycnA8fPhwcHNTQ0PDy8oIHB3V1dREREWSBFWWwdPjwYTgOfv/+vZeXV3Z29vjJ\nGisoKEyMewpr+BPYsQeMmVjwMsve3h5+OJubm62srN6+fTtSef7cuXNkMjkiIgLe4uzs7Onp\nCadb0tLSysrKUO9CLjQhCKLRaGVlZT9+/JgzZw4zImfswtevXx88eNDZ2ammpqarq/tbdQwB\nIG8sBEE/fvxISkpi0J7CLqxduxYZrxOJRLre5AoKCgzcJMeIZcuWIWMvCIKsrKzgz97b2+vr\n65uYmNjS0gKCCRUVlcDAQCZ5Kvb29g0NDffu3aNSqWJiYr6+vsg32tvbw93QOTk5LS0tdH1Q\nAISEhCIiIo4cOVJVVcXFxWVmZgaUycTExDIzM+Pi4pqamubPn4+NeqWlpbFtxSMBGPExuTME\nQX/99dfr169DQkKam5uVlJT27t0LJ134+fkPHTqEtLu1t7dHCT2kp6cXFBQsWbIkMjJyzZo1\nKOL89OnTQfV/yZIlPDw8SAMSDQ0Nxhc2NDSE5a2PVvAcierqalQSuqKigkqlUqlUlDdAR0fH\nu3fvYBeQ8UBvb29dXZ24uDjjZQZ2Loe7BNrb25EWwACo9sG2trbu7m5ZWVmU2jzbQaFQSkpK\nuru7lZWV6cZY2OH6lz3mFAolLS2toaEByc8GUFRUbGtrQ/bnsrcIAIAtFqHsjxmDh4fHw8PD\nw8MD+y8REZHw8PAjR458/PiRQCBs374dqaQ4ODgI6+kA1NbWVlRUsNdD+V8E5r1ixx2DXT+p\nfAJEPDsjgAnrim1oaNDS0oKXsCCr3NraysvLa2ZmBkZkIEeCuuHPnj1jUP6n0WixsbHPnz/n\n4uIyNDTU1taWkZFhvHDfsmULrNPd3d1tZmYGUu7c3Nxubm4MlDtYBrYrtrCwcOPGjfDgYmpq\nynYyx9ihrq6OWhN7eHjY2toy+fbKysqKiopp06apqamBmYbJH1tvb6+VlRXotxAREfHz89PT\n0xv95Y8JPT09JiYmQA+Mk5PzxIkTSGkxCwsLrJw90t2SQqGEhYU9f/4ch8MZGBiYmZnx8fGh\nvGK7u7t//PghLS2NTMg1Njaihlpubu4vX778Uv+is7OTl5d3vG2FIAiqrq6urq6WkpJCkqKY\nAewVOzAw8PjxY6D5rKent3HjxhkzZqDoQTdv3gRZYezj7OTkdPToUfB3TEyMg4MDeLIWLFhw\n7969kZydh4aGTp48GRUVhc3+2o3S+R6JsrIyVEfz5MmTgZqJjIwMig71+vXr5cuXs70rFuDO\nnTuurq59fX14PH7nzp3nz58fqYke28vs6OgI1gPbtm3DOrTicP8xCYqJiVVUVLC2EB3JKxaL\nhoaGbdu2gdyhgIDAlStXsINAW1ubhoYG7NJBIpFSU1MZ+Bn29PRs3LgRrh3BnbwQBPHw8KSk\npBCJRA8Pj4KCAjExMSsrK/YKHwL09fWtXbsWXqsoKysnJCQwqUvMJNrb2/n4+FAjBplMnjZt\nGkp3/eXLl6OSwmYLfpOu2IkO7ELtdvG4B5mKoXNUAx15ey28VwRG2Yj/D8uVRul4fDM4Kbvk\nxwBeQnqWwQ7bdQvEIQj6lnNyr/d/pKlswh7qCtOXjZhIuZOWlhY/P7/CwkJRUVFra2tsFoFC\nocjIyKBG3tTU1Pnz56Ou+dKlS9nZ2QICAtu3b0eyr4AzOuoTKSoqwgGKsLBwamoqnORHKQVw\ncnKmp6ePagmFREZGxtOnT4eGhrS0tAwMDODt2MBuw4YNKBHR5ORkdskIsQsuLi6wizkEQRwc\nHC9fvoQFpYeGhjIzM9va2hYtWoQV1nd0dAwLCwN/r1y5Eoi2MPixkclkGo2GHODq6+s7Ojrk\n5eVHUjwZb9BotMLCwu/fvyspKSFbVkEOjO5b3r59C3JvJ06cQCYdDx8+7OXlhQrs6KK0tBT7\nXFRVVTGjqzwBcHJyunXrFhgSNTU1IyIimFdcgwM7bLIE9TggreilpaVRpsAxMTFIwmhHR0dZ\nWZmQkNDcuXMZ6AF5e3sjGdxwsKKurh4eHs5yhZRGo23btg1pUejt7W1lZQVBkJOTE5Lyoays\nnJ6ezs/PPx6BXWFh4YYNG5AUsbNnzzJIOBUWFjo4OFRUVHBzc+/cudPNzY1AILS3t8+ePRs1\n34mJiW3atOnGjRvgJQ6HA56KrF0nCOwaGxu/fPkiIyPD4LabmZkh7yofH9/bt2+xUXt9ff2V\nK1fev38vKyt74MABxkO3u7s7av28cOHC7u7u6dOnOzg4jHahwho4OTm5uLiCgoJqamqAfuSo\nNAvHApRqmLy8/OvXrydeev03Cewm8mPTPmXeedzUaYwJJWnUgaDjl34O/we188VZx8gK/l3W\nhxQleUtf3rvuun/gWthGab7O4k7iJH37vf/n6CDHO0E/HcaYMmWKj48Pgx04OTm3bNly9+5d\neMvcuXNRfjvDw8Pm5uYwrfXNmzd9fX3m5ubgJVCxQo4IIiIiT548SUhIKCsrk5CQMDc3RxK9\nUQwe0E/OWmAXGRl55MgR8Pfdu3cPHjx4+vTpkXam2zbIrsCuv7//3r17nz59kpOT27ZtG8uT\nlpOTU2VlJbhF3Nzcrq6ucFT3/fv3TZs2gfwrBweHs7Ozubl5S0uLjIwMLy9vYmIiHNVBEJSR\nkeHj4zPS3fjx44eDg8Pz58+pVOqqVasuXrwIoihpaWnWFEDYBRwOt3jxYux2BsZuYFJsb2+/\nc+cOcvv169ednZ2Z6dudMWMGHx8fsjgoKirKgn7heCA5ORkZqaSlpV2/fn3sxgMQBJ09e9bQ\n0BBe+djZ2cHsHF1dXaRMt7i4OOpLERYWZqYxCKVaQKPR7O3tjYyMxkgDwuFwt27dunr1akZG\nBolEMjU1hYlNrq6uBAIhOjp6YGBAQ0PD09Pzl21GLCM1NRVF/E9OTmYQ2C1atOjVq1e9vb08\nPDzwVQ0NDWGzGDdu3FixYsXKlStTU1N5eHgMDQ3pPhRMgkqlHjp0KCgoiEql8vLyurm57dq1\ni+6eSLU2CIJ6enqKiorWrFmD2k1aWtrX15fJs2N5dStWrPil+hLbQSKRmO81GR4efvr0aVVV\n1dSpU42NjcfSW+3n50ehUICh9sKFC69du/b7G+qMHybok7dkXD51I+v7T/RaFqAk7GShgAbU\n8n+GlcOD9UGFbepnfTfOEYYgaNZspeb8rU+D3m/0Wvy9sktIcdmyZXPoHuo3x9mzZzk4OB48\neADydp8/f7558yay/JeXl4dqVrpy5Qoc2EEQ5Ofnt3PnTtAwISgoyMfHp6CgICUl5ejoiE2t\nY2WWmBFewiI7OxvV2RQQEGBrazsSaU9KSgrF4GaXBltfX9+6detgqYibN2+mpKSwJlxHIpFi\nYmIqKyu/f/8+Z84cZEB8+vRpuKo+PDzs6enp5eVFpVJJJNKZM2dQLEYIgpDNayjY29s/f/4c\n/P3q1StLS0tQwWThgicGM2bMQJGUAebNmwfSdd+/f0fNssBkgpnAjpeX19fX99ChQ3Deuq2t\nbcmSJbdv3x4P94tRIScnB7UlOzubLYGdsrJyTk5ObGxsd3f38uXLkZRKb2/vzs5OQA+aPn36\n9evXWVuoYD3XZ82axRZyN4lEOn78OMp0FYIgbm5ud3d3lou8owJ2hsZ2IGGBGuumTJkyb948\nZJfbzJkzgXyMjo7OaG0Y6SIwMBBmdvb29h4/fnzevHl03Qt5eXlRmV3WRmYksAm/kQr3vwmG\nh4dNTEzg7IO/v39KSgrLyXsREZGIiIje3l4ymYxSj/r/EBO0VhaZt+XEGW/f8+jRAYKgrk+P\nPZP6Xc78R/Z7eKBWZvr0DXKw4ydugSA3+WcPBEElXYPCC4SG+7tavnf+LvRAJkChUFJTU588\neTJjxgx4Vuvv7z99+jRS4g4VD0EQhGJDNzY2ioqKysrKLly4sL+//+vXr8PDw3V1dYcOHUKx\nRyFMl764uDgL7OaWlpYdO3agZg4qlcrAbuTUqVPI5fvatWsZq8Exj5s3byIFwL58+cI8R54u\nFBUVNTQ0UHoWSPELCIJoNBoIZfr6+k6cOIFM+APw8/P//PkTe/Du7m6Ug/i7d++Q7o1Moqys\nLDk5eYwG3kyCm5v72rVrqKUzFxeXoKAgoATJyMig/jtp0iTmG/6NjIwyMjKQUeDPnz/37duH\nqmJTqdQJZolglwdjUbpGQUJCYv/+/SdOnEA1yggLC9+/f//9+/dv377Nzc0F6aKGhobnz58z\nbrRHASU1wsfHp66uPtqLDAkJUVVVnTVr1tatW0frhTASCgoKLl++HBISgpUeZB5IbV6AnJwc\nc3NzbNWbMYKCgmCRajk5uZCQEPZmi1HM1OHhYXhRhwJqZFZQUBhLphDA1tYWGQFPnjx569at\nYzzmeKCqqiosLOzp06dRUVHImlJDQ8OFCxdYOCCFQrlx48bGjRv19fXv3Lkz9hCZZbS3tyPt\nfP5J0CYQlMF6fX39iG+98Jbhwebjpptvvm2lUtr19fWDmnvovpHcXWVhZHgyuZ5Go1lsNtx9\n5u/NBgb6+vqbTC2C4kqQeyYmJq5GoLq6mjrOAOdlvE97e/tIvCUIgmxsbOA9P3z4gKporF69\nGv5vUVERAyLqli1bsKe+ePGinJwcLy+vtrZ2SUkJCx8QbsVAgpOT89u3b/AdwL6roKDA1tZ2\n69at165dGxwcZOG8SAwMDAwMDFCpVKwdqrGx8RgPjgXdRfZIgNNvGhoanz9/Rh6HrrVOWVkZ\n81cyMDCwYcMG+ERqamphYWFjv5+/RHNz8/37993c3JC/xkmTJtXX11Op1LCwMHgK4eLiiomJ\noY7wM6ALuiHL+/fvwX8bGxuNjIx4eHh4eXl37tz548ePcfqMKHz58gUZyeHx+LS0NObfzsw4\nwAw8PDzge6upqdnT08PMu3p6erZs2QLeJS4uDvS6RwWYZwYgJSXV3t4+2oOg7gCSnyAgIJCf\nnz/aA8J4/PgxdvFw4sSJ0R5naGiotLT03bt3nz59qq6uHhoaYvmSsMAq+QEJQCwGBwdPnjwp\nJSUlKCi4efPmmpoatlxAenr6+vXr58yZs3379gmY++iC8VNw7tw5OJiGPQBhrFq1ioUzotLq\ne/fuZfHSx4Dm5maYPTx37lzWptpRAVALRsI/HNg987Tc6/OSRqMxCOxq8hOOmhvtPHajd5hK\nGWwwMjJyuPL4W8/gwM/WV3e99fX171R1wDs/ffp0EQJVVVUT8Ll+iQMHDmBnMhh2dnbInZE/\n/SlTplRWVsL/YuwVvWHDhvG4eJThEoC7u/t4nAuL5uZmfX19Tk5OTk5OXV1duGEQhq2tLdtP\nGhoayuA+wwDGiMgtixcvpv7vHA+wYsUK5A7y8vIUCoX5K6Hb+b9kyZKBgQHkbp2dnRUVFX19\nfez5/P8LOFaA4e3tDf5VWVl54cKFixcvfvr0ifkDPnz4kK7MLA6H+/79O9gHVZM1MjJi5siN\njY3d3d2j/YAo5OXlaWpqTp48WUVF5cmTJywcYWhoqLKy8uPHj8PDwyy8PSsrC1WmP378OPNv\n//79e2VlJejUGS2wFNjw8HAWjgPjw4cPqHzYkiVLxnJApIgMgLKyMpVKjYqK2rNnz759+7Kz\ns0d679DQkL+//9q1a9evX+/n5wdcqiAIkpWV1dHRWbhwoYmJybt378ZyeTQaDaWgxM3NXV5e\nPsZj/s7IyclZvXo1eF6ePn3a0tLS3NzMYP/q6mrGRMzt27eP6gKam5uxmqN4PB4eTCYMKHNq\nUJcb1zMynkf+SXbh99yA25XiQaEaI+0w2PH+9pWrySXt6lvsvLZp8uBwEJfko0eP/vf/oupm\nJz682JoWUr7b93+mz/nz5wM/RwBBQcGxyDj9EpycnKCrsbe3lzZy5QhL30GioqKiubkZXr7s\n379fXV09KytLUFBww4YNAgIC8EdA+iZhoaGhgfywLS0t0dHRXV1dy5YtA845rGH58uUoazwj\nI6MjR47A5+Lh4aHRaKMtizCJ7du3w5bnz549a2trmzp1alNTE7xDcHBwb2/vtWvXxlhVGRgY\n+PLli7CwsISEhJGRUXNz87lz50Cb50jfLB6PR7UavH37tqysDNlFGxQUtGPHDsBrlpeXDw0N\nRYlEMAa2vA5BUH5+/pUrV4DmLY1GO3nyZGBgIIVC4eXl9fT0BE2LbAE24/jt2zfwvUtLS8Pc\n0J6eHi4uLjwej2rwRKG4uHj79u102VEmJiZEIrGnp6e2thbV8fP48eOmpiYGVdGcnBwbG5ua\nmhocDrdly5Zr166x3E+jqKiI9EMb1dDBx8dXWFi4detWUGpfuHBhRETEaKmlKSkpqB9bamoq\n85dBJBKlpaUHBwd/+TCSyeSamhoxMTFYEw7LJWhtbR3VHQAdkbDSx+PHj6n/ycUsLS0dy2iM\nfcC5ubltbGxgh57AwMA7d+7Q7Wk9fPgw3MedlJQEb6+trQX2HkVFRQkJCRkZGWOx7dm2bVt9\nfb23t3d3d7eUlNSFCxdkZGTGdQL6B1FbW7tmzRrw6b5//25oaAh+uioqKiEhIVglAQiCsrOz\nUZQePB4P/0h4eHgOHDjA5O1qaWmpqak5deoUijYD/a+Pn5qa2ubNmyemf2JwcPDZs2fILZ8/\nf87Ozh5XIQgajYZNecL4JwO71oxScnezhdH/RdzPrM1SeOc/uucBQVB3TarDsQCOeet9bu78\nS3RESYhFk4lpHf8nTC8jI4NUQ+3s7GQ82YwRXFxcILADGZSRdmOs8f3mzRsHBwdkYmzmzJkz\nZ84EfyOvX1lZGehjwQAPBg6HMzExWbdu3bNnz8TExJSUlIqLiw0MDOD3WllZjeRI+EtMmzbt\n4sWLTk5OoH9bT0/vypUryKsiEAhUKnU87nNraysc1QHk5eWlpaUFBATAvYQ0Gi0iIkJRUfGX\nAc3w8PD79++BmRtKFDoxMfHIkSOgY2DDhg3Xr1+PiYlBTnVIUSgYsrKycI8FjP7+fuStmDJl\nSnJyMqBCysrKcnBwjOpGjRSjlJWVgeNERkbCGge9vb0ODg5//fWXiooK86dgANBdiNpC9/rx\neDwnJyfjj/bw4UNUVMfHxycuLg4SseC92PCCSqV2dXWNJJrQ2dlpZmYGmKk0Gi06OlpAQGBU\nasMsIC0tLSkpCY/H6+npwZw5Hh4eY2Pjmpoa8LKoqAhQS+fMmWNpaclkrIklWpBIJLY/WQkJ\nCQ4ODu3t7SAUvnz5MhcX1/Lly2HHWwiCODg4VFRURnVqbm5uAoEAvwVrWycmJjaWz6KtrS0k\nJIRcSmlra3t5ecEvaTSas7Ozrq4u6o2tra10PfRQ6Ovru3btGmNlA8YgEolOTk4HDx5sbm4G\n/P1xnX1oNFp8fPyrV6+IRKKRkdHECJrAiIiIQAZh8PRXUFBgbm7+8uVLbIsYNhCZNm2agYFB\nRUWFlJSUjY3NzJkzmbljbm5ugYGB2IYhGCEhISEhIYGBgU+fPp0AvRUymYz9sENDQ+P67UP0\n7ieMf1JoYMZO54v/Cz9fVwiClp/08jlrB0EQjdrn5RTIrXXw+mlrZFTX+SHA0mr/N/L/LgRp\nw6+b+4QUWV9jTQxsbW0ZN0KCus8vj7Nv3z6kkauenl5xcfGTJ08KCwuVlZVVVFRMTU21tLT0\n9PQMDQ2Rv6qQkBCsRwXz2Lp1a1lZWUpKSnFx8Z07d5DTz+fPn3NyckBmq6Oj49SpU2vXrjU2\nNsZ2GLAAutkdfn5+LNsGKQFDF/X19VpaWhoaGjo6OioqKsg+1sbGRjs7O7gPNDEx8e+//0aZ\ngQ4PD5eUlCBdRLm4uC5cuIASl1ZQUMAuVfF4vKys7IwZM1jQg9i1axfdX46kpCR8tcjtVCo1\nOTl5tGcZCYcPH0Z2vezatWsszYPYyHjVqlU5OTmnTp2C456ZM2eislzz588XFRUtLy93dXV1\ncHCIi4tDPinZ2dmofqO4uDiWr5AZ+Pv7b926NTQ09Pbt25s3b4YVUsrLy+GoDqCxsTEmJsbd\n3V1XV5fJfLaBgQHKVmHPnj3sunKAuro6+NcOQmFQ4nRxcYH5+1xcXB4eHmNpqqVSqR8/fkRt\nRIpfsgBxcfG7d+8qKytzcHBMnjz5zJkz2FCmqakJK9Hc2trKzOgK9hzLFQLg8fgJ6MosLCzU\n19e3tLSMiIi4ceOGjo4OMtk8AWAgWllWVka302vZsmWor+zw4cMuLi7379/39fUdSXu5p6en\nvLwcrh7Ex8dfu3aNQVQH4+3bt0ySasYILi4uFL1SXl4eJWQ2wfgnM3Y8U2RmTvmfv2nDHRAE\nCcnIyYnzQhDU1xJR2TdkOY+3EDG/EoizlP7aOqnP9rhb8AEzLUFc39sXEW96+U9b/e6BnYaG\nxo0bN/bv348ddACY+ZlCEMTNzR0XF/f69euamhoFBQXgMyshIVFVVXXq1Cn4INjsNARBVVVV\nSkpKrH4CiJeXF+UZ0Nvbu2fPHtDSy8/P7+XlFRoaWlRUBP776tWr69evy8vL3759u7W1dfHi\nxTY2NqPtV5o6daqSkhIyJFVQUJCRkcEmNn4p83vkyBHYROvbt2979+4tLCwE8URmZiZKKR7r\n4Emj0Xh4eNzc3NTV1TMyMggEgoaGxtKlS4OCgqytrUEUOG/evKCgIPZKmWhqagYHB1+4cAFQ\n2cBGMTExWB8LW2tgo5wYDw9PXFxcdnZ2Q0PD3LlzYZ0/1rB27dqgoCDkFIsNEzk4OEJCQiwt\nLUHP9axZswIDA1NSUuC+7PDw8N27dzPonmNyCmcSw8PDyPvZ3d19/vx55A6urq47duwAyaqR\nDlJeXh4dHY0ULRoJkydPjo6OdnV1LSkpAY20KO7O2JGWloZKJCQlJTk5OdXX169fv37JkiXy\n8vJaWlq/dK9iDDweLyQkhBLNQZl7sgAVFZWUlBT4S6mvr0f5RkhLS2MzNLKysry8vCgDWbpg\n0OIGQVBNTQ0oIAAHIFY+AJvg6+vr4+OD/OA0Gs3FxWXjxo3jcbq+vj5fX19QbdTV1XV0dCSR\nSGpqakiBdxToDoMEAuHevXsXLlwAJrw7duzAsnhRCA0NPXPmTF9fHw6H27Ztm5+fH112CgCR\nSEQRXbB+u+MEPz+/oaEh0AS9ePHimzdv/rMqer+pgt/P6loIgm6d90JuFJRzibis4hHgdico\n6oqn8wCngNzMuccvuy/gG3ejobHD0NBQTk7Oycnp3bt3QkJC/f39yDz2hg0bmAwI8Hg8aPhF\nbsRyF7CYOnUqC5fNAJ6enrBQS3d399GjR1EpmXPnzjU2NoILS0lJSUlJiYuLG60rVHBwsKWl\nJRDamD179o0bN3A43KZNm0CzLbwbY3ucoaEhlCJoW1tbaWkpSEdhn0AikSgjI4NcdC5evBik\nUpYuXRoZGRkfH3/p0iVpaWl/f/8XL1709vYODw8LCgqOxeZkYGCAbni6adOmTZs21dXVXb9+\nvba2dtasWQcOHID1WTZt2oTkDBEIhDHmRVDA4XAw0xygvb09ICCgqqpKSkrK1taWLpmGLlas\nWOHq6urt7T0wMMDBwbF3716639qCBQtyc3MrKys5ODgUFBQ4OTlRajuhoaFWVlZAt0JNTW3S\npEnIpB275rZ37945OzsXFxcLCQnt3bv3yJEjOByuubkZtTYbHByMjY01MzNTUFBYuHAhvLBB\ngXmpmnnz5sXGxo716kcGNu7H4/G3bt1ydnYGbCcikRgVFTXGwA6CIDs7O2SddMWKFSMtLNva\n2ohEIvOrPvgjSEvZ9yVRAAAgAElEQVRL29nZwYJHHBwcnp6e2P1JJNK5c+eOHDkCHk8uLi5l\nZeWioiLwzMK1XRUVFTs7u5FOmpCQYGNjA759Li6uGzduYGu+E4MvX75cuHABu4Bpbm4eHBwE\ni953797V1tb+9ddfioqKYz+jo6NjdHQ0+Pvq1avNzc2BgYEbNmywtLS8ffs29koWLFgwUuAr\nIiLCPCmouLj4xIkT4Nmn0WhRUVEMrHpmzpyprKyMoOBD0DjMeiNBREQkMjKyu7ubm5t76tSp\nE+M8wQC/kVfseGAiLcWYvJM0Gg2HwxUUFOzbtw/wdlevXh0UFMTY2Zox7t+/f/DgQQY7TJ06\ntaioiL3S8EuWLEHVnlAgEAioWmpoaCgLo+Hw8HBtbS2NRps+fTr8EZ4+ferl5VVTUyMhIeHg\n4DCSwjsAlUqdNm0aqhyWkpICcpDt7e3Lli1DBgfHjx9fs2aNlZUV+ILmzJlz586d6dOnQxiX\nNmFh4fz8fECIZPnH9u7du2PHjpWWlvLy8u7evfvkyZOjWu35+/tfunSpp6dHXFzc09NznFbt\nAN3d3ZqamuC2QBBEIpFevnw5c+ZMEonEjKUYOEJdXZ2kpCTz5SoJCQnUjY2MjIQVGXNzcw8c\nOFBXV4fD4QwNDS9fvsxy8wSMHz9+rFixAtk7Ajysenp6Zs2ahbqYlStXxsbGioqK1tTUWFhY\ngHQvqm/g6tWr42HNyQKam5tXrFiB/KYOHz7s7++PvGBZWVmUJSAz4ObmJpFIsKUYlUq9ffv2\nw4cPBwYGVq5ceezYMSzVuKSk5MCBA+/fv8fhcPr6+pcvX2ZAGxoJycnJ6enpJBJp8+bNDIoS\n1dXVqampnJycOjo6wNqRTCbz8vKmpaV9/PhRVlZ2zZo1I42QZDJ57ty5SLc0ERGR8vJy1DIV\n6xVbVVUVExPT3d29dOlSQ0PDX67eW1paXr58OTw8rK6uPlJslJCQQLdAP3Xq1JKSEgqFsmfP\nHpiPYWZmduXKlbGUEbBWbDgc7v3792DC+vDhQ3V1NZFIDAgIAPyWFStWXL58mS0ZTV9fX1SC\nfNmyZadPn9bT04OfQTwe7+vrO2/ePEVFxe/fv2toaMCRuqio6OvXr0dS0WeMrq6ukJCQDx8+\nSEtLW1lZTZky5dfvgSDot7EU+xPYjQkMAruXL196enp+/PhRTk7u+PHj2ICGSqWCdfzjx48r\nKyslJSWtrKxgm6n6+vrjx4+/efOGSCQaGxufPn2aQbWxo6Nj5cqVsF00BEGCgoIwD51EIr1+\n/VpWVpbJD5WTk3P+/PnPnz/PmDHj+PHjoOCLxapVq0AiDQaqLEIikVAlTsYOj0yir6/v4MGD\ngEolJSUVEBAA5OMZw8HBITw8HH45d+7c1NRUeBwvKChwcHCoqqri4eHZtWuXq6sr6Jb48OED\ngUCYMWMG3JE3Z84clNRqaGgoCCtZ+7F1dHQsX74cSe5B2sAzCSqV2tHRMQFC8zdu3Dh58iRy\ni6mp6dWrV5kP7FiAqqoqyqQuMzMTVpoFaGxsFBAQYCEsoAvsSmnu3LkgP21qaooqBikpKaWl\npcFesV1dXY2NjevXr4cLkUAMYrS56vHDmzdvHB0da2pquLm5LSws6uvrsYzY2tra0RInUIHd\nL9HX16empobscN+2bduVK1dGddKJwZcvX5DkZoCCggIwqMKlYWRg9+HDBxsbm/Lycnh/IOrJ\n4CyvX7/etWsXKBlzcXEFBARgtTzAeWFtSxh4PD4kJERfXz84OPjUqVPIfwUFBbHsfgtB0Nev\nX7Hdnfn5+WChi0RnZycHB8f06dPp6neOFjQa7fDhw0gHTgiC1NXVHz16FB8f7+np+eXLF1lZ\nWWdnZ2SJv6amJiAg4MuXL3/99deBAwdgLvKo0NPTo62tDSvJi4iIpKenM5n8+00Cu9/CpfG/\nD+Xl5Tt37iwvLx8cHKyqqrK0tMSugPF4vLi4+M6dO729vZ8+fXr9+nV1dXWQA6NQKObm5ikp\nKYODg52dnTdv3nRwcGBwOmFh4YcPH65atYpEIsnKyp49ezY7O/vAgQNr1661sbHJzs5mPqqr\nqqoyNjbOyspqaWnJysoyNjZGRW8wzMzMkC/FxMQOHDgALw0nT56M1VJHTcaswc3NDSbINzQ0\n7NmzB+t/hYWHh8euXbv4+fm5uLjWrFkTHh6OXJ2rqKi8efMGaB94enqChBknJ6eiouKsWbOQ\nOgtYzYUxkupevXqFomw/ePBgtAfB4/ETYx+EnIYBGhsbx/uk7u7uyNtubm6O/SFJSkqyK6qD\n6DUzwulebGoc1YPMzc0tJyeXlZXl7Oy8e/duX1/fJ0+e/D5RHQRBq1atys/Pr66urq2tdXd3\nR3kYQhBEJBJRbeMso7Gx0cnJycTE5MSJEyivmoKCAtTPaYLp/8xDREQElczj5OQUERH5+vWr\nmZnZtGnTwBoYXscODAyYm5sjozoIgh48eIC1c4VBpVLt7e1hIiCZTD569ChqYQywaNEiDQ0N\n5BZNTc3nz58DOmZubi5qf8ZiW4wxMDAQHR2Noi1OnTqVro6PkJAQu7pGqFTqjh07UFEdBEGA\nk6evr5+Xl9fc3FxQUIAibk6fPt3X1zc2Ntbb25u1qA6CoPDwcKQ/UHt7+++53mCA35Rj92/H\n/fv3kVyc4eHhqKgorAgFcBOCX3Z3d/v5+V27dq24uBjF+nz48KGiouL+/ftHOqOioiLSTRyC\noDNnzrBw5eHh4ciS5eDgYERExNmzZ7F72tjY9PT0hISEdHV1LVq06MCBA7NnzzYwMHj79q2g\noOD69eu/ffumo6MDJ8Y3bdrEFj9QVHahvb09OztbT0+P8btIJJKvr6+vry+FQhmp0MlMimLj\nxo3BwcHwS1FRUVjwgkqlpqam5ubmTpkyxczMjElDa2w/zUgdNr8DsBEVW4J1xli3bt2LFy8e\nPnzY29u7atWqsXPwf4mVK1eitBtBARrU7Ozs7OAuEEVFRScnJ+wRREVFjxw5Mt7XORbA3A9s\n/VFfX58tXlttbW1r164FGe709PSYmJj09HRYoRpbLGKmfJSbmxsQENDS0jJnzhxHR0e6etds\nh5CQ0J49e+AOaAiCgISNvr4+GKjJZPLt27cJBALoJ8jPz6dLU7lw4YKAgMD8+fP37NmDqsC0\ntbWh1kjd3d2fP3/GFpfxeHxYWBgofQoICGzbtg3ZkolVfGTGxHkk2NvboxifwsLC169fZ4bV\nk5aWFhER0dnZqaamtn///lElgB8+fIhyY+Pm5kb5oXNycn748CE8PLy9vX3x4sXm5uZ0lU26\nu7uDgoKKi4slJCSsrKxmz579y7Nj3TInxs6RjfgT2I0LsCstuj1ZWF85YDBPV//Gw8NDW1sb\nzKPV1dW5ubkCAgJaWlpsdLSEIAiluAvRkxYDwOPxx44dO3bsWHNz844dO3bs2AFBkIKCwo0b\nN8DDw8fHl5OTEx0d3dbWtnDhQmz5gDWMMUM2xmalU6dOdXZ2RkdHU6nUmTNn+vv7A+bQ4OCg\njo4OnJc9c+bM7du3mREHWbFiBaqZa+3atWO5QnaBTCa/ePGipaVFWVkZTr4aGxvfv38/Ozsb\nvJSWlnZ0dJyAi5k/fz7jjkX2YsaMGb6+vk5OTuCxXb169cDAADBOgCDIxMQkNTW1oqJi8uTJ\n6urq/2z729ihr68Pa/xCEMTHx+fu7s6WIwcHByN5C6D44ObmBl6qqKhMmTIFSSD5ZQtwfn7+\npk2bAOGhuLj49evX6enpjFVC2QV3d/fp06cnJSXhcLgNGzbs3r27pKQEtfwOCwsDnRwjqduk\npKRAEBQTE/PkyZOEhARkHheU8FCLupFqbSQSCYy92H/t2rUrOjoaJjeTSKRt27aN4nMi0NDQ\ngIrqCARCVlYWylmbLpBEwMzMzIyMjCdPnjAIB+vr68vLy8XFxZWVlXE4XElJCWqHVatWoazD\nCgsLDQwMwB2Ljo5OTk6+f/8+akEyODior68P6yHcu3cvKSlp3rx5jC8e2xA2Y8YMxm/53fCn\nFDsuwDpwo5LnANifC6Dhz58/H9tLMTw8DGQ1goOD1dXVHR0dra2tly5disz5AQwMDKSlpcXF\nxTF2qqAL7NGQSmZ0YWFhAT+HVVVVenp6enp6R48eraurExUVtbOzc3Fx0dXVZZcOCKrrU1RU\nFGXbNX549eqVg4NDb2+vu7t7aWlpTk4OnIX19/dHVtuHhoasra2ZqRFLSkpev34dLmFoaWkh\nHTYnGLGxsUZGRtra2seOHVuxYsWePXucnJzWr18PTyGcnJwxMTGBgYEHDx48f/78mzdvJqYE\nPPEwMzMrKSmJj48HfvNhYWFwPunhw4dFRUVmZmZaWlr/9qgOgiAXF5fNmzeDx3PatGlRUVHs\n+k6x4w+y9srLywv3JEEQtG7dOmQXLV0EBAQgaawNDQ2oLsjxA4FAsLa2fvz4cWxsrJWVFScn\nJzZ6I5PJoIVz8eLFjMPNoqIiVN2Zh4fH2toaucXExAQr2PlLLFy4MCoqasmSJZMnT165cuWj\nR49YDkpQCpEQBA0NDTHZgYfSec7NzYVXg1hcvnx5yZIlO3fuXLt2rYGBQW9vL/YXiI1xPT09\nkXFweno6rNIA48mTJ3BUB0EQmUz29fX95cXv2LED2U0sLi6Oiil/f/zrR6XfExs3bszNzb11\n6xbogTU1NaW7bDI2No6IiIC1cEVFRcEMys/PHxQUZGZmhhIxERQUrK+vd3V1hbe3trb+/fff\nSFHWz58/Gxsbg2QyDw+Pn5+fiYkJk5ddWFiI4oXg8Xig+TmSfve3b99QWr4/f/7My8vLy8tL\nTEx89erV2HUTUHBxceno6IiJiaHRaHJycnDObLzx8OFDuBSekJBQVFSErMmibgIEQf39/YWF\nhWvWrPnlkfX09LS0tD58+CAiIgJ3z0wYvn796ubmlp+fD+Q8wEbUihm0M4PFCScn5y/Vp/47\nICgoCFY1yC8a4M2bN7t37/4HrmkcQCQSg4ODfX19u7q6WKYl0QW2TI8SPVZRUcnLy2toaODl\n5WVGFgArIMwWnj4AmUxub29nfryaP38+SmpHS0sLSAEICwsHBwcfOHAAXLCoqCgXFxeKUJiX\nl6enpwcXZJubm2fNmrVly5YvX77gcDgdHR0G2iuMgdXDYg0zZsxA6f9NmzaNSRYdMhELMFKW\noaio6OzZs/CqKTc399y5c/v377958ya8MObm5oYNDGGA6hYS2IIpPKDBwFbJsODh4Xn+/Hlk\nZOT79+9lZGR27NgxMVMMG/EnYzde8Pb2fvv27b179/Ly8vz9/UcSbHz69Kmfn5+lpaWLi0tW\nVha8RFu9ejWK2TZz5kwtLa2ysjJU6yVKOsvBwQGmCAwMDDg4ODApp15fX+/i4oLaSKVSfX19\nGXg0MchY/PjxYzyEv4lEYmBgYE1NTVlZWV5eHrZbbZyA+jpiY2ORbSV0yxO/lE2GQSQS58+f\nP/FRXX9/v4mJCUjuYgdBJIqLiyfsqn43YOlBTBIo/0Xg5+dnb1QHQZCVlRWy7KWoqIidnnE4\nnLS0NJNiT9hyPFsK9BQK5cSJEzIyMkpKSgsXLsQmfuiCl5f3xo0bsJqGkpIScgGgqalZVFT0\n4sULIMqIsqiBICg0NHTJkiWgs+H58+eqqqr29vaPHj368OHD8ePHDx8+jJVhZy9oNNrNmzeX\nL18+d+5cCwsLbJyEx+M3bNgAFzf5+PjgiYxCoZw9e1ZRUVFaWtrExARpRgeA0s/D4XBYefPv\n378HBgYiozqAzMxMcXHxZ8+ebdmyRVFRUVdXNy4uDivIhy2YYrdg3SyY5ATz8PBYWVn5+voe\nPHjwXxfVQX/kTsYIFnTsRoXIyMg7d+60t7erqqqePHlSWloarPOQ+0hJSSGbraZOnYpSj7t7\n9+4v80Z9fX2rV69GiUrA4OXlBSbrdP9rZmY2kqOXubn5pUuXGJx3eHg4KyurtbVVWVn5d+Yx\n0Gg0cXFxlDjZvXv3tLW1OTg4hIWF379/r6SkhPyxycrKZmZmjvfoPEY8e/aMyczT5cuXt2/f\nPtJ/x1XuhGWQyeQfP36Ii4uPkQZQVVW1Zs0auPTGwcERFxeHmqphuRMm3cP++0BX7oRMJj9+\n/Pjz589ycnKbN2/OzMwsLS2VkJAwMDBgofG2o6NDT08PNmg2NjaG1YlHQllZ2cePH2fMmMEg\nBLx06RJy2cbHx5eZmclkmNvf319ZWUmj0TIyMj5+/CgpKWlpaYlN+9XU1Ghra2MfkClTpmRn\nZ6uoqCBpG+Li4sXFxeyVHcUiJCQE2fczY8aM9PR0+Evp6+tbt24dzMwRFBSMj4+HE64+Pj5I\n95fp06e/fv2aSCRycnIKCQm1tbVVVVUZGBjAjO2DBw+iGCaVlZV6enp0NUHU1NSYMQYsKyvT\n1dWF2cnr168PCwtDPelUKhXoS4CXkyZNSklJYX79TCaT7969W1lZKSEhYW5uzgy58DeRO/lT\niv2tYW5ujnIiWrx48dKlS5E97QcOHEDuwM/Pj6J2MbPgSEtLGymqgyCov7+fQqGMJNlw69Yt\nW1vbFy9eUKlUVHTL2ISqo6Nj8+bNoPiLx+MdHR3p0oHHiNTU1OLiYnFxcUNDQ5YTLTgcbtas\nWdXV1fAWPB6PXA7Onj07MTHRxsbm69evNBpt0aJFV69e/c2jOgiCmBx9ZGRkmDe0oFAoMTEx\nwNh769atY2nKYxk0Gu3s2bPXr18nk8liYmLnzp0biyGHgoJCVFSUl5fX+/fv5eTk/v77b2wC\nBqC3t/e/gHXHRnBxcW3duhWCIBqNtnfvXphY5uPj8/z5cwYzE10ICwunp6cnJyc3NTXNmzeP\nsYAllUq1s7OD6f96enohISF0o6UnT54gX/b09Lx8+XLnzp3wFhqNNjAwQDcSJRKJc+fOXbdu\nHczlunnz5osXL+Tl/8Pocvr06VlZWaGhocCZF8a3b99SU1NRI3ZLS0tTUxML+fvh4eGwsLCn\nT58ODg5qa2vv37+fQfR869Yt5MvPnz+/evUKbrANDw9H8q1//vwZFRUFG3tERUUh31tTU5OV\nlaWtrQ1vUVBQyM3NjYuL6+zsXLZsGbaucurUqZEGHyb9kZWUlLKysiIjI0FX7JYtW7DrNzwe\nHxkZ+fTp05KSEnFx8a1btzIvyDI0NLRp0ybYnzMwMPDly5cTX1RhDX/GoH8ZODg4IiIi/Pz8\nQK+7mZkZGDdhWFtbIyunixYtwlplQxDU1tb27t07IpG4ZMmSiooKrGIQEkuWLGEgxDVlypSY\nmJgfP3709fUZGxuXlpaC7WpqaowNITw9PWFKH5VKvXDhgpaWFt2rZQ00Gs3a2hoetS9cuJCc\nnMwCHxnA29vb1NQUpuva29uj1NVVVFTAKIAyGP2dsXjxYiDFjNqOx+NNTU1bWlq+ffumrKx8\n7NgxJlXiKBSKkZERTJS+evVqamoq87rt7EJ4ePjly5fB362trXZ2dvLy8swoHYwEdXV1bEcU\nEg8ePHB0dGxoaBARETl+/LiFhQXL5/qvRFJSErJd4OvXr2fPnr148eJoj8PFxcVkjH7//n1k\nU2dCQkJYWBjd7wVbbIFz8xQKxd3dPSwsrL+/X0lJydfXd8GCBaidwTIGftnb2+vr63vjxg3U\nbuLi4g4ODv7+/qiKipiYGEraHeS9mPmMKABFJ/B3YWFhZWUl0iYHRkdHB92UEjKhiJVrQa78\nUZasED0hiEmTJjEI0ZCLZAASiSQtLb1v3z7m9YykpaXpig0h0dXVZWhoyIJGUmxsLNJ1vaOj\n4/z584wlpn8f/Ans/n0QEhLy8PBAbSwvL09KSqLRaNra2tzc3A8ePACiXydPnsQGGfHx8fv3\n7wcPJ4FAoFAo2KENnu9lZGQYl1MBeHh4eHh4kpOTnz179uXLF3l5+fXr1zOOb5CPDQRBNBrN\nx8entrZ2cHBw1apVLi4uo13Qo5Camopcizc1NXl5ebH8ZAKrHwiCODg4zMzMnJ2dR9rz3xLV\nQRA0c+ZMd3f3M2fOgMlGXl7ewsKCRqMtW7aMNZfJR48eIdvfWlpafHx8UFmKCQCqlEMmk5OS\nkrCB3adPn06ePJmfny8sLLxr166DBw+ypt9WXFxsbm4Onpf29vbjx49LSUn9JrI1EwMKhfL9\n+3esGwEMrB07MhgaD2ClenNzc+kGdrq6uki+LIlE0tLSAn9funQpMDAQ/F1aWmpubp6ZmYnK\n+mBlz7BbAAgEgpGR0f379+Et8+bNW758+datW5Ebd+7cyYLaNoVCQRWm4+Pja2trker0bW1t\n+/btAyRClE4WgUBA5qGxEsTIday6ujpyaCWRSKPlOktISKAsfMLCwuhqR7CMhISEkydPNjU1\n8fPzHzlyhLHrJhbY0BapWvyb409g99+A6OjogwcPgrDDz8/P19cX5XmPRHt7+4EDB+AlF2r5\nCDB79uyQkJCvX79yc3Orqqpyc3Mz0PVFgkAg0LXBoQusAh9s1nT37t1Pnz7Fx8ePRSiVjXPJ\nw4cPAwICwN/Dw8ORkZH6+vqamposX9vvg7179+ro6Lx7905YWFhNTW2MlUQsjRpmRI0r+vr6\nrl69mpGRQSQSTUxMUGxICGPeCkFQb2/v1q1bAWe8p6fH09OTQCDs27ePhbM/efIElfWMjo7+\nbQO7pqamtLQ0Go2moaHBltJSeHi4q6trd3c3Dw+Pvb09XWlDrGXneOdxsRyAkVgBR48ebWxs\nvH//Po1Gmzx5sp+fH3xboqOjkXt+//799evXqCFuJNUquvD29ubk5Hz8+PHQ0JCGhsb58+eB\n26mMjExycjIOh9PT02OtHxbpUQujtbUVGdgdPXoUbg3p6uqClfO4uLg8PT2Rcfnu3bsjIiLg\nUEZUVNTe3h75Kerq6gC3W0BA4NKlS6P9Np2dnU1NTeGEgpqaGqz0zhZUVVXZ2NiAT9fd3e3u\n7i4pKbl582YGb/ny5UthYSHQzyIQCIxD298cfwK7fz3IZLKTkxMsgEKlUk+dOmVkZDSSFXpJ\nSQldpxoY169fNzQ0JBAIoIHI398/MDCwo6Nj7ty53t7eWP8MlmFtbY1M2qHqEfn5+aWlpcrK\nyiwfHzvWsKy98uLFC+yW/47ADoIgaWlpdnFHsI6KE8BKodFoVlZWMEX61atXKKlbDg4OrADE\nq1evUJ2A4eHhrAV2WLOQce3ZGgtSU1MtLCzAuo6bmzsoKOiXri2MkZ+ff+zYMRA3DwwMnD9/\nHvRJoHYzMjK6fv06HChwcnKONoMCQVBnZyfQ5VFVVf2lMLu5uXloaCgs9s7FxTUSM4RAIPj7\n+3t5ef348UNaWhqZccd+j9jv2tDQMCIiAk5Ui4qKHj9+fKSr4uPju3Tp0sWLF4eHh+FFFLBV\nYE3ru7a2trq6etq0aQoKCnJycsiCKZFIRFL9yGQyys6BTCb7+PhMnjx54cKFKI4KLy9vSkrK\nrVu3qqurZWRkLC0tka0DoqKiycnJFRUVXV1dSkpK2O+ivb29uLiYj49vwYIFdGk8mpqa8fHx\noaGhP3/+VFVVtba2Zm+hIy4uDvVNPXr0iEFgd/XqVS8vLzCNzpo16/Hjx1u2bAkJCSkrKwM7\n8PHxjQcFfJzwJ7D71+Pbt28oc4i+vr76+vqR+roZJ/m5uLh0dXXhRzEiIgIu+5aUlGzbti0j\nI4Nd0nQbN24cGhoKDg4G8ytWzneMXZabNm26fv06XGTh5OQ8evQoM2/88eNHQUEBDw/P0qVL\ngWQJdmz6t3Dke3t7CwoKhoeHFy1aNAF9+6ampjdv3oTzdiQSaQKctSoqKuCoDiAnJ8fGxubm\nzZsg4BgeHra0tIyPj0c6UGHNYHp6eli7gHXr1iHNG8AW1g7FDL5///7+/fvJkyePljVIoVDs\n7e3hbP3g4ODRo0fXrl07kkolM3j27BkqGxofH4+dQXl5eePi4i5fvlxSUjJ16lQ7O7vRsmmz\ns7NhY+hJkyaFhYWhyn/9/f0XL1589uwZjUbbsGGDg4PDw4cPz5079+nTJ9DyMnfuXAbH5+fn\nx46Na9asQdLUSCQSVg6dk5Pz0aNHjx49AgGWmZnZLxt+cTgcWwYQFxeXGzdugPuvp6d38eLF\nHTt2APIcgUC4cOECKkmJbS+YP3/+SF8EPz8/A2FePB6PtTsDiI+PP3ToEHia/vrrr3v37tFd\n3amqqo6fWBU2Imew1qqqqvL09IR/xh8/fgQ3NiEh4fbt28AgbmBg4MiRIzY2Nrq6uuN0zWzE\nv2Ny+gMGAOqXyNUJJycng8T4ggULZGRkRjK/O3r0KDLVd+/ePeR/Ozs7k5KSmOxaYgZbtmyZ\nPHmysbExtlLGx8c30sDBJLi5uR8/fuzv7w+6Yq2trRctWvTLdyUkJBw8eBCMStLS0vfv35eX\nl9+yZQuQRAb7cHJyMs7q/yYArCAgUCcsLHzz5k3GHQBjB4lESkpKCgoKKi8vl5KSsra2xopL\nsR1YpcYfP34YGxsjCewNDQ2nTp1CCiuqqqqiHhwWbs67d+8eP37c39+/Y8eO6OjogYEBTk7O\nvXv3olqa2Ijg4GB3d3dw2atXrw4PD2deLrGlpQVFbOro6KipqZkAw18IgiZPnkzXdZoZDA8P\n29nZwWu/Hz9+2NnZvX37FknVOHbs2IMHD8Df/v7+jY2NQUFBKIOH0cLFxaWurg5QRERERC5e\nvIjNSUMQRCAQzMzMhIWFOTg46JZExwPJycnAmhYgISFhyZIleXl5KSkpZDJZXV0dRXnk4uLS\n0dF59uwZvEVOTm6MYywWra2tBw8ehFdN1dXVjo6O8PcyFlCpVMDAnjVr1i/D4rVr1/r7+yOn\nFaSjLgpFRUWoCQiUkkgk0u7du8PCwmprayEIqq2tzcnJCQ8PZ3Co3wR/BIr/9SASiaikyL59\n+xjkZjg4OBISEpBLKAUFBQMDg02bNt25c8fBwQG5M9a1lq6P7VgArziRIJFIV65cYb41fSRM\nmjTJzc3t6azlahUAACAASURBVNOnwcHBzER1P3/+hNeaEATV19eDNauWlpaPjw8wupk6der1\n69fZ2L07fti/fz8sO9zR0WFra4stJLEdQkJCJ06ciIyMPHfu3AREdRAEKSgooFKqc+bMKS8v\nR7UEIeUeIQiSkZHx9fWFkysLFizA9iQxRnx8vI6OTmBgYGhoaEREhJWVVUZGRmVlpbu7O7sM\n9FAoKSk5ffo0/CWmp6cj5cR+CSEhIdSMiMfjx9iipKenhyLCbty4EYKg8vLy27dvP3nyhC1R\nztevX1HODfX19UgXgY6ODhQfLjY2FmuKNVrw8fHdv3+/qKjo5cuXJSUlo8rWFBQUbNmyZf78\n+Zs2bcrOziaTyX5+fpqamhoaGl5eXtjG0tEiKysLtSUjI0NMTGzbtm27d++m28ji5+cHa5oq\nKSmFhoYykDtgDfn5+ahceGZmJvx3W1tbSUkJC6WY+vr6NWvWqKqqrlq1Sk1NDfUsY6GiouLt\n7Q2SFBwcHFZWVgwEO7HkS3gCTUxMBFEdDFSHSk9PT2RkpK+v70hirv8I/mTs/hvg4OAwY8aM\nhIQEGo22fv36Xzo+iYuLFxUVFRYWfvz4UUZGZunSpSPNQ8DrAn7JycnJ3sYlCIJgEUsYBgYG\n586dY0YNku0oLy9HqQC8ffsWOKrt3r179+7dPT09rInhlZaWNjQ0yMvLMyBWs4Dm5uZz5869\nfftWTEzMysoKyZdqb29HOf+2tbV9+PCBcUFqVCgvL3d2dgaM43379llbW49TQMMY4uLirq6u\nLi4uYIUgKCjo5+eHSk1B9PQ8zczM1qxZU1paKiwsPH/+/NF26pw8eRK5JgkICLCzs2NtNZKX\nl/f582dZWVk1NTUG9zAjIwO1Cnr16hXWMGYk8PHxWVhYIBOZ27dvH6MzrIqKip+f35kzZ7q6\nunh4eA4fPmxoaOjj4+Pr6wsCa0lJyfj4+DFSLfn5+VEcXBwOh3wSu7u7UXeGRqN1dnayxfeW\nBRLqhw8fjIyMQPTW1NSUn5+/fv16OH1YUVFRX1+PzLexAOxA9MuhadKkSXfv3u3q6iKTyWMM\n6EcCtpwNropKpZ44cSIsLIxKpfLw8Dg7O4+qR+TAgQOwkFZtba2lpWVeXh7jqNTCwsLU1LSu\nrk5CQoIxC0VLS2vmzJnIxi8bGxvwB0pwG/pPylBLS4uOjk5jYyN4uXHjRrbkJseOP4HdfwNw\nONymTZtGK9WzaNGiXyaxHB0dq6urk5KSIAgikUgeHh4ot8exA/hFIrds3779H4nqIHqNukQi\nETl8sBDVDQ0N7dmzB9CWcTicpaWlt7c347cMDg7W1dVNnTqV8en6+/uNjIw+fvwIQdCHDx+y\nsrJu374N9w0AIXgUs+SXlHO6ZykoKKBQKAsWLEBGLR0dHaampsAUsqmp6dSpU2BlzMwxg4KC\nAgMDgeOIp6fn2NOf1tbWK1euzMzMJBKJOjo6oqKiZDJ5zpw5yD5oumx9UVFR1ppgyGQyyoSN\nRqPV1NRg2z8ZY3h42MLCIjExEbxcvXp1VFTUSDMWtiNqpB6pkeDq6iotLR0fHw8WgfAENhaY\nm5ubmpq2t7dPnz69t7e3oqICjuogCGpsbHR2do6IiBjLKURFRTdu3IiU2DAyMkIakUlKSkpK\nSsJTLARB4uLirLUxDg0NJScnNzQ0zJ49W0NDg7W1SmRkJDInRyaT4+PjkTvExsa6ubmNpTUY\nGG/ACVE8Hs9YNxQGC4MA81BTU0M9d+CqwsLC7ty5A7YMDAycOXNGWVlZTU2NmWP29PQgRZQg\nCKqvr6+qqkIa1tEFiURiZsIiEonR0dFeXl55eXmioqJ79uwxMzMD/8IOTchJ08vLC/mTe/r0\naVJSEvO6EOOHP4HdHzACNzd3eHh4XV1dS0vL7Nmzx8NFwNHRMTs7G3a8tbKy+ge7TefMmbNk\nyRJkr66FhcUYs1DBwcFwMxqNRgsJCVm5cuWGDRtG2v/27dtubm59fX0EAsHOzo5BPubFixcg\nqoMREBCADOxMTU0jIyPh/2ppaWF7+Bmjqqpq+/btQJdLSEgoKCgIlvhKTU1FWX2DcuQvj3nv\n3j34QxUUFJiZmb1582bs4hcKCgrIQZyLiys6OvrChQvwYD3G9k8UuLi4xMXFkdbmOByOgZDb\nSLh79y4c1UEQlJ6eDqxc6O6sq6t7/vx5ZM5gx44dozodgUCwtbUd6fgsg5OTU1pamouLq7e3\nt7S0lHERnDVcunRJXFw8MTERaIKgWhQ5ODgCAgL27NkDUixCQkIBAQEsNCj09PTo6enBcYmO\njk5YWBjdVG5+fn52djY/P7++vj42mkc1tEEYwR0ajdbR0THan31lZWV8fDyFQtHW1lZVVX3w\n4IGHh0dVVdW0adMcHR2XL18+qqONBwgEQmRkpIuLS0ZGhoCAwNatW0HLGkpYgEajvXjxAgR2\nDQ0Nr169giBIU1OTLoWRg4MDj8ejbmBMTExiYuLSpUvZUkSSkpKCBQsBQkJC7ty509HRIScn\nV1NTA37Ss2bNOnPmDLwPUv4QoLS09E9g9wdsQFxcXEpKCgcHh76+PjzpshcyMjLjJ+HDy8ub\nlJSUmZnZ1NSkpKTE2IVsvIHH48PCwtzc3F6/fs3Dw2NsbIxUb2INqLUmBEFZWVkjBXZ5eXlO\nTk5gCBsaGvL39581a5apqSndnbEUora2NuTLs2fPCgoKxsXFUSiUNWvWMF+zg3Ho0CFYbbWz\ns3Pfvn3v3r0DWSIsSYhJ2hAy1oQgqL29PTExkY0dOTDExMR8fHzYflgYHh4e1tbWcBBjb28v\nLS09Wq/Yt2/forYUFBSMFHhNmTLl/v37Li4u7969ExcXt7OzMzExYeHKxxXY6idbqn58fHwe\nHh4MeJDLly/Py8sDzLPly5ezVhO/cuUKMtuUnJz86NEj7E0+d+4cLLvt5eX15MkTVPZIVVUV\nZecjJCSEpJ1MmjRptAzUuLg4a2trIMlx+fJlNze3ffv2IZshfhNISUnByTkY2M5rkJZOSkqy\ntrYG1G0ikXjr1i2sszmRSNTV1UWmPPF4PMx1s7a29vLyYu9HCA0NhT0tWltbJSQk7O3tJSUl\nNTU1kR8EG5fTDUwnHn8Cu383vLy8YOukqKios2fP7t2795+9JBaAx+NXrVr1T1/F/0BUVPTq\n1atsPCC2nIoshbx58+batWtNTU1z5879+++/k5OTUQvTZ8+ejRTYLViwAEU8QtXWiUSiq6ur\nq6sra1fe29tbXFyM3NLe3l5RUQG0DJctW0YgEJAC11itOLpgOSL83WBoaCglJRUTEzMwMLBx\n40YjIyMWBFOQ9UQAxrSwBQsWJCQkjPYs/4+9Nw+E6n3//88sxr4vyZKURCqk1KsVRZsWLSop\nJJVWaVMSpUVpEWkPRRslSpsWobKUSgsplajIVrIPM/P743x+532+5zDGbGeM+/HX3Pcc51wz\nzpxzneu+ruclTKysrAYOHIh0C4TaWgRnsVi3bt3KzMxUUlKaN28ev54blZWVeYzLIolc6BmM\nY1dYWIhuxlNbW+vj44MOu0IQNH/+/JSUFGTtePLkyR4eHm5ubnAkT1ZWNiwsjEOVGQaDcfPm\nzQ8fPpw7dw7RK4UgaM+ePXApbmc+H2HMnTsX/RXRaDQHBwc6ne7l5YUU5DU2Nq5bt+7t27f4\nUOuhQ4coFMqdO3cYDIacnBw6IHr69OmFCxdy3imnrq7u6NGjaWlpsrKyjo6O8+bNw6/JYFqx\nlZaWqqurT5o0CbPZxo0bU1JSkGtgmwqOhAAcuy5MdXU1xgXZu3evi4sLL6pUos+nT58yMjLk\n5eUnTJgg0GQRfuHq6pqYmIi4a7KysogWRmZmpqOjI3yxLigoePr0Kb4PJhvdTnNz83Xr1h09\nehT27Xr37r1r1y4+Wk6j0TCCIBAqOdrAwCA4OHjr1q2wWzZ27Njt27dzslsrKyt0RQ6FQhEd\nt76zDB06dOjQoRAPQanFixdHRkYihYSSkpKCCF4KE3gR/ODBg5mZmXDDULyztWbNGrQ0SWJi\nIidF60IAn92Ln/n48SPm6Qvf0oZMJp85c2b16tWfPn3q27cvnKqVlZUFl7+MGjWKw0VYBoMx\nf/58eKUSA51OLyoq6iqOnb29/d69ew8ePFhdXa2npwena3/58gUjX1pRUfHz50+8ow+rNbW0\ntLBYLLwP9/Hjx+Li4qNHj/748cPExMTX17c9GRcWi7VkyRKk/UZ6evrfv3/xAXL8E1qblbzm\n5ua3b98+depUWVmZmZnZ2rVruSut4zvAsevClJaWoh/gIAiqq6urrq7ml4Cw4GhpaYmPjy8s\nLOzVq9ecOXM61PNEOH369I4dO+BPraamFh8fz/dijg75/ft3UVFRr169MFrt7TFy5MjIyMjD\nhw8XFxf3799/6dKlSLj+5MmT6P/g79+/qVQqpuKBfU2Mr6/vzJkzc3JyVFVV4TbBnfos8IHa\nS0WSkJBwdnZGP7yOHDkSrXm2cOHCyZMn5+XlaWtrm5qacqhisHnz5ry8PFgbTFJSMiAggI+F\nul0OfX39hISE4ODgwsJCfX39DRs28HhKV1RUVFZW6uvrc65vB1NSUvLx40cdHR3ef1NqampB\nQUHtvZuTk4MuHmxubvbz80OHcyoqKiIiIn78+GFsbOzq6trZAhFe8PT0TEhIQNbTNTQ0Fi5c\niNmG85Y2pqampqamyFBVVbWzCVg3btxo06uDIIhEImlra3dqb8Ti4eHh4eHR0NCA/EOVlZUx\nyXMUCoWNqwqv3vbs2ROTwgjrGsL7KSsry8nJSU1Nxa+KlpWVpaSkIF4dzNGjR/GO3ciRI9Gn\nKJVKbU9L2dzcnMfqZkEAHLsujI6ODiagoqSkJKAidj5Cp9OnT5+ek5MDD8PDw+/fv89JWUZJ\nSUlAQADiCVVWVm7atEnIy1KBgYHh4eEMBoNMJi9ZsoRDwdUpU6ZMmTIlNDQ0ODh46dKl0tLS\nW7ZsWbVqFT5JTlJS8tixY9u3b6+srJSTk/P29oZVwdhgYmLCRWJiRUXF5s2b4YxmOzu7AwcO\ntFmJvGvXLllZ2YSEhKampgkTJvj7+2OWLVRUVEaPHt2pW6+UlNSVK1c+ffpUUVFhZGTEF0GK\nLo2ZmdnFixd53w+dTl+7du3169chCFJUVAwKCupQ+Qhh9+7dYWFh8K1xypQpZ8+e5bvCGQK+\nmTp65tevXzY2NshP48qVK8nJyZ11UrnGxMQkKSkpLCysuLjY2Nh4w4YN+Cvq0KFDbW1t0c1O\nBNdsqqCgoL23PDw8OluCLQqgrxUqKirOzs4XLlxAZtzc3Dpch/Hx8UGL0llbWz9//hztHf79\n+zcuLg6dHs1kMjdu3BgTE4Mp64EgqLq6mslkYupjdu7c+f79ezgQS6PRdu7c2a9fP84/I+EA\nx64Lo6iouG3bNiSDikwm7969W/RbXV24cAHx6iAI+vLlS1hYGCereB8+fEBndEF8qrbjnKSk\npNDQUPg1k8k8e/asmZmZk5MTJ397//59JO+7sbExICCgf//+Q4YMyczMRG9mYWExadKk2bNn\nl5eXq6qq8rd/IpqVK1cikYCkpKR///7BDgEGSUnJHTt27Nixg+8GGBoaohtZAnjnyJEjyD+x\npqZm3bp1pqamnNyQHj9+fPToUWR4586d48ePt1c29OvXr/fv32tqag4aNIiTgvFHjx7FxMT8\n+/fvv//+W7lypYyMDF4TDj1z5MgR9ANPfn5+TEwMJ9XWV69ePXny5O/fv83NzXfs2MF1Ow0z\nM7Nz586x2YBEIp07d+7EiRNPnz5VVFRcuHDhhAkTuDtWh7TZfHnIkCF2dnace+2izL59+3r3\n7g0ratnb23OSIz516tSEhAT4pBo5cuTSpUvxF2FMSC8yMrI9wZ1Bgwbhq55VVVUfPXqUnZ39\n588fMzMzESmJ4BxRdwIA7Fm1apWpqenDhw8pFMrUqVPb0wNjMBgxMTFJSUlMJtPW1tbd3V1w\nj+Mdgn8GxejotoeAqu045/Hjx5iZR48ecejY4SOLSUlJgYGB6enpSMLZggULkPxcHp/Fa2pq\ndu3adffuXVgbYvv27Wjh0PLycsz6TlpaWmlpKYeLy+IHg8FobW3t7EK2qIFv8Z6SksKJY4fu\nDYDMtOnYhYWF7du3D36+GjVq1KVLl9gHa2/durVkyRL4dVpaWnp6enx8/IgRI+zs7BD9CwqF\ngn6uw3c7xEj/t8nNmzdXr14Nv05OTs7NzU1LS8MXpqBhMpnXrl1LT0+Xk5NzdHQ0Nzfv8CgI\n0tLS3t7e+N7TL1++fPr0qZKSkq2tLV9Op3nz5p0+fRrRzpWUlIyOjiZWOoC/0Gi0NWvWtKkx\niYbBYMDXqAEDBpiZmY0aNQqt7TJ8+PC0tDT09piVUzjxA4+ysjJS3YyBQqFwKLMnggDHrssz\nevRofF9qDEFBQUjxbFpa2ufPn9s7m4UA/umHw0wRCwuLkSNHotVDOrwc8Bf8lZrzFSL8QyGZ\nTJaXl09OTn78+PHPnz8HDRoEp+HzhbVr1yJJSxEREdXV1egu9W1KcmCiod2EhoYGX1/fuLi4\n1tZWS0vLQ4cOda01FzT4pzUO4/eysrKYmTZzwF+/fo3ulf7s2bOgoCD29TqYTLvnz59nZWWN\nHDkyKirqwoULcFXsokWL0FohvXv3xuwEP4Pn7Nmz6OHv37+TkpIWL17M5k/Wr1+PKJJERERE\nRUXx2AN006ZNSLWsvr5+UlIS70ulMjIyt2/fDg8Pf//+vba29vLly4XT2JfvMJnMkpISJpPZ\nq1evzi5E1NfXz5o1C9E6Xbx4Meb+tW7duufPn8NKNyQSacmSJRMnTkRvgL9029jYODg42NnZ\nsff+uyigV6z409TUhGlvFx0dje+bLjTc3Nx0dHSQoYKCwqpVqzj5QzKZfOHCBU9Pz4EDB44c\nOTIsLMzd3V1gZraBo6Mj+k5JJpPbEyLBM2PGDPS6FYlEgpPnqFSqnZ2dm5sbH7268vJyjPhC\nYmIiuvoMnyBvZGTEY9OnLoq/v39MTExzczODwcjIyFi0aJEQ2ukKCMzanLy8POb2xuYP0b4d\niURq0yXCZDJBEJSens5+zxgJawiCysrKnj59unDhwoiICBaLtXz5cowC3Pr169GxeWNjY2dn\n5w4/Ar5wh30pT0FBAVpnjslkooVnuSArKwutgfLt2zd+lairqKj4+fldvXr18OHDXdSrKyoq\nsrOzGzp0qKWlpZWVFV7Xlz2HDh1CvDoIgi5cuIAJTktKSt64cSMpKenEiRNpaWn4wh2MYA2N\nRgsICJg/f75YenUQcOy6A3///sXcq1gsFr6TptBQUlK6d+/eihUrbGxslixZ8ujRI87bISgq\nKu7atSslJSUxMXH+/PlC7kxqbm5+5syZvn37QhDUu3fv48ePjxw5ksO/tbGx2bt3L7weqqCg\nEBQUNG7cOAHZia/VZ7FY6M7cJBLp9OnTSGjKwMDg9OnThLR5JZbq6mpM5/gvX76gE0C7Fu7u\n7l5eXvDaqIGBwfnz5zmMhevp6V29etXS0lJWVtbY2PjUqVNtShJyGNhDg3l+IJFITCZz7ty5\nKSkpnz59SkxMnDZtGuZa1LNnz/T09M2bN8+fPz8wMPDevXucxMUxq2YkEon9OlpxcTF+Bp9Z\nzzkYxUcIgtC+SDfH09MzNzcXfv3x40d3d3fMEwJ78D9JvKw3iUQaPnz4nDlzjIyM8HuYPHly\ncHAwXM5sYGAQGRnZt2/f8PDw2bNnz5s378qVK7z860UQkph9Hgx///7F9MrkLzQaDS7hqaqq\nEtlvksFgmJqaoh+d5eTkPnz4wJ2IwLt374qLi/v164dkvsvLyzOZTMRvgLUMGhsbR40a5ejo\n2NnG6l2C1tZWJHSH1OdzcrIxGIzy8nINDQ3BVUXARxk2bBjSMQKCoD59+mRmZmJct9bWVrgj\nWb9+/XisuZGRkaFSqRzKnXSW+/fvHzhw4Nu3b4aGhtu2beOL6N2TJ082btyIT+eCIOjatWtc\n+NxwumdtbW1nO0/wHfjHiO/FTqfTT58+/ejRI7hLjbOzc2dPwsrKyjFjxqC7m5w8eXL27Nnw\na0lJSRkZGUzT9A8fPsyYMQPJZF+3bl1RUVFiYiJ6mx07dvCeU1FbWzt37lzYA6BQKBs3bty4\ncSOb7T9//ox5KuvXrx++SQznXLt2DdPV/r///rt58ybXO+wUzc3NR44cuXPnDovFmjRpkre3\nN+caUnyESqUqKSlh+t9UVlbiBXSeP3/Oec6Dq6srpsHGrl27MN82h9DpdFjndfXq1WhBk23b\ntq1fv56LHWJQUFCg0WjNzc21tbW87409bFLMQY4d/ykvL8/NzVVSUhoyZIhA798cQqFQDh8+\nvGTJEviWIyEhceDAAS68utbW1qVLl8I/MHix5uDBg5htbt++7ebmBvu4V65cefbsGX+7OIgI\nXLtBFApFCAUKFArl1KlTrq6ucCykZ8+eJ06cwAfkqFSq8FUA2cNgMOh0Ovqe9PLlS1dXV9hj\nzsnJcXJyevDgAY9m//z5083Nrc0uEaqqqiKilMs1cO4mfn7Tpk3I4mNqauqPHz98fX07tWc1\nNbW4uDh/f//Xr1/36NFj5cqViFfXHiYmJpmZmTdv3qypqRk5cuTw4cPxf4KRqM3Pzy8rKzM2\nNu6UHqe8vPydO3eys7PLy8sHDx7cYVpev3793N3dkepXKpXKplkZJ0yZMsXQ0PDTp0/wkEQi\nIcUcQmDLli2IYs7Hjx9//PiB6XzaHmlpaSkpKVQqdebMmQKqyaBQKJgGOVAnL6HLly+/d+8e\nInSlrq7OdUUw7NWVlJSgvToIgkJCQlavXk1gTSF/ARE7nsBH7C5durRlyxa4R8qgQYNiY2NF\nRFiuuLg4OTmZyWTa2NgYGBhwsYdTp05hREnOnj07Y8YMdMTO0tLy27dv6G3S0tJEzXvgL52K\n2CFkZWXt2LHj/fv3WlpaXl5eeBFU3qmvr3/58iWJRBo2bJigH995j9jR6XQ/P7+LFy82Nzeb\nmZkdPnwY1o738vLCaLx5enrymL0UFRXVpvAY7AFz10lddCJ2aBobGyUlJclk8u/fvwcNGoS+\n2tNotK9fv/KxELjNiB0edBdEmMjISLg1RXNzs4uLC1zAKCEh4ePjs3btWn6Zh4fFYt2+fTs1\nNVVeXn7OnDmc96Rqj4aGhsDAwIyMDHV19WXLluF7ngqImpoaQ0ND9OImiUTKy8vr8NZz5MgR\nRImTQqGcOXNm2rRpvFjSZsQOgqD58+ej61ItLCzu3bvXqT2npKSEhYX9/PnTxMRk69at6Ghf\ndnY2LHNjZmbm5eXVph4nhpycHHx/sE+fPnXYxuP79+/btm179uyZnJzcggULNm/ejPEFQcRO\nDCkuLt60aROS0Pbu3bvt27eLiCx1r169ONGCYkObzewx8rno5T8YWOeTl+OKHyUlJQsWLIB/\n+UVFRV5eXkpKSlOnTuXvUWRlZQWXxsd39u/fj7S4ePPmjbOz89OnT+Xl5fFxNS76sWLA9GuB\nIMjAwODMmTOGhoZi044vJydnw4YNHz58kJKScnV1nTNnDuYZnk6n//37l8PGVnxk/fr1qamp\niALlvHnzkIZjhw8fRm7/LS0tu3fv/u+//+DGxIIAVgLisbcsGm1t7TNnzjQ0NDQ0NPBrn5zw\n798/TMoai8X68+cPe8eusrJy//79yJDBYPj4+Njb2wsi1zYsLMzb2/vBgwcsFmvs2LHoKhMO\nsba2bjPvMysra8aMGfAvOjs7+/Hjx48ePepwPcrAwEBKSgrpUQtBkK6urpKSEvu/otPpCxcu\nhOW66uvr4eeTzoa9hYMY5j8RSHZ2NqZMocOqsS4EXhAcP6Ovr4+Z6dOnjwBt6pokJCRgnudi\nYmKIMgaCICaTGRUVNWXKFCsrqx07dmC0PYUDpojh169fsHgBPn7WobhPh4wfPx4TqXJwcBg4\ncGB7Xl1zc3NoaOjcuXPd3NxgJVURp7q62tnZGdbNb2pqOnnyZFJSEqb0oWfPnpzENviOjIzM\n3bt3r1y5cvDgwbt37x47dgx5CyNFxmKxxOn6KTi0tLQwVTLq6uodLkZ/+/YN84RTXl4uoN++\nurp6dHT09+/fi4qK4uLi0KoIPBISEoL+FIWFhZgMzjZRVFTcs2cPkiglJSV16NChDj3arKws\njAjrqVOnOm+yMACOHT/homqsC7F48WJ0YoS0tDRe7GPPnj3obezs7JKSkuLi4kRqfYpHmEzm\npUuX3N3dV69ejWk7yCH4B3ohP+JjCAsL27Rp04sXLz58+HDixIklS5YIP0MDr6IHz7i4uCBZ\nWSQSycXFZdasWTweq3fv3idOnICVDkgk0vz58728vNhs7+HhERgY+OTJE1gajcP2X6Wlpchj\nnpC/zydPnmCWwxITE4ODg5FlIykpqSNHjhBV2EShUMaPH+/i4oKR+MFfP/EzADwUCuXYsWNI\nV0Z5efnw8PAO08V0dHQwroyysnKH7bx4QVJSku85IXh5B7zCTpssXrw4JSXF399/3759z58/\nbzMciAF/lW5sbBRyT0sOAUux/GTcuHH6+vroJDNXV9f6+vrg4OB79+5RKBR7e3tvb29RFriv\nqKj48eOHvr4+Pi49bNiw8+fPHzp0qKioyNDQcPv27fhcPWtr68ePH1+/fr2uru7ly5fJycmw\nvvzhw4fv3r3bYay7S7B58+bz58/Dr69evRoSEtJe86X2GDdu3KFDh9A3eysrKz5a2FkwModp\naWlv375FNy8XAnZ2dmhdMQUFBViugkwmnzx50svLq6ioqF+/frDWTIfU1NQoKCiweQSfNm3a\npEmTvn37pq6uzj6x5t27d5go3YEDB9jnRD548GDDhg2lpaUSEhIODg5lZWWZmZmysrILFy7c\ntm2bEBK08V5ya2vr3Llzzc3N4Ux5W1tbPkZN+MWiRYtSU1ORoZKS0vTp0wm0pwsxevTorKys\np0+fvPdU9wAAIABJREFUslis0aNHc5LY3bNnz6VLl6J1y319fbuciIGJicnbt2/RM3BuLicY\nGxt3Kk3IwsKCSqViEqnv3LnDx9V8fiHmxRP//v3D59PwEQkJCTgm9/fvX/ib/Pr16/bt2zMy\nMpSVld3c3FatWrVkyRJ00fuiRYvQbRlFBxaLtWXLloiICCaTKSkpuWXLFvZhDARZWVkmk9nY\n2IiejI2NXbFiBXrG09Nzz549/LSYCIqLi83MzNAzFApFUlLSwsIiMDAQI7XKhsOHD+/fvx++\nAdvb2589e5ao7C4mk6mhoYHJ0bl27ZqNjQ3nO5GSkqJSqbxkv9XU1CxZsgSOgKqrq4eHh3PX\nf/POnTs+Pj4/fvyQk5Pz8vLCN33qLMnJyZjINIVCKS8vx0c7IAiqr6///PnzqFGj2gvBrl+/\n3s/Pj0eTOuTXr1+WlpZoGzw8PNAJVYKARqNJSUnxKHlz/vx5OEfe3Nw8MDCQ7xXKDAYjNjb2\n1atXqqqqzs7O/PVuFRUVyWRyU1MT5mIosrBYrGvXriUnJ0tJSc2aNYuTqBV7KBSKgoICXEDD\nYrEqKirU1NQE6iyWl5fb2toiud2Ojo5wUjuLxbpx40ZKSoqEhMTs2bO5q4jCM3fuXEx3Micn\nJ3Q6gZycnISEBJ1OR+uGCgIWi8VOXZkl1rS2thJrwM+fPzFfOIVCqampIdaqNjl9+jTGVDjX\nlTvwVYc2NjZ8tJYoMGlAaFRUVH7+/Mn5rn7+/JmcnJyfn89fC0tKSqqrqzv1J5aWlugPIiUl\nVVpayl+rOKSoqOjNmzdNTU3c/fmHDx8w4fDz58/zaNK3b98wokVmZmZstmev79OjRw+uLSkt\nLfXy8rKxsXFxcXn79i37jW/cuIGEbaZNm1ZXV8f1ccUGJpOJDq7Iysrm5uYSbZR4cubMGdjt\nUFBQOHr0qECPVVdXFxUVtW/fPvQNCyNKFxkZyZdjpaamov1UEol0//59vuy5s7D3bcR8Kbau\nrk7QciewZBR8K8VvgNH+gCCIwWB8//4d3y+VcG7cuIGZuX79OieNseXk5Fj/b2MDCILwSloq\nKipVVVU8Gkk4qqqqFAqlzTBwdXX1+fPnly1bxuGuJCUlhwwZAkEQv76W169fe3p6wv3CJ06c\nGB4ezuHad3Bw8KxZs2AzJCQk9u3bJyEh0SmrpKWlqVRqbW1tYWHhxYsX//79a2lp6ejo2Fkd\nRzk5OTk5ubq6Ou6Cf3BzMPRMVFQUj+XG8vLymzdvDgoKgn/gsrKy+/btw385cBesDi2vr6/n\n7t/9798/a2trRFH58uXLDx48YCM8NmbMmNzc3MLCQmVlZS0traamJnQNoCCg0WgyMjJ///4V\n6FF44eHDh+iMqPr6+g0bNly5coVf+1dSUqJQKI2NjcSmzBIIlUpVVFS8devW8uXL4UWAf//+\nrVu3TkNDoz3xl9zc3HPnzpWXl1tYWHh6enKXlY746/CP69evXxhJnY0bN/Kl4NfExOTIkSO7\ndu2qqqpSVlb29fW1sLBA/6Ll5eVhuRPei/c7BN15D4OYO3aw9yrQ/bM/kL6+vpqaGjqRWU9P\nT1NTU6BWcQc+9YdGo3FoJ/7jOzk5nTlzBomQ02i0VatWieCn7iwaGhqbN2/et29fm++Gh4c/\nePBg8eLFbWZdtLS0MBgMTvojcUFDQ4OLi8uvX7/g4f379318fDgUKR0wYEBWVlZKSkpdXd3o\n0aN79+7N3X8qOzt75syZcMVAdHT0/fv3IyMjudgP1+Cf4uDnWh536+3tPXbs2KdPn8rKyk6b\nNo3N75fFYo0fPx6jpIAGjltzYcPly5fRfTLodHpoaCh7KSUajQZrswnzdyfKv3H8Y3ZhYSHf\nDRb0TUeUgT94YmIiJrUjPj6+zcyK7OzsGTNmwD/bhw8fJicn3759G30nampqysvLg6XUOUxO\nLSkpOXbsGOZfUFVVVVtb26Zwd2dxcnJycnKqqqpSUVHBCy8jEHsOdLFMyS4HjUY7fvw4Umqk\noqJy/Phx0WzKOW/ePPSQRqM5ODhwvTdFRcWkpCR3d3e4f9/9+/cHDhzIs40igbe3940bN9as\nWTNixAjMWz9//kxJSXFzc4uNja2pqXn16hVcolVbW+vp6amnp6enpzd9+vQvX77w3aqcnBzE\nq4O5desW5xcXRUXFmTNnOjs7d6iSwIaAgAC03E9SUlJGRgbXe+MCW1tbTIxw8uTJfNnz0KFD\nvby8PDw8OmyHoK+vf+LECXgZlEwmW1tbI3FTCwsLrhPdysrKMDOlpaXc7arboquri5nh5WwH\ntAe+D2x7nWEPHDiAfhh7/fo1Wrj4xYsXw4cPnzhx4vjx462srOC1CPZkZmaOHDkSUcRE6NGj\nB38VKlRVVUXzPg4j5hE7UcDa2vrFixfPnj0jk8mjR49GitJFDTs7u+Dg4AMHDlRUVOjp6e3c\nuZNHV0xLSysoKIhf5okUo0ePHj16dFNTk6OjY5u+S0BAgLe3d3NzM4lEWrBgQWtr67Vr1+C3\nMjIyFi9e/OTJE/wDaE1Nzfnz5z9//mxgYODq6tqpUwV/lRH+dQfferWoqIh9L3b2MJnMmJiY\nhISE5ubm8ePHr1y5kn2809zc/MCBAzt27KivryeTya6uru7u7lwfnWvs7e0nTZr048cPNTU1\neGU5Ly9PXl7eyMiI638KvnyP81abXEOn0+Pj479//963b19JScknT57Az3uYpEwO+fv3b05O\nDplMHjZsGCE6ULa2tmPGjEG08Wg02rZt24RvhtgzefJkTKi+vXQI/MMJkpXe0tLi4eGBPKx+\n+vRp1apV9+/fZ39opO0TGjKZvGfPHlH2w/iOmFfFCr+lmBjQ2NjYKbUhdEuxbsWRI0cwT5zt\ngU/Lu3v3LkbEq6amxsbGpri4GB7q6uo+evSowxY3CI2Njf/99x+6WMfR0TE8PJzDP+cRuKXY\nmDFjsrOz0fM3b97kxbE7dOgQ+tlg2rRp+GdxPI2NjUVFRZqampx/e7wj6JZiTCZz/vz5aN1E\nBQUFLy8vZ2dnAX3MhoaGyZMn5+XlYeZJJFJoaChew5J9S7G0tLSlS5fC7/bo0SMmJgZTXS4c\n6HT6hQsXcnJy1NTUXFxcuGuuiIbJZCYnJ3/8+FFPT8/Z2VlaWprDzhO/f//+/v17nz59RKTn\nJF9AWoqFh4cHBQU1NTXRaDQvL682O/hBEOTm5obRgYuNjYWLcz98+IAXgfr8+TP7vOGePXti\nLsj29vZeXl5CE28SkZZiwLHjCfFw7IqKivbs2fP27Vt1dXVPT8/OJpt3UceusLBw3759eXl5\nWlpaa9as6ayS3IsXL6ZOncrhPx2finHr1i3MSi4cLkXPeHt7b926lXOTcnNzV61aBWujT506\n9ejRo0ILD8OO3cOHDx0cHJDVWHt7e15y7BgMRt++fTHnVVZWlmj2MhFCr1g6nT5w4ECM56So\nqHjmzBnehSrwYLxqNCoqKvn5+RgZCzaOHZ1ONzc3R2vJ9uvX79mzZ109iMJgMBYsWIB42wMH\nDnz+/DmFQmHv2LFYLF9f33PnzjGZTCqVunr1atFsS8UF6F6xTU1NxcXFOjo67TX4qqqqevr0\n6caNG5GCmxkzZpw9exZ+/eXLF8wVkkKhfP36lX27sCFDhmDaWqakpAgzC0hEHDuwFNvdqamp\ncXBw+PHjBwRBX79+zc7Ojo6OnjhxItF2CZbKysoZM2bAd5rCwsJnz57duHGjU7GlZ8+etefV\nycrKYtwRVVVVdAGNpqammZkZg8F4/vx5eXm5qampgYFBUVERZj/4XG/2mJqaPn36tLy8XFpa\nmi9pwp3F0tLyyZMnly5dqqqq+u+//xwdHXnZW1NTE/5poaKiQjQdOyFQUlKCd5tqamo8PT3f\nvn3Ldx3Ejx8/tvdWdXV1TU0N55HCL1++YDoEfP78uaKiQkNDgycTiebq1avoGOr79++DgoLY\ne2n//v3bsmULkpjR2toaEhJibm4+ZcoUwdoqdKSkpAwNDdt798CBAyEhIS0tLWQyecSIEZaW\nlkOGDEF/CX369LG0tESvAMycObPDJrBbtmxZvXo1MrS3tx84cCCDwUhPTy8rKxs8eDBcTiT2\nAMeuu5OUlAR7dTAsFuvkyZNi79hdu3YNfadhMBinTp3qlGOHTxKysLCYNWuWoqKioaHhtGnT\n0JEbHx+f2NhY+CLVq1evkydPNjU1TZky5d27dxAEkclkb29vPT09zA65y+wm9mbZr18/f39/\nvuxKVla2T58+X79+RWakpKT69+/Pl50TRUVFxdGjR9+9e9ezZ09PT89OrRC156xXVVV9+vSJ\n72EJNmUiKioqnQoG438sFAqlw5u06PP+/XvMzJs3b9hsX1FRMWHCBEyREwRBjx49Ej/Hjg0P\nHjwIDg6GXzOZzMzMzAULFmBWikgk0rlz57Zu3frw4UMqlTp9+vTAwMAO9zxv3jwNDY3Lly83\nNDSMGTPGzc2ttrbWwcEhNzcX3ueyZct2794tiA8lUgDHrruD151qL0tGnMB/xs6qi02fPj04\nOLi6uhqZWbt2LXJ1joyM3L59+9evX1VVVb29vV1cXBYvXlxSUtLU1KSvry8hIbFp0ybYq4Mg\niMlkHjp0KDY2VldXF1lH0NHR8fT05PLjiQshISFOTk6wIhSVSnV3d9+0aVNNTc2IESNWrFgh\ngp5BTU1NaGjo+/fvtbW1PTw8MMHF+vr6adOmITXRN2/evHnzJibVkg0aGhr29vZt9qYUxJq7\np6fn1atX8b8UEokUGBjYqXYCurq6tra2Dx48QGYcHR3FoI82/iGqZ8+ebLY/dOgQ3quDIEiU\nm0wKgsePH2NmHj586OTkhJnU1NSMjIxkMBhkMpnzVXtra2t0ZsLOnTthrw6CIBaLderUKVtb\n23HjxnFre9cAOHbdHfx9hbuSN1Ggubn5+vXrRUVFBgYGDg4ObHSPYGVgNMOGDevUsTQ0NOLi\n4gICAnJzc3V0dDZt2jR9+nQkodPW1tbW1hZdhkIikXr16oX8eVZWFnpvLBYrLy8vJSUlMjKy\nsLAQrooVj9a6vPDff/9lZmYmJyfT6XQJCYmNGzfCy98pKSlPnjy5cuWKSPl2DQ0Ntra2yArm\npUuXHjx4gF6NiouLQyvdtLS0HDt2LCoqivNDhIaGampqXrlyBS1/amdnhwh5lJaWSkpKsus1\nxDFaWloPHjw4duzYly9fDA0NBw0a9ObNGxqNNnPmzM7+WCAIOnHixO7dux88eEAmk6dPn75l\nyxbeLSQcZ2fns2fPIl3nZWRk2Lewa1Owg0qlzpkzRyD2iSr4tAE21e6dFTnHkJOTg5l58eIF\ncOwAYs7w4cPXrFmDKDoOGDCgi0oA1NXVTZ48Gbmtnj179tatW+09Ck+cOHHRokXR0dHw0MzM\nbMOGDZ094uDBg+Pj4ykUCpxshI99sikuxjttSkpKioqKHPbn7T706NFj0aJFEARZWVmhkxoz\nMjL09PSUlZVXrlyJ/9Kam5vhck4TExOhNeG9cOECOi+toaHh8OHDaA1hTJ4ZBEGIT8Ah8vLy\n+/bt8/f3P3jwYGJiIoPBsLOzgytsCgoKVqxYAS8Ojh49+sSJEx1K7nWInp4esmQGQdDChQu5\n3pWioiJ6V+KBmpra3bt3Q0JC8vPz9fT0fH19BwwYwKZyAt9wSFVVNTg4GP+cKd7Mnj37zJkz\ncKdsCIJIJBKP+bhswF9p+VVFnpGR8eHDBz09PRsbGx69T74DqmJ5QjyqYiEIys/Pz83N7dGj\nx5gxY6jUzrn78vLyr169Wr9+/evXr1VUVJYtW7Z69Wrh17sdOHAAc+cIDAxcsWIFmz95/fr1\nhw8ftLS0xo0bx/UvE+3YcX6yJSUlubm5IUNtbe3U1FQhFLE2NDTk5eVJS0sbGxvzsTk3XBXL\nYwN49hgZGbW3XH748GHY+YN5+/atq6srvKitp6cXFRUlhLI4NTU1X1/fvXv3oictLS1v376N\nDDH/dAiCXFxcDh48yPvRGQzGmDFjPn/+jMxYW1vHxsbyvmfOYS930h1QVlaGS2Lb8+2+fftm\nY2ODRFv19fVTUlJkZWWFaKNgQVfFsuf27du7du36+vWrtra2j48PWj0nJSXl+fPn8vLys2bN\n0tHR4dGklJSUefPmIXdnTU3N1NRUHkPaLBZr6dKlN2/ehIfm5uYJCQnw6oGIVMUCx44nxMax\n4wW8lsGBAwcwNzAh4O7ujvzSYMzMzNBpPVzw4sWL06dP//7929zcfN26dW1eDrhz7CAIun79\n+qlTp37//j1kyJDt27f37duXF1M54cmTJ56envBld9CgQdHR0dra2nzZsxAcu5kzZz579qzN\nt4YPH45knjGZzJEjR6JXPIWjrKGmphYdHb148WL0pLOz85EjR5Ahi8Vyc3NDXD1dXd3k5GS+\nyJjl5+ePHTsWPUMikb58+SLM4mjg2HXo2EEQ9P3791OnTpWUlAwcOHD58uVcpFs0NTV9+fJF\nSUmJXz9ePsK5YwdDp9MxAXVfX9/Tp0/Dr6WlpePj4zlPQm2Pe/fuhYeHl5aWDh48eNu2bbyL\nF16/fh0TMkCkqYBjJwyAYycEEhISPDw80DODBw9+9OiRkM1AXxFgyGTyy5cv8X2EOCQzM3Pm\nzJmIsHD//v0fPHiAX13l2rETMrW1tUOHDkVXe/AxqCMExy4vL2/atGltHsLc3Dw5ORl+/f37\nd/yd4NWrV1yfBhyipqbW2tpqbW399OlTeEZDQ+PRo0eY9VAWi/Xw4cO3b99qaWnNnDmzU0rg\nbGjTsfv69StSoNDc3Pzx40dpaWkDAwM+RmrRAMeOE8eOR27fvu3t7Q3/iu3s7M6cOSNSaaad\ndeww4E/jIUOGdNhtQvj4+flh2jQj11IRcexAr1gArzQ2NnY4IwRWrVqFmWEymR8+fOB6h4cP\nH0a3iygoKMBEBLsWubm5aK8OgqC0tDRR9kQxDBgwIDMzc8+ePa6urph1czs7O+R1m64Sv/wn\n9lCp1Js3bx47dmzZsmWBgYHPnj3DZ7mRSCRbW9sNGzYsWLCAj1b1798f03Ns/PjxiFeXkZEx\nbNiwCRMmjBo1auLEiej2JEKDyWS+ePHi3r17oMUt1/z8+XPlypXIrzg5OZkTBZAuBDqXAIaN\nmCKBqKqqYmZErX0IcOwAvDJ27FhM/Sn7Lg5MJvPy5cvLly/39vbmY5N4LS2tHj16YCbxM5yD\nT3XHN2LvQuDrzmg0mqjl/LJHXV192bJlwcHBwcHBSKBi5syZa9euRbbR0NCYMGEC+q8mTpwo\ntMsulUqdN2/enj17VqxYIcyiZjKZHBERgeTgW1tbHz16FH7d2Njo7u6OuFNv3rxZv3690AyD\n+fPnz8SJE6dMmbJo0aKhQ4ci3QUAneLp06eYWKAIRrN4AS8Ww3uOHe80NTVlZGRkZGQgXWgX\nLFiA9u1oNNry5csJsq5tgGMH4BUjI6OQkBAk/DBu3Dj22uteXl5r166Nj4+Pjo6eMWPGjRs3\nuDgoi8UKDQ01NTXV1taeOXMmHJnbuHEjehtra2te+lGamJhgZgYNGsT13gjHzMwME9RZsGBB\nF+3ptGjRovfv39+7d+/NmzdnzpzBpOmEh4fPmDFDRkZGTk7O0dExNDSUKDuFiYGBwf379wsK\nCgoLC2NjYxGJtdzc3IqKCvSWqampSNs34RAQEIAo99LpdD8/P7jxnTBhMBhxcXHbt28PDw/H\nhK67Cvj6bqFVfAuHoUOHYrTxO9VTURC8efNm+PDh06dPnz59uqWlJSye0qNHj1u3bjk4OBgZ\nGdna2sbHxwutFy2HgBw7ngA5dtD/3yu2pKQkPz9fVVXVyMiIzcafP38eOXIkekZHR+f169ed\nPejZs2fRv/kePXqkp6crKysnJCRcunSpoaFh9OjRS5cuDQsLe/LkCZlMnjJlytq1azHqJ62t\nrWxKgEtLSydNmoQIis6ZM+fEiRP4zbpKjh0EQcXFxZs3b05PT5eSkpo7d66/vz+/VgOFkGPH\nIS0tLZs2bbp8+TKTyVRXVw8ODu5s72PuEEKvWO549eoV5mZJo9GKi4v5Hqxlk2M3bNgwTMe8\ngwcPuri48NcANjCZTEdHx9TUVHioqqr64MEDvqddCjrHrrq6etSoUegMNh8fHy50mgQHjzl2\nEATR6fSIiIjnz58rKCgsXLiwU92A+A6LxRoxYgS6+Y2enl52djabLFURybEDOnYA/qCiojJq\n1KgON0O3L4P5+fMnk8nsbEJ3TEwMevj79+8HDx44OjrOnDlz5syZEATdvn3bwsICucK+f/++\nrKzs0KFDEAQxGIygoKCoqKi6ujpzc/MDBw60KYfRs2fP58+fJyYm/v7928zMTBB91oVMr169\nrly5wmAwutYKbKcIDQ29ePEi/LqiomLFihXp6encNWcTDwYPHmxsbJyfn4/MzJkzR8gnAL7J\nBPw8LDRu3ryJeHUQBFVVVQUFBYWHhwvTBt5RUVGJiYmBm9bIyMi4urquW7eOaKP4DI1GW7Fi\nBXuZKqHx48cPtFcHQdD379+/f/+ur69PlEkcApZixY2GhobXr193tn+80OjTpw9m+a9Pnz5c\nlOnh6zPQT8n5+fkeHh6Y5+aLFy/CIaWwsLCQkBA4wPbixYsFCxbU1NS0eRRZWVknJ6f169eL\ngVeHIMZeHQRBmI5bTU1NDx8+JMoYUYBKpV64cMHKyopKpUpLSy9cuBAjticElixZgh7q6upi\n8iAFDb7lw6dPn4RpAL+wsLB4/PhxcXHxt2/fdu7c2VnNUUCnkJWVxSerdAndQeDYiRW3b982\nMzOzs7OztLScPXu2KCyNYdDT00OXr0pISHB3m8H0hJGQkBg9ejQyvHXrFiJrjsBgMGAH7vLl\ny+j5srKylJQULmwACIKKioqMjAykZ25nwT8kCEjdowvRu3fvuLi479+/FxUVhYSECP/OtGjR\noqCgoH79+qmoqEycODE2NlYQAnvfvn27ffv2q1ev8G/hc/BFISufa6SlpeGz+tu3b2/evCFE\nhaA7oKKigknkmDRpEr5BsAjS3S954kRpaenKlSuRHJe0tLQdO3YQa1Kb+Pv7X7582dPT09vb\n+8mTJzY2NlzsxM/PD0m/kJaW3r9/P1p2ss1cN21tbbilDz5zHCl3AhDLoUOHTE1Np0+fbmFh\nsWbNGrTcDIfMmDEDPZSVlbW1te3wr0QtMY47ioqKVq5cOWbMmHnz5qWnp2PepdFoBPq47u7u\nz58/LygoiImJ4V0hFs+ePXtGjBjh6uo6ceLEWbNmYX7RDg4O6FooKSmpzZs3890GYVJdXT1j\nxgxLS0tbW1u0jiOAv4SEhCxevFhFRUVFRcXZ2TksLIxoizgCFE/whEgVT8THx2OKrnv06AH3\njhQocPFEfX29oA+EgcVi5eXlVVVVDRw4ENMT4sWLF/b29kwmE5mRkpK6dOnSmDFjIAjasGHD\nhQsX0G9lZGRw/QTfhYonBEebxRMVFRXR0dFlZWUmJiYLFizosIIvNTUV0w197969GO3rDmEw\nGH5+flFRUS0tLTo6OgcPHhw/fjyb7S9evBgUFFRWVqanpxcQEGBvb9+pwyEQXjxRXV09btw4\nRJGHQqEkJCSMGDFCaAYQKFD89OlTBwcH9Mz69esxPa/r6upOnz6dm5urpaXl7u4uCOdSCALF\nCCtXroyLi0OG8vLy2dnZhKup8V480dUBxRMAPoNveI+f6RR1dXV379798+fPsGHDzM3NedmV\nICCRSHhFEphhw4bt3bt3165dDQ0NJBLJysoqPDxcXV0dftff37+oqCgtLQ2CIEVFxYMHD3bp\ndRnRpKSkZPz48chtPjY2NiEhAaN3iAG/IP7o0aPOOnYUCmXv3r0BAQHV1dV4fWD8EdevXw8/\nkn3//n3ZsmV3794VNeUCDrl27RpaZ5HBYJw4cUKYjh2BPH/+HDOD7z4nJyfn7e0tLIsEDiZz\ntLa2NjMzk+vHEoCYARw7IcFgMKKjo5OSkphMpp2dnbu7O/ubHBeMHTtWS0sLkeeAIAjdWbmz\nFBcX29vbw7qmJBJpzZo1fn5+fLBSWLi7u8+fP7+oqKhnz56YeJ6CgsL169e/fPlSXV1tbGyM\nL9kD8M7+/fvRwZvs7Oz4+Ph58+ax+RO8hDLXaiw0Gq1Drw6CoNjYWHSgvaWl5fr1613Usauq\nqsLMdJ/ACT5jT8hVt8IHH//m8TEeIE6AHDshsW/fvk2bNqWmpqanp/v5+fn4+PD9EPLy8hcv\nXhw2bBiFQpGXl1+9ejUvEvPbt29H1OpZLFZYWFhubi6fLBUSsrKyJiYmGK8OoW/fvsOGDQNe\nnYDAyAS0OYNh1qxZ6JsTiURycnLiv2Uo8MumQlbu5SP4mDrSiELscXBwQP/MSSQSpg5X/MA8\nI+nq6mL0QQEQBL148cLT09PR0TEoKEgIa6OiA3DshEFjYyNG2zY6OhojB88XBg4ceOfOneLi\n4q9fv/r7+/NSDP/27Vv0kMViYWYAXY6SkpLU1FSuC047Ra9evTAzenp67P/E0NAwOjra2NiY\nTCbr6uqGhIRwUvfAC/j9C/qIgmPSpEkLFixAhiYmJps2bSLQHmGiqakZFxc3btw4VVXVgQMH\nnjp1quv+Hzlky5Yty5Ytk5OTo1Aow4cPv3jxYpeQ4RAmGRkZ06ZNu3btWkpKyqFDhxwcHLru\nY1tnAcUTPMFh8URpaengwYMxk6mpqQMGDBCcbTwyYcIETIguOjp60qRJ+C2JKp4QEbpE8QSL\nxdqyZUtUVBSLxYLjGUFBQXzcP7544suXLxMmTKirq4OHgwYNunfvHocdkIQmocxisbZt2xYR\nEcFkMmk02vr16zFd6TiH8OIJmBcvXrx7905bW3v8+PFCFjkjsHhCRBBm8QQMi8VqaWkRncZi\nIlU8MWPGDEzyZWRkpKDTEEHxRDdCQ0NDQ0MD3VReTk5OxNWrvby83NzckOGgQYO40yUBiAKd\nGiEWAAAgAElEQVRxcXGRkZHwaxaLde7cuaFDh2JKUPlL375909LSIiMjf/36NWjQIDc3N85v\nP0KTUCaRSPv27fP29i4qKjIwMIAd9C7NsGHDhg0bRrQVACFBIpFEx6sTNdC1RDBIcpHYAxw7\nYUChUI4cObJkyRL4aV5CQiI4OJhfbToFhL29fUxMTEREBFwVu2HDBnAF4Tt//vw5duzY69ev\n1dXVPTw8hg4dKqADwSXAaPDaIjxSX19/9+7d+vp6S0tLeB1WV1dXNJUUMairqyMV0wCAGPDj\nxw8/P79nz57JycnNnz/f29tb0OHbT58+VVRUDBgwQElJSaAH4hwjIyNMXq+xsTFRxggZ4NgJ\nCTs7u+fPnycnJzOZzPHjx/ft25doizpm4sSJmPbhAD5Cp9NnzZqFCA0mJCRcv34d3T+Dj+Cf\nIvj7XPH582d7e3u4ETCNRgsKClq0aBEf9w8AADiETqcvXLgwLy8PgqA/f/4EBwczGIytW7cK\n6HDNzc2urq6w/IqkpOSBAwcEXfPEIQEBAZmZmdXV1fDQ0dFRQFdXEQTk2PGESAkUEwXIseMu\nxw4vKG1lZYUWHeUjOTk59vb2iHlUKvX27dt8rJqcM2cOusk6jUZ78eIF3OejmyAiOXYEAnLs\nhJ9j1ybPnz/H9F9RUVEpKChAz+Tm5l69erW+vt7MzGzx4sW8JD/s2bMnJCQEGZLJ5AcPHuBz\nygmhuro6Pj6+srJy6NChwmlPLCI5dqAqFgAgBnwKCH6GX1hYWJw9e7Z///4SEhJGRkYRERH8\n1cLIzs5GD+l0epcTxwEAxAOkYqm9meTkZDs7uzNnzly6dGnz5s29evU6c+YM14d78uQJeshk\nMvGJH0ShoqKydOlSHx8f4Xh1ogNYigUAiAFfEy3QKumpU6diGlrzEWVlZUwn8vbkAwEA0eTj\nx48PHz4kk8mTJk3q06cP0eZwz5AhQ2RkZNBRQ7iVIoK/vz+63SKdTt+2bZuenp6dnR0XhxN0\nmgeAC0DEDgAgBisrq7lz5yLDHj16dIlSgzZZvXo1ejh06FALCwuijAEAOktsbKy1tfXOnTv9\n/f3HjBmTlJREtEXco6amFhoaikivGxoaHjx4EL1BcXEx/q/i4+O5O9zChQvRQxUVFdDZjHBA\nxA4A4IgfP368efNGUVFxxIgR/GoHd/z48Tlz5uTk5PTo0cPBwQHfGamrsGbNGllZ2YiIiNra\n2rFjx/r4+AhZRA0A4JrGxsYtW7YgGah0On3Dhg0TJ07ke9dHoTF9+vTevXu/evWqX79+w4cP\nx3yQ3r17f/r0CfMnDAaDu2PNmzevpqbmxIkTv3//NjU1PXbsWI8ePbi0G8AnQPEET4DiCah7\nFE9ERET4+fnBwuX9+/e/fv06cvHqEgLF7KHT6Txq2eAFirsboHii6xZPFBQU4OslX716paur\n26n9iEjxRGVlpZubW2ZmJgRBWlpax48fHzVqFHqDx48fOzk5YTy506dPOzg48HhokRIoJgRQ\nPIGl+V9NI7Ob+kYAUebr16/bt29H2tEUFBRs27aNWJP4xenTp42NjbW1tUePHp2SkkK0OQAA\nAairq5PJ/8+tkEajqaqqEmUPj2zatAn26iAI+vXr19KlSzHFEzY2No8fPx49ejRcDEuj0by9\nvXn36gCig7AduyhPlysVjfj5pj9ZS11cLpT/70GH1fon/kSQx6IFs+YuXOUdcP81UjDIfHLl\n2IaVSxwXefjvP/utkcsAMgDAIS9fvmxpaUHPZGRkEGUMH7lx44avry/8eF1QUODi4oLR8wQA\nugMqKiru7u7omVWrVsnIyBBlDy+wWKzk5GT0TGVl5cuXLzGbDRgw4MaNG9++fUtPTy8oKBCc\nyh2AEITp2LEKn0bc+PW3FbdkyWI2ndxypIbBRE8m790Y86TM3nXt/sAtNn2bjwesSiypgyDo\n6/XtR65m/DfLw99rscyXh77eZ0CUDyBQ4NV2NIqKioRYwl+uXr2KHjY2Nt68eZMoY7o64p2K\nIPYEBgYGBwfb2NhMmDAhNDTUx8eHaIu4hEQi4VMD20u0kJaWNjIyQsosuOP3799bt26dOnXq\n0qVL8R4kgBCElOBclh6y/fSz8pq2s09yz/vmKFhBZXeQGUZzycmcynF7D84wUYYgqJ/RoNLs\neYknP87YPfjw1XyDRYfnTNCHIMhgPzTXJfhy6SKnnrLC+SBCoLW19f37983NzQMHDpSVFZ/P\n1XWxsrLq16/f58+fkZmlS5cSaA+/QBaXEbptfhgvXLlyJTAwsLy8XFtbOyAgYObMmURbBOg0\nFArF1dXV1dVVmAdNSUlJT0+XlZV1cHDgo8DK3Llzo6KikKG+vr7gehXW1tba29sXFRXBwzt3\n7qSlpRkYGAjocAAOEVLETmXwHB//fQf3b8G/9a/wxu67jX7+s9GTjKYiPX39KX2QIkGSuaIk\nvaauuSatuIkx2eb/FO0llceYytFepP4WrPVCpLi42Nra2tbW1t7e3sLCAqQ9iQJSUlJXr16d\nMWOGpqamsbFxUFDQkiVLiDaKD2BEO8lk8vjx44kypovy9OnTdevWlZeXQxD08+fP5cuXZ2Vl\nEW0UoAsQGBjo6OgYFhYWFBQ0ZsyY9PR0fu15586dTk5ONBqNTCZbWlpGR0cLrs339evXEa8O\ngqCWlpb9+/cL6FgAzhFSxI6mqGOgCDHoUph5Jr1sr1/MpC2n+slQ/t/tx4SE/E9TsaXuY8Sv\nut4eBvT6WAiCBsj8z2wTGWry+xpkmJeX9+jRI2To4OAg0BxYpBOLrKwsX6piN2zY8PHjR/h1\nVVXVihUr8vPzRVwFg0qlslgs8Q4uGhkZXb58uc23SCQS/EJaWhot+yn6eHt7f/r06dKlSywW\nS1paeteuXePGjeNuV1QqlUwmi/c50CaJiYnofzqTyUxMTLSxsSHQJKKgUCjd8xxAgCswaDQa\nck1ojy9fvoSFhSFDOp3u6+ubk5PDFzNkZWXPnj178uTJlpYWQWsF//37FzNTWlranc8B2CWg\nUqmC/hLY32sI1pq6F7y9esiqpRZqLEa7RfJFL26HhUa29pmyzVa7pagegiA1if95gWoSlJZ/\n/0tsLywsPH/+PDK0tbXV0dERjO3/D1JSWJ+VC1paWjDNWKqrq/Py8qysrHjfuaABumWSkpJE\nm9BpYmJigoKCSkpKjI2NlZSUeNxbN1Scx6t/MRiMbvg9IHTnzw5DpVI7vBgWFxdjAgEFBQVS\nUlIdeoSiBn6R18zMDJwDFApF0F8Ce91BIm/G5ZnhEXmaJ6Os2tug+c/HiKNh93Krx83x3ONk\nI0Ui1UrKQBBU3cLUpP3fInJlC4Oq/L9PoaSkZGxsjAwlJCQEKi1GIpFgD50vR2GxWBQKBeOJ\nS0lJoZUzf//+ra2tjSnOJxYKhcJisbpWsIqPIOcAg8HoilqGmpqampqaEG/nMJlMJpFIXGuc\ndl0mT54cHR2NnpkyZUoXlTPkERKJRCaTu+E5gEChUEgkEpPJ7PBiqKWlhZnR1dXtil/d1KlT\n586dGxcXBw/79u0bGBjYPc9/GPgcYLFYgv5vMplMZMEQD5GOXUX6W3pt6ZLZ/8s1vr1swQNZ\n02uXAyEIqv32cMOmcMrgyQfOLO6v9n/xMAmZQRCU+rGxRZP2f9GRT42tiib/K1EcO3bs2LFj\nkeHfv3/xsWI+gggU19TU8H5TT0hIwMhqGBgY6Ovr//37l8Vi7d279/jx43Q6XUVFJSgoSHRk\nhwQqUHzp0qUTJ06Ul5ebmpru3LkT7bWLCIhAcW1tbbe9onVbgWJbW9u1a9ceP368tbVVQkLC\n29t73LhxAr3miCywQHH3/OwwsEBxU1NThwLFOjo6s2fPvn79OjKzbds2UfvqGhsb6+vr2ajg\nwhw/fnzu3Lm5ublaWlqzZs1SV1cHAsV0Op1YgWIiHbu+i7cddvg/P4bF/LdhY8Ao3z1zNVQh\nCGIxG/ZsPSE5fk2opw06Ni2lZK1NO3HneYXVZB0IglrqXr2spc+x1iTAegGQmJiImRk1ahTs\nlcfExISEhMCT1dXVq1at6t+/v0B7xosCN27cWLduHfw6JSXlw4cPaWlpXVc4tEOqq6tzc3MV\nFRVNTU3ZPI0BRAo/P79Vq1b9/fvXwMBAQkJCpCqLGQzGhw8fmpqaTExMulDmU2Vl5fv379XU\n1ExMTLrc6iSHHDt2bPjw4WlpaXJycvPmzcO3viCQhoYGb2/vGzduMJlMQ0PDsLCwIUOGsNne\n2tra2toaAgk5IgOR/wapHnoG/39POTjHTkmvTx9NWQiCGsqi8xpa3AfL5qB0cSSk+5maKG6Y\nY7TpXMDjHpuNlJoTww7Latsu0uoyFyz24AP4yLUYIzDW0tJy584dsXfsIiMj0cPy8vKkpCQX\nFxei7BEoiYmJXl5esEb8gAEDrly50rNnT6KNAnCEioqKoaEhBEFCeEznnB8/fjg7O3/48AGC\nIFVV1ePHj3eJqo7z589v3769qakJgqARI0ZcvHgRLyQpBlCpVDc3Nzc3N6INaYOAgAAkmvjp\n0ycXF5eMjAwe5e4AwkRE/euagiIIgs7t34OeVOzjFx0yzGDe7pXNIZcO+1U1kfqajgvc4CE2\nD3RTp069c+d/Yn5kMnnq1KkE2kM4mE44kIjdOPlIeXn52rVrkRWcvLy8LVu2XLhwgVirAF0a\nb29v2KuD/v8S+5cvX4q4k/T58+etW7ciGSmZmZmwdDCxVnU3MGtHZWVlmZmZGHUkgCgjVMeO\nQtNpT9qeRFFGv6Vlve+mdTt7IVFsXTbYinDUhuuW6o6Ojp8/f4YT6eTk5Pz9/S0tLeG37O3t\nnzx5gmwpISExefJkvlgryowcOfLdu3fIkEQiYbpZiw05OTmYvJzU1FSijAGIAUwmE1Ni/+fP\nn9evX3OtaCMcnj9/jskzBj8E4YPPF++2tXFdFBEqrhQDzp49a2JiArdUf/z4MRd78PX1LSws\nzMzMLCgoQMugL168ePXq1XCvGGVl5dDQUBMTE36ZLbJs3boVcW2pVOq2bdvMzc2JNUlA4POf\nwMIHgBdIJBJef0f0+5/iLRR9m8UPzEqRmpraiBEjiDIGwAXAseMbt27d2rp1K6xBD7dULyws\n5GI/0tLSffv2xcT8SCSSv7//169fc3Jy8vLy5syZwx+jRRtZWdmkpKS7d++eP38+Ozvby8uL\naIsExYgRI/r374+eWbx4MVHGAMQAEonk5OSEnhkwYIDoPxfZ2trC4jsIixYtqqurCwgIGDt2\nrI2NTWhoKCakB+A7u3btmjJlCvxaT08vKipKxFfwARhENMeuK3LlyhX0sKmpKSEhYePGjXw8\nhJSUVK9evfi4Q9GHRCIJrtGh6ECj0S5durR9+/anT58qKCg4OTl5e3sTbRSga+Pv708ikeLi\n4pqamsaOHRsUFCT6RYtKSkpXr17dvn17dna2hoaGu7v7kiVLFi9efO/ePXiDd+/eVVVV7dy5\nk1g7xRt5efnz58//+fOntrZWV1dXXAuTxRhR/513IUBLdQAv9OrVC1RLAPiIlJTU3r179+7d\ny2KxutC9ecCAAfHx8cjw27dviFcHc+7cOV9fX8H1PwXAKCsrwwqdgC4HWIrlG5gG6iQSCZQR\nAYRPSUnJo0ePvnz5QrQhAFGhC3l1eP78wXabbG5u7lABGADozgDHjm94eHjMnz8fvobSaDR/\nf//hw4cTbRSge+Hr6zt06ND58+ePGDFi1apVoJYNgqCysrLVq1cPGTLEysrqzJkz4DvpWvTv\n3x+T4GVoaMh7X+PuRktLy4kTJ6ZMmTJp0qSQkBCwmiTegKVYvkGhUMLCwnx8fH7+/NmvXz8Q\nxAYImaSkpNOnTyPD2NjYoUOHiqYCqtCg0+lOTk6IaM62bdt+/vy5ceNGUHTcVZCVlT169OjK\nlSsbGxshCFJRUQkNDSXaqK7Hzp07T506Bb/Oycn58uVLWFgYsSYBBAeI2PEZbW1tS0tL4NUB\nhA9Gt6zNme5GVlYWWgoRgqDw8HBDQ8Pdu3dDEPTs2bNNmzZ5eXndunWLIAMBHWNvb5+ZmXny\n5Mlz585lZWVZWFgQbVEXo6GhISIiAj1z9epVWMABIJaAiB0AICbgxfC6UHtQAVFTU4OfbGlp\nOXr0aGVl5cWLF+GZixcvrl692t/fX7jWAThFS0tr9uzZRFvRVampqcFoxLBYrKqqKg0NDaJM\n6op8//49JydHWVl51KhRIl67AyJ2AICY4OjoiNakpVAozs7OBNojCpibm7d3CY6Li0MPjx8/\n/vv3b6EYBQAIFQ0NDUzjaSUlpT59+hBlT1fk5MmTI0aMWL58uaOjo5WVVVlZGdEWsQM4dgCA\nmGBsbBwdHW1qaiolJWVsbHz27FmgF6+trR0UFNSmb4fRJ2IymcXFxcKyCwAQHhQK5ejRo0j8\nXkpK6siRI/jGJID2+Pz5c0BAQGtrKzL09fUl1iT2gKVYAEB8sLa2trZur8tyN2XRokXW1tZx\ncXH79+9nMBjIvLy8fG1tLTKkUCi9e/cmwD4AQPBYW1tnZmY+fvyYyWRaWVnp6OgQbVFXIicn\nB33pgCAoKyuLKGM4ATh2AABAzNHR0Vm/fr2urq6fn19lZaWcnNyGDRt69uy5cuVKRP1k/fr1\n6urqxNoJAAgOTU1NTJc5AIcoKipiZkRccAc4dgAAoFswZ86cOXPmlJeXq6qqUigUCIL09fUT\nExPpdPqECRMwAuMAAAAAY21tbWho+OnTJ2Rm2bJlBNrTIcCxAwAA3Qh0JeCQIUOGDBlCoDEA\nAED0kZKSunr16p49ezIzM1VUVFxdXRctWkS0UewAjh0AAAAAAABAu+jo6Jw4cYJoKzgFVMUC\nAAAAAAAAiAkgYgcAAACC4unTp9euXauvr7e2tp43bx6c2wcQJkwm886dO/n5+bq6ug4ODkDm\nQ9CkpKRcvny5sbFx9OjRbm5uIq7lK5YAxw4AAAAEQlxc3MqVK+HXCQkJWVlZR48eJdak7kZr\na+v8+fNTU1Ph4dGjR+/du4cvcgTwi/Pnz7u6usKv7927l5mZGRkZSahF3RGwFAsAAAACITAw\nED28dOlSYWEhUcZ0T2JjYxGvDoKgwsLCw4cPE2iP2LNjxw70MCkp6cOHD0QZ020Bjh0AAADw\nn9bW1tLSUsxkSUkJIcZ0W/Ly8jAz+fn5hFjSTfj58ydm5tevX4RY0p0Bjh0AAADwHyqVimll\nQSaTDQwMCDKnm6KpqYmZ6dGjByGWdBMGDBiAHpLJZENDQ6KM6bYAxw4AAAAEwr59+yQkJJDh\nmjVrdHV1CbSnG+Ls7Iz+ziUlJZGsR1Hj7NmzZmZmPXv2nDBhQmZmJtHmcMmxY8ekpKSQobe3\nt56eHoH2dE9ILBaLaBsEyN+/f5HGvYKARqMpKChAEFRVVSXe3yQb5OXlmUxmfX090YYQA4VC\nUVZWhgR/sokyMjIyVCr1379/RBtCGGpqahAE1dbWNjc3o+cLCgpu3LjR2NhoZWUl3m18JSUl\nZWRk/vz5w2YbBoNx8eLFpKQkFos1ceJEV1dXKlXgBXylpaWhoaF5eXm9evVatWqVkZGRgA6k\nrKxMoVAaGhoaGho6+7fx8fHLly9HhvLy8mlpaV2uoyuVSlVSUnr9+nVCQkJ9ff24ceP+++8/\noo0SKgoKCjQarbm5Gd2HWkDA15w2AVWxBNPc3Jyfn0+j0fr37w+kEAAAMaN///4+Pj5EWyEq\n7N27NzQ0FH795MmTL1++7Nu3T9AH7dmzpxCOwiOXLl1CD2tra2/duuXp6UmUPbygq6u7Zs0a\noq3o1oClWCJ58eKFpaWlra3tuHHjbGxsvn//TrRFAAAAIBAaGhpOnjyJnomIiKiuribKHpGi\nsbGxwxkAgEOAY0cYdDrd3d0dqRjKy8tbvXo1sSYBAACAgKiurqbT6egZJpNZUVFBlD0iBWaZ\nnkwmjxs3jihjAF0d4NgRRl5eHkYNITMzs9tmqgEAAPFGU1NTVVUVPaOgoAAy62HWrl07depU\n+DWNRgsICLCwsCDWJEDXBeTYEQa+sw2VShVCKjEAAAAIHyqVevjwYQ8PDzhuJyEhERwcjK6g\n7M7QaLSoqKivX7+Wlpb279+fTV48ANAhwI0gjP79+5ubm79+/RqZAX0MAQCAGDNlypRnz54l\nJyczmcwJEyYAVT8Mffr06dOnD9FWALo8wLEjDDKZHBkZuWXLlpSUFCqVOnPmzN27dxNtFAAA\nAAiQ3r17L1u2jGgrAABxBjh2RKKtrR0TE9Pa2komk8lkkO8IAAAAAACAJ4BjRzwgrw4AAAAA\nAABfAFEiAAAAAIgPDAajsrKSaCsAAMIAjh0AAAAAxITg4GB9fX1jY+NBgwbdunWLaHMAAAIA\njh0AAAAAxIErV64cOHAA7tlQVla2YsWK/Px8oo0CAIQNcOwAAAAAIA7Ex8ejh3Q6PSkpiShj\nAACiEPO0fRkZGRKJJLj9IztXUFAQ3FFEHAqFAnXjEhDkHJCTk2OxWMQaQxRwWbeioiLRhhCM\njIxMt1XcFYVzAL4WoaHRaEIzCVY2kJKSkpCQEM4RRQ34YtidrwPwfVBCQkLQXwKTyWRnhkCP\nTTgtLS0CvdcivSLodHq3valLSUmxWKzm5maiDSEGMpkMnwMtLS0MBoNoc4iBRqN153MAgiD4\nXt7S0tLa2kq0LcRApVJpNBqx58CUKVMePnyIDCkUip2dndBMolAoJBKptbUV0xK3+wBfDLvz\ndYBMJlMoFCaTKegvgcVisWlnIP6OnUCvszQaDX5Ab2pq6raOnYSEBJPJbGpqItoQYqBQKDIy\nMhAENTc3d9ubOnxB77bnAARBcnJyEAS1tLR027uapKSkhIQEseeAs7Pzx48fz507x2AwFBQU\ndu3aZWxsLDSTpKWlIQhqbW3ttj8EKpUqIyPTbT8+BEE0Go1CoTAYDCF8CfLy8u29JeaOHQAA\nAAC6CSQSac+ePT4+PqWlpb1796bRaERbBAAQAHDsAAAAACA+yMvLswlmAABiD6iKBQAAAAAA\nABATgGMHAAAAAAAAICYAxw4AAAAAAABATACOHQAAAAAAAICYABw7AAAAAAAAADEBOHYAAAAA\nAAAAYgJw7AAAAAAgblRXV+fm5tbU1BBtCAAgbIBjBwAAAADxgcVi+fn5DRgwYMKECQMGDAgJ\nCSHaIgBAqADHDgAAAADiw9WrV0+ePAk3bqbT6Xv27ElJSSHaKABAeADHDgAAAADiQ3Jycocz\nAIAYAxw7AAAAAIgP+BaxEhIShFgCABACicViEW2DAKmPiqLeuCG4/ZPJZPiSQafTxfubZIOE\nhASLxWptbSXaEGIgkUjwjaSlpYXJZBJtDjFQqVQSidTS0kK0IYQhKSkJQVBrayu8AtgNoVAo\nFAqFTqcTbQhUXl6emZmJDEkk0pgxY5SUlAR9XBqNRiKRGAxGt70YwjfE5uZmog0hDAkJCTKZ\nzGQyBX0xpM+YIb9kSXvvUgV6bMKhfPwoefOmEA6EfULsflCINoBwQExAkmgDCIcq9pfUjhCF\nc0AXgnTRYxYLSksT2tEp3f5iKArnALGQBf8lMPr3Z/OumF+FGEZGzdOnC27/IGIHgYgdiNiB\niB2I2IlSxA6BwWBQKMLzskDEDkTshBaxYxgZsXlXzJdi//79K9DfGI1GU1BQgCCoqqpKvL9J\nNsjLyzOZzPr6eqINIQYKhaKsrAwJ/mQTZWRkZKhU6r9//4g2hDDU1NQgCKqtre22dzVJSUkZ\nGZk/f/4QbQhhKCsrUyiUhoaGhoYGom0hBiqVqqSkVFlZSbQhhKGgoECj0Zqbm2trawV9LPia\n0yageAIAAAAAAABATACOHQAAAAAAAICYABw7AAAAAAAAADEBOHYAAAAAAAAAYgJw7AAAAAAA\nAADEBODYAQAAAAAAAIgJwLEDAAAAAAAAEBOAYwcAAAAAAAAgJgDHDgAAAAAAAEBMAI4dAAAA\nAAAAgJgAHDsAAAAAAAAAMQE4dgAAAAAAAABiAnDsAAAAAAAA/H/t3WlAVFUbB/Dnzj7DMiyD\nQsgiqKG4JGZahhRaKoqvIqGmuYQa2mKpqaWpaNLqkmZSUbhEuKaVtrjkkpClb6GvJFoq4YIC\nArIMA7Oc98PIgAnDMAK3rv/ft3vOPZfnnvPM8HDnzgUEAoUdAAAAgECgsAMAAAAQCBR2AAAA\nAAIh4TuAf7eioqJTp04RUWBgoFgs5jscfhgMBsYY31HwRqfTpaenE5Gvr69CoeA7HH4YjUa+\nQ+CZOQc8PT2dnZ35joUfJpNJr9fzHQWfMjIyKisrNRqNm5sb37HwgzF2l+dAVlZWWVmZs7Oz\np6cnj2Fwd/Ov5Dt35MiRF198kYj279+vVqv5Dgd4kJOTExUVRUTJycldunThOxzgAWOsZ8+e\nRLR48eKIiAi+wwF+REVF5eTkTJo0KS4uju9YgB/Tp09PS0t7/PHHExISeAwDH8UCAAAACAQK\nOwAAAACBQGEHAAAAIBC4x+6OFBQUZGRkEFFYWJhUKuU7HOCBVqs13zjfs2dP3Gd519q3bx8R\nBQcHe3l58R0L8CM9PV2r1QYEBAQEBPAdC/AjIyOjoKCgdevW/N5vjcIOAAAAQCDwUSwAAACA\nQKCwAwAAABAIPKD4TpgObvrg68O/XiwVd+zca8ILE9sq79JnFAseMxTt+PjDb9NPXNeJvHza\nD30qbkB3TyK69tO8yW/8r/aez6zfMthVgdwQHrvWGmkgHKWXl42ZeuhvjTKHbttSl9SfG4Qc\nEJJ1U8crFieO8lBWN9jx2m+JfEBhZ7/z2+ev2PzXU88+97SrYdeHa+bNMKSsjeP4jgqaw56E\nWZ9lOo2f8kInb4eT+1M/WPSs7v31//FxLM4oVrpHTp8cbNkzwEFGyA0hsmOtkQZConKLnDv3\nwdotRz9d9UfwY1R/bhByQDjYn0eSd1wpfqLW1xLseO23UD4wsI+p8tknhs3Yft68pfn8lK0A\nAA5VSURBVCs8HBkZmXKljN+goDkYdDnDhg5dcaqwusG0etwTE189xhg7/NzYKW+f+vsA5IYQ\nNXqtkQaCVnwmdcSoudf1JlZfbjDkgEDkHl4ROzY6MjIyMjJy47Xym612vPZbKh9wj52dKm8c\nztEZB4XfY96Uu4Z2c5QdO3SN36igORh12X5t20YEOFU3cN3V8qobZUR0oqTStbuLsaLkal6x\n5e845IYgNXatkQYCxoyly+O3DZ43203CUT25QcgBoXDrGj134RvvvjWndqMdr/0Wywd8FGun\nqvKTRNRJVTOBwSrJnlM3+IsImotMHbpyZahlU1+W9emVMv/J7YjotzK96ciqmNVZesYkDh4D\nnpz+TGRX5IYgNXatkQYCdn7HknOa4fGdXc2bdeYGIQeEQqZu005NxipF7UY7XvtVoS2UDyjs\n7GSqLCcijbTmtkeNVKwv0fMXEbSE7GO7V69KNgREvPqYt7Hq8g1O7O/24FufL1EbS47uTlr2\n8Xx5+w3DZcgNobFjrfEWIVSmqtylqX9ErVpo3qwvNyYEuSAHBMzK4tbX1WL5gMLOTiK5iogK\n9SZP2c2Pswv0Rokr5lOwKouyPn1v9XcnCsOipy59MlzBcSTz3rZtW3W/Jmz03LN7Rv6QdGrE\nS8gNoRE3fq3xFiFUF79ZXuYYHuXtYN6sLzcmvPswckDArCxufV0tlg+4x85OUlUXIsqqqKm1\nz1YY1MH4j1LCVHph3/OTXzkp6vb2x8kzxvRTcHV/jalHK6W+JB+5cTdocK2RBgLF1m+90G5M\nlJU9zLlByAFBs+O132L5gMLOTgqXR71l4m/S882b+rJfj5dWhTzqyW9U0ByYSbv0lbXyfs9/\nsGDKvZqa2yyKz66JnfTstSpT9X7GQ7lal04dkBvCY8daIw0ESZu39b9l+ti+NetYX24QckDQ\n7Hjtt1g+iBctWtTkB70rcOIg04lNKd+0ahckr7iS+ua7uaq+i0c/jAcUCY8299PEHVnRI/qV\n5V29Ui2/yMG3fcf0LZu/PFHYprW6PP/inpRl35xjM5aM95JLkRsCI1MHNHqt8RYhRH9t/fDg\n5Y7PxPS1tNSbGzIxckBImLFk85bdwUOjuzpIiay+wOvraql84BhjDe8FdWLGvRtWbt77y3Ud\nF9gtLG7m5HYq3DwhQFcOvBK3IvNvjeqA1zau7FlZlJmcmJJ24qxO4hzQrvPw2Gd6+zgQITcE\nyJ61RhoIzicTR6b7z/lkYUjtxnpzg5ADwmGsujQ8elpM0qaxrVQ3m+x47bdIPqCwAwAAABAI\n3GMHAAAAIBAo7AAAAAAEAoUdAAAAgECgsAMAAAAQCBR2AAAAAAKBwg4AAABAIFDYAQAAAAgE\nCjsAsBMz3hjq6ZR4oeRv7ceWzly0+QIvITWJTR01Stf+vPzoBX5qJ6/JzXHkFYGuKvchzXHk\nRjFo/+fr7Jd2o4rvQAAEC4UdANgpbeGA/wa9GdfWuXajqSp37NLV24/mWx+b9/P8yMjI9BL8\ngr+FSCIRS4T8tixRddn6giZm2Cq+AwEQLCG/gwBA86kq/WXIW8dmbhhX08T0F04cmj2s19kK\nfYPDtVd/2rVr11W9sRlD/BdadO568cUP+Y6iefWYl1Ly45zXTxfxHQiAMKGwAwB7nFg6uUo9\nZIavk3nToD2lVioD7ntk2bcXm/cHs6pKQxP+I0Sm05ua7mjNo4lPmWcSZdCyHh7vT9jMdyAA\nwoTCDgDqlZuWEvPY/e5OCpXao/egMVuP1XzA+nLimXYT51s2xXKfDZu379y5c2vKkvqOFqiU\nchxXySihrUvbYT8Q0QiNytlntrn39Fdrhj0SolE7SGRKr8Cu42evKqxVzWzqqFH7LTj20Yw2\nakelTOzSKmDsqxtMRMfXzenu31opd2zbqdei1N8t+9tytNwDH4T4uSplYgd3714Dx++7VF47\n2oqr6VOG9nF3Vjm4e/caOG7vrb3Xft4yZtCDHi6OMgd1h579F687aPusmvQFa+Y+3TXQUyGV\nOrv79Bv5wtECnbkroa2L5R67xp7ybB9ny2SaZcT34Dguu7Luy6LWp8jK0jc4tsHJiXy3T97x\nGWcrDLZPGgDYigEA1CX3xyUOYpGqda+4mQsWzH6us7tCJHVLOn+DMVZ+bT0RTcm8fvsoXfEP\nRNT5xZ9v7wpycVQoFDoTO39o//oF9xHR/C1f7Tt4hjGWs2uaiONcgh6ZNS8+If61sY8HE1H7\nMbssY1OD3CWKAJnUdeLLixNXvRUR5EJE94/sq9TcPy9h1fIlL/kpJJxY+eONShuPpnB51Fsu\nDn3q+RVr18ybGikVcSqPCEN1r1TZ4SE3Rdi46SsT18ybMkTKcapWkcbq4XnH3nGWiKQOHcZP\nmx0/5/n+QS5E1H/+QRsndll/b44Th4+aujghYVZclKNY5OD1nyoTY4wt9Vc7ek6y45QZYy+3\ncXJq83LtH/TbohAiuqAzMMaWB7go3QZbuqxPkZWlb3CsLZOjK9pLRNFHrtg4YwBgOxR2AFAX\nU2V/V4XSfeDpsipzQ8X1g25SkWfvVMZY9pf9iehEdVdtVgq72i7sDCei7QVa8+b6YI1E4fuX\nzmDZ4SVvJ6V7pGUzNcidiGbtv1wdzC4iEsvvOVKkM7f8+Xk4EcVkFth+tF6LaqqNHTEBRLSn\nSFfTG1/Tu3tkIBEdKjaXUKaYViqpquPh3HJzr1GfP7O7hhMpDlfXWFbotWdEHOc7aLulJf3l\nhzQazaY8LbutsLP9lFkjCztrU2R16RuaXlsnJ9hB2n7s4QanCwAaCx/FAkAdSi+v2Fek6/H2\ne0EOUnOLwi1s59r3X4vVENGV3ZfFUo+u1V13LvrImWtXfveVi82bzFReyRgzamvvI1UFvRN+\nT3Uwg53EIk3nlX1c5OYWj4dCiahCb7LxaCKxascroZbNbjF+RFRqvHm/HSdWbpv7sKW3Q6Q3\nEZWZTERUUfDFljztvZOTQz1VNw8l0cz7fAIz6RZ+f6nBM+VEShlHxae/OH6x1Nzy4Ntp+fn5\nIz2Ut+9s+yk3lpUpsr701sfaPjn9XRQFR0/aETkAWCfhOwAA+Ccq+eMAEfUJb127MTR2qrkU\nKv2zVKzwbcIfp3JxKzz23frvDmeePfdXTvbpkycuF1cqXG7ZRyRxr70p4Uju4WrZ5EQ1VaYt\nR5OoOnvJav6y5SRc7V6ZY0gbmbjOXl3Rd0QUMK5t7f0dfcYRvZu75yo9EWD9TMVyn+/feGrI\nq5894Jfq17nXQ7179w0f8ET04263BtDYU24sK1Nkfemtj7V9cnzlYkPFWbvjB4D64IodANTB\nVGkiIhlXR7VBRCKZiEwNP9PEdttn9vPtFbF85y+y1u2HjI5L2pme1MGtWY/GcdaqIo5T1N9Z\nxxdUOU5CRMy27672nb0+70rm54lvDeja6uTedXGjB/r4PLT3us6WsY3CTPXGY2WKrC+99bG2\nT46BEXGyxp4RADQIV+wAoA7OHUKI9qb9UkB+Nc8f/mHO1I3XXZOTElzvczXsPWdgVNdlpkar\nKj06csUBn4jEv3ZNsTQm/zOOdjuF6wCiTy6kZFNIK0tj2aWNRNS6X+v6x92kLzvza2axe7ce\no6bMGjVlFhGd/nZJp4gF0+f/9vvaB+84ulu+AHvteGGdO1mfIutLb32s7ZOTVaGXu3dt/AkC\nQANwxQ4A6uDs90o3R9nPL8y6oLtZK1Td+Gncex/v+qUVEXlHtjMZy/YW3+lFJsaIiAzaLCNj\nbvf1sLRrc9OXXS6t8/JPg5r2aLdTakZEeaiyPoz9Kf/m6TND4RtjkjiRfMEQnwaHl19b27t3\n75g3f7O0+N/fk4gM5Xf67A+VWKQr3F1Qfcud7vrRaT9crnNP61Nkfemtj7V1cljVd4W6ewZ3\nvMNTBoDb4YodANSBE6u//Gxa++HvdWkXNnHsAE9p8Y6PE3ONDmu2TSAit84zOO6Lj04VDQr1\nsv2YXTxcs3WGgpJSOUdSJykRfbQ6qbLjA0/GjOrvPu3AO0Oek87q0UZ1PvNoUuJXgZ6Kqou/\nrkrZGjs62kHUiAuDKo+mPFpdRGu/fm1Pn3mPBPYYHzu8rWPFoS+Sv/+9KHze/n7VX2uwQu0f\n39/jo/1L+kacn9g7OMBUnL0z6VOx1H1RQvc7i4qGPtUh/vVj3cLHzR4brr+atW75e9c0MrpU\nR73Y4BRZWfoGx9oyOdq8z3KrjDETG7gfEQDswe+XcgHgn+zPbxOHhnZ2VknlDq4h4SM3puda\nup71dmob9e3tQ6w87iRAISEinYkxxqrKMoaE+CvEEq+u8Yyxspx94wf28nZ3cPYMeGTw2K8z\nC/OPv+3vqpI5elyqNDDGUoPc5c59ah/NVSLyHbjXslmS8zoRRWbk2Xe02o9fSQ1yV7j0u2Ue\nNoUR0e7CCkvLlSMpox57wN1ZKVE4BYY8Gp98wMYpZYxpr6Y9P7K/r8ZZIhI7ubcJGxa747eb\njyz52+NObD9lxpjJWP7+jNH3+nlKOY6IvPuMO5I+iOp53EmDU2Rl6Rsc2+Dk/LExTKLwv2Ew\n2T5pAGAjjjHh/KcaAGgx5z4f1HHS+eulWU7iprjPDpqOqbLkUr7Bt4393z5pbjP91F+Hbjv7\n2WN8BwIgQCjsAMAeJsP1B9zu6bY7+5PGfBoLUJH/haPXuN35BQNdrXz1GADshMIOAOx0cffU\nTs+UF1/aIG5437tC9o4h3Z9Os7KDXB12NXtni8Xzz7Quwm9Ntw3H3gjjOxAAYUJhBwD2+2D8\nCHn8ulh/J74DgX8HgzYz+snlyduSXJvkSTkAcBsUdgAAAAACgefYAQAAAAgECjsAAAAAgUBh\nBwAAACAQKOwAAAAABAKFHQAAAIBAoLADAAAAEAgUdgAAAAACgcIOAAAAQCBQ2AEAAAAIxP8B\nn6Z2lOwOMlgAAAAASUVORK5CYII="
     },
     "metadata": {
      "image/png": {
       "height": 240,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "tamanho_simulacao = 1000\n",
    "medias <- c()\n",
    "\n",
    "for(i in 1:tamanho_simulacao){\n",
    "    medias <- c(medias, mean(sample_n(renda_5000, n)$Renda))\n",
    "}\n",
    "medias <- data.frame(medias)\n",
    "\n",
    "ggplot(data = medias, aes(x = c(1:tamanho_simulacao), y = medias)) + \n",
    "    geom_point(size = 1.5, stroke = 0) + \n",
    "    geom_hline(yintercept = media, color = 'green') + \n",
    "    geom_hline(yintercept = limite_inferior, color = 'red') + \n",
    "    geom_hline(yintercept = limite_superior, color = 'red')"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "cbe97b57",
   "metadata": {
    "id": "L5BFsSI8G3IB",
    "papermill": {
     "duration": 0.091461,
     "end_time": "2024-05-06T12:54:19.942907",
     "exception": false,
     "start_time": "2024-05-06T12:54:19.851446",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": []
  }
 ],
 "metadata": {
  "colab": {
   "collapsed_sections": [],
   "name": "Curso_de_Estatística_Parte_2.ipynb",
   "provenance": [],
   "toc_visible": true,
   "version": "0.3.2"
  },
  "kaggle": {
   "accelerator": "none",
   "dataSources": [
    {
     "datasetId": 4932401,
     "sourceId": 8302622,
     "sourceType": "datasetVersion"
    }
   ],
   "dockerImageVersionId": 30618,
   "isGpuEnabled": false,
   "isInternetEnabled": true,
   "language": "r",
   "sourceType": "notebook"
  },
  "kernelspec": {
   "display_name": "R",
   "language": "R",
   "name": "ir"
  },
  "language_info": {
   "codemirror_mode": "r",
   "file_extension": ".r",
   "mimetype": "text/x-r-source",
   "name": "R",
   "pygments_lexer": "r",
   "version": "4.0.5"
  },
  "papermill": {
   "default_parameters": {},
   "duration": 136.784641,
   "end_time": "2024-05-06T12:54:20.158558",
   "environment_variables": {},
   "exception": null,
   "input_path": "__notebook__.ipynb",
   "output_path": "__notebook__.ipynb",
   "parameters": {},
   "start_time": "2024-05-06T12:52:03.373917",
   "version": "2.5.0"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
