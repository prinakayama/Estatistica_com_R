{
 "cells": [
  {
   "cell_type": "markdown",
   "id": "7e040bba",
   "metadata": {
    "id": "WvMflodMjQKe",
    "papermill": {
     "duration": 0.07091,
     "end_time": "2024-05-06T14:45:46.395172",
     "exception": false,
     "start_time": "2024-05-06T14:45:46.324262",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# <font color=green size=10>CURSO DE ESTATÍSTICA - PARTE 3</font>\n",
    "\n",
    "***"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "705ed461",
   "metadata": {
    "id": "cVgsZ_E3jQKg",
    "papermill": {
     "duration": 0.069044,
     "end_time": "2024-05-06T14:45:46.533063",
     "exception": false,
     "start_time": "2024-05-06T14:45:46.464019",
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
   "id": "444a37ce",
   "metadata": {
    "id": "TDjqYYNojQKh",
    "papermill": {
     "duration": 0.068392,
     "end_time": "2024-05-06T14:45:46.672015",
     "exception": false,
     "start_time": "2024-05-06T14:45:46.603623",
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
   "id": "efb95445",
   "metadata": {
    "id": "iN1gIbaKjQKh",
    "papermill": {
     "duration": 0.106684,
     "end_time": "2024-05-06T14:45:46.845254",
     "exception": false,
     "start_time": "2024-05-06T14:45:46.738570",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Pesquisa Nacional por Amostra de Domicílios - 2015\n",
    "\n",
    "A <b>Pesquisa Nacional por Amostra de Domicílios - PNAD</b> investiga anualmente, de forma permanente, características gerais da população, de educação, trabalho, rendimento e habitação e outras, com periodicidade variável, de acordo com as necessidades de informação para o país, como as características sobre migração, fecundidade, nupcialidade, saúde, segurança alimentar, entre outros temas. O levantamento dessas estatísticas constitui, ao longo dos 49 anos de realização da pesquisa, um importante instrumento para formulação, validação e avaliação de políticas orientadas para o desenvolvimento socioeconômico e a melhoria das condições de vida no Brasil."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "2d25d25f",
   "metadata": {
    "id": "U6V7br1RjQKi",
    "papermill": {
     "duration": 0.067067,
     "end_time": "2024-05-06T14:45:46.980672",
     "exception": false,
     "start_time": "2024-05-06T14:45:46.913605",
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
   "id": "96fe37cf",
   "metadata": {
    "id": "r0Fe_qnzjQKj",
    "papermill": {
     "duration": 0.067643,
     "end_time": "2024-05-06T14:45:47.115406",
     "exception": false,
     "start_time": "2024-05-06T14:45:47.047763",
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
   "id": "ed402b4d",
   "metadata": {
    "id": "OK1IQH5cX7Gb",
    "papermill": {
     "duration": 0.068342,
     "end_time": "2024-05-06T14:45:47.251258",
     "exception": false,
     "start_time": "2024-05-06T14:45:47.182916",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "#### <font color='red'>Observação</font>\n",
    "***\n",
    "> Os seguintes tratamentos foram realizados nos dados originais:\n",
    "> 1. Foram eliminados os registros onde a <b>Renda</b> era inválida (999 999 999 999);\n",
    "> 2. Foram eliminados os registros onde a <b>Renda</b> era missing;\n",
    "> 3. Foram considerados somente os registros das <b>Pessoas de Referência</b> de cada domicílio (responsável pelo domicílio)."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "16ef8e4f",
   "metadata": {
    "papermill": {
     "duration": 0.073328,
     "end_time": "2024-05-06T14:45:47.390976",
     "exception": false,
     "start_time": "2024-05-06T14:45:47.317648",
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
   "id": "ca0d6e41",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:45:47.538556Z",
     "iopub.status.busy": "2024-05-06T14:45:47.535211Z",
     "iopub.status.idle": "2024-05-06T14:45:48.008909Z",
     "shell.execute_reply": "2024-05-06T14:45:48.005932Z"
    },
    "papermill": {
     "duration": 0.549717,
     "end_time": "2024-05-06T14:45:48.012689",
     "exception": false,
     "start_time": "2024-05-06T14:45:47.462972",
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
    "library(dplyr)\n",
    "library(ggplot2)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 2,
   "id": "d12370c3",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:45:48.261276Z",
     "iopub.status.busy": "2024-05-06T14:45:48.160023Z",
     "iopub.status.idle": "2024-05-06T14:45:48.404662Z",
     "shell.execute_reply": "2024-05-06T14:45:48.402566Z"
    },
    "papermill": {
     "duration": 0.322804,
     "end_time": "2024-05-06T14:45:48.407820",
     "exception": false,
     "start_time": "2024-05-06T14:45:48.085016",
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
   "id": "bfc20b0d",
   "metadata": {
    "id": "8Rw70V6ojQKk",
    "papermill": {
     "duration": 0.067289,
     "end_time": "2024-05-06T14:45:48.553877",
     "exception": false,
     "start_time": "2024-05-06T14:45:48.486588",
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
   "id": "1dfc6b94",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:45:48.697413Z",
     "iopub.status.busy": "2024-05-06T14:45:48.694330Z",
     "iopub.status.idle": "2024-05-06T14:45:48.979736Z",
     "shell.execute_reply": "2024-05-06T14:45:48.977581Z"
    },
    "id": "ufRZ7TLwjQKo",
    "papermill": {
     "duration": 0.362638,
     "end_time": "2024-05-06T14:45:48.983356",
     "exception": false,
     "start_time": "2024-05-06T14:45:48.620718",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "dados <- read.csv('/kaggle/input/curso-est1/dados.csv')"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 4,
   "id": "0d3275bf",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:45:49.128298Z",
     "iopub.status.busy": "2024-05-06T14:45:49.126184Z",
     "iopub.status.idle": "2024-05-06T14:45:49.171302Z",
     "shell.execute_reply": "2024-05-06T14:45:49.168733Z"
    },
    "id": "GsC_WhLFjQKq",
    "outputId": "cccf4d9c-10ec-4c5b-df3f-173c62ca0659",
    "papermill": {
     "duration": 0.122983,
     "end_time": "2024-05-06T14:45:49.175026",
     "exception": false,
     "start_time": "2024-05-06T14:45:49.052043",
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
       "<caption>A data.frame: 6 × 7</caption>\n",
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
       "\t<tr><th scope=row>6</th><td>11</td><td>1</td><td>34</td><td>8</td><td>12</td><td> 790</td><td>1.637906</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 6 × 7\n",
       "\\begin{tabular}{r|lllllll}\n",
       "  & UF & Sexo & Idade & Cor & Anos.de.Estudo & Renda & Altura\\\\\n",
       "  & <int> & <int> & <int> & <int> & <int> & <int> & <dbl>\\\\\n",
       "\\hline\n",
       "\t1 & 11 & 0 & 23 & 8 & 12 &  800 & 1.603808\\\\\n",
       "\t2 & 11 & 1 & 23 & 2 & 12 & 1150 & 1.739790\\\\\n",
       "\t3 & 11 & 1 & 35 & 8 & 15 &  880 & 1.760444\\\\\n",
       "\t4 & 11 & 0 & 46 & 2 &  6 & 3500 & 1.783158\\\\\n",
       "\t5 & 11 & 1 & 47 & 8 &  9 &  150 & 1.690631\\\\\n",
       "\t6 & 11 & 1 & 34 & 8 & 12 &  790 & 1.637906\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 6 × 7\n",
       "\n",
       "| <!--/--> | UF &lt;int&gt; | Sexo &lt;int&gt; | Idade &lt;int&gt; | Cor &lt;int&gt; | Anos.de.Estudo &lt;int&gt; | Renda &lt;int&gt; | Altura &lt;dbl&gt; |\n",
       "|---|---|---|---|---|---|---|---|\n",
       "| 1 | 11 | 0 | 23 | 8 | 12 |  800 | 1.603808 |\n",
       "| 2 | 11 | 1 | 23 | 2 | 12 | 1150 | 1.739790 |\n",
       "| 3 | 11 | 1 | 35 | 8 | 15 |  880 | 1.760444 |\n",
       "| 4 | 11 | 0 | 46 | 2 |  6 | 3500 | 1.783158 |\n",
       "| 5 | 11 | 1 | 47 | 8 |  9 |  150 | 1.690631 |\n",
       "| 6 | 11 | 1 | 34 | 8 | 12 |  790 | 1.637906 |\n",
       "\n"
      ],
      "text/plain": [
       "  UF Sexo Idade Cor Anos.de.Estudo Renda Altura  \n",
       "1 11 0    23    8   12              800  1.603808\n",
       "2 11 1    23    2   12             1150  1.739790\n",
       "3 11 1    35    8   15              880  1.760444\n",
       "4 11 0    46    2    6             3500  1.783158\n",
       "5 11 1    47    8    9              150  1.690631\n",
       "6 11 1    34    8   12              790  1.637906"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "head(dados)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 5,
   "id": "44f63af8",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:45:49.314755Z",
     "iopub.status.busy": "2024-05-06T14:45:49.312782Z",
     "iopub.status.idle": "2024-05-06T14:45:49.338287Z",
     "shell.execute_reply": "2024-05-06T14:45:49.335391Z"
    },
    "papermill": {
     "duration": 0.098901,
     "end_time": "2024-05-06T14:45:49.342433",
     "exception": false,
     "start_time": "2024-05-06T14:45:49.243532",
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
   "cell_type": "markdown",
   "id": "1b4a2bca",
   "metadata": {
    "id": "nk65O0lepz57",
    "papermill": {
     "duration": 0.068891,
     "end_time": "2024-05-06T14:45:49.481028",
     "exception": false,
     "start_time": "2024-05-06T14:45:49.412137",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# <font color=green>2 TESTES DE HIPÓTESES</font>\n",
    "***"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "40d7a961",
   "metadata": {
    "id": "OjHpQHFHpsi3",
    "papermill": {
     "duration": 0.068833,
     "end_time": "2024-05-06T14:45:49.618130",
     "exception": false,
     "start_time": "2024-05-06T14:45:49.549297",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Testes estatísticos são regras de decisão que permitem avaliar a razoabilidade das hipóteses feitas sobre os parâmetros populacionais e aceitá-las ou rejeitá-las como provavelmente verdadeiras ou falsas tendo como base uma amostra."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "5dfcdd79",
   "metadata": {
    "id": "qjqWccNspsi4",
    "papermill": {
     "duration": 0.067081,
     "end_time": "2024-05-06T14:45:49.752472",
     "exception": false,
     "start_time": "2024-05-06T14:45:49.685391",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## <font color=green>2.1 Teste de normalidade</font>\n",
    "***"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "a791f5a6",
   "metadata": {
    "id": "abDn-nKLpsi7",
    "papermill": {
     "duration": 0.069334,
     "end_time": "2024-05-06T14:45:49.889098",
     "exception": false,
     "start_time": "2024-05-06T14:45:49.819764",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "A função *shapiro.test* testa a hipótese nula $H_0$ de que a amostra é proveniente de uma distribuição normal, ou seja, os dados são normalmente distribuídos."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "8fe76cc9",
   "metadata": {
    "id": "O79kHHwYpsi5",
    "papermill": {
     "duration": 0.072252,
     "end_time": "2024-05-06T14:45:50.036446",
     "exception": false,
     "start_time": "2024-05-06T14:45:49.964194",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "#### <font color=red>Documentações:\n",
    "\n",
    "- [**shapiro.test**](https://www.rdocumentation.org/packages/stats/versions/3.6.1/topics/shapiro.test)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "75a0a4db",
   "metadata": {
    "id": "gRDJ86zTpsi8",
    "papermill": {
     "duration": 0.06872,
     "end_time": "2024-05-06T14:45:50.173178",
     "exception": false,
     "start_time": "2024-05-06T14:45:50.104458",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Definindo a significância do teste ($\\alpha$)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 6,
   "id": "aac71c9c",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:45:50.312133Z",
     "iopub.status.busy": "2024-05-06T14:45:50.309884Z",
     "iopub.status.idle": "2024-05-06T14:45:50.328899Z",
     "shell.execute_reply": "2024-05-06T14:45:50.326363Z"
    },
    "id": "3s6ZAdCOpsi9",
    "papermill": {
     "duration": 0.091673,
     "end_time": "2024-05-06T14:45:50.331980",
     "exception": false,
     "start_time": "2024-05-06T14:45:50.240307",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "significancia <- 0.05"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "e177e33e",
   "metadata": {
    "id": "sppYIE51psi_",
    "papermill": {
     "duration": 0.067197,
     "end_time": "2024-05-06T14:45:50.466844",
     "exception": false,
     "start_time": "2024-05-06T14:45:50.399647",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Testando a variável Renda"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 7,
   "id": "f3256a4b",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:45:50.609308Z",
     "iopub.status.busy": "2024-05-06T14:45:50.606976Z",
     "iopub.status.idle": "2024-05-06T14:45:51.376044Z",
     "shell.execute_reply": "2024-05-06T14:45:51.373761Z"
    },
    "id": "IZpa91lHpsi_",
    "outputId": "ba8bdb04-9da3-41dd-8726-c76cd9670aa0",
    "papermill": {
     "duration": 0.843415,
     "end_time": "2024-05-06T14:45:51.379109",
     "exception": false,
     "start_time": "2024-05-06T14:45:50.535694",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "\u001b[1m\u001b[22m`stat_bin()` using `bins = 30`. Pick better value with `binwidth`.\n"
     ]
    },
    {
     "data": {
      "image/png": "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\nh80AAAAASUVORK5CYII="
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
    "ggplot(dados, aes(x = Renda)) + \n",
    "    geom_histogram() + \n",
    "    ylab(\"Frequência\") + \n",
    "    xlab(\"Renda\") + \n",
    "    ggtitle('Histograma Renda') +\n",
    "    theme(plot.title=element_text(hjust = 0.5))"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "2eb1d78f",
   "metadata": {
    "id": "qKeNZ0PUpsjC",
    "papermill": {
     "duration": 0.075747,
     "end_time": "2024-05-06T14:45:51.526499",
     "exception": false,
     "start_time": "2024-05-06T14:45:51.450752",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### <font color='red'>Critério do valor $p$</font>\n",
    "\n",
    "> ### Rejeitar $H_0$ se o valor $p\\leq \\alpha$"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 8,
   "id": "772ff505",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:45:51.678305Z",
     "iopub.status.busy": "2024-05-06T14:45:51.676290Z",
     "iopub.status.idle": "2024-05-06T14:45:51.709219Z",
     "shell.execute_reply": "2024-05-06T14:45:51.706948Z"
    },
    "papermill": {
     "duration": 0.107277,
     "end_time": "2024-05-06T14:45:51.712045",
     "exception": false,
     "start_time": "2024-05-06T14:45:51.604768",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "set.seed(2811)\n",
    "amostra <- sample_n(dados, 5000)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 9,
   "id": "f1ad5534",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:45:51.854586Z",
     "iopub.status.busy": "2024-05-06T14:45:51.852698Z",
     "iopub.status.idle": "2024-05-06T14:45:51.878445Z",
     "shell.execute_reply": "2024-05-06T14:45:51.876395Z"
    },
    "papermill": {
     "duration": 0.099989,
     "end_time": "2024-05-06T14:45:51.881129",
     "exception": false,
     "start_time": "2024-05-06T14:45:51.781140",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "\n",
       "\tShapiro-Wilk normality test\n",
       "\n",
       "data:  amostra$Renda\n",
       "W = 0.28423, p-value < 2.2e-16\n"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "resultado <- shapiro.test(amostra$Renda)\n",
    "resultado"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 10,
   "id": "69047cf9",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:45:52.026554Z",
     "iopub.status.busy": "2024-05-06T14:45:52.024739Z",
     "iopub.status.idle": "2024-05-06T14:45:52.046842Z",
     "shell.execute_reply": "2024-05-06T14:45:52.044793Z"
    },
    "papermill": {
     "duration": 0.096905,
     "end_time": "2024-05-06T14:45:52.049693",
     "exception": false,
     "start_time": "2024-05-06T14:45:51.952788",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "4.25171378288823e-88"
      ],
      "text/latex": [
       "4.25171378288823e-88"
      ],
      "text/markdown": [
       "4.25171378288823e-88"
      ],
      "text/plain": [
       "[1] 4.251714e-88"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "p_valor <- resultado$p.value\n",
    "p_valor"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 11,
   "id": "1080221a",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:45:52.203522Z",
     "iopub.status.busy": "2024-05-06T14:45:52.201500Z",
     "iopub.status.idle": "2024-05-06T14:45:52.222426Z",
     "shell.execute_reply": "2024-05-06T14:45:52.219829Z"
    },
    "papermill": {
     "duration": 0.104898,
     "end_time": "2024-05-06T14:45:52.225365",
     "exception": false,
     "start_time": "2024-05-06T14:45:52.120467",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<strong>W:</strong> 0.284227805101736"
      ],
      "text/latex": [
       "\\textbf{W:} 0.284227805101736"
      ],
      "text/markdown": [
       "**W:** 0.284227805101736"
      ],
      "text/plain": [
       "        W \n",
       "0.2842278 "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "resultado$statistic"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 12,
   "id": "912eaba9",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:45:52.372382Z",
     "iopub.status.busy": "2024-05-06T14:45:52.370448Z",
     "iopub.status.idle": "2024-05-06T14:45:52.389978Z",
     "shell.execute_reply": "2024-05-06T14:45:52.387974Z"
    },
    "id": "Q4eJFGsCpsjG",
    "outputId": "95f4e550-b43e-476c-94e6-12b600384bc5",
    "papermill": {
     "duration": 0.095214,
     "end_time": "2024-05-06T14:45:52.392694",
     "exception": false,
     "start_time": "2024-05-06T14:45:52.297480",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "TRUE"
      ],
      "text/latex": [
       "TRUE"
      ],
      "text/markdown": [
       "TRUE"
      ],
      "text/plain": [
       "[1] TRUE"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "p_valor <= significancia"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "a84989de",
   "metadata": {
    "id": "JkAxa9PqpsjM",
    "papermill": {
     "duration": 0.070664,
     "end_time": "2024-05-06T14:45:52.533232",
     "exception": false,
     "start_time": "2024-05-06T14:45:52.462568",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Testando a variável Altura"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 13,
   "id": "153ff7a1",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:45:52.675959Z",
     "iopub.status.busy": "2024-05-06T14:45:52.674231Z",
     "iopub.status.idle": "2024-05-06T14:45:53.113243Z",
     "shell.execute_reply": "2024-05-06T14:45:53.109899Z"
    },
    "id": "n9r88dMKpsjN",
    "outputId": "9147988e-9272-4aac-de34-211894eeb81c",
    "papermill": {
     "duration": 0.51373,
     "end_time": "2024-05-06T14:45:53.116620",
     "exception": false,
     "start_time": "2024-05-06T14:45:52.602890",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "\u001b[1m\u001b[22m`stat_bin()` using `bins = 30`. Pick better value with `binwidth`.\n"
     ]
    },
    {
     "data": {
      "image/png": "iVBORw0KGgoAAAANSUhEUgAAA0gAAAHgCAIAAAAQVdomAAAABmJLR0QA/wD/AP+gvaeTAAAg\nAElEQVR4nO3deYBN9f/H8fe528zcO/uMPbKN7KKyFb5RvxZLKSVKKFKpqSgUytKmMjQo4ltp\n0aZv+pI2qZEvikghDRFC9pk7613P74/LNTH3zp3t3rlnno+/7vmc5b7vmc+58zrrVVRVFQAA\nAIQ/XagLAAAAQMUg2AEAAGgEwQ4AAEAjCHYAAAAaQbADAADQCIIdAACARhDsAAAANIJgBwAA\noBEEOwDlUnhqpaIohoi6viZYdd2FiqJcNuMXz+BPj1+sKMp1GYeCVaAGqe68ZmaToig6vWlT\nruP8CX6ZcZmiKL0+/TPopQEIMYIdgCpNdef973//+2HTgVAXUoWc+HXCrgKHiKhux7j//Fni\n9KxDoPog2AEIqoa3TH/zzTfHNk8IcHpnQeYVV1zxfzcvrNSqwst3jy4TkbrXNxaRzU+9UeL0\nrEOg+iDYAQiqpA59hw4delWtqFAXEq7czpMPf39YUXSvvbY0SqdY972w1moPdVEAqgqCHQCc\nodqOOtxlmc+VX2B3VXg5xTq6ccxBmyum/sO967Wf0ixBVV2Pv78nOG9d5vUDIGgIdgCC6uep\nl5xz88TJbZ+lDrq2aZ2kCKMpLumCbn2Gv//D355R77dINkV3EBHr/umKoiRd5D3t6M5457l+\n3dvWiI82WeIate56/1MLD9nOj1auz+c93r11o5iIyJr1Wwwbv6jALa0sppg6Iz2jdy64XFGU\nB/7Iyt238rZuLaNN5reP5ouI6speMvPRXh1bJsVZDKaoGvWbXXd76pc7s4suetfi7oqi3P37\n0UXjb6oZHWeOMEQn1OzW/94fjxeKuFbOebRLiwbREcbY5AuvG/bErgJn0XkDWb4vXz76lYh0\nmDpKRG55+jIR2fr0Aj/TF7sO19/XUlGUm387cU5ViqJYatzibSnP+gEQGioAlEPByc9ERG+q\n42uCr69tICKXPr/VM7hlSgcRufa7g57BYz+lxRt0IpLYuNUVPa5o2TBORHT66PQdJ1VV/Tlt\n2rixw0UkIvbyCRMmTJu5yTPXy0PaiYiiKLUat+ne5dIEo15E4pr2257nKPrW8+5sLSKKLrJZ\n+y7N6yeKSL1/3V8/whBde4Rngt/mdxWREZu/vDjWFFWr2VXX9/30RIHbaR3ZsaaI6Azx7S7t\n0qPrZQ0TIjyf8b/H8r0Lz3yzm4g0v/EiEWnU7vIbru9ZP8ogIpY6N8y562JFZ2zdqVffqy6P\n1utEpFaX57wzBrj8YrlsfyUZ9YouYnOOXVVVe+4vETpFUXSrThUWnWzr85eKSM9le32tw3X3\nthCRm3YcLzqX25klIubkAd6W8qwfACFBsANQLp5gpyiG5j40sBj9BLtHL4wVkSEL151Znmv5\nxE4iUrPDIs+wPXeziMQ2mOx9x70f3yEiEXGXffrL6Vxiz8kc8686InJhn8XeyQ58fo+IxDUZ\n+POJ06Enc+WMGL1ORM4JdjUbRfd8fEm+y+1pPPjtLSIS02DAzpOnZ3Q7cxYMbyYibR790bt8\nT7BTFOP4dzaeXhVH1zeMNIiI3ljj1dX7PI3HfnrFqCiKot9b6CzV8ov116pbRCSx+fPelukp\nCSLS+eVtRScrGuyKXYelCnZlWz8AQoJTsQAqgKo6d/qwP6+YB615fXq0QESevOOyMw26ax6f\nP2XKlIcHJ/ua5ZkHl4nI/SuX92uT5GkxRqfMWLm6boR+/8pRW8+83cxR74vIc6sWtkuM8LSk\nXDfu4+Ep5y8wN7f3188OitIpnsGCv+rdeOOND7z+8kUJp2dU9NEDJ/cTkext555trNNt0fO3\nX+p5HVmj84stE0Wk+X2f3HtlA09jcof7BtU0q6prZ76jDMs/x7JHvxORK14c5G0ZNK2DiGyb\nMdf/jOVRnvUDIMgIdgAqQImnYn3pX9ciIlff9PDK9TvsqoiI0XLxU0899fjYG4qd3lW4943D\neYaoJi90qVW03RDV/KU2yaq7cObubBFx2fbPO5ATEXv5fQ1jik7WceLN5y+zwQ2pRb8Km9wx\n65NPPnm219lHLttO7V+a/kWx9TQYcGnRwaQGFhFpM6p50caLogwi4r3poFTLL8pZuHvCryd0\nhrjZV9U7W0CfF4w6JffQ/BUnC0tcQtmUZ/0ACDJDqAsAUK1N/uatn66+85vP5/X+fJ4xumb7\nyzpd0ePKGwcO7dY8sdjp7TkbXKoanXCdQTl3VErPWrLpyL7tWdIu2Zad4VDV2IRe50wTGd9L\n5NlzGhMuOfehes78P99d+HbGD1t27d7z574//zrq80CUzlTM7rHZWMI+c+DLL+rgVw/nutwi\n2Y2jivnqnrZoV59xbQJZTmmVZ/0ACDKCHYBQir6w76rfj2z86uP/rvx6zdp1G9es+PHb5bOm\njus7YemnzxZ70E71tShFr4iI2+4WEdVdKCKKnJv+FEV//oyGf+akE5sXdexx/55cR3LKJf/q\n3LF7n0FNm7Vs3fi7jp3SSvvpilXm5b83fr2I1Lykc7N/FuzM/33D5mM70mbKuDfLVZla/KNM\ngrx+AJQHwQ5AqCmmy64ZdNk1g0TEVXD0m6WL7rj7yeXP91/ySN7gGuc+x9gU00mvKIWnvnCJ\nnJPR9nx3RETqto4XEVP0pSJSmLVaZErRaQqzvy2xnNHXP7wn1/HIko1pg86eZrX++UNZPlrF\nLd+R9/OUzFOKov/024zOMaaio+zWdeb4K/KOLP7o+Ku3JJf9yc+Ogl2BTFbZ6wdAeXCNHYCQ\nyT/6TkpKStvOY7wt+qia/zfkifSUBFVVvz5VzEVj+sgmd9YyOwt2j99wpGi7syBzzObjis40\n9qIEETFGtx+QbLZlf7/wQE7RyX56/kP/Jamu7A+P5hsiGhRNLSJizdxR2k9Xscvft2ysza3G\nXvjYOalOREyxXVMviBaR5+f9Xqpi8o78Yw0f/Orck9Tnq+z1A6CcCHYAQiYy4f+y9u3d9mP6\nk59u8zYe377iqb3ZimK4s5bZ26i6rN7Xk1/uKyJzr7th5W9ZnhZn3p7H+1z5l81Z/9r5HWOM\nnsYZ8/qLyLirR/9mPX076p5Vs/ovzBQRUXx+9Sn6mEaRepf9wOvbT3kbNy5Nu6r/ChFx/fM5\nw2VQ5uW/PvknEWn35PBix454rLWI7Jz3nJ+3LroO49vEi8gPo6YcOfNLEqd2LOs7dGXl1Q8g\nOAh2AEJGZ6y5fFIvVXVNv7FNrZSLe119Vcd2KbXa9MsscPQa/9mVcREioo9oEKFTcg+9cu2A\nQSMe/EZEGt26JO32NrasH/q0Sq7f/JIeHVslxKe8tPpQXNMbvlw6xLvwxre+M39o26zf326d\nnNSmU4+2TWo3uXpMtylzRUQxxPkp6p3HLldVdWS7+t2u6Tew/3UXX1S7821PdXhwrIj8vf6u\n4fc/UOD2eZ1fIB+6DMu3W9e+8KdVUfTP3dyw2IU2vn2SiOQf+/Cto/nnjz1/HTa546WGkYas\nzEUN67bpfdOtPTu1qdfmpl1KizYWY2XUDyB4gvXAPADaVM5fnlBV9X/vvtCvW4cacRa9zhCT\nWLfr/902b9mWokvIeH7khTXjdAZTsx4fnmlzfbP46d6Xt06MiTJExjRo0fneJxcctLnOfW+3\nY3n6uGsvbxcXYa7XrMvk19cVnFwpIvFNZnvGex7A2+3NzH/O5lrx8vgurRpEmfTRCTW79r5j\n2S8nVFWdO7RHXKTBklTf6nSrZx5Q3HX+b0XnXH1jIxG5K/Nk0cZnGsaJyGcnC0q1/KJ2vHq5\niMReOM7XSlZVdXhti4i0m7BJPe8BxcWuw1M7lg/v07Vm7Olr8qLrd3tv+6kByebzH1BctvUD\nICQUVWXXCoAGnfz7UIFLrVW3XtEHo2TtHpuQktbohm/2LOsZutKqFmfeib0H8xs3q1/MDcMA\nwg2nYgFo05vdW19wwQVP7/nHI9bWP71CRDo+0tzHTNWRwZKUQqoDtIJgB0Cbbn6xt4ikXXXX\nZz/tyXe48k4d+CT9wf5v74qI7z63a+1QVwcAlYJTsQC0Sn3z4evuTv/KXeRbzlKv46Ivvrit\n9bk/pQAA2kCwA6BlR7d/t/SzjD2Hs0yxiS0u6XZj7x4x+vN+jAwAtIJgBwAAoBFcYwcAAKAR\nBDsAAACNINgBAABoBMEOAABAIwh2AAAAGkGwAwAA0AiCHQAAgEYQ7AAAADTCEOoCKldubq7L\n5QpwYovFIiI2m83pdFZmUWHMbDbbbLbAV2m1oiiK2WwWkcLCQlaRLxaLpaCgwO12h7qQqogu\nVCLPKqIL+aLT6aKiokSEVeSLpwvl5+eH+68zxMXF+Rql8WDndDoDT2kGg0FECgoKHA5HZRYV\nxgwGQ35+PuunWIqieLqQ2+1mFfliMBhcLhf7TsXS6XSeLuRyuehCxfJsZU6nk+BbLL1e7+1C\nbGXF8mxlTqdTw8GXU7EAAAAaQbADAADQCIIdAACARhDsAAAANIJgBwAAoBEEOwAAAI0g2AEA\nAGgEwQ4AAEAjCHYAAAAaQbADAADQCIIdAACARhDsAAAANIJgBwAAoBEEOwAAAI0g2AEAAGiE\nIdQFAIAWpKamVshylixZUiHLAVA9EewAoAoZPHhw+ReSnp5e/oUACEecigUAANAIgh0AAIBG\nEOwAAAA0gmAHAACgEQQ7AAAAjSDYAQAAaATBDgAAQCM0/hy7yMjIMsxiNBoroxgNUBQlKioq\nIiIi1IVURYqieF5ERkaaTKbQFlOVmc1mt9sd6io0Ljo6OtQlVCKz2ayqaqirqIq830JsZb54\nVpHFYgnrLuT/j6vxYFeGv5yqqmH9965srJ9AsIr8oAsFgbbXMF2oRKwi/8J9/fgvXuPBzmaz\nOZ3OACeOioryzGKz2SqzqDAWGRlZWFjocDhCXUhVpCiK5whxYWGh3W4PdTlVVFRUVEFBQeBb\nJcomLy8v1CVUCs9Jg4KCApfLFepaqiK9Xu/5FmIr80Wn00VGRubn54f7EU2LxeJrFNfYAQAA\naATBDgAAQCMIdgAAABpBsAMAANAIgh0AAIBGEOwAAAA0gmAHAACgEQQ7AAAAjSDYAQAAaATB\nDgAAQCMIdgAAABpBsAMAANAIgh0AAIBGEOwAAAA0whDqAgAgxFJTU0NdAgBUDIIdAGhNhUTV\n9PT08i8EQJBxKhYAAEAjCHYAAAAaQbADAADQCIIdAACARhDsAAAANIJgBwAAoBEEOwAAAI0g\n2AEAAGgEwQ4AAEAjCHYAAAAaQbADAADQCIIdAACARhDsAAAANIJgBwAAoBEEOwAAAI0g2AEA\nAGgEwQ4AAEAjCHYAAAAaQbADAADQCIIdAACARhDsAAAANIJgBwAAoBEEOwAAAI0g2AEAAGgE\nwQ4AAEAjDEF4j5yDM2+/L+OcRpOl3dL3ph9ZP3Hkc78WbR+1+MPeCZEiIuL+7v1Xlq/ZfCBH\n36J1p2GpwxtF6f22AwAAVGvBCHbmxL4TJnQp2rLh9fRdra4Wkayfs6KS+j40spV3VGOLyfNi\nz8eTZn2wb8joB+5KcK5YMG/iGOe7r96r+G4HAACo5oIR7PRRzbp2beYdzM58Py2v0WsPdhOR\nozus8S27du3a6tx5VHvaB781HZI24KpGItJ0htwy9MX3Dg8ZXNtYfHsdSxA+CAAAQFUW7Gvs\nVFdO2tSlvSeOSzQoIrLVaktoH+8qsP59NEstMpkte83+Qtd1Pet6BiMSurWLNm3MOOKrPcif\nAgAAoAoKxhG7ovZ8Mv2P5P5TWyd4BrfkOtxr02+ds9OhqgZLjWsGPzSqb1sRsef9IiItzWfL\na2U2fLUt296t+Hbv4NatWz/77DPv4JAhQ2rUqFGqCiMjI41GY1k+WzWgKEpUVFRERESoC6mK\nFOX0FQGRkZEmkym0xVRlZrPZ7XaHugqULDo6OtQlFM9sNquqWvJ01Y/3W4itzBfPKrJYLGHd\nhfz/cYMa7Nz2w8+8t+um9Kc8gy77wWxF3zCxy4wl0+Nc1g2fLZq5cFJEylvDmse7bXkikmw8\ne1dEslHvsDp8tXsH9+3b95///Mc7eNNNN9WvX79URRqNRoKdH0SWErGK/GP9hIvIyMhQl1A8\n9i1LxFbmX7h3IZfL5WdsUIPdgZVpudE9b6p3+no4vane0qVLz4xM7jFoQuZXA1cv2jbspSt0\nEWYROelw1zadPll83OEyJBh8tXvfIjk5uWPHjt7ByMhIh+Ns7PPPk+dcLhc7Or4YjUan0xnW\nOzqVii5UIrpQGAn8yzOYjEZj1SysKlAUxWAwiAhbmR8a6EJut1uv9/k8kGAGO3XxR3ubDn3Y\nzxSX1IxafeqYiBjNbUQydhY4aptOx+rMAmdcqzhf7d4ldO3atWvXrt7BrKys7OxsCUxycrKI\n5Ofn22y20nyuaiQpKSkvLy/cN4lKoihKUlKSiOTl5dnt9lCXU0UlJyfn5uY6nc5QF4KSBf7l\nGTSerSw3N9f/EYtqS6/XJyQkiAhbmS86nS4xMTEnJyfcd7/9HHQM3s0T+Uc/+inXcXf32t6W\nrMx5d48YfcR+ZuWqrozD+fEtm4lIZPyV9Uz6leuOecY4cjdvyrF3uLK2r/agfQoAAIAqK3jB\n7tDKtaaYzk0izx48jG08MCn/yPipCzZty9y1/ef3Zo9bkxdzz4hmIiKKceyA5rv+PWX15sxD\ne35dNDnNUu/qIXUtPtsBAACqveCdis3IOBKbMqxoi86QPH3e1Dfmv/vy008UGmIbN209fva0\n9tGnb1xoOvDp+22zl6RNPlGoNGnXY/rYkYrfdgAAgGpO0fb1lVlZWYFfZ+C5xi4nJ4dr7HxJ\nSkqyWq1cY1cs7zV2VquVa+x8SU5OLtVWGRypqamhLqEqSk9PD3UJ5/JsZadOneIau2J5r7Gr\ngltZFeG5xu7kyZPhfo2dJ7EUK9gPKAYAAEAlIdgBAABoBMEOAABAIwh2AAAAGkGwAwAA0AiC\nHQAAgEYQ7AAAADSCYAcAAKARBDsAAACNINgBAABoBMEOAABAIwh2AAAAGkGwAwAA0AiCHQAA\ngEYQ7AAAADSCYAcAAKARBDsAAACNINgBAABoBMEOAABAIwyhLgAAyi41NTXUJQBAFcIROwAA\nAI0g2AEAAGgEp2IBAMWokNPc6enp5V8IgMBxxA4AAEAjCHYAAAAaQbADAADQCIIdAACARhDs\nAAAANIJgBwAAoBEEOwAAAI0g2AEAAGgEwQ4AAEAjCHYAAAAaQbADAADQCIIdAACARhDsAAAA\nNIJgBwAAoBEEOwAAAI0g2AEAAGgEwQ4AAEAjCHYAAAAaYQh1AZXLaDQaDKX7jEajUVGUSqpH\nA0wmk16vD3UVVZG325hMJp2OXSafTCZTabdKhK/IyMgKXJpnK4uIiHC73RW4WM3wfvOwlfni\n7UKqqoa6lrLzX7zG//BGo7G0/2LLkAWrD0VRTCZTWG8PQUAX8i/cv1JRKhUb7DzoQr54dy9Z\nRf5FRESEuoRy8b9jo/F/P/n5+U6nM8CJk5OTPbPYbLbKLCqMJSUl5ebmOhyOUBdSFSmKkpSU\nJCJ5eXl2uz3U5VRRycnJOTk5gW+VCHdZWVkVuDTPVma1Wl0uVwUuVjP0en1CQoKIsJX5otPp\nEhMTrVZruB/09SSWYnHCCAAAQCMIdgAAABpBsAMAANAIgh0AAIBGEOwAAAA0gmAHAACgEQQ7\nAAAAjSDYAQAAaATBDgAAQCMIdgAAABpBsAMAANAIgh0AAIBGEOwAAAA0gmAHAACgEQQ7AAAA\njSDYAQAAaATBDgAAQCMIdgAAABpBsAMAANCI8gY71Z1vzcmvkFIAAABQHuUNdn+t6p9Uo0WF\nlAIAAIDyMAQ4nerKnfvwyMXfbDpR4Cza/vf+fUpUy0ooDAAAAKUT6BG7LdP+lTr3fWt8o2Z1\nnH/++Wfzthe3a9vccOKQknjlK59+UaklAgAAIBCBHrF7Ys72pNZPZ66bqLpyG0cnXDH3rYn1\nYwqOZrRudH1uXUullggAAIBABHrE7nurveFtfURE0UcPqWlevfmEiETV7PHWsIZPD1hYiQUC\nAAAgMIEGuwSD4shxeF53usBy8NODntcX3nRB1u5ZlVIaAAAASiPQYDeiXszuN54/YHOJSP1+\n9f5a+Zqn/e9vjlRWaQAAACiNQIPdqNdHFhz7T5PkBnsLXU3uHJF/9O0uw8e9OO2RPjO3JbYa\nX6klAgAAIBCB3jxRp8cLWz6uM3XBcp0iljqj3nt46e2zX9qgqrFNrln6xahKLREAAACBCDTY\niUi7/o/8p/8jntcD076+7pHMvXmRLS9qYFQqpzQAAACURimC3Tli6zdrV4GFAKhmUlNTQ10C\nAGiNv2DXvn17RRex+acNntd+ptyyZUsF1wUAAIBS8hfsoqOjFV2E53V8fHxQ6gEAAEAZ+Qt2\n33//vff1t99+W/nFAAAAoOwCfdwJAAAAqrhSBLvjPy0befPVw5bt8wyuuqZ9l95DPvzxWOUU\nBgAAgNIJ9K7Y7F2vNet8X7YSd9fI01kwsUPKvtnvD/pq+Ylf9t7XIqHSKgQAhKsKufc5PT29\n/AsBqolAj9j9u/8TeVHt1+w/uPDa+p6WDs99uGf/uk7mwsm3vFZp5QEAACBQgQa7Wbuzm945\n9/LaUUUbI2tcln7vRVm7Xq6EwgAAAFA6gQY7l6qa4kznt+vNehF3hZYEAACAsgg02D3QMPb3\nBZMO2FxFG932w1Pm7oy5gN+KBQAACL1Ab5649+PJz1z8aKvmPceOGX5526ZmnWPvjh8Wpz2/\n6oRzysoHSpz9yPqJI5/7tWjLqMUf9k6IFHF/9/4ry9dsPpCjb9G607DU4Y2i9Gcm8TXKzywA\nAADVV6DBLrH1I9uX628ZNXFK6hpvY2Ri86nvfTT5sholzp71c1ZUUt+HRrbytjS2mERkz8eT\nZn2wb8joB+5KcK5YMG/iGOe7r96riPgZ5WcWAACA6izQYCciDa9L3bjv3m0bMrbs3JfvMtRp\n3OpfPS6N1QeUqY7usMa37Nq1a6t/tKr2tA9+azokbcBVjUSk6Qy5ZeiL7x0eMriOxeeo2kaf\nswAAAFRvpfvliZMH/zImNujYtdu/unW5qF7s4d2Zv//++++//17ijFuttoT28a4C699Hs9Qz\njbbsNfsLXdf1rOsZjEjo1i7atDHjiJ9RfmYBAACo5gI9Yld4fNXNVwxc+fvJYseqqlpsu9eW\nXId7bfqtc3Y6VNVgqXHN4IdG9W1rz/tFRFqaz9bQymz4alu2iPgaZe/mcxaPffv2/fTTT97B\nLl26xMTEBPgZPYxGo6Jwatcnk8mk13NRYzG83cZkMul0/FifTyaTyWAoxbkCIDIy0vPCs5VF\nRES43TyNoRjebx62Ml+8XajE3FKV+S8+0D/8azcM+XxXTp/7JlzbtqGhlLHHZT+YregbJnaZ\nsWR6nMu64bNFMxdOikh5q78pT0SSjWdTQrJR77A6RMRtK36Ur3bv4NatW5999lnv4DvvvFOn\nTp1SVev9BkGxoqKiSp6oeqML+Wc2m0NdAsJMdHR00UG6UIlYRf5ZLOF9+ZbL5fIzNtBg9/TG\nY40H/mf5K/3KUIHeVG/p0qVnhpJ7DJqQ+dXA1Yu23fyIWUROOty1Tad3Mo47XIYEg4joIoof\n5au9DFUBAABoTECRSHXlHHO42gxsW1HveknNqNWnjhnNbUQydhY4apsiPO2ZBc64VnEi4muU\nn1k8+vXr16/f2fSZlZV1/PjxAKtKTk4WkZycHJvNVu6PqE1JSUlWq9XhcJQ8afWjKEpSUpKI\nWK1Wu90e6nKqqOTk5KysLKfTGepCEE68X+OerezUqVP+j1hUW3q9PiEhQUTYynzR6XSJiYkn\nT54M97P5nsRSrICuBFL00f+Kj9zz5qayvX1W5ry7R4w+Yj+zElVXxuH8+JbNIuOvrGfSr1x3\nzNPsyN28Kcfe4craIuJrlJ9ZAAAAqrkAL/FW3l8x3f75HcOmLz6SV+qdgNjGA5Pyj4yfumDT\ntsxd239+b/a4NXkx94xoJopx7IDmu/49ZfXmzEN7fl00Oc1S7+ohdS0i4nOUn1kAAACqNyXA\nG0O6deuW99fPW/7MVRR9Yu3aUf98fN2BAwf8z247tf2N+e/+b2tmoSG2cdPW/e8e1bm+RURE\ndX391uwPvv7xRKHSpF2Pe8eObOq949XXKD+znKdUh6M5FVsiTsX6wanYQBQ9FZuamhrqchAe\n0tPTPS84Fesfp2JLVB1OxQYa7Pr37+9n7CeffFLqooKCYFexCHZ+EOwCQbBDGRDsAkSwK1F1\nCHaB3k9aZaMbAAAAPHiMKgAAgEaU7glwv3/zwXtfrt9/9GT3GfNvM6774VDbHq1rVlJlAAAA\nKJVAgp1LRC+ivjL8itFvrvM0mSen985Nv7L9iu4j5qxaMLq0v0UBAACAClfCqdijmz+5tUtr\nEfnj3ZtGv7mu1+jZW3cd9IxKSHnh2Xu6ZCx8oN/8nZVeJgAAAEriL9i9OLp3/Y63Rd74oog8\nPfbrxBYTVs19qG3Tup6xBnPzCfP/N7VNUsaU6cGoFAAAAH75C3bjXlk54M2f3xrfR0SWHi9o\nMmzw+dP0v7Nx4YnllVUdAAAAAuYv2N10Sa2l9w945dsDItIgQp+zy3r+NKe2Z+sj6lZWdQAA\nAAiYv2D38ca/Pnm+d1r/TiLyRKeau9+5c8PxwqIT5B9aPfyDPcntx1dujQAAAAiA35snFMP1\n97+wY1+GiNz0wWsNlP09Gl086tFpIrL9/denPzasZco1+9115nx0a3BqBQAAgB8lP6DYFJci\nIlE1rt+y9b83X6ZblDZFRL6bNPapme/EdL7lky2/3FzHUtlVAgAAoESleEBxbMp1S1Zf9+9j\ne7f/ccipj7ogpdUF8RGVVxkAAABKJdBgl52dffqVKTGlRaKIiBRmZ5++5C4uLq7CKwMAAECp\nBBrs4uPj/YxVVbUiigEAAEDZBRrspkyZ8o9h1Xloz45lH3x6Uqk35dVnK7WrcCoAABr1SURB\nVLwsAAAAlFagwe6pp546v3H2iz/0atZj9ss/TRx+e4VWBQAAgFIr+a5YP6JqdVo47eLjW2dl\nZNsqqiAAAACUTbmCnYiYLzAriv4is7FCqgEAAECZlSvYuR3HZk3+2RjdvraxvAERAAAA5RTo\nNXZdunQ5r819eNcv+04UXjppbsXWBAAAgDIoxQOKz6Or36bnjb3ueGFipworBwAAAGUVaLBb\nv359pdYBAACAcuLaOAAAAI0I9Ijdp59+Gshkii6yX99rylEPAAAAyijQYHfjjTcGMpml1tDc\nvwl2AAAAIRBosDu0Z/kVrfofMre8f8zIHu2bmexZmTs2vpE2N9PQcfHbU2qcedyJ0dyi0koF\nAACAP4EGu41jUv8ydNj059o20aefRXztDbfe9+CdPepd9tRH7u0Lrqy0CgEAABCQQG+emPz1\nwaZ3vuxNdR7G6Daz707ZvWRcJRQGAACA0gk02P1ldyo65fx2Ra84C/+o0JIAAABQFoEGuyG1\nLLvfGr+30FW00WXb/8S/d0UlBXRfBQAAACpVoMFu3JsjHdY1F7e5bvbbn2zY8ttvP//w6bvp\n17dpu+pUYZ+Zkyu1RAAAAAQi0Jsn6vaauWGR8eYH0x6582tvo84QO2TaJ2/d3qRyagMAAEAp\nlOK3Yi+76/m9tz/yzWdfbv19f55LX/vC5ldef/1FSRGVVxwAAAACV7qfFNu99rt1Gzb/9ntm\nw5EPDesd8/fh7EoqCwAAAKUV+BE79ZXhV4x+c51nwDw5vXdu+pXtV3QfMWfVgtGGYu6XBQAA\nQFAFesTuj3dvGv3mul6jZ2/dddDTkpDywrP3dMlY+EC/+TsrrTwAAAAEKtBg9/TYrxNbTFg1\n96G2Tet6Wgzm5hPm/29qm6SMKdMrrTwAAAAEKtBgt/R4QZNhg89v739n48ITyyu0JAAAAJRF\noNfYNYjQ5+yynt9+anu2PqJuhZYEAMBZqamp5V9Ienp6+RcCVH2BHrF7olPN3e/cueF4YdHG\n/EOrh3+wJ7n9+EooDAAAAKUTaLC76YPXGij7ezS6eNSj00Rk+/uvT39sWMuUa/a768z56NbK\nrBAAAAABCfRUbFSN67ds/e+9o8YuSpsiIt9NGpuh6Ftdeesnc1/pU8dSiQWWj16vL8MsBkMp\nnttc3ej1elVVQ11FVaQop5/6QxfyrwxbJVB+1WGr9G5cbGW+6HQ6ETEYDG63O9S1lJ3//8JK\nYP+k3TabQ2eKMCpScGzv9j8OOfVRF6S0uiC+qv/shMvlon8DVdPgwcXcjwVUkiVLloS6BKBi\n+M82Ae3BqK6ceHNCpyW7vhvYJKpGo0trNKq48ipXTk6O0+kMcOLk5GTPLDabrTKLCmNJSUlW\nq9XhcIS6kKpIUZSkpCQRsVqtdrs91OVUUcnJyVlZWYFvlUBFOX78eKhLqHR6vT4hIUFE2Mp8\n0el0iYmJJ0+eDOsjdnImsRQroGvsFH3c2BaJe17fWHElAQAAoIIFes3B5O9X/nx579HpUdNG\n9UmK4OQmUK1VyOMnAAAVLtBg1+fWie5aDV59uP+rj0TWqlMj0viPQ3179+6thNoAAABQCoEG\nu8jISJG6vXvzLGIAAIAqKtBgt3w5vxsGAABQpfm7eaJ+/fo9H/8paKUAAACgPPwFu7/++uvv\nrH88tcFoNLYdvaGSSwIAAEBZBPqTYh5Op9Pp5lcHAAAAqqLSBTsAAABUWQQ7AAAAjSDYAQAA\naATBDgAAQCNKeI7dyV8+fPnlH/23iMhDDz1UwXUBAACglEoIdkfWzX54XQktQrADAACoAvwF\nu2XLlgWtDgAAAJSTv2B3ww03BK0OAAAAlBM3TwAAAGgEwQ4AAEAjCHYAAAAaQbADAADQCIId\nAACARhDsAAAANIJgBwAAoBEEOwAAAI0g2AEAAGgEwQ4AAEAjCHYAAAAaQbADAADQCIIdAACA\nRhDsAAAANIJgBwAAoBEEOwAAAI0g2AEAAGgEwQ4AAEAjCHYAAAAaQbADAADQCIIdAACARhDs\nAAAANIJgBwAAoBEEOwAAAI0g2AEAAGgEwQ4AAEAjDMF5G9V56pOFCz5ft/VEoa5O/ZR+Q+69\npn1tETmyfuLI534tOuWoxR/2TogUERH3d++/snzN5gM5+hatOw1LHd4oSu+3HQAAoFoLUrD7\n6tlH39keM/Se1Jb1LL98894rU0YXzl18Q/3orJ+zopL6PjSylXfKxhaT58WejyfN+mDfkNEP\n3JXgXLFg3sQxzndfvVfx3Q4AAFDNBSPYuWwH5v90vMezL93QKkFEUpq3OfzjwE/n77zhmUuP\n7rDGt+zatWurc+dR7Wkf/NZ0SNqAqxqJSNMZcsvQF987PGRwbWPx7XUsQfggAAAAVVlQgl3h\nnxc2anR945gzDUr7uIgN2bkistVqS2gf7yqwHstx16oZ7z3wZstes7/QldqzrmcwIqFbu+iX\nN2YcufnaPcW2D76tsaclPz//1KlT3reOjIzU60t3olan05V2lmqF9eOLopzuv6wioAqqDlul\n9zPq9XpVVUNbTNXk+aLW6XTeb+xw5P+PG4xgZ4rrNnt2N++gI3fn64dyG45sKiJbch3utem3\nztnpUFWDpcY1gx8a1betiNjzfhGRluaz5bUyG77alm3vVny7d3DVqlXTpk3zDr7zzjvNmzcv\nVbUWi8Vi4fifTzExMSVPVL1FR0eHugQA50pISAh1CcHDF7V/8fHxoS6hXFwul5+xQbrGzuvP\njZ/NSX/D2fj6J66u57IfzFb0DRO7zFgyPc5l3fDZopkLJ0WkvDWsebzbliciycazO1jJRr3D\n6vDVHuRPAQAAUAUFL9jZTu18/eU5X2w92WPAfc8M7hmpKGKqt3Tp0jPjk3sMmpD51cDVi7YN\ne+kKXYRZRE463LVNpx/IctzhMiQYfLV736V79+5vv/22dzA5OTkrKyvACj0RPj8/3263l++z\nalZcXFxeXp7T6Qx1IVWRoihxcXEikpeX53CwswFULYH/Lwhfer3ec6wuJyfH/0Gdakun08XG\nxlqtVrfbHepayk5VVT9HoIMU7HL2rhr72Dx92+teWHjnRcmRvia7pGbU6lPHRMRobiOSsbPA\nUdsU4RmVWeCMaxXnq927hPj4+KKHWLOyskqbQlwuF8HFD9aPL94rNlhFQBV0//33l38h6enp\n5V9I5fFeesW3kC86nU5EnE5nWAc7/4LxgGLVnf/M469G9HrwlSfvKZrqsjLn3T1i9BH7mZWr\nujIO58e3bCYikfFX1jPpV6475hnjyN28Kcfe4cravtqD8CkAAACquGAcscv/++0d+Y6721p+\n2rTJ22iMSmlz0cCk/HvHT13wwKBecUr+pq/eXpMX8+SIZiIiinHsgOaP/XvK6lrjmsfbPp2T\nZql39ZC6FhHx1Q4AAFDNBSPYZf/+p4j8e8YzRRvjGk9+e/Zl0+dNfWP+uy8//UShIbZx09bj\nZ09rH230TNB04NP322YvSZt8olBp0q7H9LEjFb/tAAAA1Zyi7UfdlOoau+TkZBHJycmx2WyV\nWVQYS0pKslqt3BlQLEVRkpKSRMRqtVbl+29SU1NDXQIQrqr4NXZ6vd5zTX0Zri+vJnQ6XWJi\n4smTJ8P9GjtPYilWMK6xAwAAQBAQ7AAAADSCYAcAAKARBDsAAACNINgBAABoBMEOAABAIwh2\nAAAAGkGwAwAA0AiCHQAAgEYQ7AAAADSCYAcAAKARBDsAAACNINgBAABoBMEOAABAIwh2AAAA\nGkGwAwAA0AiCHQAAgEYQ7AAAADSCYAcAAKARBDsAAACNINgBAABoBMEOAABAIwh2AAAAGkGw\nAwAA0AiCHQAAgEYQ7AAAADSCYAcAAKARBDsAAACNINgBAABoBMEOAABAIwh2AAAAGkGwAwAA\n0AiCHQAAgEYQ7AAAADTCEOoCAAQqNTU11CUAAKo0gh0AAAEp/85Venp6hVQC+MKpWAAAAI0g\n2AEAAGgEwQ4AAEAjCHYAAAAaQbADAADQCI3fFRsdHa3X60s7S3R0dCXVE+4URYmNjQ11FVVd\nTExMqEsAUEUlJSUF4V3i4uKC8C7hKyEhIdQllIvL5fIzVuPBrrCw0P/nL8qzJRQUFDgcjsos\nKozFxsbm5+c7nc5QF1IVeVMvXQiAL1artfIWrtPpPDuWeXl5gf/vq1Y8X9Q5OTmqqoa6lnLx\nk901HuycTmdpU4jL5eK/sh9Op5P1UyxFUTwvWEUAfKnULwfvGaoy/O+rJnQ6nYg4nU632x3q\nWioL19gBAABoBMEOAABAIwh2AAAAGkGwAwAA0AiCHQAAgEYQ7AAAADSCYAcAAKARBDsAAACN\nINgBAABoBMEOAABAIwh2AAAAGkGwAwAA0AiCHQAAgEYQ7AAAADSCYAcAAKARBDsAAACNMIS6\nAKC6SE1NDXUJAEKsQr4H0tPTy78QaBVH7AAAADSCYAcAAKARBDsAAACNINgBAABoBMEOAABA\nIwh2AAAAGkGwAwAA0AiCHQAAgEYQ7AAAADSCYAcAAKARBDsAAACNINgBAABoBMEOAABAIwh2\nAAAAGkGwAwAA0AhDqAsAwkBqamqoSwAAoGQEOwAAwkmF7Gqmp6eXfyGogjgVCwAAoBEEOwAA\nAI0g2AEAAGgEwQ4AAEAjCHYAAAAawV2xAABUO9xaq1UEO2gcj6ADAFQf4Rjs3N+9/8ryNZsP\n5OhbtO40LHV4oyh9qEsCAAAIvfC7xm7Px5NmfbC+y00jn3r4TvMfqyaOWaiGuiQAAICqINyO\n2Kn2tA9+azokbcBVjUSk6Qy5ZeiL7x0eMriOJdSVoeJxFhUAqjIu1KuCwizY2bLX7C90pfas\n6xmMSOjWLvrljRlHBt/WOLSF4RxkMgAAgi/Mgp097xcRaWk+W3Yrs+Grbdnewc8///zFF1/0\nDs6fPz8lJaVUbxEdHR0dHV3uSsPY7bffHuoSAADVRdU5EPDuu++GuoSAuFwuP2PDLNi5bXki\nkmw8e7dEslHvsDq8gw6Hw2q1np3e7VYUpVRvUdrpRWTw4MGlnQUAAFQpFXJcY8mSJeVfiH/+\ng0qYBTtdhFlETjrctU2nb/s47nAZEs5+ihYtWjz44IPewZiYmLy8vAAXbrFYRMRmszmdzlJV\ntXDhwlJNH77MZrPNZvO/r1BtKYpiNptFpLCwkFXki8ViKSgocLvdoS6kKqILlciziuhCvuh0\nuqioKBFhFfni6UL5+fmqWlk3XgaeOspMVVU/pxbDLNgZzW1EMnYWOGqbIjwtmQXOuFZx3glS\nUlKKnnvNysoqKCgIcOGeYGe32202W8WVrCmeYOdwOEqetPrx/le22+12uz3U5VRRFoulDPtO\n1YROp/N0IbYyXzxbGcHXF71e7wl2bGW+eLaywsLCcA++foJdmD3uJDL+ynom/cp1xzyDjtzN\nm3LsHa6sHdqqAAAAqoIwC3aiGMcOaL7r31NWb848tOfXRZPTLPWuHlKXZ50AAACE26lYEWk6\n8On7bbOXpE0+Uag0addj+tiRpb7ZAQAAQIvCL9iJor966Nirh4a6DAAAgCom3E7FAgAAwAeC\nHQAAgEYQ7AAAADSCYAcAAKARBDsAAACNINgBAABoBMEOAABAIwh2AAAAGkGwAwAA0AiCHQAA\ngEaE4U+KVQ5VVdetWyciderUiYmJCXU5VZTD4XC73aGuoopyOp2eLlSvXj2LxRLqcqooh8Oh\nqmqoq6iiHA6HpwvVr18/Kioq1OVUUXQhPwoKCn777TcRufDCCyMiIkJdTlWkqqrmu5Ci7Y8X\nOKfT2blzZxF55plnrrnmmlCXg/BjtVp79uwpImlpad27dw91OQg/R44c6d27t4jMnz//0ksv\nDXU5CD979+695ZZbROStt95q2bJlqMtBaHAqFgAAQCMIdgAAABpBsAMAANAIrrE7ze12r169\nWkRat25du3btUJeD8ONwODIyMkSkXbt2NWrUCHU5CD+FhYVr164VkQ4dOiQmJoa6HISfvLy8\n9evXi0jHjh1jY2NDXQ5Cg2AHAACgEZyKBQAA0AiCHQAAgEZU6wcUv3nf0Mhp82+rUcyDQO3W\nzIXpi9b/uifPbbiwWYeBo+7v0iA6+BWiivPThY6snzjyuV+Ltoxa/GHvhMhglYbw4KsL5Ryc\neft9Gec0miztlr43PVilITz4+RZy2Q6/9+rC//3y+9Fcadqu24iH7k6JNga/QgRZtQ126u61\nb3xyKOuW4i8xVF8Z8+Sm6E6jJ92drMv79oM5Lzw6YeGS9GQDBzjh5b8LSdbPWVFJfR8a2crb\n0thiClZtCAv+upA5se+ECV2Ktmx4PX1Xq6uDVRvCgt9vIdU1f8zY7x3N77v/8drG/C+XzJv0\ncPbbC8eblKCXieCqjsHu7+9nT3rtf0ezbb4msGV/u/po/tiZ93eJixCRRhMeW3HbhA+O5o+u\ny0E7iATQhUTk6A5rfMuuXbu28jMNqq0Su5A+qlnXrs28g9mZ76flNXrtwW5BqQ5hoMQulPf3\n218eyB27eFyPhEgRadrigs2D7n91V9ZDzeKDWCZCoDoegkpsO2DCU8+9NGO8rwl0huS77rqr\nU+yZ4yuKQUTM+uq4rlCsEruQiGy12hLax7sKrH8fzeLOc5wjkC7kpbpy0qYu7T1xXKKBgy04\nrcQulLt3l6KL6nHm8g+9qW7X2IidKw8Fq0CETHU8YmeKu6BpnLjsPq92Mlra3nhjWxE59fMP\nW44c3fTlBzVa9R1S0xzEGlGlldiFRGRLrsO9Nv3WOTsdqmqw1Lhm8EOj+rYNWoWo4gLpQl57\nPpn+R3L/qa0TKrsqhJESu1Bk7Rqq+9dNOfZLY0wiorqytuTYc3ZnB7FGhEZ1DHaBO7Lm6xW7\nDu7/q+CKmxuzp4zAuewHsxV9w8QuM5ZMj3NZN3y2aObCSREpbw1rzkkQlI7bfviZ93bdlP5U\nqAtBmIm9cETb2LWzJqc/OLxPoi7324/nn3C6jW57qOtCpSPY+dM8dVKaSO6BDfelPj+9Xssp\nV9YJdUUID3pTvaVLl54ZSu4xaELmVwNXL9o27KUrQlkWwtCBlWm50T1vqmcJdSEIM4o+evKc\nKa/NeXvBC5Py1LguN4y47WD6p2Y6kvYR7Iph3f39939E9L6mo2cwun7nPkmRX6w6LAQ7lNUl\nNaNWnzoW6ioQdtTFH+1tOvThUJeBsBSR0PrBJ2d4B6f9d2ZCT36qTvu4IaAYjoKM1+bPOu5w\nnx5WndvzneYG7OggUFmZ8+4eMfqI3duFXBmH8+NbNvM7E3Cu/KMf/ZTruLs7v16NUnPb/54y\nZco3pwo9gwXHv9yUY+91dd3QVoUgINidtWfpO2+8tVxEEprf08hom/Dcvzdvy9y9Y+v76eN+\nKYi647aGoS4QVZ23C8U2HpiUf2T81AWbtmXu2v7ze7PHrcmLuWcEwQ4l8HYhj0Mr15piOjeJ\n1IewJIQXbxfSmWo3zNq9aOKcH7fv+uWHb58Zu6jGpSP6JvOMdO0j2J11cPXnK1auFRGdseYz\nMyc0c2x/adrjjz313IYjtR6eMdfzTDvAj7NdyJA8fd7UztEHXn76iSeeS/85u9742enteeY7\nSuLtQh4ZGUdiU64JYT0IO0W70JDnp/Wqf2zu9AnPzn039oohsyb2DW1tCA5F9fHcfAAAAIQX\njtgBAABoBMEOAABAIwh2AAAAGkGwAwAA0AiCHQAAgEYQ7AAAADSCYAcAAKARBDsAOE11ZTeK\nMiqKUv/qpeePndUkwZzUJ/hVAUDgCHYAcNrRn8b+WegUkcPfP3zS6e/h7Ud/mNS3b991Vnuw\nSgOAgBDsAOC0L8esVBTlmXsuctkOjt101M+U+X+vX7Fixd8OV9BqA4BAEOwAQETEZf/rkR+P\nRNdLfWjKIyLy5dgvK+mN3M4s8iCASkKwAwARkUPfPnTS4W43+V5LnVG94iOPbhxzyO4udspn\nG8U3unG1iNycbI6tP05ExtWP9bzw+nnqJYqi/Gk7HeHeuCgpocksW9aPd/yrZXREYq5LFZHf\n/jvvxn91SI6zGExRdZq0HTou3f/5XwAoEcEOAERElj6aoSj6Gbc1FpGptzR0OU488v3hYqcc\ntPg/i5+8WEQmffjfT94ZEeDy3c6TQy++9kj9q59NfyVKpxz4bHTrGx/MOBI3/MHx0yc9dlVT\n91svPtR52MqK+jgAqidDqAsAgNBz5m+buONkbKMnusaaRKTNxCGycOK3jy6TLaPPn7hR957K\nqUQRad/zql5JUQG+Rc6BZ7LSN339QAfP4LfjP9RF1N/686oGEXoREZlW44LY+V8sEOldER8I\nQDXFETsAkH2fPlLgVi+ZNswzGNtgXIdo04lfJ+wurLjL4ZSIt0Zd7B0asPb3I4d2nEl1orrz\nbKqquvIr7O0AVEscsQMAeX3iRhGp/8fSmTONnpZW8RGbc3Me/uqvFf0urJC3MEVfXNN4dl/a\nHJ94cuMXi79Ysz3zj337//ztl60Hs2yR8RXyVgCqL4IdgOrOlp0x40+riCx+6vFzRq0f/770\nG1+GZaruc2+DUHSWooMfj+11y6xv67Xv2ffKzn0uv3bstHYH77n6AX+PWAGAkhHsAFR3uxc/\n7lLV7q/tzBh50dlW1dk1PnpD5lNb88a0sxgDWMw/Ttoe2XTSz6T2nA0DZ31b//r5+1bc4218\no5RlA8D5uMYOQHWX9twvii5i9qDG/2hVDC8Obqy6bWOW7fM1o3rmqJxZrys8+dlxx+nHoxSe\n2HD/6oN+3tGZv9OlqokXX+JtyT+8bubBHBEedwKgXAh2AKq1guMfvf53XlLr59pHn3tY7uIn\nU0Xkp8nFHEozxhhF5LU5i5a8/4OI9BvSzJH/e7ued7684PWXpo67tHGPI8kmP29qrnHbVUlR\nv77Y54GpM9/496uTxwxt0qR3fM1Ie+7m9Hc/yjvvNC4ABIhgB6Ba2zHrGRG5atat54+y1Lm3\nf3KU9c8Za8/7TdianWb06dBwzTNjHn3uSxFpP/W7uWMGxRz45rH7Rjw25cWsNrd99WEPf++q\ni1y2ZfkdPS9cNuephye9tDbTvXDTnmUfTW4QY3/s3tFZzuIfjAwAJVJUlV1DAKgYbpv1r2PO\nBhckhroQANUUwQ4AAEAjOBULAACgEQQ7AAAAjSDYAQAAaATBDgAAQCMIdgAAABpBsAMAANAI\ngh0AAIBGEOwAAAA0gmAHAACgEQQ7AAAAjSDYAQAAaATBDgAAQCP+H/01ULfhKwgyAAAAAElF\nTkSuQmCC"
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
    "ggplot(dados, aes(x = Altura)) + \n",
    "    geom_histogram() + \n",
    "    ylab(\"Frequência\") + \n",
    "    xlab(\"Altura\") + \n",
    "    ggtitle('Histograma Altura') +\n",
    "    theme(plot.title=element_text(hjust = 0.5))"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "fb012420",
   "metadata": {
    "id": "1ADrwGb5psjQ",
    "papermill": {
     "duration": 0.071232,
     "end_time": "2024-05-06T14:45:53.259206",
     "exception": false,
     "start_time": "2024-05-06T14:45:53.187974",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### <font color='red'>Critério do valor $p$</font>\n",
    "\n",
    "> ### Rejeitar $H_0$ se o valor $p\\leq \\alpha$"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 14,
   "id": "802e30cd",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:45:53.404470Z",
     "iopub.status.busy": "2024-05-06T14:45:53.402654Z",
     "iopub.status.idle": "2024-05-06T14:45:53.430839Z",
     "shell.execute_reply": "2024-05-06T14:45:53.427482Z"
    },
    "papermill": {
     "duration": 0.10501,
     "end_time": "2024-05-06T14:45:53.435496",
     "exception": false,
     "start_time": "2024-05-06T14:45:53.330486",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "\n",
       "\tShapiro-Wilk normality test\n",
       "\n",
       "data:  amostra$Altura\n",
       "W = 0.99931, p-value = 0.04876\n"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "resultado <- shapiro.test(amostra$Altura)\n",
    "resultado"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 15,
   "id": "e926a6c6",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:45:53.591395Z",
     "iopub.status.busy": "2024-05-06T14:45:53.589213Z",
     "iopub.status.idle": "2024-05-06T14:45:53.613382Z",
     "shell.execute_reply": "2024-05-06T14:45:53.611066Z"
    },
    "papermill": {
     "duration": 0.105531,
     "end_time": "2024-05-06T14:45:53.616671",
     "exception": false,
     "start_time": "2024-05-06T14:45:53.511140",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "0.0487635402187833"
      ],
      "text/latex": [
       "0.0487635402187833"
      ],
      "text/markdown": [
       "0.0487635402187833"
      ],
      "text/plain": [
       "[1] 0.04876354"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "p_valor <- resultado$p.value\n",
    "p_valor"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 16,
   "id": "1dc650bf",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:45:53.772838Z",
     "iopub.status.busy": "2024-05-06T14:45:53.770418Z",
     "iopub.status.idle": "2024-05-06T14:45:53.799641Z",
     "shell.execute_reply": "2024-05-06T14:45:53.797182Z"
    },
    "papermill": {
     "duration": 0.113164,
     "end_time": "2024-05-06T14:45:53.804460",
     "exception": false,
     "start_time": "2024-05-06T14:45:53.691296",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<strong>W:</strong> 0.999305995531248"
      ],
      "text/latex": [
       "\\textbf{W:} 0.999305995531248"
      ],
      "text/markdown": [
       "**W:** 0.999305995531248"
      ],
      "text/plain": [
       "       W \n",
       "0.999306 "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "resultado$statistic"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 17,
   "id": "1ab8d10b",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:45:53.973887Z",
     "iopub.status.busy": "2024-05-06T14:45:53.971739Z",
     "iopub.status.idle": "2024-05-06T14:45:53.992408Z",
     "shell.execute_reply": "2024-05-06T14:45:53.990146Z"
    },
    "id": "Q4eJFGsCpsjG",
    "outputId": "95f4e550-b43e-476c-94e6-12b600384bc5",
    "papermill": {
     "duration": 0.108129,
     "end_time": "2024-05-06T14:45:53.995428",
     "exception": false,
     "start_time": "2024-05-06T14:45:53.887299",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "TRUE"
      ],
      "text/latex": [
       "TRUE"
      ],
      "text/markdown": [
       "TRUE"
      ],
      "text/plain": [
       "[1] TRUE"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "p_valor <= significancia"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "3c9d312e",
   "metadata": {
    "id": "rWh-HSd-psji",
    "papermill": {
     "duration": 0.074383,
     "end_time": "2024-05-06T14:45:54.143084",
     "exception": false,
     "start_time": "2024-05-06T14:45:54.068701",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## <font color=green>2.2 Etapas Básicas de um Teste</font>\n",
    "***"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "65d8f5fe",
   "metadata": {
    "id": "DQF30K2Cpsjj",
    "papermill": {
     "duration": 0.069982,
     "end_time": "2024-05-06T14:45:54.324066",
     "exception": false,
     "start_time": "2024-05-06T14:45:54.254084",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### **Passo 1** - formulação das hipóteses $H_0$ e $H_1$;\n",
    "\n",
    "> ### <font color='red'>Pontos importantes</font>\n",
    "> - De maneira geral, o alvo do estudo deve ser formulado como a hipótese alternativa $H_1$.\n",
    "> - A hipótese nula sempre afirma uma igualdade ou propriedade populacional, e $H_1$ a desigualdade que nega $H_0$.\n",
    "> - No caso da hipótese nula $H_0$ a igualdade pode ser representada por uma igualdade simples \"$=$\" ou por \"$\\geq$\" e \"$\\leq$\". Sempre complementar ao estabelecido pela hipótese alternativa.\n",
    "> - A hipótese alternativa $H_1$ deve definir uma desigualdade que pode ser uma diferença simples \"$\\neq$\" ou dos tipos \"$>$\" e \"$<$\".\n",
    "\n",
    "\n",
    "### **Passo 2** - escolha da distribuição amostral adequada;\n",
    "\n",
    "> ### <font color='red'>Pontos importantes</font>\n",
    "> - Quando o tamanho da amostra tiver 30 elementos ou mais, deve-se utilizar a distribuição normal, como estabelecido pelo **teorema do limite central**.\n",
    "> - Para um tamanho de amostra menor que 30 elementos, e se pudermos afirmar que a população se distribui aproximadamente como uma normal e o desvio padrão populacional for conhecido, deve-se utilizar a distribuição normal.\n",
    "> - Para um tamanho de amostra menor que 30 elementos, e se pudermos afirmar que a população se distribui aproximadamente como uma normal e o desvio padrão populacional for desconhecido, deve-se utilizar a distribuição t de Student.\n",
    "\n",
    "<img src='https://caelum-online-public.s3.amazonaws.com/1229-estatistica-parte3/01/img003.png' width=70%>\n",
    "\n",
    "### **Passo 3** - fixação da significância do teste ($\\alpha$), que define as regiões de aceitação e rejeição das hipóteses (os valores mais freqüentes são 10%, 5% e 1%);\n",
    "\n",
    "> ### <font color='red'>Pontos importantes</font>\n",
    "> - O **nível de confiança** ($1 - \\alpha$) representa a probabilidade de acerto da estimativa. De forma complementar o **nível de significância** ($\\alpha$) expressa a probabilidade de erro da estimativa.\n",
    ">\n",
    "> ![Níveis de Confiança e significância](https://caelum-online-public.s3.amazonaws.com/1229-estatistica-parte3/01/img001.png)\n",
    ">\n",
    "> - O **nível de confiança** representa o grau de confiabilidade do resultado da estimativa estar dentro de determinado intervalo. Quando fixamos em uma pesquisa um **nível de confiança** de 95%, por exemplo, estamos assumindo que existe uma probabilidade de 95% dos resultados da pesquisa representarem bem a realidade, ou seja, estarem corretos.\n",
    ">\n",
    "> ![Áreas de Aceitação e Rejeição](https://caelum-online-public.s3.amazonaws.com/1229-estatistica-parte3/01/img002.png)\n",
    "\n",
    "### **Passo 4** - cálculo da estatística-teste e verificação desse valor com as áreas de aceitação e rejeição do teste;\n",
    "\n",
    "> ### <font color='red'>Pontos importantes</font>\n",
    "> - Nos testes paramétricos, distância relativa entre a estatística amostral e o valor alegado como provável.\n",
    "> - Neste passo são obtidas as estatísticas amostrais necessárias à execução do teste (média, desvio-padrão, graus de liberdade etc.)\n",
    "\n",
    "\n",
    "### **Passo 5** - Aceitação ou rejeição da hipótese nula.\n",
    "\n",
    "> ### <font color='red'>Pontos importantes</font>\n",
    "> - No caso de o intervalo de aceitação conter a estatística-teste, aceita-se $H_0$ como estatisticamente válido e rejeita-se $H_1$ como tal.\n",
    "> - No caso de o intervalo de aceitação não conter a estatística-teste, rejeita-se $H_0$ e aceita-se $H_1$ como provavelmente verdadeira. \n",
    "> - A aceitação também se verifica com a probabilidade de cauda (p-valor): se maior que $\\alpha$, aceita-se $H_0$."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "d3bd9664",
   "metadata": {
    "id": "TXdMM0dOpsjm",
    "papermill": {
     "duration": 0.071048,
     "end_time": "2024-05-06T14:45:54.466238",
     "exception": false,
     "start_time": "2024-05-06T14:45:54.395190",
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
   "id": "162365b7",
   "metadata": {
    "id": "miGOADKYpsjn",
    "papermill": {
     "duration": 0.078064,
     "end_time": "2024-05-06T14:45:54.614839",
     "exception": false,
     "start_time": "2024-05-06T14:45:54.536775",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# <font color=green>3 TESTES PARAMÉTRICOS</font>\n",
    "***"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "2ef046be",
   "metadata": {
    "id": "pIHY_4Sspsjn",
    "papermill": {
     "duration": 0.078846,
     "end_time": "2024-05-06T14:45:54.768709",
     "exception": false,
     "start_time": "2024-05-06T14:45:54.689863",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Quando um teste assume determinadas premissas sobre como os parâmetros de uma população se distribuem, estamos trabalhando com **Testes Paramétricos**."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "2509929b",
   "metadata": {
    "id": "rUKgxZ7_psjp",
    "papermill": {
     "duration": 0.070133,
     "end_time": "2024-05-06T14:45:54.913789",
     "exception": false,
     "start_time": "2024-05-06T14:45:54.843656",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## <font color=green>3.1 Teste Bicaudal</font>\n",
    "***"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "bd490655",
   "metadata": {
    "id": "i1PMIB5cpsjp",
    "papermill": {
     "duration": 0.07482,
     "end_time": "2024-05-06T14:45:55.063454",
     "exception": false,
     "start_time": "2024-05-06T14:45:54.988634",
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
   "id": "d6ddba92",
   "metadata": {
    "id": "vellTWzJpsjq",
    "papermill": {
     "duration": 0.072059,
     "end_time": "2024-05-06T14:45:55.206666",
     "exception": false,
     "start_time": "2024-05-06T14:45:55.134607",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "A empresa **Suco Bom** produz **sucos de frutas em embalagens de 500 ml**. Seu processo de produção é quase todo automatizado e as embalagens de sucos são preenchidas por uma máquina que às vezes apresenta um certo desajuste, levando a erros no preenchimento das embalagens para mais ou menos conteúdo. Quando o volume médio cai abaixo de 500 ml, a empresa se preocupa em perder vendas e ter problemas com os orgãos fiscalizadores. Quando o volume passa de 500 ml, a empresa começa a se preocupar com prejuízos no processo de produção.\n",
    "\n",
    "O setor de controle de qualidade da empresa **Suco Bom** extrai, periodicamente, **amostras de 50 embalagens** para monitorar o processo de produção. Para cada amostra, é realizado um **teste de hipóteses** para avaliar se o maquinário se desajustou. A equipe de controle de qualidade assume um **nível de significância de 5%**.\n",
    "\n",
    "Suponha agora que uma **amostra de 50 embalagens** foi selecionada e que a **média amostral observada foi de 503,24 ml**. **Esse valor de média amostral é suficientemente maior que 500 ml para nos fazer rejeitar a hipótese de que a média do processo é de 500 ml ao nível de significância de 5%?**"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "b9e78b08",
   "metadata": {
    "id": "-J15nugOpsjq",
    "papermill": {
     "duration": 0.070754,
     "end_time": "2024-05-06T14:45:55.350347",
     "exception": false,
     "start_time": "2024-05-06T14:45:55.279593",
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
   "id": "d5113b02",
   "metadata": {
    "id": "076qvKgapsjr",
    "papermill": {
     "duration": 0.07377,
     "end_time": "2024-05-06T14:45:55.494111",
     "exception": false,
     "start_time": "2024-05-06T14:45:55.420341",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "O **teste bicaudal** é muito utilizado em **testes de qualidade**, como o apresentado em nosso problema acima. Outro exemplo é a avaliação de peças que devem ter um encaixe perfeito (porcas e parafusos, chaves e fechaduras etc.)."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "14bc5251",
   "metadata": {
    "id": "MyGUYz88psjr",
    "papermill": {
     "duration": 0.069847,
     "end_time": "2024-05-06T14:45:55.639318",
     "exception": false,
     "start_time": "2024-05-06T14:45:55.569471",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "![Teste Bicaudal](https://caelum-online-public.s3.amazonaws.com/1229-estatistica-parte3/01/img005.png)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "8948474b",
   "metadata": {
    "id": "EOiKt64mpsjs",
    "papermill": {
     "duration": 0.069603,
     "end_time": "2024-05-06T14:45:55.778475",
     "exception": false,
     "start_time": "2024-05-06T14:45:55.708872",
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
   "id": "257c1bf5",
   "metadata": {
    "id": "011wNGXtpsjs",
    "papermill": {
     "duration": 0.06938,
     "end_time": "2024-05-06T14:45:55.917355",
     "exception": false,
     "start_time": "2024-05-06T14:45:55.847975",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Dados do problema"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 18,
   "id": "1b65d23e",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:45:56.063332Z",
     "iopub.status.busy": "2024-05-06T14:45:56.061355Z",
     "iopub.status.idle": "2024-05-06T14:45:56.077766Z",
     "shell.execute_reply": "2024-05-06T14:45:56.075617Z"
    },
    "id": "lHLlGH7upsjt",
    "papermill": {
     "duration": 0.093046,
     "end_time": "2024-05-06T14:45:56.080648",
     "exception": false,
     "start_time": "2024-05-06T14:45:55.987602",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "amostra <- c(509, 505, 495, 510, 496, 509, 497, 502, 503, 505, \n",
    "           501, 505, 510, 505, 504, 497, 506, 506, 508, 505, \n",
    "           497, 504, 500, 498, 506, 496, 508, 497, 503, 501, \n",
    "           503, 506, 499, 498, 509, 507, 503, 499, 509, 495, \n",
    "           502, 505, 504, 509, 508, 501, 505, 497, 508, 507)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 19,
   "id": "a97ee659",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:45:56.229004Z",
     "iopub.status.busy": "2024-05-06T14:45:56.227334Z",
     "iopub.status.idle": "2024-05-06T14:45:56.256219Z",
     "shell.execute_reply": "2024-05-06T14:45:56.254284Z"
    },
    "id": "AJNH5RQtpsju",
    "outputId": "2e4e74bb-9e93-41ce-b12c-af947c39fda8",
    "papermill": {
     "duration": 0.11256,
     "end_time": "2024-05-06T14:45:56.266537",
     "exception": false,
     "start_time": "2024-05-06T14:45:56.153977",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 6 × 1</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>Amostra</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>1</th><td>509</td></tr>\n",
       "\t<tr><th scope=row>2</th><td>505</td></tr>\n",
       "\t<tr><th scope=row>3</th><td>495</td></tr>\n",
       "\t<tr><th scope=row>4</th><td>510</td></tr>\n",
       "\t<tr><th scope=row>5</th><td>496</td></tr>\n",
       "\t<tr><th scope=row>6</th><td>509</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 6 × 1\n",
       "\\begin{tabular}{r|l}\n",
       "  & Amostra\\\\\n",
       "  & <dbl>\\\\\n",
       "\\hline\n",
       "\t1 & 509\\\\\n",
       "\t2 & 505\\\\\n",
       "\t3 & 495\\\\\n",
       "\t4 & 510\\\\\n",
       "\t5 & 496\\\\\n",
       "\t6 & 509\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 6 × 1\n",
       "\n",
       "| <!--/--> | Amostra &lt;dbl&gt; |\n",
       "|---|---|\n",
       "| 1 | 509 |\n",
       "| 2 | 505 |\n",
       "| 3 | 495 |\n",
       "| 4 | 510 |\n",
       "| 5 | 496 |\n",
       "| 6 | 509 |\n",
       "\n"
      ],
      "text/plain": [
       "  Amostra\n",
       "1 509    \n",
       "2 505    \n",
       "3 495    \n",
       "4 510    \n",
       "5 496    \n",
       "6 509    "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "amostra <- data.frame(Amostra = amostra)\n",
    "head(amostra)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 20,
   "id": "b91415df",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:45:56.423694Z",
     "iopub.status.busy": "2024-05-06T14:45:56.421337Z",
     "iopub.status.idle": "2024-05-06T14:45:56.451384Z",
     "shell.execute_reply": "2024-05-06T14:45:56.447672Z"
    },
    "id": "tnjD0A_ppsjw",
    "outputId": "96415938-0ad1-463b-ee79-719ef48dca1a",
    "papermill": {
     "duration": 0.112509,
     "end_time": "2024-05-06T14:45:56.455406",
     "exception": false,
     "start_time": "2024-05-06T14:45:56.342897",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "503.24"
      ],
      "text/latex": [
       "503.24"
      ],
      "text/markdown": [
       "503.24"
      ],
      "text/plain": [
       "[1] 503.24"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "media_amostra <- mean(amostra$Amostra)\n",
    "media_amostra"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 21,
   "id": "d566474b",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:45:56.608857Z",
     "iopub.status.busy": "2024-05-06T14:45:56.606658Z",
     "iopub.status.idle": "2024-05-06T14:45:56.634704Z",
     "shell.execute_reply": "2024-05-06T14:45:56.631928Z"
    },
    "id": "JXz2IFCUpsjy",
    "outputId": "fb457ed0-cc94-498c-b13d-310418913f61",
    "papermill": {
     "duration": 0.106584,
     "end_time": "2024-05-06T14:45:56.638233",
     "exception": false,
     "start_time": "2024-05-06T14:45:56.531649",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "4.48380305052735"
      ],
      "text/latex": [
       "4.48380305052735"
      ],
      "text/markdown": [
       "4.48380305052735"
      ],
      "text/plain": [
       "[1] 4.483803"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "desvio_padrao_amostra <- sd(amostra$Amostra)\n",
    "desvio_padrao_amostra"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 22,
   "id": "7bd6d377",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:45:56.786809Z",
     "iopub.status.busy": "2024-05-06T14:45:56.784688Z",
     "iopub.status.idle": "2024-05-06T14:45:56.810256Z",
     "shell.execute_reply": "2024-05-06T14:45:56.807380Z"
    },
    "id": "PE99TXSfpsj0",
    "papermill": {
     "duration": 0.103835,
     "end_time": "2024-05-06T14:45:56.813903",
     "exception": false,
     "start_time": "2024-05-06T14:45:56.710068",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "media <- 500\n",
    "significancia <- 0.05\n",
    "confianca <- 1 - significancia\n",
    "n <- 50"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "dcdfda4b",
   "metadata": {
    "id": "nqmFpl7wpsj2",
    "papermill": {
     "duration": 0.075799,
     "end_time": "2024-05-06T14:45:56.961051",
     "exception": false,
     "start_time": "2024-05-06T14:45:56.885252",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### **Passo 1** - formulação das hipóteses $H_0$ e $H_1$\n",
    "\n",
    "#### <font color='red'>Lembre-se, a hipótese nula sempre contém a alegação de igualdade</font>"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "454d3f2e",
   "metadata": {
    "id": "QVcqkHZhpsj3",
    "papermill": {
     "duration": 0.071741,
     "end_time": "2024-05-06T14:45:57.104731",
     "exception": false,
     "start_time": "2024-05-06T14:45:57.032990",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### $H_0: \\mu = 500$\n",
    "\n",
    "### $H_1: \\mu \\neq 500$"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "1de9f3d6",
   "metadata": {
    "id": "MShPuVL6psj3",
    "papermill": {
     "duration": 0.071089,
     "end_time": "2024-05-06T14:45:57.249338",
     "exception": false,
     "start_time": "2024-05-06T14:45:57.178249",
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
   "id": "9390d8e4",
   "metadata": {
    "id": "_rAz73fzpsj4",
    "papermill": {
     "duration": 0.073153,
     "end_time": "2024-05-06T14:45:57.393501",
     "exception": false,
     "start_time": "2024-05-06T14:45:57.320348",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### **Passo 2** - escolha da distribuição amostral adequada\n",
    "<img src='https://caelum-online-public.s3.amazonaws.com/1229-estatistica-parte3/01/img003.png' width=70%>"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "cea79439",
   "metadata": {
    "id": "XC1JOtU9psj4",
    "papermill": {
     "duration": 0.074414,
     "end_time": "2024-05-06T14:45:57.542896",
     "exception": false,
     "start_time": "2024-05-06T14:45:57.468482",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### O tamanho da amostra é maior que 30?\n",
    "#### Resp.: Sim\n",
    "\n",
    "### O desvio padrão populacional é conhecido?\n",
    "#### Resp.: Não"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "a4b43565",
   "metadata": {
    "id": "Uq-Zq_Sxpsj5",
    "papermill": {
     "duration": 0.071073,
     "end_time": "2024-05-06T14:45:57.688978",
     "exception": false,
     "start_time": "2024-05-06T14:45:57.617905",
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
   "id": "b0a77dec",
   "metadata": {
    "id": "V3OT4caspsj5",
    "papermill": {
     "duration": 0.073181,
     "end_time": "2024-05-06T14:45:57.834447",
     "exception": false,
     "start_time": "2024-05-06T14:45:57.761266",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### **Passo 3** - fixação da significância do teste ($\\alpha$)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "4a17d31f",
   "metadata": {
    "id": "wI1Nhj_vpsj6",
    "papermill": {
     "duration": 0.086718,
     "end_time": "2024-05-06T14:45:57.999589",
     "exception": false,
     "start_time": "2024-05-06T14:45:57.912871",
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
   "cell_type": "code",
   "execution_count": 23,
   "id": "236a4389",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:45:58.152799Z",
     "iopub.status.busy": "2024-05-06T14:45:58.151016Z",
     "iopub.status.idle": "2024-05-06T14:45:58.175297Z",
     "shell.execute_reply": "2024-05-06T14:45:58.172842Z"
    },
    "id": "2JyYCHeQpsj8",
    "outputId": "593263ce-a450-43d3-bcf1-1d663ef2774f",
    "papermill": {
     "duration": 0.10176,
     "end_time": "2024-05-06T14:45:58.178900",
     "exception": false,
     "start_time": "2024-05-06T14:45:58.077140",
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
    "probabilidade <- (0.5 + (confianca / 2))\n",
    "probabilidade"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "4d6667f8",
   "metadata": {
    "id": "Fu4Wbd-ipsj-",
    "papermill": {
     "duration": 0.071725,
     "end_time": "2024-05-06T14:45:58.322536",
     "exception": false,
     "start_time": "2024-05-06T14:45:58.250811",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Obtendo $z_{\\alpha/2}$"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 24,
   "id": "471ea285",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:45:58.473278Z",
     "iopub.status.busy": "2024-05-06T14:45:58.471377Z",
     "iopub.status.idle": "2024-05-06T14:45:58.495759Z",
     "shell.execute_reply": "2024-05-06T14:45:58.493637Z"
    },
    "id": "imc3GyDLpsj_",
    "outputId": "b9dca9d5-da76-42b1-919c-1aaf593fed70",
    "papermill": {
     "duration": 0.10345,
     "end_time": "2024-05-06T14:45:58.498516",
     "exception": false,
     "start_time": "2024-05-06T14:45:58.395066",
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
    "z_alpha_2 <- qnorm(probabilidade)\n",
    "z_alpha_2"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "46ed436b",
   "metadata": {
    "id": "d98Z21yOpskB",
    "papermill": {
     "duration": 0.07244,
     "end_time": "2024-05-06T14:45:58.643223",
     "exception": false,
     "start_time": "2024-05-06T14:45:58.570783",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "![Região de Aceitação](https://caelum-online-public.s3.amazonaws.com/1229-estatistica-parte3/01/img006.png)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "c5726043",
   "metadata": {
    "id": "eyfX7pYMpskC",
    "papermill": {
     "duration": 0.075694,
     "end_time": "2024-05-06T14:45:58.794588",
     "exception": false,
     "start_time": "2024-05-06T14:45:58.718894",
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
   "id": "6a8a6bef",
   "metadata": {
    "id": "aaLCZs0ApskC",
    "papermill": {
     "duration": 0.071694,
     "end_time": "2024-05-06T14:45:58.938649",
     "exception": false,
     "start_time": "2024-05-06T14:45:58.866955",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### **Passo 4** - cálculo da estatística-teste e verificação desse valor com as áreas de aceitação e rejeição do teste\n",
    "\n",
    "# $$z = \\frac{\\bar{x} - \\mu_0}{\\frac{s}{\\sqrt{n}}}$$"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 25,
   "id": "2791cf13",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:45:59.095967Z",
     "iopub.status.busy": "2024-05-06T14:45:59.092907Z",
     "iopub.status.idle": "2024-05-06T14:45:59.116055Z",
     "shell.execute_reply": "2024-05-06T14:45:59.113979Z"
    },
    "id": "a6zMj0YzpskC",
    "outputId": "83a2bb40-f67f-4ddc-dbd9-a88032f7dc86",
    "papermill": {
     "duration": 0.101414,
     "end_time": "2024-05-06T14:45:59.118793",
     "exception": false,
     "start_time": "2024-05-06T14:45:59.017379",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "5.10955977599187"
      ],
      "text/latex": [
       "5.10955977599187"
      ],
      "text/markdown": [
       "5.10955977599187"
      ],
      "text/plain": [
       "[1] 5.10956"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "z <- (media_amostra - media) / (desvio_padrao_amostra / sqrt(n))\n",
    "z"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "217125a5",
   "metadata": {
    "id": "UMHqgrlupskE",
    "papermill": {
     "duration": 0.072403,
     "end_time": "2024-05-06T14:45:59.265976",
     "exception": false,
     "start_time": "2024-05-06T14:45:59.193573",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "![Estatística-Teste](https://caelum-online-public.s3.amazonaws.com/1229-estatistica-parte3/01/img007.png)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "5675949b",
   "metadata": {
    "id": "tFfJX8G9pskF",
    "papermill": {
     "duration": 0.111964,
     "end_time": "2024-05-06T14:45:59.449571",
     "exception": false,
     "start_time": "2024-05-06T14:45:59.337607",
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
   "id": "82d56963",
   "metadata": {
    "id": "aqTnTTePpskF",
    "papermill": {
     "duration": 0.07136,
     "end_time": "2024-05-06T14:45:59.594680",
     "exception": false,
     "start_time": "2024-05-06T14:45:59.523320",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### **Passo 5** - Aceitação ou rejeição da hipótese nula"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "40ca683e",
   "metadata": {
    "id": "pD1cc4DHpskG",
    "papermill": {
     "duration": 0.073699,
     "end_time": "2024-05-06T14:45:59.740819",
     "exception": false,
     "start_time": "2024-05-06T14:45:59.667120",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "<img src='https://caelum-online-public.s3.amazonaws.com/1229-estatistica-parte3/01/img013.png' width=90%>"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "1704947f",
   "metadata": {
    "id": "qbnH6V15pskG",
    "papermill": {
     "duration": 0.079855,
     "end_time": "2024-05-06T14:45:59.893577",
     "exception": false,
     "start_time": "2024-05-06T14:45:59.813722",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### <font color='red'>Critério do valor crítico</font>\n",
    "\n",
    "> ### Teste Bicaudal\n",
    "> ### Rejeitar $H_0$ se $z \\leq -z_{\\alpha / 2}$ ou se $z \\geq z_{\\alpha / 2}$"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 26,
   "id": "98dca9ee",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:46:00.049412Z",
     "iopub.status.busy": "2024-05-06T14:46:00.047622Z",
     "iopub.status.idle": "2024-05-06T14:46:00.070753Z",
     "shell.execute_reply": "2024-05-06T14:46:00.068027Z"
    },
    "id": "-MkJyqSupskG",
    "outputId": "6495abcc-0c3f-4759-8a31-96d668ad2eff",
    "papermill": {
     "duration": 0.104829,
     "end_time": "2024-05-06T14:46:00.074149",
     "exception": false,
     "start_time": "2024-05-06T14:45:59.969320",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "FALSE"
      ],
      "text/latex": [
       "FALSE"
      ],
      "text/markdown": [
       "FALSE"
      ],
      "text/plain": [
       "[1] FALSE"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "z <= -z_alpha_2"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 27,
   "id": "d49fe25a",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:46:00.239036Z",
     "iopub.status.busy": "2024-05-06T14:46:00.236150Z",
     "iopub.status.idle": "2024-05-06T14:46:00.272069Z",
     "shell.execute_reply": "2024-05-06T14:46:00.268747Z"
    },
    "id": "FVTIIXA3pskI",
    "outputId": "8ec15147-9c1d-4fa0-fe26-8de8166f3ed6",
    "papermill": {
     "duration": 0.125945,
     "end_time": "2024-05-06T14:46:00.276258",
     "exception": false,
     "start_time": "2024-05-06T14:46:00.150313",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "TRUE"
      ],
      "text/latex": [
       "TRUE"
      ],
      "text/markdown": [
       "TRUE"
      ],
      "text/plain": [
       "[1] TRUE"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "z >= z_alpha_2"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 28,
   "id": "951bdef1",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:46:00.437860Z",
     "iopub.status.busy": "2024-05-06T14:46:00.436014Z",
     "iopub.status.idle": "2024-05-06T14:46:00.467330Z",
     "shell.execute_reply": "2024-05-06T14:46:00.464704Z"
    },
    "papermill": {
     "duration": 0.115215,
     "end_time": "2024-05-06T14:46:00.471196",
     "exception": false,
     "start_time": "2024-05-06T14:46:00.355981",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "'Rejeitar H0'"
      ],
      "text/latex": [
       "'Rejeitar H0'"
      ],
      "text/markdown": [
       "'Rejeitar H0'"
      ],
      "text/plain": [
       "[1] \"Rejeitar H0\""
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "if(z <= -z_alpha_2 || z >= z_alpha_2){\n",
    "    'Rejeitar H0'\n",
    "}else{\n",
    "    'Aceitar H0'\n",
    "}"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "ec3e6809",
   "metadata": {
    "id": "YX-xSnZFpskM",
    "papermill": {
     "duration": 0.07558,
     "end_time": "2024-05-06T14:46:00.621851",
     "exception": false,
     "start_time": "2024-05-06T14:46:00.546271",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### <font color='green'>Conclusão: Como a média amostral $\\bar{x}$ é significativamente maior que 500 ml, rejeitamos $H_0$. Neste caso, devem ser tomadas providências para ajustar o maquinário que preenche as embalagens.</font>"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "00599d55",
   "metadata": {
    "id": "Aqv_KZoYpskN",
    "papermill": {
     "duration": 0.073603,
     "end_time": "2024-05-06T14:46:00.770296",
     "exception": false,
     "start_time": "2024-05-06T14:46:00.696693",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### <font color='red'>Critério do $p-valor$</font>\n",
    "\n",
    "> ### Teste Bicaudal\n",
    "> ### Rejeitar $H_0$ se o valor $p\\leq\\alpha$"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 29,
   "id": "dd8172d6",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:46:00.928679Z",
     "iopub.status.busy": "2024-05-06T14:46:00.926654Z",
     "iopub.status.idle": "2024-05-06T14:46:00.952220Z",
     "shell.execute_reply": "2024-05-06T14:46:00.949470Z"
    },
    "papermill": {
     "duration": 0.109137,
     "end_time": "2024-05-06T14:46:00.956277",
     "exception": false,
     "start_time": "2024-05-06T14:46:00.847140",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "3.22910317152036e-07"
      ],
      "text/latex": [
       "3.22910317152036e-07"
      ],
      "text/markdown": [
       "3.22910317152036e-07"
      ],
      "text/plain": [
       "[1] 3.229103e-07"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "p_valor <- 2 * (1 - pnorm(z))\n",
    "p_valor"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 30,
   "id": "5905f9f2",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:46:01.139960Z",
     "iopub.status.busy": "2024-05-06T14:46:01.137366Z",
     "iopub.status.idle": "2024-05-06T14:46:01.167345Z",
     "shell.execute_reply": "2024-05-06T14:46:01.164680Z"
    },
    "id": "vUHgYIHqpskR",
    "outputId": "b53d6bed-fcb0-41ae-ecf4-38e2dd1dcaec",
    "papermill": {
     "duration": 0.134117,
     "end_time": "2024-05-06T14:46:01.171582",
     "exception": false,
     "start_time": "2024-05-06T14:46:01.037465",
     "status": "completed"
    },
    "scrolled": true,
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "TRUE"
      ],
      "text/latex": [
       "TRUE"
      ],
      "text/markdown": [
       "TRUE"
      ],
      "text/plain": [
       "[1] TRUE"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "p_valor <= significancia"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "5cf43c0a",
   "metadata": {
    "id": "YRw1O5X8pskT",
    "papermill": {
     "duration": 0.073043,
     "end_time": "2024-05-06T14:46:01.319871",
     "exception": false,
     "start_time": "2024-05-06T14:46:01.246828",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "#### <font color=red>Documentações:\n",
    "\n",
    "- [**Normal**](https://www.rdocumentation.org/packages/stats/versions/3.6.1/topics/Normal)\n",
    "- [**ZTest**](https://www.rdocumentation.org/packages/DescTools/versions/0.99.19/topics/ZTest)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 31,
   "id": "0024c5b5",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:46:01.479330Z",
     "iopub.status.busy": "2024-05-06T14:46:01.477302Z",
     "iopub.status.idle": "2024-05-06T14:47:15.833495Z",
     "shell.execute_reply": "2024-05-06T14:47:15.831000Z"
    },
    "papermill": {
     "duration": 74.439044,
     "end_time": "2024-05-06T14:47:15.837798",
     "exception": false,
     "start_time": "2024-05-06T14:46:01.398754",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Installing package into ‘/usr/local/lib/R/site-library’\n",
      "(as ‘lib’ is unspecified)\n",
      "\n"
     ]
    }
   ],
   "source": [
    "# install.packages('DescTools')\n",
    "\n",
    "# OU\n",
    "\n",
    "packageurl <- \"https://cran.r-project.org/src/contrib/Archive/DescTools/DescTools_0.99.30.tar.gz\"\n",
    "install.packages(packageurl, repos=NULL, type=\"source\")"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 32,
   "id": "b6cc2cf2",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:47:15.993367Z",
     "iopub.status.busy": "2024-05-06T14:47:15.991039Z",
     "iopub.status.idle": "2024-05-06T14:47:17.326346Z",
     "shell.execute_reply": "2024-05-06T14:47:17.323309Z"
    },
    "papermill": {
     "duration": 1.414764,
     "end_time": "2024-05-06T14:47:17.329789",
     "exception": false,
     "start_time": "2024-05-06T14:47:15.915025",
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
   "execution_count": 33,
   "id": "25fa9d0d",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:47:17.484928Z",
     "iopub.status.busy": "2024-05-06T14:47:17.482807Z",
     "iopub.status.idle": "2024-05-06T14:47:17.506093Z",
     "shell.execute_reply": "2024-05-06T14:47:17.503856Z"
    },
    "papermill": {
     "duration": 0.10438,
     "end_time": "2024-05-06T14:47:17.509484",
     "exception": false,
     "start_time": "2024-05-06T14:47:17.405104",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "\n",
       "\tOne Sample z-test\n",
       "\n",
       "data:  amostra$Amostra\n",
       "z = 5.1096, Std. Dev. Population = 4.4838, p-value = 3.229e-07\n",
       "alternative hypothesis: true mean is not equal to 500\n",
       "95 percent confidence interval:\n",
       " 501.9972 504.4828\n",
       "sample estimates:\n",
       "mean of x \n",
       "   503.24 \n"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "ZTest(amostra$Amostra, mu = media, sd_pop = desvio_padrao_amostra)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 34,
   "id": "d13296d7",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:47:17.660654Z",
     "iopub.status.busy": "2024-05-06T14:47:17.658384Z",
     "iopub.status.idle": "2024-05-06T14:47:17.676440Z",
     "shell.execute_reply": "2024-05-06T14:47:17.674138Z"
    },
    "papermill": {
     "duration": 0.096479,
     "end_time": "2024-05-06T14:47:17.679561",
     "exception": false,
     "start_time": "2024-05-06T14:47:17.583082",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "resultado <- ZTest(amostra$Amostra, mu = media, sd_pop = desvio_padrao_amostra)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 35,
   "id": "734393ba",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:47:17.874997Z",
     "iopub.status.busy": "2024-05-06T14:47:17.872864Z",
     "iopub.status.idle": "2024-05-06T14:47:17.896823Z",
     "shell.execute_reply": "2024-05-06T14:47:17.894097Z"
    },
    "papermill": {
     "duration": 0.105856,
     "end_time": "2024-05-06T14:47:17.900851",
     "exception": false,
     "start_time": "2024-05-06T14:47:17.794995",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<strong>z:</strong> 5.10955977599187"
      ],
      "text/latex": [
       "\\textbf{z:} 5.10955977599187"
      ],
      "text/markdown": [
       "**z:** 5.10955977599187"
      ],
      "text/plain": [
       "      z \n",
       "5.10956 "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "resultado$statistic"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 36,
   "id": "09fba964",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:47:18.056746Z",
     "iopub.status.busy": "2024-05-06T14:47:18.054538Z",
     "iopub.status.idle": "2024-05-06T14:47:18.079263Z",
     "shell.execute_reply": "2024-05-06T14:47:18.076511Z"
    },
    "papermill": {
     "duration": 0.108278,
     "end_time": "2024-05-06T14:47:18.083087",
     "exception": false,
     "start_time": "2024-05-06T14:47:17.974809",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "5.10955977599187"
      ],
      "text/latex": [
       "5.10955977599187"
      ],
      "text/markdown": [
       "5.10955977599187"
      ],
      "text/plain": [
       "[1] 5.10956"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "z"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 37,
   "id": "49da87e2",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:47:18.236927Z",
     "iopub.status.busy": "2024-05-06T14:47:18.234781Z",
     "iopub.status.idle": "2024-05-06T14:47:18.260348Z",
     "shell.execute_reply": "2024-05-06T14:47:18.257593Z"
    },
    "papermill": {
     "duration": 0.106196,
     "end_time": "2024-05-06T14:47:18.263584",
     "exception": false,
     "start_time": "2024-05-06T14:47:18.157388",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "3.22910317244578e-07"
      ],
      "text/latex": [
       "3.22910317244578e-07"
      ],
      "text/markdown": [
       "3.22910317244578e-07"
      ],
      "text/plain": [
       "[1] 3.229103e-07"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "p_valor <- resultado$p.value\n",
    "p_valor"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 38,
   "id": "74275f81",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:47:18.422771Z",
     "iopub.status.busy": "2024-05-06T14:47:18.420083Z",
     "iopub.status.idle": "2024-05-06T14:47:18.443200Z",
     "shell.execute_reply": "2024-05-06T14:47:18.440730Z"
    },
    "papermill": {
     "duration": 0.104224,
     "end_time": "2024-05-06T14:47:18.446821",
     "exception": false,
     "start_time": "2024-05-06T14:47:18.342597",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "TRUE"
      ],
      "text/latex": [
       "TRUE"
      ],
      "text/markdown": [
       "TRUE"
      ],
      "text/plain": [
       "[1] TRUE"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "p_valor <= significancia"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "b0fb116d",
   "metadata": {
    "id": "YQQdl-Nepskv",
    "papermill": {
     "duration": 0.07457,
     "end_time": "2024-05-06T14:47:18.597554",
     "exception": false,
     "start_time": "2024-05-06T14:47:18.522984",
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
   "id": "cc22660b",
   "metadata": {
    "id": "U8OWXeVtpskv",
    "papermill": {
     "duration": 0.075863,
     "end_time": "2024-05-06T14:47:18.746683",
     "exception": false,
     "start_time": "2024-05-06T14:47:18.670820",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## <font color=green>3.2 Teste Unicaudal</font>\n",
    "***"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "7fa75bc9",
   "metadata": {
    "id": "CPHPL4nWpskw",
    "papermill": {
     "duration": 0.075602,
     "end_time": "2024-05-06T14:47:18.898249",
     "exception": false,
     "start_time": "2024-05-06T14:47:18.822647",
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
   "id": "ff97958f",
   "metadata": {
    "id": "vDyxOXLvpskw",
    "papermill": {
     "duration": 0.076275,
     "end_time": "2024-05-06T14:47:19.048847",
     "exception": false,
     "start_time": "2024-05-06T14:47:18.972572",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Um famoso fabricante de refrigerantes alega que uma lata de 350 ml de seu principal produto contém, **no máximo**, **37 gramas de açúcar**. Esta alegação nos leva a entender que a quantidade média de açúcar em uma lata de refrigerante deve ser **igual ou menor que 37 g**.\n",
    "\n",
    "Um consumidor desconfiado e com conhecimentos em inferência estatística resolve testar a alegação do fabricante e seleciona, aleatóriamente, em um conjunto de estabelecimentos distintos, **uma amostra de 25 latas** do refrigerante em questão. Utilizando o equipamento correto o consumidor obteve as quantidades de açúcar em todas as 25 latas de sua amostra. \n",
    "\n",
    "**Assumindo que essa população se distribua aproximadamente como uma normal e considerando um nível de significância de 5%, é possível aceitar como válida a alegação do fabricante?**"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "be2bff69",
   "metadata": {
    "id": "5P5nWN0epsky",
    "papermill": {
     "duration": 0.074905,
     "end_time": "2024-05-06T14:47:19.196774",
     "exception": false,
     "start_time": "2024-05-06T14:47:19.121869",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Construindo tabela $t$ de Student\n",
    "\n",
    "#### <font color=red>Documentações:\n",
    "\n",
    "- [**TDist**](https://www.rdocumentation.org/packages/stats/versions/3.6.1/topics/TDist)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 39,
   "id": "20b5f886",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:47:19.354429Z",
     "iopub.status.busy": "2024-05-06T14:47:19.352145Z",
     "iopub.status.idle": "2024-05-06T14:47:19.460485Z",
     "shell.execute_reply": "2024-05-06T14:47:19.458258Z"
    },
    "id": "lKuhGKPEpsky",
    "outputId": "7ed95512-f283-465d-9a75-da2d3f0384b9",
    "papermill": {
     "duration": 0.190982,
     "end_time": "2024-05-06T14:47:19.463491",
     "exception": false,
     "start_time": "2024-05-06T14:47:19.272509",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A matrix: 30 × 10 of type dbl</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>0.050</th><th scope=col>0.045</th><th scope=col>0.040</th><th scope=col>0.035</th><th scope=col>0.030</th><th scope=col>0.025</th><th scope=col>0.020</th><th scope=col>0.015</th><th scope=col>0.010</th><th scope=col>0.005</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row> 1</th><td>6.313752</td><td>7.026366</td><td>7.915815</td><td>9.057887</td><td>10.578895</td><td>12.706205</td><td>15.894545</td><td>21.204949</td><td>31.820516</td><td>63.656741</td></tr>\n",
       "\t<tr><th scope=row> 2</th><td>2.919986</td><td>3.103977</td><td>3.319764</td><td>3.578247</td><td> 3.896425</td><td> 4.302653</td><td> 4.848732</td><td> 5.642778</td><td> 6.964557</td><td> 9.924843</td></tr>\n",
       "\t<tr><th scope=row> 3</th><td>2.353363</td><td>2.470807</td><td>2.605427</td><td>2.762599</td><td> 2.950510</td><td> 3.182446</td><td> 3.481909</td><td> 3.896046</td><td> 4.540703</td><td> 5.840909</td></tr>\n",
       "\t<tr><th scope=row> 4</th><td>2.131847</td><td>2.226100</td><td>2.332873</td><td>2.455892</td><td> 2.600762</td><td> 2.776445</td><td> 2.998528</td><td> 3.297630</td><td> 3.746947</td><td> 4.604095</td></tr>\n",
       "\t<tr><th scope=row> 5</th><td>2.015048</td><td>2.097837</td><td>2.190958</td><td>2.297392</td><td> 2.421585</td><td> 2.570582</td><td> 2.756509</td><td> 3.002875</td><td> 3.364930</td><td> 4.032143</td></tr>\n",
       "\t<tr><th scope=row> 6</th><td>1.943180</td><td>2.019201</td><td>2.104306</td><td>2.201059</td><td> 2.313263</td><td> 2.446912</td><td> 2.612242</td><td> 2.828928</td><td> 3.142668</td><td> 3.707428</td></tr>\n",
       "\t<tr><th scope=row> 7</th><td>1.894579</td><td>1.966153</td><td>2.046011</td><td>2.136453</td><td> 2.240879</td><td> 2.364624</td><td> 2.516752</td><td> 2.714573</td><td> 2.997952</td><td> 3.499483</td></tr>\n",
       "\t<tr><th scope=row> 8</th><td>1.859548</td><td>1.927986</td><td>2.004152</td><td>2.090166</td><td> 2.189155</td><td> 2.306004</td><td> 2.448985</td><td> 2.633814</td><td> 2.896459</td><td> 3.355387</td></tr>\n",
       "\t<tr><th scope=row> 9</th><td>1.833113</td><td>1.899222</td><td>1.972653</td><td>2.055395</td><td> 2.150375</td><td> 2.262157</td><td> 2.398441</td><td> 2.573804</td><td> 2.821438</td><td> 3.249836</td></tr>\n",
       "\t<tr><th scope=row>10</th><td>1.812461</td><td>1.876774</td><td>1.948099</td><td>2.028327</td><td> 2.120234</td><td> 2.228139</td><td> 2.359315</td><td> 2.527484</td><td> 2.763769</td><td> 3.169273</td></tr>\n",
       "\t<tr><th scope=row>11</th><td>1.795885</td><td>1.858772</td><td>1.928427</td><td>2.006663</td><td> 2.096139</td><td> 2.200985</td><td> 2.328140</td><td> 2.490664</td><td> 2.718079</td><td> 3.105807</td></tr>\n",
       "\t<tr><th scope=row>12</th><td>1.782288</td><td>1.844015</td><td>1.912313</td><td>1.988934</td><td> 2.076441</td><td> 2.178813</td><td> 2.302722</td><td> 2.460700</td><td> 2.680998</td><td> 3.054540</td></tr>\n",
       "\t<tr><th scope=row>13</th><td>1.770933</td><td>1.831700</td><td>1.898874</td><td>1.974158</td><td> 2.060038</td><td> 2.160369</td><td> 2.281604</td><td> 2.435845</td><td> 2.650309</td><td> 3.012276</td></tr>\n",
       "\t<tr><th scope=row>14</th><td>1.761310</td><td>1.821267</td><td>1.887496</td><td>1.961656</td><td> 2.046169</td><td> 2.144787</td><td> 2.263781</td><td> 2.414898</td><td> 2.624494</td><td> 2.976843</td></tr>\n",
       "\t<tr><th scope=row>15</th><td>1.753050</td><td>1.812316</td><td>1.877739</td><td>1.950940</td><td> 2.034289</td><td> 2.131450</td><td> 2.248540</td><td> 2.397005</td><td> 2.602480</td><td> 2.946713</td></tr>\n",
       "\t<tr><th scope=row>16</th><td>1.745884</td><td>1.804553</td><td>1.869279</td><td>1.941654</td><td> 2.024000</td><td> 2.119905</td><td> 2.235358</td><td> 2.381545</td><td> 2.583487</td><td> 2.920782</td></tr>\n",
       "\t<tr><th scope=row>17</th><td>1.739607</td><td>1.797755</td><td>1.861875</td><td>1.933530</td><td> 2.015002</td><td> 2.109816</td><td> 2.223845</td><td> 2.368055</td><td> 2.566934</td><td> 2.898231</td></tr>\n",
       "\t<tr><th scope=row>18</th><td>1.734064</td><td>1.791754</td><td>1.855340</td><td>1.926362</td><td> 2.007067</td><td> 2.100922</td><td> 2.213703</td><td> 2.356180</td><td> 2.552380</td><td> 2.878440</td></tr>\n",
       "\t<tr><th scope=row>19</th><td>1.729133</td><td>1.786417</td><td>1.849530</td><td>1.919992</td><td> 2.000017</td><td> 2.093024</td><td> 2.204701</td><td> 2.345648</td><td> 2.539483</td><td> 2.860935</td></tr>\n",
       "\t<tr><th scope=row>20</th><td>1.724718</td><td>1.781640</td><td>1.844331</td><td>1.914292</td><td> 1.993713</td><td> 2.085963</td><td> 2.196658</td><td> 2.336242</td><td> 2.527977</td><td> 2.845340</td></tr>\n",
       "\t<tr><th scope=row>21</th><td>1.720743</td><td>1.777339</td><td>1.839651</td><td>1.909164</td><td> 1.988041</td><td> 2.079614</td><td> 2.189427</td><td> 2.327792</td><td> 2.517648</td><td> 2.831360</td></tr>\n",
       "\t<tr><th scope=row>22</th><td>1.717144</td><td>1.773447</td><td>1.835417</td><td>1.904524</td><td> 1.982911</td><td> 2.073873</td><td> 2.182893</td><td> 2.320160</td><td> 2.508325</td><td> 2.818756</td></tr>\n",
       "\t<tr><th scope=row>23</th><td>1.713872</td><td>1.769907</td><td>1.831567</td><td>1.900307</td><td> 1.978249</td><td> 2.068658</td><td> 2.176958</td><td> 2.313231</td><td> 2.499867</td><td> 2.807336</td></tr>\n",
       "\t<tr><th scope=row>24</th><td>1.710882</td><td>1.766675</td><td>1.828051</td><td>1.896457</td><td> 1.973994</td><td> 2.063899</td><td> 2.171545</td><td> 2.306913</td><td> 2.492159</td><td> 2.796940</td></tr>\n",
       "\t<tr><th scope=row>25</th><td>1.708141</td><td>1.763711</td><td>1.824828</td><td>1.892928</td><td> 1.970095</td><td> 2.059539</td><td> 2.166587</td><td> 2.301130</td><td> 2.485107</td><td> 2.787436</td></tr>\n",
       "\t<tr><th scope=row>26</th><td>1.705618</td><td>1.760983</td><td>1.821863</td><td>1.889682</td><td> 1.966509</td><td> 2.055529</td><td> 2.162029</td><td> 2.295815</td><td> 2.478630</td><td> 2.778715</td></tr>\n",
       "\t<tr><th scope=row>27</th><td>1.703288</td><td>1.758466</td><td>1.819126</td><td>1.886686</td><td> 1.963200</td><td> 2.051831</td><td> 2.157825</td><td> 2.290914</td><td> 2.472660</td><td> 2.770683</td></tr>\n",
       "\t<tr><th scope=row>28</th><td>1.701131</td><td>1.756134</td><td>1.816592</td><td>1.883912</td><td> 1.960136</td><td> 2.048407</td><td> 2.153935</td><td> 2.286380</td><td> 2.467140</td><td> 2.763262</td></tr>\n",
       "\t<tr><th scope=row>29</th><td>1.699127</td><td>1.753968</td><td>1.814238</td><td>1.881336</td><td> 1.957293</td><td> 2.045230</td><td> 2.150325</td><td> 2.282175</td><td> 2.462021</td><td> 2.756386</td></tr>\n",
       "\t<tr><th scope=row>30</th><td>1.697261</td><td>1.751952</td><td>1.812047</td><td>1.878938</td><td> 1.954645</td><td> 2.042272</td><td> 2.146966</td><td> 2.278262</td><td> 2.457262</td><td> 2.749996</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A matrix: 30 × 10 of type dbl\n",
       "\\begin{tabular}{r|llllllllll}\n",
       "  & 0.050 & 0.045 & 0.040 & 0.035 & 0.030 & 0.025 & 0.020 & 0.015 & 0.010 & 0.005\\\\\n",
       "\\hline\n",
       "\t 1 & 6.313752 & 7.026366 & 7.915815 & 9.057887 & 10.578895 & 12.706205 & 15.894545 & 21.204949 & 31.820516 & 63.656741\\\\\n",
       "\t 2 & 2.919986 & 3.103977 & 3.319764 & 3.578247 &  3.896425 &  4.302653 &  4.848732 &  5.642778 &  6.964557 &  9.924843\\\\\n",
       "\t 3 & 2.353363 & 2.470807 & 2.605427 & 2.762599 &  2.950510 &  3.182446 &  3.481909 &  3.896046 &  4.540703 &  5.840909\\\\\n",
       "\t 4 & 2.131847 & 2.226100 & 2.332873 & 2.455892 &  2.600762 &  2.776445 &  2.998528 &  3.297630 &  3.746947 &  4.604095\\\\\n",
       "\t 5 & 2.015048 & 2.097837 & 2.190958 & 2.297392 &  2.421585 &  2.570582 &  2.756509 &  3.002875 &  3.364930 &  4.032143\\\\\n",
       "\t 6 & 1.943180 & 2.019201 & 2.104306 & 2.201059 &  2.313263 &  2.446912 &  2.612242 &  2.828928 &  3.142668 &  3.707428\\\\\n",
       "\t 7 & 1.894579 & 1.966153 & 2.046011 & 2.136453 &  2.240879 &  2.364624 &  2.516752 &  2.714573 &  2.997952 &  3.499483\\\\\n",
       "\t 8 & 1.859548 & 1.927986 & 2.004152 & 2.090166 &  2.189155 &  2.306004 &  2.448985 &  2.633814 &  2.896459 &  3.355387\\\\\n",
       "\t 9 & 1.833113 & 1.899222 & 1.972653 & 2.055395 &  2.150375 &  2.262157 &  2.398441 &  2.573804 &  2.821438 &  3.249836\\\\\n",
       "\t10 & 1.812461 & 1.876774 & 1.948099 & 2.028327 &  2.120234 &  2.228139 &  2.359315 &  2.527484 &  2.763769 &  3.169273\\\\\n",
       "\t11 & 1.795885 & 1.858772 & 1.928427 & 2.006663 &  2.096139 &  2.200985 &  2.328140 &  2.490664 &  2.718079 &  3.105807\\\\\n",
       "\t12 & 1.782288 & 1.844015 & 1.912313 & 1.988934 &  2.076441 &  2.178813 &  2.302722 &  2.460700 &  2.680998 &  3.054540\\\\\n",
       "\t13 & 1.770933 & 1.831700 & 1.898874 & 1.974158 &  2.060038 &  2.160369 &  2.281604 &  2.435845 &  2.650309 &  3.012276\\\\\n",
       "\t14 & 1.761310 & 1.821267 & 1.887496 & 1.961656 &  2.046169 &  2.144787 &  2.263781 &  2.414898 &  2.624494 &  2.976843\\\\\n",
       "\t15 & 1.753050 & 1.812316 & 1.877739 & 1.950940 &  2.034289 &  2.131450 &  2.248540 &  2.397005 &  2.602480 &  2.946713\\\\\n",
       "\t16 & 1.745884 & 1.804553 & 1.869279 & 1.941654 &  2.024000 &  2.119905 &  2.235358 &  2.381545 &  2.583487 &  2.920782\\\\\n",
       "\t17 & 1.739607 & 1.797755 & 1.861875 & 1.933530 &  2.015002 &  2.109816 &  2.223845 &  2.368055 &  2.566934 &  2.898231\\\\\n",
       "\t18 & 1.734064 & 1.791754 & 1.855340 & 1.926362 &  2.007067 &  2.100922 &  2.213703 &  2.356180 &  2.552380 &  2.878440\\\\\n",
       "\t19 & 1.729133 & 1.786417 & 1.849530 & 1.919992 &  2.000017 &  2.093024 &  2.204701 &  2.345648 &  2.539483 &  2.860935\\\\\n",
       "\t20 & 1.724718 & 1.781640 & 1.844331 & 1.914292 &  1.993713 &  2.085963 &  2.196658 &  2.336242 &  2.527977 &  2.845340\\\\\n",
       "\t21 & 1.720743 & 1.777339 & 1.839651 & 1.909164 &  1.988041 &  2.079614 &  2.189427 &  2.327792 &  2.517648 &  2.831360\\\\\n",
       "\t22 & 1.717144 & 1.773447 & 1.835417 & 1.904524 &  1.982911 &  2.073873 &  2.182893 &  2.320160 &  2.508325 &  2.818756\\\\\n",
       "\t23 & 1.713872 & 1.769907 & 1.831567 & 1.900307 &  1.978249 &  2.068658 &  2.176958 &  2.313231 &  2.499867 &  2.807336\\\\\n",
       "\t24 & 1.710882 & 1.766675 & 1.828051 & 1.896457 &  1.973994 &  2.063899 &  2.171545 &  2.306913 &  2.492159 &  2.796940\\\\\n",
       "\t25 & 1.708141 & 1.763711 & 1.824828 & 1.892928 &  1.970095 &  2.059539 &  2.166587 &  2.301130 &  2.485107 &  2.787436\\\\\n",
       "\t26 & 1.705618 & 1.760983 & 1.821863 & 1.889682 &  1.966509 &  2.055529 &  2.162029 &  2.295815 &  2.478630 &  2.778715\\\\\n",
       "\t27 & 1.703288 & 1.758466 & 1.819126 & 1.886686 &  1.963200 &  2.051831 &  2.157825 &  2.290914 &  2.472660 &  2.770683\\\\\n",
       "\t28 & 1.701131 & 1.756134 & 1.816592 & 1.883912 &  1.960136 &  2.048407 &  2.153935 &  2.286380 &  2.467140 &  2.763262\\\\\n",
       "\t29 & 1.699127 & 1.753968 & 1.814238 & 1.881336 &  1.957293 &  2.045230 &  2.150325 &  2.282175 &  2.462021 &  2.756386\\\\\n",
       "\t30 & 1.697261 & 1.751952 & 1.812047 & 1.878938 &  1.954645 &  2.042272 &  2.146966 &  2.278262 &  2.457262 &  2.749996\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A matrix: 30 × 10 of type dbl\n",
       "\n",
       "| <!--/--> | 0.050 | 0.045 | 0.040 | 0.035 | 0.030 | 0.025 | 0.020 | 0.015 | 0.010 | 0.005 |\n",
       "|---|---|---|---|---|---|---|---|---|---|---|\n",
       "|  1 | 6.313752 | 7.026366 | 7.915815 | 9.057887 | 10.578895 | 12.706205 | 15.894545 | 21.204949 | 31.820516 | 63.656741 |\n",
       "|  2 | 2.919986 | 3.103977 | 3.319764 | 3.578247 |  3.896425 |  4.302653 |  4.848732 |  5.642778 |  6.964557 |  9.924843 |\n",
       "|  3 | 2.353363 | 2.470807 | 2.605427 | 2.762599 |  2.950510 |  3.182446 |  3.481909 |  3.896046 |  4.540703 |  5.840909 |\n",
       "|  4 | 2.131847 | 2.226100 | 2.332873 | 2.455892 |  2.600762 |  2.776445 |  2.998528 |  3.297630 |  3.746947 |  4.604095 |\n",
       "|  5 | 2.015048 | 2.097837 | 2.190958 | 2.297392 |  2.421585 |  2.570582 |  2.756509 |  3.002875 |  3.364930 |  4.032143 |\n",
       "|  6 | 1.943180 | 2.019201 | 2.104306 | 2.201059 |  2.313263 |  2.446912 |  2.612242 |  2.828928 |  3.142668 |  3.707428 |\n",
       "|  7 | 1.894579 | 1.966153 | 2.046011 | 2.136453 |  2.240879 |  2.364624 |  2.516752 |  2.714573 |  2.997952 |  3.499483 |\n",
       "|  8 | 1.859548 | 1.927986 | 2.004152 | 2.090166 |  2.189155 |  2.306004 |  2.448985 |  2.633814 |  2.896459 |  3.355387 |\n",
       "|  9 | 1.833113 | 1.899222 | 1.972653 | 2.055395 |  2.150375 |  2.262157 |  2.398441 |  2.573804 |  2.821438 |  3.249836 |\n",
       "| 10 | 1.812461 | 1.876774 | 1.948099 | 2.028327 |  2.120234 |  2.228139 |  2.359315 |  2.527484 |  2.763769 |  3.169273 |\n",
       "| 11 | 1.795885 | 1.858772 | 1.928427 | 2.006663 |  2.096139 |  2.200985 |  2.328140 |  2.490664 |  2.718079 |  3.105807 |\n",
       "| 12 | 1.782288 | 1.844015 | 1.912313 | 1.988934 |  2.076441 |  2.178813 |  2.302722 |  2.460700 |  2.680998 |  3.054540 |\n",
       "| 13 | 1.770933 | 1.831700 | 1.898874 | 1.974158 |  2.060038 |  2.160369 |  2.281604 |  2.435845 |  2.650309 |  3.012276 |\n",
       "| 14 | 1.761310 | 1.821267 | 1.887496 | 1.961656 |  2.046169 |  2.144787 |  2.263781 |  2.414898 |  2.624494 |  2.976843 |\n",
       "| 15 | 1.753050 | 1.812316 | 1.877739 | 1.950940 |  2.034289 |  2.131450 |  2.248540 |  2.397005 |  2.602480 |  2.946713 |\n",
       "| 16 | 1.745884 | 1.804553 | 1.869279 | 1.941654 |  2.024000 |  2.119905 |  2.235358 |  2.381545 |  2.583487 |  2.920782 |\n",
       "| 17 | 1.739607 | 1.797755 | 1.861875 | 1.933530 |  2.015002 |  2.109816 |  2.223845 |  2.368055 |  2.566934 |  2.898231 |\n",
       "| 18 | 1.734064 | 1.791754 | 1.855340 | 1.926362 |  2.007067 |  2.100922 |  2.213703 |  2.356180 |  2.552380 |  2.878440 |\n",
       "| 19 | 1.729133 | 1.786417 | 1.849530 | 1.919992 |  2.000017 |  2.093024 |  2.204701 |  2.345648 |  2.539483 |  2.860935 |\n",
       "| 20 | 1.724718 | 1.781640 | 1.844331 | 1.914292 |  1.993713 |  2.085963 |  2.196658 |  2.336242 |  2.527977 |  2.845340 |\n",
       "| 21 | 1.720743 | 1.777339 | 1.839651 | 1.909164 |  1.988041 |  2.079614 |  2.189427 |  2.327792 |  2.517648 |  2.831360 |\n",
       "| 22 | 1.717144 | 1.773447 | 1.835417 | 1.904524 |  1.982911 |  2.073873 |  2.182893 |  2.320160 |  2.508325 |  2.818756 |\n",
       "| 23 | 1.713872 | 1.769907 | 1.831567 | 1.900307 |  1.978249 |  2.068658 |  2.176958 |  2.313231 |  2.499867 |  2.807336 |\n",
       "| 24 | 1.710882 | 1.766675 | 1.828051 | 1.896457 |  1.973994 |  2.063899 |  2.171545 |  2.306913 |  2.492159 |  2.796940 |\n",
       "| 25 | 1.708141 | 1.763711 | 1.824828 | 1.892928 |  1.970095 |  2.059539 |  2.166587 |  2.301130 |  2.485107 |  2.787436 |\n",
       "| 26 | 1.705618 | 1.760983 | 1.821863 | 1.889682 |  1.966509 |  2.055529 |  2.162029 |  2.295815 |  2.478630 |  2.778715 |\n",
       "| 27 | 1.703288 | 1.758466 | 1.819126 | 1.886686 |  1.963200 |  2.051831 |  2.157825 |  2.290914 |  2.472660 |  2.770683 |\n",
       "| 28 | 1.701131 | 1.756134 | 1.816592 | 1.883912 |  1.960136 |  2.048407 |  2.153935 |  2.286380 |  2.467140 |  2.763262 |\n",
       "| 29 | 1.699127 | 1.753968 | 1.814238 | 1.881336 |  1.957293 |  2.045230 |  2.150325 |  2.282175 |  2.462021 |  2.756386 |\n",
       "| 30 | 1.697261 | 1.751952 | 1.812047 | 1.878938 |  1.954645 |  2.042272 |  2.146966 |  2.278262 |  2.457262 |  2.749996 |\n",
       "\n"
      ],
      "text/plain": [
       "   0.050    0.045    0.040    0.035    0.030     0.025     0.020     0.015    \n",
       " 1 6.313752 7.026366 7.915815 9.057887 10.578895 12.706205 15.894545 21.204949\n",
       " 2 2.919986 3.103977 3.319764 3.578247  3.896425  4.302653  4.848732  5.642778\n",
       " 3 2.353363 2.470807 2.605427 2.762599  2.950510  3.182446  3.481909  3.896046\n",
       " 4 2.131847 2.226100 2.332873 2.455892  2.600762  2.776445  2.998528  3.297630\n",
       " 5 2.015048 2.097837 2.190958 2.297392  2.421585  2.570582  2.756509  3.002875\n",
       " 6 1.943180 2.019201 2.104306 2.201059  2.313263  2.446912  2.612242  2.828928\n",
       " 7 1.894579 1.966153 2.046011 2.136453  2.240879  2.364624  2.516752  2.714573\n",
       " 8 1.859548 1.927986 2.004152 2.090166  2.189155  2.306004  2.448985  2.633814\n",
       " 9 1.833113 1.899222 1.972653 2.055395  2.150375  2.262157  2.398441  2.573804\n",
       "10 1.812461 1.876774 1.948099 2.028327  2.120234  2.228139  2.359315  2.527484\n",
       "11 1.795885 1.858772 1.928427 2.006663  2.096139  2.200985  2.328140  2.490664\n",
       "12 1.782288 1.844015 1.912313 1.988934  2.076441  2.178813  2.302722  2.460700\n",
       "13 1.770933 1.831700 1.898874 1.974158  2.060038  2.160369  2.281604  2.435845\n",
       "14 1.761310 1.821267 1.887496 1.961656  2.046169  2.144787  2.263781  2.414898\n",
       "15 1.753050 1.812316 1.877739 1.950940  2.034289  2.131450  2.248540  2.397005\n",
       "16 1.745884 1.804553 1.869279 1.941654  2.024000  2.119905  2.235358  2.381545\n",
       "17 1.739607 1.797755 1.861875 1.933530  2.015002  2.109816  2.223845  2.368055\n",
       "18 1.734064 1.791754 1.855340 1.926362  2.007067  2.100922  2.213703  2.356180\n",
       "19 1.729133 1.786417 1.849530 1.919992  2.000017  2.093024  2.204701  2.345648\n",
       "20 1.724718 1.781640 1.844331 1.914292  1.993713  2.085963  2.196658  2.336242\n",
       "21 1.720743 1.777339 1.839651 1.909164  1.988041  2.079614  2.189427  2.327792\n",
       "22 1.717144 1.773447 1.835417 1.904524  1.982911  2.073873  2.182893  2.320160\n",
       "23 1.713872 1.769907 1.831567 1.900307  1.978249  2.068658  2.176958  2.313231\n",
       "24 1.710882 1.766675 1.828051 1.896457  1.973994  2.063899  2.171545  2.306913\n",
       "25 1.708141 1.763711 1.824828 1.892928  1.970095  2.059539  2.166587  2.301130\n",
       "26 1.705618 1.760983 1.821863 1.889682  1.966509  2.055529  2.162029  2.295815\n",
       "27 1.703288 1.758466 1.819126 1.886686  1.963200  2.051831  2.157825  2.290914\n",
       "28 1.701131 1.756134 1.816592 1.883912  1.960136  2.048407  2.153935  2.286380\n",
       "29 1.699127 1.753968 1.814238 1.881336  1.957293  2.045230  2.150325  2.282175\n",
       "30 1.697261 1.751952 1.812047 1.878938  1.954645  2.042272  2.146966  2.278262\n",
       "   0.010     0.005    \n",
       " 1 31.820516 63.656741\n",
       " 2  6.964557  9.924843\n",
       " 3  4.540703  5.840909\n",
       " 4  3.746947  4.604095\n",
       " 5  3.364930  4.032143\n",
       " 6  3.142668  3.707428\n",
       " 7  2.997952  3.499483\n",
       " 8  2.896459  3.355387\n",
       " 9  2.821438  3.249836\n",
       "10  2.763769  3.169273\n",
       "11  2.718079  3.105807\n",
       "12  2.680998  3.054540\n",
       "13  2.650309  3.012276\n",
       "14  2.624494  2.976843\n",
       "15  2.602480  2.946713\n",
       "16  2.583487  2.920782\n",
       "17  2.566934  2.898231\n",
       "18  2.552380  2.878440\n",
       "19  2.539483  2.860935\n",
       "20  2.527977  2.845340\n",
       "21  2.517648  2.831360\n",
       "22  2.508325  2.818756\n",
       "23  2.499867  2.807336\n",
       "24  2.492159  2.796940\n",
       "25  2.485107  2.787436\n",
       "26  2.478630  2.778715\n",
       "27  2.472660  2.770683\n",
       "28  2.467140  2.763262\n",
       "29  2.462021  2.756386\n",
       "30  2.457262  2.749996"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "q <- seq(0.05, 0.005, by = -0.005)\n",
    "df <- seq(1, 30, by = 1)\n",
    "probabilidade <- c()\n",
    "for(i in df){\n",
    "    for(j in q){\n",
    "        probabilidade <- c(probabilidade, qt(j, i, lower.tail = F))\n",
    "    }\n",
    "}\n",
    "tabela_t_student <- matrix(probabilidade, ncol=10, byrow=TRUE)\n",
    "colnames(tabela_t_student) <- format(q)\n",
    "rownames(tabela_t_student) <- format(df)\n",
    "tabela_t_student"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "b41f86e9",
   "metadata": {
    "id": "MbVu6FdNpsk0",
    "papermill": {
     "duration": 0.081682,
     "end_time": "2024-05-06T14:47:19.622345",
     "exception": false,
     "start_time": "2024-05-06T14:47:19.540663",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "<img src='https://caelum-online-public.s3.amazonaws.com/1229-estatistica-parte3/01/img004.png' width='250px'>\n",
    "\n",
    "As células da tabela acima são valores de $t$ para uma área ou probabilidade na cauda superior da distribuição $t$."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "ed3d63dc",
   "metadata": {
    "id": "UXM3qdYUpsk0",
    "papermill": {
     "duration": 0.07587,
     "end_time": "2024-05-06T14:47:19.776013",
     "exception": false,
     "start_time": "2024-05-06T14:47:19.700143",
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
   "id": "1a5ad039",
   "metadata": {
    "id": "dDbUKs7-psk0",
    "papermill": {
     "duration": 0.074807,
     "end_time": "2024-05-06T14:47:19.926217",
     "exception": false,
     "start_time": "2024-05-06T14:47:19.851410",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Os **testes unicaudais** verificam as variáveis em relação a um piso ou a um teto e avaliam os valores máximos ou mínimos esperados para os parâmetros em estudo e a chance de as estatísticas amostrais serem inferiores ou superiores a dado limite."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "cda6ce1b",
   "metadata": {
    "id": "AvnFJnUrpsk1",
    "papermill": {
     "duration": 0.074981,
     "end_time": "2024-05-06T14:47:20.077742",
     "exception": false,
     "start_time": "2024-05-06T14:47:20.002761",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "<img src='https://caelum-online-public.s3.amazonaws.com/1229-estatistica-parte3/01/img008.png' width='700px'>"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "4ecdd000",
   "metadata": {
    "id": "IgDg23Xppsk1",
    "papermill": {
     "duration": 0.074822,
     "end_time": "2024-05-06T14:47:20.227420",
     "exception": false,
     "start_time": "2024-05-06T14:47:20.152598",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Dados do problema"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 40,
   "id": "0b2b2c16",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:47:20.426706Z",
     "iopub.status.busy": "2024-05-06T14:47:20.424778Z",
     "iopub.status.idle": "2024-05-06T14:47:20.443145Z",
     "shell.execute_reply": "2024-05-06T14:47:20.440903Z"
    },
    "id": "IKvYICfEpsk2",
    "papermill": {
     "duration": 0.140196,
     "end_time": "2024-05-06T14:47:20.446199",
     "exception": false,
     "start_time": "2024-05-06T14:47:20.306003",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "amostra <- c(37.27, 36.42, 34.84, 34.60, 37.49, \n",
    "           36.53, 35.49, 36.90, 34.52, 37.30, \n",
    "           34.99, 36.55, 36.29, 36.06, 37.42, \n",
    "           34.47, 36.70, 35.86, 36.80, 36.92, \n",
    "           37.04, 36.39, 37.32, 36.64, 35.45)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 41,
   "id": "f5714cfd",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:47:20.605343Z",
     "iopub.status.busy": "2024-05-06T14:47:20.603261Z",
     "iopub.status.idle": "2024-05-06T14:47:20.641645Z",
     "shell.execute_reply": "2024-05-06T14:47:20.639380Z"
    },
    "id": "CBuciT30psk3",
    "outputId": "28df5179-0f8c-42e1-fe69-a3b02280f45f",
    "papermill": {
     "duration": 0.121243,
     "end_time": "2024-05-06T14:47:20.644691",
     "exception": false,
     "start_time": "2024-05-06T14:47:20.523448",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 25 × 1</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>Amostra</th></tr>\n",
       "\t<tr><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>37.27</td></tr>\n",
       "\t<tr><td>36.42</td></tr>\n",
       "\t<tr><td>34.84</td></tr>\n",
       "\t<tr><td>34.60</td></tr>\n",
       "\t<tr><td>37.49</td></tr>\n",
       "\t<tr><td>36.53</td></tr>\n",
       "\t<tr><td>35.49</td></tr>\n",
       "\t<tr><td>36.90</td></tr>\n",
       "\t<tr><td>34.52</td></tr>\n",
       "\t<tr><td>37.30</td></tr>\n",
       "\t<tr><td>34.99</td></tr>\n",
       "\t<tr><td>36.55</td></tr>\n",
       "\t<tr><td>36.29</td></tr>\n",
       "\t<tr><td>36.06</td></tr>\n",
       "\t<tr><td>37.42</td></tr>\n",
       "\t<tr><td>34.47</td></tr>\n",
       "\t<tr><td>36.70</td></tr>\n",
       "\t<tr><td>35.86</td></tr>\n",
       "\t<tr><td>36.80</td></tr>\n",
       "\t<tr><td>36.92</td></tr>\n",
       "\t<tr><td>37.04</td></tr>\n",
       "\t<tr><td>36.39</td></tr>\n",
       "\t<tr><td>37.32</td></tr>\n",
       "\t<tr><td>36.64</td></tr>\n",
       "\t<tr><td>35.45</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 25 × 1\n",
       "\\begin{tabular}{l}\n",
       " Amostra\\\\\n",
       " <dbl>\\\\\n",
       "\\hline\n",
       "\t 37.27\\\\\n",
       "\t 36.42\\\\\n",
       "\t 34.84\\\\\n",
       "\t 34.60\\\\\n",
       "\t 37.49\\\\\n",
       "\t 36.53\\\\\n",
       "\t 35.49\\\\\n",
       "\t 36.90\\\\\n",
       "\t 34.52\\\\\n",
       "\t 37.30\\\\\n",
       "\t 34.99\\\\\n",
       "\t 36.55\\\\\n",
       "\t 36.29\\\\\n",
       "\t 36.06\\\\\n",
       "\t 37.42\\\\\n",
       "\t 34.47\\\\\n",
       "\t 36.70\\\\\n",
       "\t 35.86\\\\\n",
       "\t 36.80\\\\\n",
       "\t 36.92\\\\\n",
       "\t 37.04\\\\\n",
       "\t 36.39\\\\\n",
       "\t 37.32\\\\\n",
       "\t 36.64\\\\\n",
       "\t 35.45\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 25 × 1\n",
       "\n",
       "| Amostra &lt;dbl&gt; |\n",
       "|---|\n",
       "| 37.27 |\n",
       "| 36.42 |\n",
       "| 34.84 |\n",
       "| 34.60 |\n",
       "| 37.49 |\n",
       "| 36.53 |\n",
       "| 35.49 |\n",
       "| 36.90 |\n",
       "| 34.52 |\n",
       "| 37.30 |\n",
       "| 34.99 |\n",
       "| 36.55 |\n",
       "| 36.29 |\n",
       "| 36.06 |\n",
       "| 37.42 |\n",
       "| 34.47 |\n",
       "| 36.70 |\n",
       "| 35.86 |\n",
       "| 36.80 |\n",
       "| 36.92 |\n",
       "| 37.04 |\n",
       "| 36.39 |\n",
       "| 37.32 |\n",
       "| 36.64 |\n",
       "| 35.45 |\n",
       "\n"
      ],
      "text/plain": [
       "   Amostra\n",
       "1  37.27  \n",
       "2  36.42  \n",
       "3  34.84  \n",
       "4  34.60  \n",
       "5  37.49  \n",
       "6  36.53  \n",
       "7  35.49  \n",
       "8  36.90  \n",
       "9  34.52  \n",
       "10 37.30  \n",
       "11 34.99  \n",
       "12 36.55  \n",
       "13 36.29  \n",
       "14 36.06  \n",
       "15 37.42  \n",
       "16 34.47  \n",
       "17 36.70  \n",
       "18 35.86  \n",
       "19 36.80  \n",
       "20 36.92  \n",
       "21 37.04  \n",
       "22 36.39  \n",
       "23 37.32  \n",
       "24 36.64  \n",
       "25 35.45  "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "amostra <- data.frame(Amostra = amostra)\n",
    "amostra"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 42,
   "id": "f389b124",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:47:20.800757Z",
     "iopub.status.busy": "2024-05-06T14:47:20.798674Z",
     "iopub.status.idle": "2024-05-06T14:47:20.822045Z",
     "shell.execute_reply": "2024-05-06T14:47:20.819367Z"
    },
    "id": "79TBzFsdpsk4",
    "outputId": "9af134c0-aee3-4394-a188-347978abdd80",
    "papermill": {
     "duration": 0.104954,
     "end_time": "2024-05-06T14:47:20.825097",
     "exception": false,
     "start_time": "2024-05-06T14:47:20.720143",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "36.2504"
      ],
      "text/latex": [
       "36.2504"
      ],
      "text/markdown": [
       "36.2504"
      ],
      "text/plain": [
       "[1] 36.2504"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "media_amostra <- mean(amostra$Amostra)\n",
    "media_amostra"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 43,
   "id": "62210717",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:47:20.988908Z",
     "iopub.status.busy": "2024-05-06T14:47:20.986894Z",
     "iopub.status.idle": "2024-05-06T14:47:21.010268Z",
     "shell.execute_reply": "2024-05-06T14:47:21.007945Z"
    },
    "id": "S82xbyghpsk6",
    "outputId": "e7b2b235-1352-4a9b-95ae-111dec8f65a0",
    "papermill": {
     "duration": 0.108006,
     "end_time": "2024-05-06T14:47:21.014151",
     "exception": false,
     "start_time": "2024-05-06T14:47:20.906145",
     "status": "completed"
    },
    "scrolled": true,
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "0.966753501846946"
      ],
      "text/latex": [
       "0.966753501846946"
      ],
      "text/markdown": [
       "0.966753501846946"
      ],
      "text/plain": [
       "[1] 0.9667535"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "desvio_padrao_amostra <- sd(amostra$Amostra)\n",
    "desvio_padrao_amostra"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 44,
   "id": "9103a037",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:47:21.196676Z",
     "iopub.status.busy": "2024-05-06T14:47:21.194666Z",
     "iopub.status.idle": "2024-05-06T14:47:21.219424Z",
     "shell.execute_reply": "2024-05-06T14:47:21.217192Z"
    },
    "id": "mvtiwLUWpsk8",
    "papermill": {
     "duration": 0.115701,
     "end_time": "2024-05-06T14:47:21.222268",
     "exception": false,
     "start_time": "2024-05-06T14:47:21.106567",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "media <- 37\n",
    "significancia <- 0.05\n",
    "confianca <- 1 - significancia\n",
    "n <- 25\n",
    "graus_de_liberdade <- n - 1"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "24cccbd4",
   "metadata": {
    "id": "rpLOiPU2psk9",
    "papermill": {
     "duration": 0.079768,
     "end_time": "2024-05-06T14:47:21.380863",
     "exception": false,
     "start_time": "2024-05-06T14:47:21.301095",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### **Passo 1** - formulação das hipóteses $H_0$ e $H_1$"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "a3efc11f",
   "metadata": {
    "id": "iMBi2jUfsc4s",
    "papermill": {
     "duration": 0.081231,
     "end_time": "2024-05-06T14:47:21.541723",
     "exception": false,
     "start_time": "2024-05-06T14:47:21.460492",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "\n",
    "#### <font color='red'>Lembre-se, a hipótese nula sempre contém a alegação de igualdade</font>"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "3ca10e6c",
   "metadata": {
    "id": "8roeH10fpsk-",
    "papermill": {
     "duration": 0.077372,
     "end_time": "2024-05-06T14:47:21.697635",
     "exception": false,
     "start_time": "2024-05-06T14:47:21.620263",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### $H_0: \\mu \\leq 37$\n",
    "\n",
    "### $H_1: \\mu > 37$"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "b822d513",
   "metadata": {
    "id": "uqE6JXGspsk-",
    "papermill": {
     "duration": 0.074994,
     "end_time": "2024-05-06T14:47:21.849377",
     "exception": false,
     "start_time": "2024-05-06T14:47:21.774383",
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
   "id": "8bb23794",
   "metadata": {
    "id": "XsOkFtncpsk_",
    "papermill": {
     "duration": 0.07486,
     "end_time": "2024-05-06T14:47:21.999116",
     "exception": false,
     "start_time": "2024-05-06T14:47:21.924256",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### **Passo 2** - escolha da distribuição amostral adequada\n",
    "<img src='https://caelum-online-public.s3.amazonaws.com/1229-estatistica-parte3/01/img003.png' width=70%>"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "807b6c50",
   "metadata": {
    "id": "jpXjRqO2psk_",
    "papermill": {
     "duration": 0.075283,
     "end_time": "2024-05-06T14:47:22.149294",
     "exception": false,
     "start_time": "2024-05-06T14:47:22.074011",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### O tamanho da amostra é maior que 30?\n",
    "#### Resp.: Não\n",
    "\n",
    "### Podemos afirmar que a população se distribui aproximadamente como uma normal?\n",
    "#### Resp.: Sim\n",
    "\n",
    "### O desvio padrão populacional é conhecido?\n",
    "#### Resp.: Não"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "24a92813",
   "metadata": {
    "id": "J14v2aXOpslA",
    "papermill": {
     "duration": 0.077699,
     "end_time": "2024-05-06T14:47:22.303757",
     "exception": false,
     "start_time": "2024-05-06T14:47:22.226058",
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
   "id": "531ce223",
   "metadata": {
    "id": "DQvwhQWnpslA",
    "papermill": {
     "duration": 0.081071,
     "end_time": "2024-05-06T14:47:22.466988",
     "exception": false,
     "start_time": "2024-05-06T14:47:22.385917",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### **Passo 3** - fixação da significância do teste ($\\alpha$)\n",
    "\n",
    "#### <font color=red>Documentações:\n",
    "\n",
    "- [**TDist**](https://www.rdocumentation.org/packages/stats/versions/3.6.1/topics/TDist)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 45,
   "id": "9e557789",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:47:22.624622Z",
     "iopub.status.busy": "2024-05-06T14:47:22.622629Z",
     "iopub.status.idle": "2024-05-06T14:47:22.650994Z",
     "shell.execute_reply": "2024-05-06T14:47:22.648875Z"
    },
    "id": "12t8QJMzpslD",
    "outputId": "6ff367ac-ceb6-41af-e9f3-364da4170020",
    "papermill": {
     "duration": 0.109369,
     "end_time": "2024-05-06T14:47:22.653859",
     "exception": false,
     "start_time": "2024-05-06T14:47:22.544490",
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
       "<caption>A matrix: 3 × 10 of type dbl</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>0.050</th><th scope=col>0.045</th><th scope=col>0.040</th><th scope=col>0.035</th><th scope=col>0.030</th><th scope=col>0.025</th><th scope=col>0.020</th><th scope=col>0.015</th><th scope=col>0.010</th><th scope=col>0.005</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>23</th><td>1.713872</td><td>1.769907</td><td>1.831567</td><td>1.900307</td><td>1.978249</td><td>2.068658</td><td>2.176958</td><td>2.313231</td><td>2.499867</td><td>2.807336</td></tr>\n",
       "\t<tr><th scope=row>24</th><td>1.710882</td><td>1.766675</td><td>1.828051</td><td>1.896457</td><td>1.973994</td><td>2.063899</td><td>2.171545</td><td>2.306913</td><td>2.492159</td><td>2.796940</td></tr>\n",
       "\t<tr><th scope=row>25</th><td>1.708141</td><td>1.763711</td><td>1.824828</td><td>1.892928</td><td>1.970095</td><td>2.059539</td><td>2.166587</td><td>2.301130</td><td>2.485107</td><td>2.787436</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A matrix: 3 × 10 of type dbl\n",
       "\\begin{tabular}{r|llllllllll}\n",
       "  & 0.050 & 0.045 & 0.040 & 0.035 & 0.030 & 0.025 & 0.020 & 0.015 & 0.010 & 0.005\\\\\n",
       "\\hline\n",
       "\t23 & 1.713872 & 1.769907 & 1.831567 & 1.900307 & 1.978249 & 2.068658 & 2.176958 & 2.313231 & 2.499867 & 2.807336\\\\\n",
       "\t24 & 1.710882 & 1.766675 & 1.828051 & 1.896457 & 1.973994 & 2.063899 & 2.171545 & 2.306913 & 2.492159 & 2.796940\\\\\n",
       "\t25 & 1.708141 & 1.763711 & 1.824828 & 1.892928 & 1.970095 & 2.059539 & 2.166587 & 2.301130 & 2.485107 & 2.787436\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A matrix: 3 × 10 of type dbl\n",
       "\n",
       "| <!--/--> | 0.050 | 0.045 | 0.040 | 0.035 | 0.030 | 0.025 | 0.020 | 0.015 | 0.010 | 0.005 |\n",
       "|---|---|---|---|---|---|---|---|---|---|---|\n",
       "| 23 | 1.713872 | 1.769907 | 1.831567 | 1.900307 | 1.978249 | 2.068658 | 2.176958 | 2.313231 | 2.499867 | 2.807336 |\n",
       "| 24 | 1.710882 | 1.766675 | 1.828051 | 1.896457 | 1.973994 | 2.063899 | 2.171545 | 2.306913 | 2.492159 | 2.796940 |\n",
       "| 25 | 1.708141 | 1.763711 | 1.824828 | 1.892928 | 1.970095 | 2.059539 | 2.166587 | 2.301130 | 2.485107 | 2.787436 |\n",
       "\n"
      ],
      "text/plain": [
       "   0.050    0.045    0.040    0.035    0.030    0.025    0.020    0.015   \n",
       "23 1.713872 1.769907 1.831567 1.900307 1.978249 2.068658 2.176958 2.313231\n",
       "24 1.710882 1.766675 1.828051 1.896457 1.973994 2.063899 2.171545 2.306913\n",
       "25 1.708141 1.763711 1.824828 1.892928 1.970095 2.059539 2.166587 2.301130\n",
       "   0.010    0.005   \n",
       "23 2.499867 2.807336\n",
       "24 2.492159 2.796940\n",
       "25 2.485107 2.787436"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "tabela_t_student[23:25, ]"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "0d4bb5c7",
   "metadata": {
    "id": "Brk3cI1npslE",
    "papermill": {
     "duration": 0.079377,
     "end_time": "2024-05-06T14:47:22.811306",
     "exception": false,
     "start_time": "2024-05-06T14:47:22.731929",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Obtendo $t_{\\alpha}$"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 46,
   "id": "f8122451",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:47:22.990585Z",
     "iopub.status.busy": "2024-05-06T14:47:22.988002Z",
     "iopub.status.idle": "2024-05-06T14:47:23.015820Z",
     "shell.execute_reply": "2024-05-06T14:47:23.012940Z"
    },
    "id": "xXi0eYGYpslF",
    "outputId": "7493d623-7775-4dc2-fb5a-39941b6fc277",
    "papermill": {
     "duration": 0.116879,
     "end_time": "2024-05-06T14:47:23.019056",
     "exception": false,
     "start_time": "2024-05-06T14:47:22.902177",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "1.71088207990943"
      ],
      "text/latex": [
       "1.71088207990943"
      ],
      "text/markdown": [
       "1.71088207990943"
      ],
      "text/plain": [
       "[1] 1.710882"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "t_alpha <- qt(confianca, graus_de_liberdade)\n",
    "t_alpha"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "200d8a89",
   "metadata": {
    "id": "xMnBzjxLpslH",
    "papermill": {
     "duration": 0.084233,
     "end_time": "2024-05-06T14:47:23.184122",
     "exception": false,
     "start_time": "2024-05-06T14:47:23.099889",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "![Região de Aceitação](https://caelum-online-public.s3.amazonaws.com/1229-estatistica-parte3/01/img009.png)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "47f2ad28",
   "metadata": {
    "id": "Azy_uNSGpslI",
    "papermill": {
     "duration": 0.087948,
     "end_time": "2024-05-06T14:47:23.350414",
     "exception": false,
     "start_time": "2024-05-06T14:47:23.262466",
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
   "id": "b00efcd1",
   "metadata": {
    "id": "YN4weG-1pslI",
    "papermill": {
     "duration": 0.079967,
     "end_time": "2024-05-06T14:47:23.512572",
     "exception": false,
     "start_time": "2024-05-06T14:47:23.432605",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### **Passo 4** - cálculo da estatística-teste e verificação desse valor com as áreas de aceitação e rejeição do teste\n",
    "\n",
    "# $$t = \\frac{\\bar{x} - \\mu_0}{\\frac{s}{\\sqrt{n}}}$$"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 47,
   "id": "af24f7f6",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:47:23.677910Z",
     "iopub.status.busy": "2024-05-06T14:47:23.675051Z",
     "iopub.status.idle": "2024-05-06T14:47:23.703542Z",
     "shell.execute_reply": "2024-05-06T14:47:23.700251Z"
    },
    "id": "qY0DfIffpslI",
    "outputId": "00fd1921-6093-469d-d164-c864eb34b23b",
    "papermill": {
     "duration": 0.11363,
     "end_time": "2024-05-06T14:47:23.707024",
     "exception": false,
     "start_time": "2024-05-06T14:47:23.593394",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "-3.87689311995208"
      ],
      "text/latex": [
       "-3.87689311995208"
      ],
      "text/markdown": [
       "-3.87689311995208"
      ],
      "text/plain": [
       "[1] -3.876893"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "t <- (media_amostra - media) / (desvio_padrao_amostra / sqrt(n))\n",
    "t"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "4aee3c16",
   "metadata": {
    "id": "SCIchVxNpslK",
    "papermill": {
     "duration": 0.080159,
     "end_time": "2024-05-06T14:47:23.866370",
     "exception": false,
     "start_time": "2024-05-06T14:47:23.786211",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "![Estatística-Teste](https://caelum-online-public.s3.amazonaws.com/1229-estatistica-parte3/01/img010.png)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "7f0a916a",
   "metadata": {
    "id": "NiheMfTopslK",
    "papermill": {
     "duration": 0.118154,
     "end_time": "2024-05-06T14:47:24.063677",
     "exception": false,
     "start_time": "2024-05-06T14:47:23.945523",
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
   "id": "ef86a3e7",
   "metadata": {
    "id": "YCsJySBGpslK",
    "papermill": {
     "duration": 0.079436,
     "end_time": "2024-05-06T14:47:24.218542",
     "exception": false,
     "start_time": "2024-05-06T14:47:24.139106",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### **Passo 5** - Aceitação ou rejeição da hipótese nula"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "8ad1c2fb",
   "metadata": {
    "id": "ioLyTpbWpslL",
    "papermill": {
     "duration": 0.079198,
     "end_time": "2024-05-06T14:47:24.374564",
     "exception": false,
     "start_time": "2024-05-06T14:47:24.295366",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "<img src='https://caelum-online-public.s3.amazonaws.com/1229-estatistica-parte3/01/img013.png' width=90%>"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "8a86da28",
   "metadata": {
    "id": "TQcuPzbPpslL",
    "papermill": {
     "duration": 0.080786,
     "end_time": "2024-05-06T14:47:24.532273",
     "exception": false,
     "start_time": "2024-05-06T14:47:24.451487",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### <font color='red'>Critério do valor crítico</font>\n",
    "\n",
    "> ### Teste Unicaudal Superior\n",
    "> ### Rejeitar $H_0$ se $t \\geq t_{\\alpha}$"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 48,
   "id": "83fc6403",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:47:24.696019Z",
     "iopub.status.busy": "2024-05-06T14:47:24.694088Z",
     "iopub.status.idle": "2024-05-06T14:47:24.716609Z",
     "shell.execute_reply": "2024-05-06T14:47:24.713969Z"
    },
    "id": "pkoDYMLIpslM",
    "outputId": "d1166899-8745-4bf6-fa7c-40b072c1b1ea",
    "papermill": {
     "duration": 0.108334,
     "end_time": "2024-05-06T14:47:24.719793",
     "exception": false,
     "start_time": "2024-05-06T14:47:24.611459",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "FALSE"
      ],
      "text/latex": [
       "FALSE"
      ],
      "text/markdown": [
       "FALSE"
      ],
      "text/plain": [
       "[1] FALSE"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "t >= t_alpha"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "42b0d46b",
   "metadata": {
    "id": "F-_AVTMJpslN",
    "papermill": {
     "duration": 0.082183,
     "end_time": "2024-05-06T14:47:24.879115",
     "exception": false,
     "start_time": "2024-05-06T14:47:24.796932",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### <font color='green'>Conclusão: Com um nível de confiança de 95% não podemos rejeitar $H_0$, ou seja, a alegação do fabricante é verdadeira.</font>"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "5e83be3f",
   "metadata": {
    "id": "7ye3tS25pslO",
    "papermill": {
     "duration": 0.076469,
     "end_time": "2024-05-06T14:47:25.034505",
     "exception": false,
     "start_time": "2024-05-06T14:47:24.958036",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### <font color='red'>Critério do valor $p$</font>\n",
    "\n",
    "> ### Teste Unicaudal Superior\n",
    "> ### Rejeitar $H_0$ se o valor $p\\leq\\alpha$"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 49,
   "id": "b2a38731",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:47:25.192138Z",
     "iopub.status.busy": "2024-05-06T14:47:25.190104Z",
     "iopub.status.idle": "2024-05-06T14:47:25.210903Z",
     "shell.execute_reply": "2024-05-06T14:47:25.208767Z"
    },
    "id": "AtPMeAz4pslQ",
    "outputId": "c26c8cc5-1244-47ff-8001-c490522ec4c2",
    "papermill": {
     "duration": 0.103107,
     "end_time": "2024-05-06T14:47:25.213537",
     "exception": false,
     "start_time": "2024-05-06T14:47:25.110430",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "-3.87689311995208"
      ],
      "text/latex": [
       "-3.87689311995208"
      ],
      "text/markdown": [
       "-3.87689311995208"
      ],
      "text/plain": [
       "[1] -3.876893"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "t"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 50,
   "id": "f9d6b220",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:47:25.377012Z",
     "iopub.status.busy": "2024-05-06T14:47:25.375032Z",
     "iopub.status.idle": "2024-05-06T14:47:25.399954Z",
     "shell.execute_reply": "2024-05-06T14:47:25.397295Z"
    },
    "papermill": {
     "duration": 0.110402,
     "end_time": "2024-05-06T14:47:25.403139",
     "exception": false,
     "start_time": "2024-05-06T14:47:25.292737",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "0.999640617030382"
      ],
      "text/latex": [
       "0.999640617030382"
      ],
      "text/markdown": [
       "0.999640617030382"
      ],
      "text/plain": [
       "[1] 0.9996406"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "p_valor <- pt(t, graus_de_liberdade, lower.tail = F)\n",
    "p_valor"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 51,
   "id": "717149ab",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:47:25.568005Z",
     "iopub.status.busy": "2024-05-06T14:47:25.565896Z",
     "iopub.status.idle": "2024-05-06T14:47:25.588686Z",
     "shell.execute_reply": "2024-05-06T14:47:25.586457Z"
    },
    "id": "_hfVEPQQpslU",
    "outputId": "1ccf5f1f-dd1f-4855-b981-f3bb76d1163e",
    "papermill": {
     "duration": 0.111027,
     "end_time": "2024-05-06T14:47:25.591783",
     "exception": false,
     "start_time": "2024-05-06T14:47:25.480756",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "FALSE"
      ],
      "text/latex": [
       "FALSE"
      ],
      "text/markdown": [
       "FALSE"
      ],
      "text/plain": [
       "[1] FALSE"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "p_valor <= significancia"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "c064f4bc",
   "metadata": {
    "id": "4JxGeADypslW",
    "papermill": {
     "duration": 0.080226,
     "end_time": "2024-05-06T14:47:25.757603",
     "exception": false,
     "start_time": "2024-05-06T14:47:25.677377",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "#### <font color=red>Documentações:\n",
    "\n",
    "- [**t.test**](https://www.rdocumentation.org/packages/stats/versions/3.6.1/topics/t.test)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 52,
   "id": "0fcd0286",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:47:25.926428Z",
     "iopub.status.busy": "2024-05-06T14:47:25.924102Z",
     "iopub.status.idle": "2024-05-06T14:47:25.950338Z",
     "shell.execute_reply": "2024-05-06T14:47:25.947805Z"
    },
    "id": "Y1gP6yjvpslW",
    "papermill": {
     "duration": 0.113579,
     "end_time": "2024-05-06T14:47:25.953279",
     "exception": false,
     "start_time": "2024-05-06T14:47:25.839700",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "\n",
       "\tOne Sample t-test\n",
       "\n",
       "data:  amostra$Amostra\n",
       "t = -3.8769, df = 24, p-value = 0.9996\n",
       "alternative hypothesis: true mean is greater than 37\n",
       "95 percent confidence interval:\n",
       " 35.9196     Inf\n",
       "sample estimates:\n",
       "mean of x \n",
       "  36.2504 \n"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "resultado <- t.test(amostra$Amostra, alternative = \"greater\", mu = media)\n",
    "resultado"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 53,
   "id": "e8926d73",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:47:26.130062Z",
     "iopub.status.busy": "2024-05-06T14:47:26.128026Z",
     "iopub.status.idle": "2024-05-06T14:47:26.149590Z",
     "shell.execute_reply": "2024-05-06T14:47:26.147352Z"
    },
    "papermill": {
     "duration": 0.115083,
     "end_time": "2024-05-06T14:47:26.152749",
     "exception": false,
     "start_time": "2024-05-06T14:47:26.037666",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<strong>t:</strong> -3.87689311995208"
      ],
      "text/latex": [
       "\\textbf{t:} -3.87689311995208"
      ],
      "text/markdown": [
       "**t:** -3.87689311995208"
      ],
      "text/plain": [
       "        t \n",
       "-3.876893 "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "resultado$statistic"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 54,
   "id": "40d49f34",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:47:26.324870Z",
     "iopub.status.busy": "2024-05-06T14:47:26.322807Z",
     "iopub.status.idle": "2024-05-06T14:47:26.351993Z",
     "shell.execute_reply": "2024-05-06T14:47:26.349135Z"
    },
    "papermill": {
     "duration": 0.121221,
     "end_time": "2024-05-06T14:47:26.355919",
     "exception": false,
     "start_time": "2024-05-06T14:47:26.234698",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "0.999640617030382"
      ],
      "text/latex": [
       "0.999640617030382"
      ],
      "text/markdown": [
       "0.999640617030382"
      ],
      "text/plain": [
       "[1] 0.9996406"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "p_valor <- resultado$p.value\n",
    "p_valor"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 55,
   "id": "0920da6f",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:47:26.526740Z",
     "iopub.status.busy": "2024-05-06T14:47:26.524842Z",
     "iopub.status.idle": "2024-05-06T14:47:26.545550Z",
     "shell.execute_reply": "2024-05-06T14:47:26.543396Z"
    },
    "id": "CMZcYUyiz0mr",
    "outputId": "c9e81381-094c-444a-8dd9-557865e8c582",
    "papermill": {
     "duration": 0.109613,
     "end_time": "2024-05-06T14:47:26.548349",
     "exception": false,
     "start_time": "2024-05-06T14:47:26.438736",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "FALSE"
      ],
      "text/latex": [
       "FALSE"
      ],
      "text/markdown": [
       "FALSE"
      ],
      "text/plain": [
       "[1] FALSE"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "resultado$p.value <= significancia"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "3759cdba",
   "metadata": {
    "id": "wlUdcJnDpsla",
    "papermill": {
     "duration": 0.079069,
     "end_time": "2024-05-06T14:47:26.707018",
     "exception": false,
     "start_time": "2024-05-06T14:47:26.627949",
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
   "id": "f849dae4",
   "metadata": {
    "id": "L7_ZbBBtpslb",
    "papermill": {
     "duration": 0.082309,
     "end_time": "2024-05-06T14:47:26.873433",
     "exception": false,
     "start_time": "2024-05-06T14:47:26.791124",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## <font color=green>3.4 Testes para Duas Amostras</font>\n",
    "***"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "814f88b6",
   "metadata": {
    "id": "lmAJLIu8pslb",
    "papermill": {
     "duration": 0.079631,
     "end_time": "2024-05-06T14:47:27.033872",
     "exception": false,
     "start_time": "2024-05-06T14:47:26.954241",
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
   "id": "f8c78634",
   "metadata": {
    "id": "0zUUY8klpslc",
    "papermill": {
     "duration": 0.082176,
     "end_time": "2024-05-06T14:47:27.193820",
     "exception": false,
     "start_time": "2024-05-06T14:47:27.111644",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Em nosso dataset temos os rendimento dos chefes de domicílio obtidos da Pesquisa Nacional por Amostra de Domicílios - PNAD no ano de 2015. Um problema bastante conhecido em nosso país diz respeito a desigualdade de renda, principalmente entre homens e mulheres.\n",
    "\n",
    "Duas amostras aleatórias, uma de **500 homens** e outra com **500 mulheres**, foram selecionadas em nosso dataset. Com o objetivo de comprovar tal desigualdade, **teste a igualdade das médias** entre estas duas amostras com um nível de **significância de 1%**."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "25770f95",
   "metadata": {
    "id": "WUknTBZgpslc",
    "papermill": {
     "duration": 0.083844,
     "end_time": "2024-05-06T14:47:27.357272",
     "exception": false,
     "start_time": "2024-05-06T14:47:27.273428",
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
   "id": "a711a699",
   "metadata": {
    "id": "gFIUL8Hgpslc",
    "papermill": {
     "duration": 0.081435,
     "end_time": "2024-05-06T14:47:27.520987",
     "exception": false,
     "start_time": "2024-05-06T14:47:27.439552",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "É possível também utilizar testes de hipóteses para comparar duas diferentes amostras. Neste tipo de teste se deseja decidir se uma amostra é diferente da outra."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "c2154002",
   "metadata": {
    "id": "xzGuwM4xpslc",
    "papermill": {
     "duration": 0.120679,
     "end_time": "2024-05-06T14:47:27.723309",
     "exception": false,
     "start_time": "2024-05-06T14:47:27.602630",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Seleção das amostras"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 56,
   "id": "02077208",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:47:27.887573Z",
     "iopub.status.busy": "2024-05-06T14:47:27.885774Z",
     "iopub.status.idle": "2024-05-06T14:47:27.906437Z",
     "shell.execute_reply": "2024-05-06T14:47:27.904246Z"
    },
    "papermill": {
     "duration": 0.10729,
     "end_time": "2024-05-06T14:47:27.910127",
     "exception": false,
     "start_time": "2024-05-06T14:47:27.802837",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "homens <- matrix(c(300, 1000, 4000, 5000, 300, 350, 1200, 1200, 1100, 1800, 700, 5000, 250, 1560, 400, 5500, 3000, 0, 1100, 1500, 500, 500, 788, 500, 3000, 788, 2400, 788, 3300, 1350, 2500, 2000, 1300, 2430, 9000, 10120, 1380, 2000, 1400, 1000, 500, 1500, 2200, 2100, 4000, 1000, 1200, 2900, 1800, 2000, 788, 1576, 800, 2400, 788, 788, 788, 0, 12000, 7880, 850, 1000, 1000, 1600, 3800, 788, 1200, 300, 350, 700, 6000, 1500, 5000, 2000, 1200, 800, 250, 800, 1600, 400, 3000, 2304, 800, 1400, 450, 788, 2200, 6000, 1200, 4000, 6000, 1100, 1200, 1300, 3000, 3000, 1500, 1280, 788, 1400, 788, 4000, 0, 1000, 2500, 1300, 3000, 500, 1600, 2000, 1280, 150, 0, 0, 7000, 1061, 700, 788, 2000, 788, 10500, 788, 1600, 1050, 1100, 3000, 800, 1400, 1200, 2500, 1000, 1500, 1500, 900, 2000, 300, 3000, 788, 1400, 2000, 2000, 3000, 2600, 15000, 1500, 950, 1200, 1500, 7500, 1400, 350, 750, 1200, 788, 0, 2500, 1700, 788, 700, 1600, 1200, 320, 6000, 2000, 2000, 3000, 900, 2100, 0, 788, 1800, 1600, 4000, 1300, 1300, 1500, 8900, 1400, 788, 600, 1000, 950, 2000, 4000, 2300, 2000, 800, 2500, 1500, 1400, 800, 6000, 788, 900, 200, 1300, 788, 2600, 1500, 8000, 900, 2000, 2000, 350, 3000, 9580, 0, 400, 800, 1700, 1800, 1200, 18000, 9000, 3000, 1200, 700, 1200, 400, 987, 6000, 2000, 0, 0, 480, 500, 800, 1680, 10000, 1200, 1700, 788, 2200, 10000, 10000, 100, 1200, 1600, 2500, 1300, 1200, 1300, 2200, 200, 60, 1100, 1200, 6000, 4500, 100, 788, 2900, 2500, 900, 788, 2500, 4000, 788, 1400, 1000, 300, 788, 1000, 4000, 2200, 788, 1000, 1000, 600, 1600, 6000, 2500, 2500, 1000, 3000, 2200, 4500, 1500, 4300, 1500, 8500, 3200, 1200, 1200, 1500, 4000, 2000, 1350, 1500, 890, 5000, 2400, 13000, 800, 1500, 1500, 2000, 580, 500, 920, 1200, 2000, 788, 500, 20000, 1350, 1576, 500, 8000, 1800, 600, 1000, 3000, 4000, 1500, 788, 600, 2300, 1500, 500, 500, 800, 900, 8000, 1600, 3000, 788, 1500, 5200, 900, 3565, 650, 1700, 1600, 788, 1200, 788, 788, 100, 900, 1700, 10000, 1600, 200, 788, 1400, 1500, 400, 4200, 1400, 4000, 5516, 3500, 700, 1400, 1200, 0, 7000, 2000, 5000, 2000, 750, 3000, 2000, 1500, 200, 3000, 1700, 1500, 7000, 1500, 788, 2400, 2500, 1500, 2000, 1500, 2000, 1100, 800, 1800, 480, 3500, 700, 3400, 5000, 5000, 1300, 3000, 2000, 900, 2000, 1000, 1800, 0, 1500, 788, 3500, 875, 5000, 2000, 1300, 1600, 0, 750, 1200, 120, 1800, 1200, 788, 1000, 0, 1400, 2300, 7000, 4000, 5000, 788, 20000, 4000, 0, 1200, 1800, 500, 1000, 788, 1300, 5000, 50, 1700, 2000, 1600, 2000, 1350, 1500, 600, 1700, 780, 2446, 2100, 5000, 1700, 1200, 1000, 788, 4500, 1500, 788, 0, 1580, 1000, 4500, 2400, 788, 1100, 2000, 788, 100, 1200, 1200, 1200, 1000, 2000, 788, 2000, 15000, 600, 0, 1500, 3000, 4000, 900, 810, 600, 1500, 4000, 1200, 5000, 5300, 2500, 800, 0, 1400, 1500, 4000, 1200, 400, 1000, 820, 1000, 1000, 788, 1500, 2500, 1500, 220, 600, 788, 1750, 7000))\n",
    "mulheres <- matrix(c(788, 1200, 6000, 1000, 788, 1100, 1900, 1577, 900, 950, 1200, 788, 788, 1100, 30, 620, 900, 1000, 1200, 2000, 0, 500, 1200, 1500, 1200, 1120, 788, 788, 2300, 2400, 3000, 788, 4000, 1000, 500, 500, 1700, 200, 6000, 400, 950, 1100, 50, 930, 850, 1100, 3500, 1500, 1200, 900, 1100, 1500, 788, 1000, 788, 4500, 4000, 8000, 3500, 788, 1050, 1000, 1400, 3500, 600, 3000, 500, 930, 2660, 788, 360, 2364, 788, 160, 1100, 1085, 1050, 1500, 100, 0, 788, 250, 1700, 1300, 800, 0, 2000, 820, 910, 300, 2000, 200, 788, 788, 800, 1500, 1300, 1200, 0, 600, 1036, 400, 1100, 788, 400, 1500, 1200, 1800, 1000, 788, 850, 60, 1800, 3500, 600, 200, 500, 200, 1100, 1540, 1100, 900, 800, 500, 200, 1200, 1250, 788, 500, 200, 788, 200, 0, 1800, 2000, 1000, 900, 3000, 700, 1200, 788, 2800, 3300, 400, 0, 850, 1022, 6000, 750, 1000, 3500, 400, 1500, 1000, 800, 0, 980, 2400, 850, 1100, 788, 1100, 788, 1200, 788, 864, 1000, 500, 400, 3000, 1200, 100, 80, 900, 2000, 1250, 1000, 300, 400, 1500, 60, 8000, 1000, 600, 800, 350, 788, 0, 600, 788, 2500, 1300, 800, 8000, 1100, 800, 900, 2000, 0, 800, 1400, 1000, 1200, 788, 3840, 788, 3940, 788, 560, 800, 2000, 600, 2900, 0, 400, 800, 7000, 788, 788, 788, 788, 1250, 1500, 1386, 100, 300, 788, 788, 600, 600, 900, 2800, 788, 350, 900, 0, 150, 788, 788, 1000, 30, 788, 780, 900, 0, 0, 3000, 1800, 2000, 1100, 788, 0, 7500, 1800, 788, 788, 2000, 3000, 180, 2500, 800, 0, 1250, 200, 1100, 0, 1100, 400, 1300, 300, 0, 1312, 600, 200, 4000, 2400, 12000, 2150, 500, 400, 0, 600, 400, 788, 1200, 500, 2000, 1500, 70, 500, 2000, 1000, 100, 500, 2000, 100, 2115, 800, 5800, 2300, 750, 788, 0, 900, 1000, 600, 3000, 5500, 1600, 788, 4000, 0, 1100, 120, 320, 1100, 2500, 200, 800, 3000, 550, 4200, 7000, 720, 0, 2000, 5000, 2000, 788, 500, 788, 7000, 500, 788, 1760, 1200, 3500, 1500, 150, 800, 788, 3000, 400, 788, 1000, 2000, 2500, 0, 788, 5200, 788, 0, 600, 1300, 120, 850, 1576, 788, 2000, 1300, 788, 800, 1800, 655, 1580, 789, 788, 850, 788, 7000, 788, 430, 800, 788, 900, 10000, 1200, 300, 400, 788, 788, 3000, 900, 1300, 1300, 788, 800, 1000, 1890, 0, 788, 900, 4000, 788, 1010, 150, 450, 1700, 890, 1200, 2800, 1000, 788, 788, 700, 600, 800, 880, 6000, 800, 800, 820, 788, 1030, 560, 2100, 6500, 2500, 788, 400, 300, 788, 2300, 1000, 3500, 984, 1576, 420, 1700, 450, 1800, 400, 1500, 1500, 4256, 1200, 890, 1200, 300, 400, 850, 1500, 3800, 1800, 996, 2000, 1000, 788, 1500, 300, 600, 950, 1200, 788, 1200, 1500, 250, 788, 1200, 6000, 300, 789, 1500, 788, 3800, 780, 1200, 1200, 220, 788, 500, 200, 480, 1576, 1576, 1035, 900, 800, 1000, 805, 200, 1200, 2220, 1500, 880, 220, 2000, 788, 150, 0, 13000, 40, 5500, 788, 788, 1000, 400, 2000, 200, 1600))"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "6b350722",
   "metadata": {
    "id": "FOFa-cHwpslg",
    "papermill": {
     "duration": 0.077777,
     "end_time": "2024-05-06T14:47:28.067019",
     "exception": false,
     "start_time": "2024-05-06T14:47:27.989242",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Dados do problema"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 57,
   "id": "555a8f62",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:47:28.234272Z",
     "iopub.status.busy": "2024-05-06T14:47:28.225053Z",
     "iopub.status.idle": "2024-05-06T14:47:28.256077Z",
     "shell.execute_reply": "2024-05-06T14:47:28.253949Z"
    },
    "id": "BGyXCbompslh",
    "outputId": "a5e8a9b9-ee69-408f-b8c0-6cac89b36d9a",
    "papermill": {
     "duration": 0.114411,
     "end_time": "2024-05-06T14:47:28.258869",
     "exception": false,
     "start_time": "2024-05-06T14:47:28.144458",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "1357.528"
      ],
      "text/latex": [
       "1357.528"
      ],
      "text/markdown": [
       "1357.528"
      ],
      "text/plain": [
       "[1] 1357.528"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "media_amostra_M <- mean(mulheres)\n",
    "media_amostra_M"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 58,
   "id": "ec6e47e0",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:47:28.427392Z",
     "iopub.status.busy": "2024-05-06T14:47:28.425524Z",
     "iopub.status.idle": "2024-05-06T14:47:28.448434Z",
     "shell.execute_reply": "2024-05-06T14:47:28.446272Z"
    },
    "id": "RoxFOCA3pslk",
    "outputId": "85133b37-a4a6-49cd-a585-700725811b09",
    "papermill": {
     "duration": 0.110121,
     "end_time": "2024-05-06T14:47:28.451505",
     "exception": false,
     "start_time": "2024-05-06T14:47:28.341384",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "1569.90119074846"
      ],
      "text/latex": [
       "1569.90119074846"
      ],
      "text/markdown": [
       "1569.90119074846"
      ],
      "text/plain": [
       "[1] 1569.901"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "desvio_padrao_amostra_M <- sd(mulheres)\n",
    "desvio_padrao_amostra_M"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 59,
   "id": "92e1a39d",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:47:28.617624Z",
     "iopub.status.busy": "2024-05-06T14:47:28.615603Z",
     "iopub.status.idle": "2024-05-06T14:47:28.637964Z",
     "shell.execute_reply": "2024-05-06T14:47:28.635796Z"
    },
    "id": "Of8L6Hygpsll",
    "outputId": "fe0dc0f3-79e3-4375-de47-43a4ff6c3f79",
    "papermill": {
     "duration": 0.108148,
     "end_time": "2024-05-06T14:47:28.641020",
     "exception": false,
     "start_time": "2024-05-06T14:47:28.532872",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "2142.608"
      ],
      "text/latex": [
       "2142.608"
      ],
      "text/markdown": [
       "2142.608"
      ],
      "text/plain": [
       "[1] 2142.608"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "media_amostra_H <- mean(homens)\n",
    "media_amostra_H"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 60,
   "id": "74caeebf",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:47:28.814007Z",
     "iopub.status.busy": "2024-05-06T14:47:28.811972Z",
     "iopub.status.idle": "2024-05-06T14:47:28.836990Z",
     "shell.execute_reply": "2024-05-06T14:47:28.834810Z"
    },
    "id": "-cSpXXTepsln",
    "outputId": "8a3d0017-ac70-4fe3-aae1-0c7bf32e676e",
    "papermill": {
     "duration": 0.112458,
     "end_time": "2024-05-06T14:47:28.840061",
     "exception": false,
     "start_time": "2024-05-06T14:47:28.727603",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "2548.05080249987"
      ],
      "text/latex": [
       "2548.05080249987"
      ],
      "text/markdown": [
       "2548.05080249987"
      ],
      "text/plain": [
       "[1] 2548.051"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "desvio_padrao_amostra_H <- sd(homens)\n",
    "desvio_padrao_amostra_H"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 61,
   "id": "0170374e",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:47:29.010117Z",
     "iopub.status.busy": "2024-05-06T14:47:29.008038Z",
     "iopub.status.idle": "2024-05-06T14:47:29.035251Z",
     "shell.execute_reply": "2024-05-06T14:47:29.032948Z"
    },
    "id": "Cl7kdxkUpslo",
    "papermill": {
     "duration": 0.116375,
     "end_time": "2024-05-06T14:47:29.038212",
     "exception": false,
     "start_time": "2024-05-06T14:47:28.921837",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "significancia <- 0.01\n",
    "confianca <- 1 - significancia\n",
    "n_M <- 500\n",
    "n_H <- 500\n",
    "D_0 <- 0"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "b3f5056c",
   "metadata": {
    "id": "PGoWwWwjpslp",
    "papermill": {
     "duration": 0.079158,
     "end_time": "2024-05-06T14:47:29.199078",
     "exception": false,
     "start_time": "2024-05-06T14:47:29.119920",
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
   "id": "b6f13593",
   "metadata": {
    "id": "tO597Oxgpslp",
    "papermill": {
     "duration": 0.081325,
     "end_time": "2024-05-06T14:47:29.361973",
     "exception": false,
     "start_time": "2024-05-06T14:47:29.280648",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### **Passo 1** - formulação das hipóteses $H_0$ e $H_1$\n",
    "\n",
    "#### <font color='red'>Lembre-se, a hipótese nula sempre contém a alegação de igualdade</font>"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "fe64997c",
   "metadata": {
    "id": "LysVU-7fpslr",
    "papermill": {
     "duration": 0.082517,
     "end_time": "2024-05-06T14:47:29.524405",
     "exception": false,
     "start_time": "2024-05-06T14:47:29.441888",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### $\\mu_1 \\Rightarrow$ Média das rendas dos chefes de domicílios do sexo masculino\n",
    "### $\\mu_2 \\Rightarrow$ Média das rendas dos chefes de domicílios do sexo feminino\n",
    "\n",
    "### $\n",
    "\\begin{cases}\n",
    "H_0: \\mu_1 \\leq \\mu_2\\\\\n",
    "H_1: \\mu_1 > \\mu_2\n",
    "\\end{cases}\n",
    "$\n",
    "\n",
    "### ou\n",
    "\n",
    "### $\n",
    "\\begin{cases}\n",
    "H_0: \\mu_1 -\\mu_2 \\leq 0\\\\\n",
    "H_1: \\mu_1 -\\mu_2 > 0\n",
    "\\end{cases}\n",
    "$"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "be4e38a0",
   "metadata": {
    "id": "ENKqbCgQpslr",
    "papermill": {
     "duration": 0.07893,
     "end_time": "2024-05-06T14:47:29.684202",
     "exception": false,
     "start_time": "2024-05-06T14:47:29.605272",
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
   "id": "b2d2b017",
   "metadata": {
    "id": "dBA05Y3Zpslr",
    "papermill": {
     "duration": 0.082501,
     "end_time": "2024-05-06T14:47:29.847081",
     "exception": false,
     "start_time": "2024-05-06T14:47:29.764580",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### **Passo 2** - escolha da distribuição amostral adequada\n",
    "<img src='https://caelum-online-public.s3.amazonaws.com/1229-estatistica-parte3/01/img003.png' width=70%>\n",
    "\n",
    "### <font color='red'>Observação importante</font>\n",
    "> Em testes que envolvam duas amostras com o emprego da tabela $t$ de Student, o número de graus de liberdade será sempre igual a $n_1 + n_2 - 2$"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "df0bfa5d",
   "metadata": {
    "id": "6_Q_Wtjlpsls",
    "papermill": {
     "duration": 0.079017,
     "end_time": "2024-05-06T14:47:30.007364",
     "exception": false,
     "start_time": "2024-05-06T14:47:29.928347",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### O tamanho da amostra é maior que 30?\n",
    "#### Resp.: Sim\n",
    "\n",
    "### O desvio padrão populacional é conhecido?\n",
    "#### Resp.: Não"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "3aed5803",
   "metadata": {
    "id": "T6sVzVjVpsls",
    "papermill": {
     "duration": 0.08145,
     "end_time": "2024-05-06T14:47:30.168685",
     "exception": false,
     "start_time": "2024-05-06T14:47:30.087235",
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
   "id": "012e3950",
   "metadata": {
    "id": "SUN4yJqzpsls",
    "papermill": {
     "duration": 0.081556,
     "end_time": "2024-05-06T14:47:30.330487",
     "exception": false,
     "start_time": "2024-05-06T14:47:30.248931",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### **Passo 3** - fixação da significância do teste ($\\alpha$)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 62,
   "id": "72e1802a",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:47:30.495580Z",
     "iopub.status.busy": "2024-05-06T14:47:30.493659Z",
     "iopub.status.idle": "2024-05-06T14:47:30.516079Z",
     "shell.execute_reply": "2024-05-06T14:47:30.513566Z"
    },
    "id": "b3Y_CZmzpsls",
    "outputId": "bc2e1945-7bb1-4c2c-851a-f0102328ce0e",
    "papermill": {
     "duration": 0.107508,
     "end_time": "2024-05-06T14:47:30.518905",
     "exception": false,
     "start_time": "2024-05-06T14:47:30.411397",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "0.99"
      ],
      "text/latex": [
       "0.99"
      ],
      "text/markdown": [
       "0.99"
      ],
      "text/plain": [
       "[1] 0.99"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "probabilidade <- confianca\n",
    "probabilidade"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 63,
   "id": "e9a38bc0",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:47:30.683366Z",
     "iopub.status.busy": "2024-05-06T14:47:30.680958Z",
     "iopub.status.idle": "2024-05-06T14:47:30.703401Z",
     "shell.execute_reply": "2024-05-06T14:47:30.701252Z"
    },
    "id": "qNse2bFRpslu",
    "outputId": "b03d1db9-17ec-4577-825d-dc81f7aee07b",
    "papermill": {
     "duration": 0.107326,
     "end_time": "2024-05-06T14:47:30.706017",
     "exception": false,
     "start_time": "2024-05-06T14:47:30.598691",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "2.32634787404084"
      ],
      "text/latex": [
       "2.32634787404084"
      ],
      "text/markdown": [
       "2.32634787404084"
      ],
      "text/plain": [
       "[1] 2.326348"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "z_alpha <- qnorm(probabilidade)\n",
    "z_alpha"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "40987098",
   "metadata": {
    "id": "y9u_zd8Opslv",
    "papermill": {
     "duration": 0.083162,
     "end_time": "2024-05-06T14:47:30.869411",
     "exception": false,
     "start_time": "2024-05-06T14:47:30.786249",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "![Região de Aceitação](https://caelum-online-public.s3.amazonaws.com/1229-estatistica-parte3/01/img011.png)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "204ca76c",
   "metadata": {
    "id": "xUhiEXRMpslv",
    "papermill": {
     "duration": 0.079038,
     "end_time": "2024-05-06T14:47:31.028651",
     "exception": false,
     "start_time": "2024-05-06T14:47:30.949613",
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
   "id": "99860f31",
   "metadata": {
    "id": "iooB1aPHpslv",
    "papermill": {
     "duration": 0.081244,
     "end_time": "2024-05-06T14:47:31.212442",
     "exception": false,
     "start_time": "2024-05-06T14:47:31.131198",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### **Passo 4** - cálculo da estatística-teste e verificação desse valor com as áreas de aceitação e rejeição do teste\n",
    "\n",
    "# $$z = \\frac{(\\bar{x_1} - \\bar{x_2})-D_0}{\\sqrt{\\frac{s_1^2}{n_1} + \\frac{s_2^2}{n_2}}}$$"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 64,
   "id": "6dc3f69b",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:47:31.379091Z",
     "iopub.status.busy": "2024-05-06T14:47:31.377104Z",
     "iopub.status.idle": "2024-05-06T14:47:31.405540Z",
     "shell.execute_reply": "2024-05-06T14:47:31.403435Z"
    },
    "id": "AL2i9JOTpslw",
    "outputId": "920efcb1-4b72-4366-9930-52d6e0119549",
    "papermill": {
     "duration": 0.117095,
     "end_time": "2024-05-06T14:47:31.408387",
     "exception": false,
     "start_time": "2024-05-06T14:47:31.291292",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "5.86562005776475"
      ],
      "text/latex": [
       "5.86562005776475"
      ],
      "text/markdown": [
       "5.86562005776475"
      ],
      "text/plain": [
       "[1] 5.86562"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "numerador <- (media_amostra_H - media_amostra_M) - D_0\n",
    "\n",
    "denominador <- sqrt((desvio_padrao_amostra_H ** 2 / n_H) + (desvio_padrao_amostra_M ** 2 / n_M))\n",
    "\n",
    "z <- numerador / denominador\n",
    "\n",
    "z"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "6b078567",
   "metadata": {
    "id": "jXrfHvH5pslx",
    "papermill": {
     "duration": 0.083025,
     "end_time": "2024-05-06T14:47:31.575762",
     "exception": false,
     "start_time": "2024-05-06T14:47:31.492737",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "![Estatística-Teste](https://caelum-online-public.s3.amazonaws.com/1229-estatistica-parte3/01/img012.png)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "f3baba9b",
   "metadata": {
    "id": "4dn58Fc2pslx",
    "papermill": {
     "duration": 0.08275,
     "end_time": "2024-05-06T14:47:31.739852",
     "exception": false,
     "start_time": "2024-05-06T14:47:31.657102",
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
   "id": "298657bd",
   "metadata": {
    "id": "P-7NL33-pslx",
    "papermill": {
     "duration": 0.080813,
     "end_time": "2024-05-06T14:47:31.903192",
     "exception": false,
     "start_time": "2024-05-06T14:47:31.822379",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### **Passo 5** - Aceitação ou rejeição da hipótese nula"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "b3272db7",
   "metadata": {
    "id": "n_djxfYtpslx",
    "papermill": {
     "duration": 0.081538,
     "end_time": "2024-05-06T14:47:32.068392",
     "exception": false,
     "start_time": "2024-05-06T14:47:31.986854",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "<img src='https://caelum-online-public.s3.amazonaws.com/1229-estatistica-parte3/01/img014.png' width=90%>"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "40ca2aa8",
   "metadata": {
    "id": "QrObW-BXpsly",
    "papermill": {
     "duration": 0.084295,
     "end_time": "2024-05-06T14:47:32.236821",
     "exception": false,
     "start_time": "2024-05-06T14:47:32.152526",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### <font color='red'>Critério do valor crítico</font>\n",
    "\n",
    "> ### Teste Unicaudal\n",
    "> ### Rejeitar $H_0$ se $z \\geq z_{\\alpha}$"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 65,
   "id": "12427a2b",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:47:32.406997Z",
     "iopub.status.busy": "2024-05-06T14:47:32.405173Z",
     "iopub.status.idle": "2024-05-06T14:47:32.424532Z",
     "shell.execute_reply": "2024-05-06T14:47:32.422508Z"
    },
    "id": "tkJSji7gpsly",
    "outputId": "8bbaa7f8-311f-4b6e-98f0-6964f510a91d",
    "papermill": {
     "duration": 0.106751,
     "end_time": "2024-05-06T14:47:32.427366",
     "exception": false,
     "start_time": "2024-05-06T14:47:32.320615",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "TRUE"
      ],
      "text/latex": [
       "TRUE"
      ],
      "text/markdown": [
       "TRUE"
      ],
      "text/plain": [
       "[1] TRUE"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "z >= z_alpha"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "53687cb4",
   "metadata": {
    "id": "UnBVO1uDpslz",
    "papermill": {
     "duration": 0.081333,
     "end_time": "2024-05-06T14:47:32.590531",
     "exception": false,
     "start_time": "2024-05-06T14:47:32.509198",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### <font color='green'>Conclusão: Com um nível de confiança de 99% rejeitamos $H_0$, isto é, concluímos que a média das rendas dos chefes de domicílios do sexo masculino é maior que a média das rendas das chefes de domicílios do sexo feminino. Confirmando a alegação de desigualdade de renda entre os sexos.</font>"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "d1fc4dad",
   "metadata": {
    "id": "cyuNEHfwpsl0",
    "papermill": {
     "duration": 0.121672,
     "end_time": "2024-05-06T14:47:32.793379",
     "exception": false,
     "start_time": "2024-05-06T14:47:32.671707",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### <font color='red'>Critério do valor $p$</font>\n",
    "\n",
    "> ### Teste Unicaudal\n",
    "> ### Rejeitar $H_0$ se o valor $p\\leq\\alpha$"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 66,
   "id": "d4c3c0b2",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:47:32.964980Z",
     "iopub.status.busy": "2024-05-06T14:47:32.962946Z",
     "iopub.status.idle": "2024-05-06T14:47:32.984229Z",
     "shell.execute_reply": "2024-05-06T14:47:32.981988Z"
    },
    "papermill": {
     "duration": 0.113615,
     "end_time": "2024-05-06T14:47:32.987753",
     "exception": false,
     "start_time": "2024-05-06T14:47:32.874138",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "5.86562005776475"
      ],
      "text/latex": [
       "5.86562005776475"
      ],
      "text/markdown": [
       "5.86562005776475"
      ],
      "text/plain": [
       "[1] 5.86562"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "z"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 67,
   "id": "bfc38447",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:47:33.156349Z",
     "iopub.status.busy": "2024-05-06T14:47:33.154579Z",
     "iopub.status.idle": "2024-05-06T14:47:33.180058Z",
     "shell.execute_reply": "2024-05-06T14:47:33.177425Z"
    },
    "id": "tSbOZem9hLvs",
    "outputId": "c987a7bf-f772-4a01-a4c6-9a3afacf08d3",
    "papermill": {
     "duration": 0.112417,
     "end_time": "2024-05-06T14:47:33.183243",
     "exception": false,
     "start_time": "2024-05-06T14:47:33.070826",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "2.23728678594584e-09"
      ],
      "text/latex": [
       "2.23728678594584e-09"
      ],
      "text/markdown": [
       "2.23728678594584e-09"
      ],
      "text/plain": [
       "[1] 2.237287e-09"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "p_valor <- pnorm(z, lower.tail = F)\n",
    "p_valor"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 68,
   "id": "ece3a82f",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:47:33.360792Z",
     "iopub.status.busy": "2024-05-06T14:47:33.357704Z",
     "iopub.status.idle": "2024-05-06T14:47:33.379864Z",
     "shell.execute_reply": "2024-05-06T14:47:33.377809Z"
    },
    "id": "E3NF1BzYpsl6",
    "outputId": "73af41e4-51a9-4e1f-d4c8-0786046c24b2",
    "papermill": {
     "duration": 0.113265,
     "end_time": "2024-05-06T14:47:33.382990",
     "exception": false,
     "start_time": "2024-05-06T14:47:33.269725",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "TRUE"
      ],
      "text/latex": [
       "TRUE"
      ],
      "text/markdown": [
       "TRUE"
      ],
      "text/plain": [
       "[1] TRUE"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "p_valor <= significancia"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "aaf792c0",
   "metadata": {
    "id": "YRw1O5X8pskT",
    "papermill": {
     "duration": 0.085804,
     "end_time": "2024-05-06T14:47:33.552255",
     "exception": false,
     "start_time": "2024-05-06T14:47:33.466451",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "#### <font color=red>Documentações:\n",
    "\n",
    "- [**BSDA**](https://www.rdocumentation.org/packages/BSDA/versions/1.01)\n",
    "- [**z.test**](https://www.rdocumentation.org/packages/BSDA/versions/1.01/topics/z.test)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 69,
   "id": "64e7a1ed",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:47:33.721593Z",
     "iopub.status.busy": "2024-05-06T14:47:33.719724Z",
     "iopub.status.idle": "2024-05-06T14:47:48.097513Z",
     "shell.execute_reply": "2024-05-06T14:47:48.095120Z"
    },
    "papermill": {
     "duration": 14.466357,
     "end_time": "2024-05-06T14:47:48.100432",
     "exception": false,
     "start_time": "2024-05-06T14:47:33.634075",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Installing package into ‘/usr/local/lib/R/site-library’\n",
      "(as ‘lib’ is unspecified)\n",
      "\n"
     ]
    }
   ],
   "source": [
    "# install.packages(\"BSDA\")\n",
    "\n",
    "# OU\n",
    "\n",
    "packageurl <- \"https://cran.r-project.org/src/contrib/Archive/BSDA/BSDA_1.01.tar.gz\"\n",
    "install.packages(packageurl, repos=NULL, type=\"source\")"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "48753700",
   "metadata": {
    "papermill": {
     "duration": 0.081378,
     "end_time": "2024-05-06T14:47:48.264807",
     "exception": false,
     "start_time": "2024-05-06T14:47:48.183429",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### z.test()"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 70,
   "id": "83b32a96",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:47:48.437012Z",
     "iopub.status.busy": "2024-05-06T14:47:48.434575Z",
     "iopub.status.idle": "2024-05-06T14:47:48.523674Z",
     "shell.execute_reply": "2024-05-06T14:47:48.521328Z"
    },
    "papermill": {
     "duration": 0.178794,
     "end_time": "2024-05-06T14:47:48.526597",
     "exception": false,
     "start_time": "2024-05-06T14:47:48.347803",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Loading required package: e1071\n",
      "\n",
      "Loading required package: lattice\n",
      "\n",
      "\n",
      "Attaching package: ‘BSDA’\n",
      "\n",
      "\n",
      "The following object is masked from ‘package:datasets’:\n",
      "\n",
      "    Orange\n",
      "\n",
      "\n"
     ]
    }
   ],
   "source": [
    "library(BSDA)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 71,
   "id": "c0c28606",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:47:48.698351Z",
     "iopub.status.busy": "2024-05-06T14:47:48.696368Z",
     "iopub.status.idle": "2024-05-06T14:47:48.719765Z",
     "shell.execute_reply": "2024-05-06T14:47:48.717566Z"
    },
    "papermill": {
     "duration": 0.112711,
     "end_time": "2024-05-06T14:47:48.722600",
     "exception": false,
     "start_time": "2024-05-06T14:47:48.609889",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "\n",
       "\tTwo-sample z-Test\n",
       "\n",
       "data:  homens and mulheres\n",
       "z = 5.8656, p-value = 2.237e-09\n",
       "alternative hypothesis: true difference in means is greater than 0\n",
       "99 percent confidence interval:\n",
       " 473.7115       NA\n",
       "sample estimates:\n",
       "mean of x mean of y \n",
       " 2142.608  1357.528 \n"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "resultado <- z.test(x = homens,\n",
    "                    y = mulheres,\n",
    "                    alternative = 'greater',\n",
    "                    mu = 0,\n",
    "                    sigma.x = sd(homens),\n",
    "                    sigma.y = sd(mulheres),\n",
    "                    conf.level = 0.99)\n",
    "resultado"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 72,
   "id": "a7baba50",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:47:48.888944Z",
     "iopub.status.busy": "2024-05-06T14:47:48.886947Z",
     "iopub.status.idle": "2024-05-06T14:47:48.910233Z",
     "shell.execute_reply": "2024-05-06T14:47:48.907839Z"
    },
    "papermill": {
     "duration": 0.10956,
     "end_time": "2024-05-06T14:47:48.913003",
     "exception": false,
     "start_time": "2024-05-06T14:47:48.803443",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "2.23728680026625e-09"
      ],
      "text/latex": [
       "2.23728680026625e-09"
      ],
      "text/markdown": [
       "2.23728680026625e-09"
      ],
      "text/plain": [
       "[1] 2.237287e-09"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "p_valor <- resultado$p.value\n",
    "p_valor"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 73,
   "id": "e173937e",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:47:49.080732Z",
     "iopub.status.busy": "2024-05-06T14:47:49.078672Z",
     "iopub.status.idle": "2024-05-06T14:47:49.098556Z",
     "shell.execute_reply": "2024-05-06T14:47:49.096539Z"
    },
    "papermill": {
     "duration": 0.1056,
     "end_time": "2024-05-06T14:47:49.101020",
     "exception": false,
     "start_time": "2024-05-06T14:47:48.995420",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "TRUE"
      ],
      "text/latex": [
       "TRUE"
      ],
      "text/markdown": [
       "TRUE"
      ],
      "text/plain": [
       "[1] TRUE"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "p_valor <= significancia"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "6f286fd2",
   "metadata": {
    "papermill": {
     "duration": 0.083717,
     "end_time": "2024-05-06T14:47:49.267593",
     "exception": false,
     "start_time": "2024-05-06T14:47:49.183876",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### <font color=red>Somente como observação</font>\n",
    "### t.test()"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 74,
   "id": "47b540d6",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:47:49.438415Z",
     "iopub.status.busy": "2024-05-06T14:47:49.436548Z",
     "iopub.status.idle": "2024-05-06T14:47:49.459027Z",
     "shell.execute_reply": "2024-05-06T14:47:49.456990Z"
    },
    "papermill": {
     "duration": 0.112472,
     "end_time": "2024-05-06T14:47:49.461963",
     "exception": false,
     "start_time": "2024-05-06T14:47:49.349491",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "\n",
       "\tTwo Sample t-test\n",
       "\n",
       "data:  homens and mulheres\n",
       "t = 5.8656, df = 998, p-value = 3.04e-09\n",
       "alternative hypothesis: true difference in means is greater than 0\n",
       "95 percent confidence interval:\n",
       " 564.7211      Inf\n",
       "sample estimates:\n",
       "mean of x mean of y \n",
       " 2142.608  1357.528 \n"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "resultado <- t.test(x = homens,\n",
    "                    y = mulheres,\n",
    "                    alternative = 'greater',\n",
    "                    paired = F,\n",
    "                    var.equal = T)\n",
    "resultado"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 75,
   "id": "66694bde",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:47:49.632629Z",
     "iopub.status.busy": "2024-05-06T14:47:49.630809Z",
     "iopub.status.idle": "2024-05-06T14:47:49.652650Z",
     "shell.execute_reply": "2024-05-06T14:47:49.650680Z"
    },
    "papermill": {
     "duration": 0.110427,
     "end_time": "2024-05-06T14:47:49.655317",
     "exception": false,
     "start_time": "2024-05-06T14:47:49.544890",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "3.04010400943369e-09"
      ],
      "text/latex": [
       "3.04010400943369e-09"
      ],
      "text/markdown": [
       "3.04010400943369e-09"
      ],
      "text/plain": [
       "[1] 3.040104e-09"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "p_valor <- resultado$p.value\n",
    "p_valor"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 76,
   "id": "60379b00",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:47:49.835226Z",
     "iopub.status.busy": "2024-05-06T14:47:49.833250Z",
     "iopub.status.idle": "2024-05-06T14:47:49.855281Z",
     "shell.execute_reply": "2024-05-06T14:47:49.852717Z"
    },
    "papermill": {
     "duration": 0.121097,
     "end_time": "2024-05-06T14:47:49.858432",
     "exception": false,
     "start_time": "2024-05-06T14:47:49.737335",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "TRUE"
      ],
      "text/latex": [
       "TRUE"
      ],
      "text/markdown": [
       "TRUE"
      ],
      "text/plain": [
       "[1] TRUE"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "p_valor <= significancia"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "bc8e2817",
   "metadata": {
    "id": "0gxk-t4jpsl8",
    "papermill": {
     "duration": 0.083814,
     "end_time": "2024-05-06T14:47:50.024854",
     "exception": false,
     "start_time": "2024-05-06T14:47:49.941040",
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
   "id": "3d8750bf",
   "metadata": {
    "id": "IEHa9ZC_psl8",
    "papermill": {
     "duration": 0.084055,
     "end_time": "2024-05-06T14:47:50.191229",
     "exception": false,
     "start_time": "2024-05-06T14:47:50.107174",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# <font color=green>4 TESTES NÃO PARAMÉTRICOS</font>\n",
    "***"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "06a7b9d5",
   "metadata": {
    "id": "8iRwKn9Wpsl8",
    "papermill": {
     "duration": 0.083357,
     "end_time": "2024-05-06T14:47:50.358328",
     "exception": false,
     "start_time": "2024-05-06T14:47:50.274971",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "O trabalho com pequenas amostras pode levar a não aceitação da validade do teorema central do limite e também na impossibilidade de fazer suposições sobre a distribuição da variável avaliada. Quando isso ocorre torna-se necessária a aplicação de testes não paramétricos. Nos testes não paramétricos, não fazemos hipóteses sobre a distribuição (de probabilidade) das quais as observações são extraídas."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "65fec174",
   "metadata": {
    "id": "ngqmtRxFpsl9",
    "papermill": {
     "duration": 0.083605,
     "end_time": "2024-05-06T14:47:50.529585",
     "exception": false,
     "start_time": "2024-05-06T14:47:50.445980",
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
   "id": "ce3c71fc",
   "metadata": {
    "id": "Al0BiC02psl9",
    "papermill": {
     "duration": 0.085505,
     "end_time": "2024-05-06T14:47:50.701433",
     "exception": false,
     "start_time": "2024-05-06T14:47:50.615928",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Antes de cada partida do campeonato nacional de futebol, as moedas utilizadas pelos árbitros devem ser verificadas para se ter certeza de que não são viciadas, ou seja, que não tendam para determinado resultado. Para isso um teste simples deve ser realizado antes de cada partida. Este teste consiste em lançar a moeda do jogo **50 vezes** e contar as frequências de **CARAS** e **COROAS** obtidas. A tabela abaixo mostra o resultado obtido no experimento:\n",
    "\n",
    "||CARA|COROA|\n",
    "|-|-|-|\n",
    "|Observado|17|33|\n",
    "|Esperado|25|25|\n",
    "\n",
    "A um **nível de significância de 5%**, é possível afirmar que a moeda não é honesta, isto é, que a moeda apresenta uma probabilidade maior de cair com a face **CARA** voltada para cima?"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "b294fe4e",
   "metadata": {
    "id": "56KA3Hnupsl9",
    "papermill": {
     "duration": 0.087488,
     "end_time": "2024-05-06T14:47:50.874977",
     "exception": false,
     "start_time": "2024-05-06T14:47:50.787489",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## <font color=green>4.1 Teste do Qui-Quadrado ( $\\chi^2$)</font>\n",
    "***"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "6221d046",
   "metadata": {
    "id": "GxTlvB4Zpsl9",
    "papermill": {
     "duration": 0.09095,
     "end_time": "2024-05-06T14:47:51.051990",
     "exception": false,
     "start_time": "2024-05-06T14:47:50.961040",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Também conhecido como teste de adequação ao ajustamento, seu nome se deve ao fato de utilizar uma variável estatística padronizada, representada pela letra grega qui ( $\\chi$) elevada ao quadrado. A tabela com os valores padronizados e como obtê-la podem ser vistos logo abaixo.\n",
    "\n",
    "O teste do $\\chi^2$ testa a hipótese nula de não haver diferença entre as frequências observadas de um determinado evento e as frequências que são realmente esperadas para este evento.\n",
    "\n",
    "Os passos de aplicação do teste são bem parecidos aos vistos para os testes paramétricos.\n",
    "\n",
    "![Região de Aceitação](https://caelum-online-public.s3.amazonaws.com/1229-estatistica-parte3/01/img017.png)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "aef02638",
   "metadata": {
    "id": "1lbHtKGfpsl9",
    "papermill": {
     "duration": 0.083334,
     "end_time": "2024-05-06T14:47:51.234330",
     "exception": false,
     "start_time": "2024-05-06T14:47:51.150996",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Construindo tabela $\\chi^2$\n",
    "\n",
    "#### <font color=red>Documentações:\n",
    "\n",
    "- [**Chisquare**](https://www.rdocumentation.org/packages/stats/versions/3.6.1/topics/Chisquare)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 77,
   "id": "30886f33",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:47:51.405954Z",
     "iopub.status.busy": "2024-05-06T14:47:51.403917Z",
     "iopub.status.idle": "2024-05-06T14:47:51.494437Z",
     "shell.execute_reply": "2024-05-06T14:47:51.491532Z"
    },
    "papermill": {
     "duration": 0.180859,
     "end_time": "2024-05-06T14:47:51.497937",
     "exception": false,
     "start_time": "2024-05-06T14:47:51.317078",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A matrix: 30 × 13 of type dbl</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>0.005</th><th scope=col>0.010</th><th scope=col>0.025</th><th scope=col>0.050</th><th scope=col>0.100</th><th scope=col>0.250</th><th scope=col>0.500</th><th scope=col>0.750</th><th scope=col>0.900</th><th scope=col>0.975</th><th scope=col>0.950</th><th scope=col>0.990</th><th scope=col>0.995</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row> 1</th><td> 0.0000</td><td> 0.0002</td><td> 0.0010</td><td> 0.0039</td><td> 0.0158</td><td> 0.1015</td><td> 0.4549</td><td> 1.3233</td><td> 2.7055</td><td> 5.0239</td><td> 3.8415</td><td> 6.6349</td><td> 7.8794</td></tr>\n",
       "\t<tr><th scope=row> 2</th><td> 0.0100</td><td> 0.0201</td><td> 0.0506</td><td> 0.1026</td><td> 0.2107</td><td> 0.5754</td><td> 1.3863</td><td> 2.7726</td><td> 4.6052</td><td> 7.3778</td><td> 5.9915</td><td> 9.2103</td><td>10.5966</td></tr>\n",
       "\t<tr><th scope=row> 3</th><td> 0.0717</td><td> 0.1148</td><td> 0.2158</td><td> 0.3518</td><td> 0.5844</td><td> 1.2125</td><td> 2.3660</td><td> 4.1083</td><td> 6.2514</td><td> 9.3484</td><td> 7.8147</td><td>11.3449</td><td>12.8382</td></tr>\n",
       "\t<tr><th scope=row> 4</th><td> 0.2070</td><td> 0.2971</td><td> 0.4844</td><td> 0.7107</td><td> 1.0636</td><td> 1.9226</td><td> 3.3567</td><td> 5.3853</td><td> 7.7794</td><td>11.1433</td><td> 9.4877</td><td>13.2767</td><td>14.8603</td></tr>\n",
       "\t<tr><th scope=row> 5</th><td> 0.4117</td><td> 0.5543</td><td> 0.8312</td><td> 1.1455</td><td> 1.6103</td><td> 2.6746</td><td> 4.3515</td><td> 6.6257</td><td> 9.2364</td><td>12.8325</td><td>11.0705</td><td>15.0863</td><td>16.7496</td></tr>\n",
       "\t<tr><th scope=row> 6</th><td> 0.6757</td><td> 0.8721</td><td> 1.2373</td><td> 1.6354</td><td> 2.2041</td><td> 3.4546</td><td> 5.3481</td><td> 7.8408</td><td>10.6446</td><td>14.4494</td><td>12.5916</td><td>16.8119</td><td>18.5476</td></tr>\n",
       "\t<tr><th scope=row> 7</th><td> 0.9893</td><td> 1.2390</td><td> 1.6899</td><td> 2.1673</td><td> 2.8331</td><td> 4.2549</td><td> 6.3458</td><td> 9.0371</td><td>12.0170</td><td>16.0128</td><td>14.0671</td><td>18.4753</td><td>20.2777</td></tr>\n",
       "\t<tr><th scope=row> 8</th><td> 1.3444</td><td> 1.6465</td><td> 2.1797</td><td> 2.7326</td><td> 3.4895</td><td> 5.0706</td><td> 7.3441</td><td>10.2189</td><td>13.3616</td><td>17.5345</td><td>15.5073</td><td>20.0902</td><td>21.9550</td></tr>\n",
       "\t<tr><th scope=row> 9</th><td> 1.7349</td><td> 2.0879</td><td> 2.7004</td><td> 3.3251</td><td> 4.1682</td><td> 5.8988</td><td> 8.3428</td><td>11.3888</td><td>14.6837</td><td>19.0228</td><td>16.9190</td><td>21.6660</td><td>23.5894</td></tr>\n",
       "\t<tr><th scope=row>10</th><td> 2.1559</td><td> 2.5582</td><td> 3.2470</td><td> 3.9403</td><td> 4.8652</td><td> 6.7372</td><td> 9.3418</td><td>12.5489</td><td>15.9872</td><td>20.4832</td><td>18.3070</td><td>23.2093</td><td>25.1882</td></tr>\n",
       "\t<tr><th scope=row>11</th><td> 2.6032</td><td> 3.0535</td><td> 3.8157</td><td> 4.5748</td><td> 5.5778</td><td> 7.5841</td><td>10.3410</td><td>13.7007</td><td>17.2750</td><td>21.9200</td><td>19.6751</td><td>24.7250</td><td>26.7568</td></tr>\n",
       "\t<tr><th scope=row>12</th><td> 3.0738</td><td> 3.5706</td><td> 4.4038</td><td> 5.2260</td><td> 6.3038</td><td> 8.4384</td><td>11.3403</td><td>14.8454</td><td>18.5493</td><td>23.3367</td><td>21.0261</td><td>26.2170</td><td>28.2995</td></tr>\n",
       "\t<tr><th scope=row>13</th><td> 3.5650</td><td> 4.1069</td><td> 5.0088</td><td> 5.8919</td><td> 7.0415</td><td> 9.2991</td><td>12.3398</td><td>15.9839</td><td>19.8119</td><td>24.7356</td><td>22.3620</td><td>27.6882</td><td>29.8195</td></tr>\n",
       "\t<tr><th scope=row>14</th><td> 4.0747</td><td> 4.6604</td><td> 5.6287</td><td> 6.5706</td><td> 7.7895</td><td>10.1653</td><td>13.3393</td><td>17.1169</td><td>21.0641</td><td>26.1189</td><td>23.6848</td><td>29.1412</td><td>31.3193</td></tr>\n",
       "\t<tr><th scope=row>15</th><td> 4.6009</td><td> 5.2293</td><td> 6.2621</td><td> 7.2609</td><td> 8.5468</td><td>11.0365</td><td>14.3389</td><td>18.2451</td><td>22.3071</td><td>27.4884</td><td>24.9958</td><td>30.5779</td><td>32.8013</td></tr>\n",
       "\t<tr><th scope=row>16</th><td> 5.1422</td><td> 5.8122</td><td> 6.9077</td><td> 7.9616</td><td> 9.3122</td><td>11.9122</td><td>15.3385</td><td>19.3689</td><td>23.5418</td><td>28.8454</td><td>26.2962</td><td>31.9999</td><td>34.2672</td></tr>\n",
       "\t<tr><th scope=row>17</th><td> 5.6972</td><td> 6.4078</td><td> 7.5642</td><td> 8.6718</td><td>10.0852</td><td>12.7919</td><td>16.3382</td><td>20.4887</td><td>24.7690</td><td>30.1910</td><td>27.5871</td><td>33.4087</td><td>35.7185</td></tr>\n",
       "\t<tr><th scope=row>18</th><td> 6.2648</td><td> 7.0149</td><td> 8.2307</td><td> 9.3905</td><td>10.8649</td><td>13.6753</td><td>17.3379</td><td>21.6049</td><td>25.9894</td><td>31.5264</td><td>28.8693</td><td>34.8053</td><td>37.1565</td></tr>\n",
       "\t<tr><th scope=row>19</th><td> 6.8440</td><td> 7.6327</td><td> 8.9065</td><td>10.1170</td><td>11.6509</td><td>14.5620</td><td>18.3377</td><td>22.7178</td><td>27.2036</td><td>32.8523</td><td>30.1435</td><td>36.1909</td><td>38.5823</td></tr>\n",
       "\t<tr><th scope=row>20</th><td> 7.4338</td><td> 8.2604</td><td> 9.5908</td><td>10.8508</td><td>12.4426</td><td>15.4518</td><td>19.3374</td><td>23.8277</td><td>28.4120</td><td>34.1696</td><td>31.4104</td><td>37.5662</td><td>39.9968</td></tr>\n",
       "\t<tr><th scope=row>21</th><td> 8.0337</td><td> 8.8972</td><td>10.2829</td><td>11.5913</td><td>13.2396</td><td>16.3444</td><td>20.3372</td><td>24.9348</td><td>29.6151</td><td>35.4789</td><td>32.6706</td><td>38.9322</td><td>41.4011</td></tr>\n",
       "\t<tr><th scope=row>22</th><td> 8.6427</td><td> 9.5425</td><td>10.9823</td><td>12.3380</td><td>14.0415</td><td>17.2396</td><td>21.3370</td><td>26.0393</td><td>30.8133</td><td>36.7807</td><td>33.9244</td><td>40.2894</td><td>42.7957</td></tr>\n",
       "\t<tr><th scope=row>23</th><td> 9.2604</td><td>10.1957</td><td>11.6886</td><td>13.0905</td><td>14.8480</td><td>18.1373</td><td>22.3369</td><td>27.1413</td><td>32.0069</td><td>38.0756</td><td>35.1725</td><td>41.6384</td><td>44.1813</td></tr>\n",
       "\t<tr><th scope=row>24</th><td> 9.8862</td><td>10.8564</td><td>12.4012</td><td>13.8484</td><td>15.6587</td><td>19.0373</td><td>23.3367</td><td>28.2412</td><td>33.1962</td><td>39.3641</td><td>36.4150</td><td>42.9798</td><td>45.5585</td></tr>\n",
       "\t<tr><th scope=row>25</th><td>10.5197</td><td>11.5240</td><td>13.1197</td><td>14.6114</td><td>16.4734</td><td>19.9393</td><td>24.3366</td><td>29.3389</td><td>34.3816</td><td>40.6465</td><td>37.6525</td><td>44.3141</td><td>46.9279</td></tr>\n",
       "\t<tr><th scope=row>26</th><td>11.1602</td><td>12.1981</td><td>13.8439</td><td>15.3792</td><td>17.2919</td><td>20.8434</td><td>25.3365</td><td>30.4346</td><td>35.5632</td><td>41.9232</td><td>38.8851</td><td>45.6417</td><td>48.2899</td></tr>\n",
       "\t<tr><th scope=row>27</th><td>11.8076</td><td>12.8785</td><td>14.5734</td><td>16.1514</td><td>18.1139</td><td>21.7494</td><td>26.3363</td><td>31.5284</td><td>36.7412</td><td>43.1945</td><td>40.1133</td><td>46.9629</td><td>49.6449</td></tr>\n",
       "\t<tr><th scope=row>28</th><td>12.4613</td><td>13.5647</td><td>15.3079</td><td>16.9279</td><td>18.9392</td><td>22.6572</td><td>27.3362</td><td>32.6205</td><td>37.9159</td><td>44.4608</td><td>41.3371</td><td>48.2782</td><td>50.9934</td></tr>\n",
       "\t<tr><th scope=row>29</th><td>13.1211</td><td>14.2565</td><td>16.0471</td><td>17.7084</td><td>19.7677</td><td>23.5666</td><td>28.3361</td><td>33.7109</td><td>39.0875</td><td>45.7223</td><td>42.5570</td><td>49.5879</td><td>52.3356</td></tr>\n",
       "\t<tr><th scope=row>30</th><td>13.7867</td><td>14.9535</td><td>16.7908</td><td>18.4927</td><td>20.5992</td><td>24.4776</td><td>29.3360</td><td>34.7997</td><td>40.2560</td><td>46.9792</td><td>43.7730</td><td>50.8922</td><td>53.6720</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A matrix: 30 × 13 of type dbl\n",
       "\\begin{tabular}{r|lllllllllllll}\n",
       "  & 0.005 & 0.010 & 0.025 & 0.050 & 0.100 & 0.250 & 0.500 & 0.750 & 0.900 & 0.975 & 0.950 & 0.990 & 0.995\\\\\n",
       "\\hline\n",
       "\t 1 &  0.0000 &  0.0002 &  0.0010 &  0.0039 &  0.0158 &  0.1015 &  0.4549 &  1.3233 &  2.7055 &  5.0239 &  3.8415 &  6.6349 &  7.8794\\\\\n",
       "\t 2 &  0.0100 &  0.0201 &  0.0506 &  0.1026 &  0.2107 &  0.5754 &  1.3863 &  2.7726 &  4.6052 &  7.3778 &  5.9915 &  9.2103 & 10.5966\\\\\n",
       "\t 3 &  0.0717 &  0.1148 &  0.2158 &  0.3518 &  0.5844 &  1.2125 &  2.3660 &  4.1083 &  6.2514 &  9.3484 &  7.8147 & 11.3449 & 12.8382\\\\\n",
       "\t 4 &  0.2070 &  0.2971 &  0.4844 &  0.7107 &  1.0636 &  1.9226 &  3.3567 &  5.3853 &  7.7794 & 11.1433 &  9.4877 & 13.2767 & 14.8603\\\\\n",
       "\t 5 &  0.4117 &  0.5543 &  0.8312 &  1.1455 &  1.6103 &  2.6746 &  4.3515 &  6.6257 &  9.2364 & 12.8325 & 11.0705 & 15.0863 & 16.7496\\\\\n",
       "\t 6 &  0.6757 &  0.8721 &  1.2373 &  1.6354 &  2.2041 &  3.4546 &  5.3481 &  7.8408 & 10.6446 & 14.4494 & 12.5916 & 16.8119 & 18.5476\\\\\n",
       "\t 7 &  0.9893 &  1.2390 &  1.6899 &  2.1673 &  2.8331 &  4.2549 &  6.3458 &  9.0371 & 12.0170 & 16.0128 & 14.0671 & 18.4753 & 20.2777\\\\\n",
       "\t 8 &  1.3444 &  1.6465 &  2.1797 &  2.7326 &  3.4895 &  5.0706 &  7.3441 & 10.2189 & 13.3616 & 17.5345 & 15.5073 & 20.0902 & 21.9550\\\\\n",
       "\t 9 &  1.7349 &  2.0879 &  2.7004 &  3.3251 &  4.1682 &  5.8988 &  8.3428 & 11.3888 & 14.6837 & 19.0228 & 16.9190 & 21.6660 & 23.5894\\\\\n",
       "\t10 &  2.1559 &  2.5582 &  3.2470 &  3.9403 &  4.8652 &  6.7372 &  9.3418 & 12.5489 & 15.9872 & 20.4832 & 18.3070 & 23.2093 & 25.1882\\\\\n",
       "\t11 &  2.6032 &  3.0535 &  3.8157 &  4.5748 &  5.5778 &  7.5841 & 10.3410 & 13.7007 & 17.2750 & 21.9200 & 19.6751 & 24.7250 & 26.7568\\\\\n",
       "\t12 &  3.0738 &  3.5706 &  4.4038 &  5.2260 &  6.3038 &  8.4384 & 11.3403 & 14.8454 & 18.5493 & 23.3367 & 21.0261 & 26.2170 & 28.2995\\\\\n",
       "\t13 &  3.5650 &  4.1069 &  5.0088 &  5.8919 &  7.0415 &  9.2991 & 12.3398 & 15.9839 & 19.8119 & 24.7356 & 22.3620 & 27.6882 & 29.8195\\\\\n",
       "\t14 &  4.0747 &  4.6604 &  5.6287 &  6.5706 &  7.7895 & 10.1653 & 13.3393 & 17.1169 & 21.0641 & 26.1189 & 23.6848 & 29.1412 & 31.3193\\\\\n",
       "\t15 &  4.6009 &  5.2293 &  6.2621 &  7.2609 &  8.5468 & 11.0365 & 14.3389 & 18.2451 & 22.3071 & 27.4884 & 24.9958 & 30.5779 & 32.8013\\\\\n",
       "\t16 &  5.1422 &  5.8122 &  6.9077 &  7.9616 &  9.3122 & 11.9122 & 15.3385 & 19.3689 & 23.5418 & 28.8454 & 26.2962 & 31.9999 & 34.2672\\\\\n",
       "\t17 &  5.6972 &  6.4078 &  7.5642 &  8.6718 & 10.0852 & 12.7919 & 16.3382 & 20.4887 & 24.7690 & 30.1910 & 27.5871 & 33.4087 & 35.7185\\\\\n",
       "\t18 &  6.2648 &  7.0149 &  8.2307 &  9.3905 & 10.8649 & 13.6753 & 17.3379 & 21.6049 & 25.9894 & 31.5264 & 28.8693 & 34.8053 & 37.1565\\\\\n",
       "\t19 &  6.8440 &  7.6327 &  8.9065 & 10.1170 & 11.6509 & 14.5620 & 18.3377 & 22.7178 & 27.2036 & 32.8523 & 30.1435 & 36.1909 & 38.5823\\\\\n",
       "\t20 &  7.4338 &  8.2604 &  9.5908 & 10.8508 & 12.4426 & 15.4518 & 19.3374 & 23.8277 & 28.4120 & 34.1696 & 31.4104 & 37.5662 & 39.9968\\\\\n",
       "\t21 &  8.0337 &  8.8972 & 10.2829 & 11.5913 & 13.2396 & 16.3444 & 20.3372 & 24.9348 & 29.6151 & 35.4789 & 32.6706 & 38.9322 & 41.4011\\\\\n",
       "\t22 &  8.6427 &  9.5425 & 10.9823 & 12.3380 & 14.0415 & 17.2396 & 21.3370 & 26.0393 & 30.8133 & 36.7807 & 33.9244 & 40.2894 & 42.7957\\\\\n",
       "\t23 &  9.2604 & 10.1957 & 11.6886 & 13.0905 & 14.8480 & 18.1373 & 22.3369 & 27.1413 & 32.0069 & 38.0756 & 35.1725 & 41.6384 & 44.1813\\\\\n",
       "\t24 &  9.8862 & 10.8564 & 12.4012 & 13.8484 & 15.6587 & 19.0373 & 23.3367 & 28.2412 & 33.1962 & 39.3641 & 36.4150 & 42.9798 & 45.5585\\\\\n",
       "\t25 & 10.5197 & 11.5240 & 13.1197 & 14.6114 & 16.4734 & 19.9393 & 24.3366 & 29.3389 & 34.3816 & 40.6465 & 37.6525 & 44.3141 & 46.9279\\\\\n",
       "\t26 & 11.1602 & 12.1981 & 13.8439 & 15.3792 & 17.2919 & 20.8434 & 25.3365 & 30.4346 & 35.5632 & 41.9232 & 38.8851 & 45.6417 & 48.2899\\\\\n",
       "\t27 & 11.8076 & 12.8785 & 14.5734 & 16.1514 & 18.1139 & 21.7494 & 26.3363 & 31.5284 & 36.7412 & 43.1945 & 40.1133 & 46.9629 & 49.6449\\\\\n",
       "\t28 & 12.4613 & 13.5647 & 15.3079 & 16.9279 & 18.9392 & 22.6572 & 27.3362 & 32.6205 & 37.9159 & 44.4608 & 41.3371 & 48.2782 & 50.9934\\\\\n",
       "\t29 & 13.1211 & 14.2565 & 16.0471 & 17.7084 & 19.7677 & 23.5666 & 28.3361 & 33.7109 & 39.0875 & 45.7223 & 42.5570 & 49.5879 & 52.3356\\\\\n",
       "\t30 & 13.7867 & 14.9535 & 16.7908 & 18.4927 & 20.5992 & 24.4776 & 29.3360 & 34.7997 & 40.2560 & 46.9792 & 43.7730 & 50.8922 & 53.6720\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A matrix: 30 × 13 of type dbl\n",
       "\n",
       "| <!--/--> | 0.005 | 0.010 | 0.025 | 0.050 | 0.100 | 0.250 | 0.500 | 0.750 | 0.900 | 0.975 | 0.950 | 0.990 | 0.995 |\n",
       "|---|---|---|---|---|---|---|---|---|---|---|---|---|---|\n",
       "|  1 |  0.0000 |  0.0002 |  0.0010 |  0.0039 |  0.0158 |  0.1015 |  0.4549 |  1.3233 |  2.7055 |  5.0239 |  3.8415 |  6.6349 |  7.8794 |\n",
       "|  2 |  0.0100 |  0.0201 |  0.0506 |  0.1026 |  0.2107 |  0.5754 |  1.3863 |  2.7726 |  4.6052 |  7.3778 |  5.9915 |  9.2103 | 10.5966 |\n",
       "|  3 |  0.0717 |  0.1148 |  0.2158 |  0.3518 |  0.5844 |  1.2125 |  2.3660 |  4.1083 |  6.2514 |  9.3484 |  7.8147 | 11.3449 | 12.8382 |\n",
       "|  4 |  0.2070 |  0.2971 |  0.4844 |  0.7107 |  1.0636 |  1.9226 |  3.3567 |  5.3853 |  7.7794 | 11.1433 |  9.4877 | 13.2767 | 14.8603 |\n",
       "|  5 |  0.4117 |  0.5543 |  0.8312 |  1.1455 |  1.6103 |  2.6746 |  4.3515 |  6.6257 |  9.2364 | 12.8325 | 11.0705 | 15.0863 | 16.7496 |\n",
       "|  6 |  0.6757 |  0.8721 |  1.2373 |  1.6354 |  2.2041 |  3.4546 |  5.3481 |  7.8408 | 10.6446 | 14.4494 | 12.5916 | 16.8119 | 18.5476 |\n",
       "|  7 |  0.9893 |  1.2390 |  1.6899 |  2.1673 |  2.8331 |  4.2549 |  6.3458 |  9.0371 | 12.0170 | 16.0128 | 14.0671 | 18.4753 | 20.2777 |\n",
       "|  8 |  1.3444 |  1.6465 |  2.1797 |  2.7326 |  3.4895 |  5.0706 |  7.3441 | 10.2189 | 13.3616 | 17.5345 | 15.5073 | 20.0902 | 21.9550 |\n",
       "|  9 |  1.7349 |  2.0879 |  2.7004 |  3.3251 |  4.1682 |  5.8988 |  8.3428 | 11.3888 | 14.6837 | 19.0228 | 16.9190 | 21.6660 | 23.5894 |\n",
       "| 10 |  2.1559 |  2.5582 |  3.2470 |  3.9403 |  4.8652 |  6.7372 |  9.3418 | 12.5489 | 15.9872 | 20.4832 | 18.3070 | 23.2093 | 25.1882 |\n",
       "| 11 |  2.6032 |  3.0535 |  3.8157 |  4.5748 |  5.5778 |  7.5841 | 10.3410 | 13.7007 | 17.2750 | 21.9200 | 19.6751 | 24.7250 | 26.7568 |\n",
       "| 12 |  3.0738 |  3.5706 |  4.4038 |  5.2260 |  6.3038 |  8.4384 | 11.3403 | 14.8454 | 18.5493 | 23.3367 | 21.0261 | 26.2170 | 28.2995 |\n",
       "| 13 |  3.5650 |  4.1069 |  5.0088 |  5.8919 |  7.0415 |  9.2991 | 12.3398 | 15.9839 | 19.8119 | 24.7356 | 22.3620 | 27.6882 | 29.8195 |\n",
       "| 14 |  4.0747 |  4.6604 |  5.6287 |  6.5706 |  7.7895 | 10.1653 | 13.3393 | 17.1169 | 21.0641 | 26.1189 | 23.6848 | 29.1412 | 31.3193 |\n",
       "| 15 |  4.6009 |  5.2293 |  6.2621 |  7.2609 |  8.5468 | 11.0365 | 14.3389 | 18.2451 | 22.3071 | 27.4884 | 24.9958 | 30.5779 | 32.8013 |\n",
       "| 16 |  5.1422 |  5.8122 |  6.9077 |  7.9616 |  9.3122 | 11.9122 | 15.3385 | 19.3689 | 23.5418 | 28.8454 | 26.2962 | 31.9999 | 34.2672 |\n",
       "| 17 |  5.6972 |  6.4078 |  7.5642 |  8.6718 | 10.0852 | 12.7919 | 16.3382 | 20.4887 | 24.7690 | 30.1910 | 27.5871 | 33.4087 | 35.7185 |\n",
       "| 18 |  6.2648 |  7.0149 |  8.2307 |  9.3905 | 10.8649 | 13.6753 | 17.3379 | 21.6049 | 25.9894 | 31.5264 | 28.8693 | 34.8053 | 37.1565 |\n",
       "| 19 |  6.8440 |  7.6327 |  8.9065 | 10.1170 | 11.6509 | 14.5620 | 18.3377 | 22.7178 | 27.2036 | 32.8523 | 30.1435 | 36.1909 | 38.5823 |\n",
       "| 20 |  7.4338 |  8.2604 |  9.5908 | 10.8508 | 12.4426 | 15.4518 | 19.3374 | 23.8277 | 28.4120 | 34.1696 | 31.4104 | 37.5662 | 39.9968 |\n",
       "| 21 |  8.0337 |  8.8972 | 10.2829 | 11.5913 | 13.2396 | 16.3444 | 20.3372 | 24.9348 | 29.6151 | 35.4789 | 32.6706 | 38.9322 | 41.4011 |\n",
       "| 22 |  8.6427 |  9.5425 | 10.9823 | 12.3380 | 14.0415 | 17.2396 | 21.3370 | 26.0393 | 30.8133 | 36.7807 | 33.9244 | 40.2894 | 42.7957 |\n",
       "| 23 |  9.2604 | 10.1957 | 11.6886 | 13.0905 | 14.8480 | 18.1373 | 22.3369 | 27.1413 | 32.0069 | 38.0756 | 35.1725 | 41.6384 | 44.1813 |\n",
       "| 24 |  9.8862 | 10.8564 | 12.4012 | 13.8484 | 15.6587 | 19.0373 | 23.3367 | 28.2412 | 33.1962 | 39.3641 | 36.4150 | 42.9798 | 45.5585 |\n",
       "| 25 | 10.5197 | 11.5240 | 13.1197 | 14.6114 | 16.4734 | 19.9393 | 24.3366 | 29.3389 | 34.3816 | 40.6465 | 37.6525 | 44.3141 | 46.9279 |\n",
       "| 26 | 11.1602 | 12.1981 | 13.8439 | 15.3792 | 17.2919 | 20.8434 | 25.3365 | 30.4346 | 35.5632 | 41.9232 | 38.8851 | 45.6417 | 48.2899 |\n",
       "| 27 | 11.8076 | 12.8785 | 14.5734 | 16.1514 | 18.1139 | 21.7494 | 26.3363 | 31.5284 | 36.7412 | 43.1945 | 40.1133 | 46.9629 | 49.6449 |\n",
       "| 28 | 12.4613 | 13.5647 | 15.3079 | 16.9279 | 18.9392 | 22.6572 | 27.3362 | 32.6205 | 37.9159 | 44.4608 | 41.3371 | 48.2782 | 50.9934 |\n",
       "| 29 | 13.1211 | 14.2565 | 16.0471 | 17.7084 | 19.7677 | 23.5666 | 28.3361 | 33.7109 | 39.0875 | 45.7223 | 42.5570 | 49.5879 | 52.3356 |\n",
       "| 30 | 13.7867 | 14.9535 | 16.7908 | 18.4927 | 20.5992 | 24.4776 | 29.3360 | 34.7997 | 40.2560 | 46.9792 | 43.7730 | 50.8922 | 53.6720 |\n",
       "\n"
      ],
      "text/plain": [
       "   0.005   0.010   0.025   0.050   0.100   0.250   0.500   0.750   0.900  \n",
       " 1  0.0000  0.0002  0.0010  0.0039  0.0158  0.1015  0.4549  1.3233  2.7055\n",
       " 2  0.0100  0.0201  0.0506  0.1026  0.2107  0.5754  1.3863  2.7726  4.6052\n",
       " 3  0.0717  0.1148  0.2158  0.3518  0.5844  1.2125  2.3660  4.1083  6.2514\n",
       " 4  0.2070  0.2971  0.4844  0.7107  1.0636  1.9226  3.3567  5.3853  7.7794\n",
       " 5  0.4117  0.5543  0.8312  1.1455  1.6103  2.6746  4.3515  6.6257  9.2364\n",
       " 6  0.6757  0.8721  1.2373  1.6354  2.2041  3.4546  5.3481  7.8408 10.6446\n",
       " 7  0.9893  1.2390  1.6899  2.1673  2.8331  4.2549  6.3458  9.0371 12.0170\n",
       " 8  1.3444  1.6465  2.1797  2.7326  3.4895  5.0706  7.3441 10.2189 13.3616\n",
       " 9  1.7349  2.0879  2.7004  3.3251  4.1682  5.8988  8.3428 11.3888 14.6837\n",
       "10  2.1559  2.5582  3.2470  3.9403  4.8652  6.7372  9.3418 12.5489 15.9872\n",
       "11  2.6032  3.0535  3.8157  4.5748  5.5778  7.5841 10.3410 13.7007 17.2750\n",
       "12  3.0738  3.5706  4.4038  5.2260  6.3038  8.4384 11.3403 14.8454 18.5493\n",
       "13  3.5650  4.1069  5.0088  5.8919  7.0415  9.2991 12.3398 15.9839 19.8119\n",
       "14  4.0747  4.6604  5.6287  6.5706  7.7895 10.1653 13.3393 17.1169 21.0641\n",
       "15  4.6009  5.2293  6.2621  7.2609  8.5468 11.0365 14.3389 18.2451 22.3071\n",
       "16  5.1422  5.8122  6.9077  7.9616  9.3122 11.9122 15.3385 19.3689 23.5418\n",
       "17  5.6972  6.4078  7.5642  8.6718 10.0852 12.7919 16.3382 20.4887 24.7690\n",
       "18  6.2648  7.0149  8.2307  9.3905 10.8649 13.6753 17.3379 21.6049 25.9894\n",
       "19  6.8440  7.6327  8.9065 10.1170 11.6509 14.5620 18.3377 22.7178 27.2036\n",
       "20  7.4338  8.2604  9.5908 10.8508 12.4426 15.4518 19.3374 23.8277 28.4120\n",
       "21  8.0337  8.8972 10.2829 11.5913 13.2396 16.3444 20.3372 24.9348 29.6151\n",
       "22  8.6427  9.5425 10.9823 12.3380 14.0415 17.2396 21.3370 26.0393 30.8133\n",
       "23  9.2604 10.1957 11.6886 13.0905 14.8480 18.1373 22.3369 27.1413 32.0069\n",
       "24  9.8862 10.8564 12.4012 13.8484 15.6587 19.0373 23.3367 28.2412 33.1962\n",
       "25 10.5197 11.5240 13.1197 14.6114 16.4734 19.9393 24.3366 29.3389 34.3816\n",
       "26 11.1602 12.1981 13.8439 15.3792 17.2919 20.8434 25.3365 30.4346 35.5632\n",
       "27 11.8076 12.8785 14.5734 16.1514 18.1139 21.7494 26.3363 31.5284 36.7412\n",
       "28 12.4613 13.5647 15.3079 16.9279 18.9392 22.6572 27.3362 32.6205 37.9159\n",
       "29 13.1211 14.2565 16.0471 17.7084 19.7677 23.5666 28.3361 33.7109 39.0875\n",
       "30 13.7867 14.9535 16.7908 18.4927 20.5992 24.4776 29.3360 34.7997 40.2560\n",
       "   0.975   0.950   0.990   0.995  \n",
       " 1  5.0239  3.8415  6.6349  7.8794\n",
       " 2  7.3778  5.9915  9.2103 10.5966\n",
       " 3  9.3484  7.8147 11.3449 12.8382\n",
       " 4 11.1433  9.4877 13.2767 14.8603\n",
       " 5 12.8325 11.0705 15.0863 16.7496\n",
       " 6 14.4494 12.5916 16.8119 18.5476\n",
       " 7 16.0128 14.0671 18.4753 20.2777\n",
       " 8 17.5345 15.5073 20.0902 21.9550\n",
       " 9 19.0228 16.9190 21.6660 23.5894\n",
       "10 20.4832 18.3070 23.2093 25.1882\n",
       "11 21.9200 19.6751 24.7250 26.7568\n",
       "12 23.3367 21.0261 26.2170 28.2995\n",
       "13 24.7356 22.3620 27.6882 29.8195\n",
       "14 26.1189 23.6848 29.1412 31.3193\n",
       "15 27.4884 24.9958 30.5779 32.8013\n",
       "16 28.8454 26.2962 31.9999 34.2672\n",
       "17 30.1910 27.5871 33.4087 35.7185\n",
       "18 31.5264 28.8693 34.8053 37.1565\n",
       "19 32.8523 30.1435 36.1909 38.5823\n",
       "20 34.1696 31.4104 37.5662 39.9968\n",
       "21 35.4789 32.6706 38.9322 41.4011\n",
       "22 36.7807 33.9244 40.2894 42.7957\n",
       "23 38.0756 35.1725 41.6384 44.1813\n",
       "24 39.3641 36.4150 42.9798 45.5585\n",
       "25 40.6465 37.6525 44.3141 46.9279\n",
       "26 41.9232 38.8851 45.6417 48.2899\n",
       "27 43.1945 40.1133 46.9629 49.6449\n",
       "28 44.4608 41.3371 48.2782 50.9934\n",
       "29 45.7223 42.5570 49.5879 52.3356\n",
       "30 46.9792 43.7730 50.8922 53.6720"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "p <- c(0.005, 0.01, 0.025, 0.05, 0.1, 0.25, 0.5, 0.75, 0.9, 0.975, 0.95, 0.99, 0.995)\n",
    "df <- seq(1, 30, by = 1)\n",
    "probabilidade <- c()\n",
    "for(i in df){\n",
    "    for(j in p){\n",
    "        probabilidade <- c(probabilidade, round(qchisq(j, i, lower.tail = T), 4))\n",
    "    }\n",
    "}\n",
    "tabela_chi_2 <- matrix(probabilidade, ncol=13, byrow=TRUE)\n",
    "colnames(tabela_chi_2) <- format(p)\n",
    "rownames(tabela_chi_2) <- format(df)\n",
    "tabela_chi_2"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "0c4c94e3",
   "metadata": {
    "id": "UkzhYAPDpsl_",
    "papermill": {
     "duration": 0.082619,
     "end_time": "2024-05-06T14:47:51.663959",
     "exception": false,
     "start_time": "2024-05-06T14:47:51.581340",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "<img src='https://caelum-online-public.s3.amazonaws.com/1229-estatistica-parte3/01/img016.png' width='250px'>\n",
    "\n",
    "Tabela com os valores de $\\chi_p^2$ em função dos graus de liberdade $(n - 1)$ e de $p = P(\\chi^2 \\leq \\chi_p^2)$"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "da8f2658",
   "metadata": {
    "id": "cCPOqVFKpsl_",
    "papermill": {
     "duration": 0.083924,
     "end_time": "2024-05-06T14:47:51.830089",
     "exception": false,
     "start_time": "2024-05-06T14:47:51.746165",
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
   "id": "e366a5e3",
   "metadata": {
    "id": "GTq1wpkbpsl_",
    "papermill": {
     "duration": 0.085193,
     "end_time": "2024-05-06T14:47:51.998726",
     "exception": false,
     "start_time": "2024-05-06T14:47:51.913533",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Antes de cada partida do campeonato nacional de futebol, as moedas utilizadas pelos árbitros devem ser verificadas para se ter certeza de que não são viciadas, ou seja, que não tendam para determinado resultado. Para isso um teste simples deve ser realizado antes de cada partida. Este teste consiste em lançar a moeda do jogo **50 vezes** e contar as frequências de **CARAS** e **COROAS** obtidas. A tabela abaixo mostra o resultado obtido no experimento:\n",
    "\n",
    "||CARA|COROA|\n",
    "|-|-|-|\n",
    "|Observado|17|33|\n",
    "|Esperado|25|25|\n",
    "\n",
    "A um **nível de significância de 5%**, é possível afirmar que a moeda não é honesta, isto é, que a moeda apresenta uma probabilidade maior de cair com a face **CARA** voltada para cima?"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "47612582",
   "metadata": {
    "id": "CSlCI1wUpsl_",
    "papermill": {
     "duration": 0.0844,
     "end_time": "2024-05-06T14:47:52.171498",
     "exception": false,
     "start_time": "2024-05-06T14:47:52.087098",
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
   "id": "a873b984",
   "metadata": {
    "id": "Op26YDWnpsmA",
    "papermill": {
     "duration": 0.083205,
     "end_time": "2024-05-06T14:47:52.338583",
     "exception": false,
     "start_time": "2024-05-06T14:47:52.255378",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Dados do problema"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 78,
   "id": "04facc69",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:47:52.520084Z",
     "iopub.status.busy": "2024-05-06T14:47:52.518112Z",
     "iopub.status.idle": "2024-05-06T14:47:52.545305Z",
     "shell.execute_reply": "2024-05-06T14:47:52.543174Z"
    },
    "id": "p5iOqxk2psmA",
    "papermill": {
     "duration": 0.123949,
     "end_time": "2024-05-06T14:47:52.548926",
     "exception": false,
     "start_time": "2024-05-06T14:47:52.424977",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "F_Observada <- c(17, 33)\n",
    "F_Esperada <- c(25, 25)\n",
    "significancia <- 0.05\n",
    "confianca <- 1 - significancia\n",
    "k <- 2 # Número de eventos possíveis\n",
    "graus_de_liberdade <- k - 1"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "21352fb5",
   "metadata": {
    "id": "w6A74pM-psmB",
    "papermill": {
     "duration": 0.086595,
     "end_time": "2024-05-06T14:47:52.719798",
     "exception": false,
     "start_time": "2024-05-06T14:47:52.633203",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### **Passo 1** - formulação das hipóteses $H_0$ e $H_1$\n",
    "\n",
    "#### <font color='red'>Lembre-se, a hipótese nula sempre contém a alegação de igualdade</font>"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "1e919d97",
   "metadata": {
    "id": "zA4AD5_8psmB",
    "papermill": {
     "duration": 0.082936,
     "end_time": "2024-05-06T14:47:52.887086",
     "exception": false,
     "start_time": "2024-05-06T14:47:52.804150",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### $H_0: F_{CARA} = F_{COROA}$\n",
    "\n",
    "### $H_1: F_{CARA} \\neq F_{COROA}$"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "2a1a14f2",
   "metadata": {
    "id": "rUtuw6_bpsmB",
    "papermill": {
     "duration": 0.085229,
     "end_time": "2024-05-06T14:47:53.056475",
     "exception": false,
     "start_time": "2024-05-06T14:47:52.971246",
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
   "id": "8f30672b",
   "metadata": {
    "id": "Zi2oE6ZbpsmB",
    "papermill": {
     "duration": 0.083097,
     "end_time": "2024-05-06T14:47:53.225481",
     "exception": false,
     "start_time": "2024-05-06T14:47:53.142384",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### **Passo 2** - fixação da significância do teste ($\\alpha$)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "42fee800",
   "metadata": {
    "id": "cCL8Wyy7psmC",
    "papermill": {
     "duration": 0.082556,
     "end_time": "2024-05-06T14:47:53.390770",
     "exception": false,
     "start_time": "2024-05-06T14:47:53.308214",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.chi.html"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 79,
   "id": "016cafef",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:47:53.568798Z",
     "iopub.status.busy": "2024-05-06T14:47:53.566914Z",
     "iopub.status.idle": "2024-05-06T14:47:53.595461Z",
     "shell.execute_reply": "2024-05-06T14:47:53.593318Z"
    },
    "id": "WRsJSXxGpsmE",
    "outputId": "106db812-4580-4e1f-e7d3-5070da776d1f",
    "papermill": {
     "duration": 0.11856,
     "end_time": "2024-05-06T14:47:53.599024",
     "exception": false,
     "start_time": "2024-05-06T14:47:53.480464",
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
       "<caption>A matrix: 3 × 13 of type dbl</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>0.005</th><th scope=col>0.010</th><th scope=col>0.025</th><th scope=col>0.050</th><th scope=col>0.100</th><th scope=col>0.250</th><th scope=col>0.500</th><th scope=col>0.750</th><th scope=col>0.900</th><th scope=col>0.975</th><th scope=col>0.950</th><th scope=col>0.990</th><th scope=col>0.995</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row> 1</th><td>0.0000</td><td>0.0002</td><td>0.0010</td><td>0.0039</td><td>0.0158</td><td>0.1015</td><td>0.4549</td><td>1.3233</td><td>2.7055</td><td>5.0239</td><td>3.8415</td><td> 6.6349</td><td> 7.8794</td></tr>\n",
       "\t<tr><th scope=row> 2</th><td>0.0100</td><td>0.0201</td><td>0.0506</td><td>0.1026</td><td>0.2107</td><td>0.5754</td><td>1.3863</td><td>2.7726</td><td>4.6052</td><td>7.3778</td><td>5.9915</td><td> 9.2103</td><td>10.5966</td></tr>\n",
       "\t<tr><th scope=row> 3</th><td>0.0717</td><td>0.1148</td><td>0.2158</td><td>0.3518</td><td>0.5844</td><td>1.2125</td><td>2.3660</td><td>4.1083</td><td>6.2514</td><td>9.3484</td><td>7.8147</td><td>11.3449</td><td>12.8382</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A matrix: 3 × 13 of type dbl\n",
       "\\begin{tabular}{r|lllllllllllll}\n",
       "  & 0.005 & 0.010 & 0.025 & 0.050 & 0.100 & 0.250 & 0.500 & 0.750 & 0.900 & 0.975 & 0.950 & 0.990 & 0.995\\\\\n",
       "\\hline\n",
       "\t 1 & 0.0000 & 0.0002 & 0.0010 & 0.0039 & 0.0158 & 0.1015 & 0.4549 & 1.3233 & 2.7055 & 5.0239 & 3.8415 &  6.6349 &  7.8794\\\\\n",
       "\t 2 & 0.0100 & 0.0201 & 0.0506 & 0.1026 & 0.2107 & 0.5754 & 1.3863 & 2.7726 & 4.6052 & 7.3778 & 5.9915 &  9.2103 & 10.5966\\\\\n",
       "\t 3 & 0.0717 & 0.1148 & 0.2158 & 0.3518 & 0.5844 & 1.2125 & 2.3660 & 4.1083 & 6.2514 & 9.3484 & 7.8147 & 11.3449 & 12.8382\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A matrix: 3 × 13 of type dbl\n",
       "\n",
       "| <!--/--> | 0.005 | 0.010 | 0.025 | 0.050 | 0.100 | 0.250 | 0.500 | 0.750 | 0.900 | 0.975 | 0.950 | 0.990 | 0.995 |\n",
       "|---|---|---|---|---|---|---|---|---|---|---|---|---|---|\n",
       "|  1 | 0.0000 | 0.0002 | 0.0010 | 0.0039 | 0.0158 | 0.1015 | 0.4549 | 1.3233 | 2.7055 | 5.0239 | 3.8415 |  6.6349 |  7.8794 |\n",
       "|  2 | 0.0100 | 0.0201 | 0.0506 | 0.1026 | 0.2107 | 0.5754 | 1.3863 | 2.7726 | 4.6052 | 7.3778 | 5.9915 |  9.2103 | 10.5966 |\n",
       "|  3 | 0.0717 | 0.1148 | 0.2158 | 0.3518 | 0.5844 | 1.2125 | 2.3660 | 4.1083 | 6.2514 | 9.3484 | 7.8147 | 11.3449 | 12.8382 |\n",
       "\n"
      ],
      "text/plain": [
       "   0.005  0.010  0.025  0.050  0.100  0.250  0.500  0.750  0.900  0.975  0.950 \n",
       " 1 0.0000 0.0002 0.0010 0.0039 0.0158 0.1015 0.4549 1.3233 2.7055 5.0239 3.8415\n",
       " 2 0.0100 0.0201 0.0506 0.1026 0.2107 0.5754 1.3863 2.7726 4.6052 7.3778 5.9915\n",
       " 3 0.0717 0.1148 0.2158 0.3518 0.5844 1.2125 2.3660 4.1083 6.2514 9.3484 7.8147\n",
       "   0.990   0.995  \n",
       " 1  6.6349  7.8794\n",
       " 2  9.2103 10.5966\n",
       " 3 11.3449 12.8382"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "tabela_chi_2[1:3, ]"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "f6311d1b",
   "metadata": {
    "id": "0RRjHQm7psmF",
    "papermill": {
     "duration": 0.084892,
     "end_time": "2024-05-06T14:47:53.767995",
     "exception": false,
     "start_time": "2024-05-06T14:47:53.683103",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Obtendo $\\chi_{\\alpha}^2$"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 80,
   "id": "c78b3fa7",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:47:53.944859Z",
     "iopub.status.busy": "2024-05-06T14:47:53.942988Z",
     "iopub.status.idle": "2024-05-06T14:47:53.967435Z",
     "shell.execute_reply": "2024-05-06T14:47:53.964701Z"
    },
    "papermill": {
     "duration": 0.114012,
     "end_time": "2024-05-06T14:47:53.970647",
     "exception": false,
     "start_time": "2024-05-06T14:47:53.856635",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "3.84145882069412"
      ],
      "text/latex": [
       "3.84145882069412"
      ],
      "text/markdown": [
       "3.84145882069412"
      ],
      "text/plain": [
       "[1] 3.841459"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "chi_2_alpha <- qchisq(confianca, graus_de_liberdade)\n",
    "chi_2_alpha"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "589dec6b",
   "metadata": {
    "id": "aHxm3ZCupsmJ",
    "papermill": {
     "duration": 0.084247,
     "end_time": "2024-05-06T14:47:54.137933",
     "exception": false,
     "start_time": "2024-05-06T14:47:54.053686",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "![Região de Aceitação](https://caelum-online-public.s3.amazonaws.com/1229-estatistica-parte3/01/img018.png)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "fa3d2a54",
   "metadata": {
    "id": "FxLr2OnDpsmJ",
    "papermill": {
     "duration": 0.084928,
     "end_time": "2024-05-06T14:47:54.305660",
     "exception": false,
     "start_time": "2024-05-06T14:47:54.220732",
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
   "id": "a0a8eb0f",
   "metadata": {
    "id": "JcUvBM5OpsmJ",
    "papermill": {
     "duration": 0.102104,
     "end_time": "2024-05-06T14:47:54.491896",
     "exception": false,
     "start_time": "2024-05-06T14:47:54.389792",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### **Passo 3** - cálculo da estatística-teste e verificação desse valor com as áreas de aceitação e rejeição do teste\n",
    "\n",
    "# $$\\chi^2 = \\sum_{i=1}^{k}{\\frac{(F_{i}^{Obs} - F_{i}^{Esp})^2}{F_{i}^{Esp}}}$$\n",
    "\n",
    "Onde\n",
    "\n",
    "$F_{i}^{Obs}$ = frequência observada para o evento $i$\n",
    "\n",
    "$F_{i}^{Esp}$ = frequência esperada para o evento $i$\n",
    "\n",
    "$k$ = total de eventos possíveis"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 81,
   "id": "2feb960e",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:47:54.678074Z",
     "iopub.status.busy": "2024-05-06T14:47:54.674890Z",
     "iopub.status.idle": "2024-05-06T14:47:54.713740Z",
     "shell.execute_reply": "2024-05-06T14:47:54.710554Z"
    },
    "id": "2b32Y6HiuT-u",
    "outputId": "785b6961-162e-4672-9a71-2110af6ed3f4",
    "papermill": {
     "duration": 0.130584,
     "end_time": "2024-05-06T14:47:54.717140",
     "exception": false,
     "start_time": "2024-05-06T14:47:54.586556",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "5.12"
      ],
      "text/latex": [
       "5.12"
      ],
      "text/markdown": [
       "5.12"
      ],
      "text/plain": [
       "[1] 5.12"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "chi_2 <- ( (F_Observada[1] - F_Esperada[1]) ** 2 / F_Esperada[1] ) + ( (F_Observada[2] - F_Esperada[2]) ** 2 / F_Esperada[2] )\n",
    "chi_2"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 82,
   "id": "10896c9e",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:47:54.906182Z",
     "iopub.status.busy": "2024-05-06T14:47:54.904084Z",
     "iopub.status.idle": "2024-05-06T14:47:54.943874Z",
     "shell.execute_reply": "2024-05-06T14:47:54.940662Z"
    },
    "id": "7eL97ts8psmJ",
    "outputId": "7667b7de-8e7b-46df-fe08-d84eecac6c83",
    "papermill": {
     "duration": 0.145086,
     "end_time": "2024-05-06T14:47:54.947220",
     "exception": false,
     "start_time": "2024-05-06T14:47:54.802134",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "5.12"
      ],
      "text/latex": [
       "5.12"
      ],
      "text/markdown": [
       "5.12"
      ],
      "text/plain": [
       "[1] 5.12"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "chi_2 = 0\n",
    "for(i in 1:k){\n",
    "    chi_2 <- chi_2 + (F_Observada[i] - F_Esperada[i]) ** 2 / F_Esperada[i] \n",
    "}\n",
    "chi_2"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "0b561d71",
   "metadata": {
    "id": "gdwiYn6ZpsmK",
    "papermill": {
     "duration": 0.089246,
     "end_time": "2024-05-06T14:47:55.129654",
     "exception": false,
     "start_time": "2024-05-06T14:47:55.040408",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "![Estatística-Teste](https://caelum-online-public.s3.amazonaws.com/1229-estatistica-parte3/01/img019.png)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "66f47899",
   "metadata": {
    "id": "7v6msKABpsmK",
    "papermill": {
     "duration": 0.083597,
     "end_time": "2024-05-06T14:47:55.301420",
     "exception": false,
     "start_time": "2024-05-06T14:47:55.217823",
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
   "id": "aae55bf2",
   "metadata": {
    "id": "PHLhbZ3IpsmK",
    "papermill": {
     "duration": 0.08956,
     "end_time": "2024-05-06T14:47:55.476010",
     "exception": false,
     "start_time": "2024-05-06T14:47:55.386450",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### **Passo 4** - Aceitação ou rejeição da hipótese nula"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "458149e6",
   "metadata": {
    "id": "tiQ0gAMGpsmL",
    "papermill": {
     "duration": 0.087521,
     "end_time": "2024-05-06T14:47:55.652878",
     "exception": false,
     "start_time": "2024-05-06T14:47:55.565357",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "<img src='https://caelum-online-public.s3.amazonaws.com/1229-estatistica-parte3/01/img020.png' width=80%>"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "27276d23",
   "metadata": {
    "id": "lhFLib7-psmM",
    "papermill": {
     "duration": 0.084653,
     "end_time": "2024-05-06T14:47:55.821623",
     "exception": false,
     "start_time": "2024-05-06T14:47:55.736970",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### <font color='red'>Critério do valor crítico</font>\n",
    "\n",
    "> ### Rejeitar $H_0$ se $\\chi_{teste}^2 > \\chi_{\\alpha}^2$"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 83,
   "id": "85d99fd1",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:47:55.995073Z",
     "iopub.status.busy": "2024-05-06T14:47:55.993059Z",
     "iopub.status.idle": "2024-05-06T14:47:56.013230Z",
     "shell.execute_reply": "2024-05-06T14:47:56.010994Z"
    },
    "id": "HSOhw7E7psmM",
    "outputId": "1b6ce243-ae51-4497-addd-3e7aae82f4f3",
    "papermill": {
     "duration": 0.111088,
     "end_time": "2024-05-06T14:47:56.016103",
     "exception": false,
     "start_time": "2024-05-06T14:47:55.905015",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "TRUE"
      ],
      "text/latex": [
       "TRUE"
      ],
      "text/markdown": [
       "TRUE"
      ],
      "text/plain": [
       "[1] TRUE"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "chi_2 > chi_2_alpha"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "e1aae444",
   "metadata": {
    "id": "hvHTGAOepsmN",
    "papermill": {
     "duration": 0.084167,
     "end_time": "2024-05-06T14:47:56.185711",
     "exception": false,
     "start_time": "2024-05-06T14:47:56.101544",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### <font color='green'>Conclusão: Com um nível de confiança de 95% rejeitamos a hipótese nula ($H_0$) e concluímos que as frequências observadas e esperadas são discrepantes, ou seja, a moeda não é honesta e precisa ser substituída.</font>"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "07bae86a",
   "metadata": {
    "id": "VcqxUxnopsmN",
    "papermill": {
     "duration": 0.085114,
     "end_time": "2024-05-06T14:47:56.355772",
     "exception": false,
     "start_time": "2024-05-06T14:47:56.270658",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### <font color='red'>Critério do valor $p$</font>\n",
    "\n",
    "> ### Rejeitar $H_0$ se o valor $p\\leq\\alpha$"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 84,
   "id": "9bccedb1",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:47:56.533914Z",
     "iopub.status.busy": "2024-05-06T14:47:56.532080Z",
     "iopub.status.idle": "2024-05-06T14:47:56.553525Z",
     "shell.execute_reply": "2024-05-06T14:47:56.550975Z"
    },
    "id": "fP8w-6MZpsmO",
    "outputId": "0cc2f80a-ab46-4485-b7da-f07a9a7085a9",
    "papermill": {
     "duration": 0.114854,
     "end_time": "2024-05-06T14:47:56.556980",
     "exception": false,
     "start_time": "2024-05-06T14:47:56.442126",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "5.12"
      ],
      "text/latex": [
       "5.12"
      ],
      "text/markdown": [
       "5.12"
      ],
      "text/plain": [
       "[1] 5.12"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "chi_2"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 85,
   "id": "0829ab80",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:47:56.733166Z",
     "iopub.status.busy": "2024-05-06T14:47:56.731348Z",
     "iopub.status.idle": "2024-05-06T14:47:56.754470Z",
     "shell.execute_reply": "2024-05-06T14:47:56.752218Z"
    },
    "id": "LWCqrM2rpsmP",
    "outputId": "9a9ff1a3-5553-40de-9863-ef8d68e03fff",
    "papermill": {
     "duration": 0.114881,
     "end_time": "2024-05-06T14:47:56.757799",
     "exception": false,
     "start_time": "2024-05-06T14:47:56.642918",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "0.023651616655356"
      ],
      "text/latex": [
       "0.023651616655356"
      ],
      "text/markdown": [
       "0.023651616655356"
      ],
      "text/plain": [
       "[1] 0.02365162"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "p_valor <- pchisq(chi_2, df = graus_de_liberdade, lower.tail = F)\n",
    "p_valor"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "7e842989",
   "metadata": {
    "id": "WpvavOAVpsmR",
    "papermill": {
     "duration": 0.086691,
     "end_time": "2024-05-06T14:47:56.931063",
     "exception": false,
     "start_time": "2024-05-06T14:47:56.844372",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "#### <font color=red>Documentações:\n",
    "\n",
    "- [**chisq.test**](https://www.rdocumentation.org/packages/stats/versions/3.6.1/topics/chisq.test)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 86,
   "id": "6efaa420",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:47:57.104882Z",
     "iopub.status.busy": "2024-05-06T14:47:57.102885Z",
     "iopub.status.idle": "2024-05-06T14:47:57.124827Z",
     "shell.execute_reply": "2024-05-06T14:47:57.122632Z"
    },
    "papermill": {
     "duration": 0.11199,
     "end_time": "2024-05-06T14:47:57.127631",
     "exception": false,
     "start_time": "2024-05-06T14:47:57.015641",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "\n",
       "\tChi-squared test for given probabilities\n",
       "\n",
       "data:  F_Observada\n",
       "X-squared = 5.12, df = 1, p-value = 0.02365\n"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "chisq.test(x = F_Observada)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 87,
   "id": "e9f97b37",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:47:57.305568Z",
     "iopub.status.busy": "2024-05-06T14:47:57.303634Z",
     "iopub.status.idle": "2024-05-06T14:47:57.327474Z",
     "shell.execute_reply": "2024-05-06T14:47:57.324891Z"
    },
    "papermill": {
     "duration": 0.115126,
     "end_time": "2024-05-06T14:47:57.330495",
     "exception": false,
     "start_time": "2024-05-06T14:47:57.215369",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "\n",
       "\tChi-squared test for given probabilities\n",
       "\n",
       "data:  F_Observada\n",
       "X-squared = 5.12, df = 1, p-value = 0.02365\n"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "resultado <- chisq.test(x = F_Observada, p = c(0.5, 0.5))\n",
    "resultado"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 88,
   "id": "fac30807",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:47:57.506334Z",
     "iopub.status.busy": "2024-05-06T14:47:57.504075Z",
     "iopub.status.idle": "2024-05-06T14:47:57.525344Z",
     "shell.execute_reply": "2024-05-06T14:47:57.523268Z"
    },
    "papermill": {
     "duration": 0.112839,
     "end_time": "2024-05-06T14:47:57.528116",
     "exception": false,
     "start_time": "2024-05-06T14:47:57.415277",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<strong>X-squared:</strong> 5.12"
      ],
      "text/latex": [
       "\\textbf{X-squared:} 5.12"
      ],
      "text/markdown": [
       "**X-squared:** 5.12"
      ],
      "text/plain": [
       "X-squared \n",
       "     5.12 "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "resultado$statistic"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 89,
   "id": "aae16970",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:47:57.707894Z",
     "iopub.status.busy": "2024-05-06T14:47:57.705739Z",
     "iopub.status.idle": "2024-05-06T14:47:57.730475Z",
     "shell.execute_reply": "2024-05-06T14:47:57.728112Z"
    },
    "papermill": {
     "duration": 0.116882,
     "end_time": "2024-05-06T14:47:57.733992",
     "exception": false,
     "start_time": "2024-05-06T14:47:57.617110",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<strong>df:</strong> 1"
      ],
      "text/latex": [
       "\\textbf{df:} 1"
      ],
      "text/markdown": [
       "**df:** 1"
      ],
      "text/plain": [
       "df \n",
       " 1 "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "resultado$parameter"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 90,
   "id": "5821293a",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:47:57.914705Z",
     "iopub.status.busy": "2024-05-06T14:47:57.912577Z",
     "iopub.status.idle": "2024-05-06T14:47:57.937066Z",
     "shell.execute_reply": "2024-05-06T14:47:57.933481Z"
    },
    "papermill": {
     "duration": 0.117004,
     "end_time": "2024-05-06T14:47:57.940383",
     "exception": false,
     "start_time": "2024-05-06T14:47:57.823379",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "0.023651616655356"
      ],
      "text/latex": [
       "0.023651616655356"
      ],
      "text/markdown": [
       "0.023651616655356"
      ],
      "text/plain": [
       "[1] 0.02365162"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "p_valor <- resultado$p.value\n",
    "p_valor"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 91,
   "id": "31d6f006",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:47:58.120964Z",
     "iopub.status.busy": "2024-05-06T14:47:58.119047Z",
     "iopub.status.idle": "2024-05-06T14:47:58.140777Z",
     "shell.execute_reply": "2024-05-06T14:47:58.138409Z"
    },
    "papermill": {
     "duration": 0.114866,
     "end_time": "2024-05-06T14:47:58.143895",
     "exception": false,
     "start_time": "2024-05-06T14:47:58.029029",
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
       "<ol class=list-inline><li>17</li><li>33</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 17\n",
       "\\item 33\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 17\n",
       "2. 33\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       "[1] 17 33"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "resultado$observed"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 92,
   "id": "956e8be4",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:47:58.333528Z",
     "iopub.status.busy": "2024-05-06T14:47:58.331093Z",
     "iopub.status.idle": "2024-05-06T14:47:58.353434Z",
     "shell.execute_reply": "2024-05-06T14:47:58.351086Z"
    },
    "papermill": {
     "duration": 0.124915,
     "end_time": "2024-05-06T14:47:58.356429",
     "exception": false,
     "start_time": "2024-05-06T14:47:58.231514",
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
       "<ol class=list-inline><li>25</li><li>25</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 25\n",
       "\\item 25\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 25\n",
       "2. 25\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       "[1] 25 25"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "resultado$expected"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 93,
   "id": "1969afea",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:47:58.540250Z",
     "iopub.status.busy": "2024-05-06T14:47:58.538001Z",
     "iopub.status.idle": "2024-05-06T14:47:58.562526Z",
     "shell.execute_reply": "2024-05-06T14:47:58.559753Z"
    },
    "id": "reKBubKWpsmT",
    "outputId": "69394a7b-9acb-4ce2-fea4-f51a05c9b39f",
    "papermill": {
     "duration": 0.12476,
     "end_time": "2024-05-06T14:47:58.566667",
     "exception": false,
     "start_time": "2024-05-06T14:47:58.441907",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "TRUE"
      ],
      "text/latex": [
       "TRUE"
      ],
      "text/markdown": [
       "TRUE"
      ],
      "text/plain": [
       "[1] TRUE"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "p_valor <= significancia"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "9156e515",
   "metadata": {
    "id": "WlHU5fNNpsmU",
    "papermill": {
     "duration": 0.092414,
     "end_time": "2024-05-06T14:47:58.753466",
     "exception": false,
     "start_time": "2024-05-06T14:47:58.661052",
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
   "id": "2281c6d4",
   "metadata": {
    "id": "PUXdBJ9FpsmU",
    "papermill": {
     "duration": 0.093084,
     "end_time": "2024-05-06T14:47:58.935040",
     "exception": false,
     "start_time": "2024-05-06T14:47:58.841956",
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
   "id": "b0acdfdb",
   "metadata": {
    "id": "DXvJ2JnKpsmU",
    "papermill": {
     "duration": 0.08721,
     "end_time": "2024-05-06T14:47:59.116726",
     "exception": false,
     "start_time": "2024-05-06T14:47:59.029516",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Um novo tratamento para acabar com o hábito de fumar está sendo empregado em um grupo de **35 pacientes** voluntários. De cada paciente testado foram obtidas as informações de quantidades de cigarros consumidos por dia antes e depois do término do tratamento. Assumindo um **nível de confiança de 95%** é possível concluir que, depois da aplicação do novo tratamento, houve uma mudança no hábito de fumar do grupo de pacientes testado?"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "663e615a",
   "metadata": {
    "id": "BqE_PN7IpsmU",
    "papermill": {
     "duration": 0.087736,
     "end_time": "2024-05-06T14:47:59.295993",
     "exception": false,
     "start_time": "2024-05-06T14:47:59.208257",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## <font color=green>4.2 Teste Wilcoxon</font>\n",
    "### Comparação de duas populações - amostras dependentes\n",
    "***"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "34c56e99",
   "metadata": {
    "id": "1MxFBYB-psmU",
    "papermill": {
     "duration": 0.08856,
     "end_time": "2024-05-06T14:47:59.471259",
     "exception": false,
     "start_time": "2024-05-06T14:47:59.382699",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Empregado quando se deseja comparar duas amostras relacionadas, amostras emparelhadas. Pode ser aplicado quando se deseja testar a diferença de duas condições, isto é, quando um mesmo elemento é submetido a duas medidas."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "b6c7ecd0",
   "metadata": {
    "papermill": {
     "duration": 0.091466,
     "end_time": "2024-05-06T14:47:59.654860",
     "exception": false,
     "start_time": "2024-05-06T14:47:59.563394",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "#### <font color=red>Documentações:\n",
    "\n",
    "- [**aggregate**](https://www.rdocumentation.org/packages/stats/versions/3.6.1/topics/aggregate)\n",
    "- [**merge**](https://www.rdocumentation.org/packages/base/versions/3.6.1/topics/merge)\n",
    "- [**apply**](https://www.rdocumentation.org/packages/base/versions/3.6.1/topics/apply)\n",
    "- [**Extremes**](https://www.rdocumentation.org/packages/base/versions/3.6.1/topics/Extremes)\n",
    "- [**sum**](https://www.rdocumentation.org/packages/base/versions/3.6.1/topics/sum)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "4d9ed3b8",
   "metadata": {
    "id": "3H67Y7P7psmV",
    "papermill": {
     "duration": 0.088278,
     "end_time": "2024-05-06T14:47:59.832059",
     "exception": false,
     "start_time": "2024-05-06T14:47:59.743781",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Dados do problema"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 94,
   "id": "5f0166db",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:48:00.010692Z",
     "iopub.status.busy": "2024-05-06T14:48:00.008657Z",
     "iopub.status.idle": "2024-05-06T14:48:00.034671Z",
     "shell.execute_reply": "2024-05-06T14:48:00.031291Z"
    },
    "id": "JBh5-HrnpsmV",
    "papermill": {
     "duration": 0.119925,
     "end_time": "2024-05-06T14:48:00.038407",
     "exception": false,
     "start_time": "2024-05-06T14:47:59.918482",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "fumo <- data.frame(\n",
    "    Antes = c(39, 25, 24, 50, 13, 52, 21, 29, 10, 22, 50, 15, 36, 39, 52, 48, 24, 15, 40, 41, 17, 12, 21, 49, 14, 55, 46, 22, 28, 23, 37, 17, 31, 49, 49),\n",
    "    Depois = c(16, 8, 12, 0, 14, 16, 13, 12, 19, 17, 17, 2, 15, 10, 20, 13, 0, 4, 16, 18, 16, 16, 9, 9, 18, 4, 17, 0, 11, 14, 0, 19, 2, 9, 6)\n",
    ")\n",
    "significancia <- 0.05\n",
    "confianca <- 1 - significancia\n",
    "n <- 35"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 95,
   "id": "629362a3",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:48:00.223310Z",
     "iopub.status.busy": "2024-05-06T14:48:00.221420Z",
     "iopub.status.idle": "2024-05-06T14:48:00.252218Z",
     "shell.execute_reply": "2024-05-06T14:48:00.250014Z"
    },
    "id": "AfEGWBp1psmW",
    "outputId": "b68e51d1-b307-432f-8658-4642285f3725",
    "papermill": {
     "duration": 0.125181,
     "end_time": "2024-05-06T14:48:00.255197",
     "exception": false,
     "start_time": "2024-05-06T14:48:00.130016",
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
       "<caption>A data.frame: 6 × 2</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>Antes</th><th scope=col>Depois</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>1</th><td>39</td><td>16</td></tr>\n",
       "\t<tr><th scope=row>2</th><td>25</td><td> 8</td></tr>\n",
       "\t<tr><th scope=row>3</th><td>24</td><td>12</td></tr>\n",
       "\t<tr><th scope=row>4</th><td>50</td><td> 0</td></tr>\n",
       "\t<tr><th scope=row>5</th><td>13</td><td>14</td></tr>\n",
       "\t<tr><th scope=row>6</th><td>52</td><td>16</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 6 × 2\n",
       "\\begin{tabular}{r|ll}\n",
       "  & Antes & Depois\\\\\n",
       "  & <dbl> & <dbl>\\\\\n",
       "\\hline\n",
       "\t1 & 39 & 16\\\\\n",
       "\t2 & 25 &  8\\\\\n",
       "\t3 & 24 & 12\\\\\n",
       "\t4 & 50 &  0\\\\\n",
       "\t5 & 13 & 14\\\\\n",
       "\t6 & 52 & 16\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 6 × 2\n",
       "\n",
       "| <!--/--> | Antes &lt;dbl&gt; | Depois &lt;dbl&gt; |\n",
       "|---|---|---|\n",
       "| 1 | 39 | 16 |\n",
       "| 2 | 25 |  8 |\n",
       "| 3 | 24 | 12 |\n",
       "| 4 | 50 |  0 |\n",
       "| 5 | 13 | 14 |\n",
       "| 6 | 52 | 16 |\n",
       "\n"
      ],
      "text/plain": [
       "  Antes Depois\n",
       "1 39    16    \n",
       "2 25     8    \n",
       "3 24    12    \n",
       "4 50     0    \n",
       "5 13    14    \n",
       "6 52    16    "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "head(fumo)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 96,
   "id": "66742b65",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:48:00.439415Z",
     "iopub.status.busy": "2024-05-06T14:48:00.436470Z",
     "iopub.status.idle": "2024-05-06T14:48:00.460908Z",
     "shell.execute_reply": "2024-05-06T14:48:00.458785Z"
    },
    "id": "oNQvLLR8psmX",
    "outputId": "434a1498-67cb-47fd-b87a-f68bd05a923d",
    "papermill": {
     "duration": 0.121302,
     "end_time": "2024-05-06T14:48:00.463818",
     "exception": false,
     "start_time": "2024-05-06T14:48:00.342516",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "31.8571428571429"
      ],
      "text/latex": [
       "31.8571428571429"
      ],
      "text/markdown": [
       "31.8571428571429"
      ],
      "text/plain": [
       "[1] 31.85714"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "media_antes <- mean(fumo$Antes)\n",
    "media_antes"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 97,
   "id": "c4610413",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:48:00.649816Z",
     "iopub.status.busy": "2024-05-06T14:48:00.647856Z",
     "iopub.status.idle": "2024-05-06T14:48:00.674600Z",
     "shell.execute_reply": "2024-05-06T14:48:00.671786Z"
    },
    "id": "wOgIYP0upsmZ",
    "outputId": "926b067c-2ea2-407b-edba-c57075fa5c94",
    "papermill": {
     "duration": 0.121628,
     "end_time": "2024-05-06T14:48:00.677536",
     "exception": false,
     "start_time": "2024-05-06T14:48:00.555908",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "11.2"
      ],
      "text/latex": [
       "11.2"
      ],
      "text/markdown": [
       "11.2"
      ],
      "text/plain": [
       "[1] 11.2"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "media_depois <- mean(fumo$Depois)\n",
    "media_depois"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "42754bbc",
   "metadata": {
    "id": "gvnOmelVpsma",
    "papermill": {
     "duration": 0.096317,
     "end_time": "2024-05-06T14:48:00.862696",
     "exception": false,
     "start_time": "2024-05-06T14:48:00.766379",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### **Passo 1** - formulação das hipóteses $H_0$ e $H_1$\n",
    "\n",
    "#### <font color='red'>Lembre-se, a hipótese nula sempre contém a alegação de igualdade</font>"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "f555a686",
   "metadata": {
    "id": "1AXOiD_epsma",
    "papermill": {
     "duration": 0.092575,
     "end_time": "2024-05-06T14:48:01.047034",
     "exception": false,
     "start_time": "2024-05-06T14:48:00.954459",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### $H_0: \\mu_{antes} = \\mu_{depois}$\n",
    "\n",
    "### $H_1: \\mu_{antes} > \\mu_{depois}$"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "54ce2a1e",
   "metadata": {
    "id": "degUD6b2psmb",
    "papermill": {
     "duration": 0.088797,
     "end_time": "2024-05-06T14:48:01.242092",
     "exception": false,
     "start_time": "2024-05-06T14:48:01.153295",
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
   "id": "c890799b",
   "metadata": {
    "id": "3jrV_c2Opsmb",
    "papermill": {
     "duration": 0.092259,
     "end_time": "2024-05-06T14:48:01.426145",
     "exception": false,
     "start_time": "2024-05-06T14:48:01.333886",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### **Passo 2** - escolha da distribuição amostral adequada"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "a8aebe07",
   "metadata": {
    "id": "vF-9xAPzpsmc",
    "papermill": {
     "duration": 0.089282,
     "end_time": "2024-05-06T14:48:01.617554",
     "exception": false,
     "start_time": "2024-05-06T14:48:01.528272",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### O tamanho da amostra é maior que 30?\n",
    "#### Resp.: Sim"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "b4c7c58d",
   "metadata": {
    "id": "tvxXutrGpsmc",
    "papermill": {
     "duration": 0.087608,
     "end_time": "2024-05-06T14:48:01.793620",
     "exception": false,
     "start_time": "2024-05-06T14:48:01.706012",
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
   "id": "00fa299c",
   "metadata": {
    "id": "aihd76Wkpsmc",
    "papermill": {
     "duration": 0.093198,
     "end_time": "2024-05-06T14:48:01.980788",
     "exception": false,
     "start_time": "2024-05-06T14:48:01.887590",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### **Passo 3** - fixação da significância do teste ($\\alpha$)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "7c026b78",
   "metadata": {
    "id": "XF6AA8qLpsmc",
    "papermill": {
     "duration": 0.092946,
     "end_time": "2024-05-06T14:48:02.165342",
     "exception": false,
     "start_time": "2024-05-06T14:48:02.072396",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Obtendo $z_{\\alpha/2}$"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 98,
   "id": "2aeb6339",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:48:02.346100Z",
     "iopub.status.busy": "2024-05-06T14:48:02.344231Z",
     "iopub.status.idle": "2024-05-06T14:48:02.366560Z",
     "shell.execute_reply": "2024-05-06T14:48:02.364478Z"
    },
    "id": "UsRrnCnXpsmd",
    "outputId": "969dfd46-755b-496b-b84a-1d3e9d565ed2",
    "papermill": {
     "duration": 0.116361,
     "end_time": "2024-05-06T14:48:02.369300",
     "exception": false,
     "start_time": "2024-05-06T14:48:02.252939",
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
    "probabilidade <- (0.5 + (confianca / 2))\n",
    "probabilidade"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 99,
   "id": "d6f3b986",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:48:02.554742Z",
     "iopub.status.busy": "2024-05-06T14:48:02.552983Z",
     "iopub.status.idle": "2024-05-06T14:48:02.574307Z",
     "shell.execute_reply": "2024-05-06T14:48:02.572375Z"
    },
    "papermill": {
     "duration": 0.118244,
     "end_time": "2024-05-06T14:48:02.576961",
     "exception": false,
     "start_time": "2024-05-06T14:48:02.458717",
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
    "z_alpha_2 <- qnorm(probabilidade)\n",
    "z_alpha_2"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "7ac53a35",
   "metadata": {
    "id": "S2dqQHQJpsmf",
    "papermill": {
     "duration": 0.089299,
     "end_time": "2024-05-06T14:48:02.757172",
     "exception": false,
     "start_time": "2024-05-06T14:48:02.667873",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "![Região de Aceitação](https://caelum-online-public.s3.amazonaws.com/1229-estatistica-parte3/01/img006.png)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "6dc53d82",
   "metadata": {
    "id": "z0iEZ685psmf",
    "papermill": {
     "duration": 0.088963,
     "end_time": "2024-05-06T14:48:02.935766",
     "exception": false,
     "start_time": "2024-05-06T14:48:02.846803",
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
   "id": "8295a950",
   "metadata": {
    "id": "zpYLf-dZpsmg",
    "papermill": {
     "duration": 0.089452,
     "end_time": "2024-05-06T14:48:03.119405",
     "exception": false,
     "start_time": "2024-05-06T14:48:03.029953",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### **Passo 4** - cálculo da estatística-teste e verificação desse valor com as áreas de aceitação e rejeição do teste\n",
    "\n",
    "# $$Z = \\frac{T - \\mu_T}{\\sigma_T}$$\n",
    "\n",
    "Onde\n",
    "\n",
    "## $T$ = menor das somas de postos de mesmo sinal\n",
    "\n",
    "# $$\\mu_T = \\frac{n(n+1)}{4}$$\n",
    "# $$\\sigma_T = \\sqrt{\\frac{n(n + 1)(2n + 1)}{24}}$$"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "20f47a17",
   "metadata": {
    "id": "ZTY9IuIIpsmg",
    "papermill": {
     "duration": 0.089501,
     "end_time": "2024-05-06T14:48:03.297496",
     "exception": false,
     "start_time": "2024-05-06T14:48:03.207995",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Construindo a tabela com os postos"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 100,
   "id": "5af0d697",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:48:03.482795Z",
     "iopub.status.busy": "2024-05-06T14:48:03.480820Z",
     "iopub.status.idle": "2024-05-06T14:48:03.522863Z",
     "shell.execute_reply": "2024-05-06T14:48:03.520694Z"
    },
    "id": "o0fp6m3iqIlu",
    "outputId": "af1f1a0d-c2e7-478c-b637-71a520cc9a2c",
    "papermill": {
     "duration": 0.138944,
     "end_time": "2024-05-06T14:48:03.525606",
     "exception": false,
     "start_time": "2024-05-06T14:48:03.386662",
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
       "<caption>A data.frame: 35 × 2</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>Antes</th><th scope=col>Depois</th></tr>\n",
       "\t<tr><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>39</td><td>16</td></tr>\n",
       "\t<tr><td>25</td><td> 8</td></tr>\n",
       "\t<tr><td>24</td><td>12</td></tr>\n",
       "\t<tr><td>50</td><td> 0</td></tr>\n",
       "\t<tr><td>13</td><td>14</td></tr>\n",
       "\t<tr><td>52</td><td>16</td></tr>\n",
       "\t<tr><td>21</td><td>13</td></tr>\n",
       "\t<tr><td>29</td><td>12</td></tr>\n",
       "\t<tr><td>10</td><td>19</td></tr>\n",
       "\t<tr><td>22</td><td>17</td></tr>\n",
       "\t<tr><td>50</td><td>17</td></tr>\n",
       "\t<tr><td>15</td><td> 2</td></tr>\n",
       "\t<tr><td>36</td><td>15</td></tr>\n",
       "\t<tr><td>39</td><td>10</td></tr>\n",
       "\t<tr><td>52</td><td>20</td></tr>\n",
       "\t<tr><td>48</td><td>13</td></tr>\n",
       "\t<tr><td>24</td><td> 0</td></tr>\n",
       "\t<tr><td>15</td><td> 4</td></tr>\n",
       "\t<tr><td>40</td><td>16</td></tr>\n",
       "\t<tr><td>41</td><td>18</td></tr>\n",
       "\t<tr><td>17</td><td>16</td></tr>\n",
       "\t<tr><td>12</td><td>16</td></tr>\n",
       "\t<tr><td>21</td><td> 9</td></tr>\n",
       "\t<tr><td>49</td><td> 9</td></tr>\n",
       "\t<tr><td>14</td><td>18</td></tr>\n",
       "\t<tr><td>55</td><td> 4</td></tr>\n",
       "\t<tr><td>46</td><td>17</td></tr>\n",
       "\t<tr><td>22</td><td> 0</td></tr>\n",
       "\t<tr><td>28</td><td>11</td></tr>\n",
       "\t<tr><td>23</td><td>14</td></tr>\n",
       "\t<tr><td>37</td><td> 0</td></tr>\n",
       "\t<tr><td>17</td><td>19</td></tr>\n",
       "\t<tr><td>31</td><td> 2</td></tr>\n",
       "\t<tr><td>49</td><td> 9</td></tr>\n",
       "\t<tr><td>49</td><td> 6</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 35 × 2\n",
       "\\begin{tabular}{ll}\n",
       " Antes & Depois\\\\\n",
       " <dbl> & <dbl>\\\\\n",
       "\\hline\n",
       "\t 39 & 16\\\\\n",
       "\t 25 &  8\\\\\n",
       "\t 24 & 12\\\\\n",
       "\t 50 &  0\\\\\n",
       "\t 13 & 14\\\\\n",
       "\t 52 & 16\\\\\n",
       "\t 21 & 13\\\\\n",
       "\t 29 & 12\\\\\n",
       "\t 10 & 19\\\\\n",
       "\t 22 & 17\\\\\n",
       "\t 50 & 17\\\\\n",
       "\t 15 &  2\\\\\n",
       "\t 36 & 15\\\\\n",
       "\t 39 & 10\\\\\n",
       "\t 52 & 20\\\\\n",
       "\t 48 & 13\\\\\n",
       "\t 24 &  0\\\\\n",
       "\t 15 &  4\\\\\n",
       "\t 40 & 16\\\\\n",
       "\t 41 & 18\\\\\n",
       "\t 17 & 16\\\\\n",
       "\t 12 & 16\\\\\n",
       "\t 21 &  9\\\\\n",
       "\t 49 &  9\\\\\n",
       "\t 14 & 18\\\\\n",
       "\t 55 &  4\\\\\n",
       "\t 46 & 17\\\\\n",
       "\t 22 &  0\\\\\n",
       "\t 28 & 11\\\\\n",
       "\t 23 & 14\\\\\n",
       "\t 37 &  0\\\\\n",
       "\t 17 & 19\\\\\n",
       "\t 31 &  2\\\\\n",
       "\t 49 &  9\\\\\n",
       "\t 49 &  6\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 35 × 2\n",
       "\n",
       "| Antes &lt;dbl&gt; | Depois &lt;dbl&gt; |\n",
       "|---|---|\n",
       "| 39 | 16 |\n",
       "| 25 |  8 |\n",
       "| 24 | 12 |\n",
       "| 50 |  0 |\n",
       "| 13 | 14 |\n",
       "| 52 | 16 |\n",
       "| 21 | 13 |\n",
       "| 29 | 12 |\n",
       "| 10 | 19 |\n",
       "| 22 | 17 |\n",
       "| 50 | 17 |\n",
       "| 15 |  2 |\n",
       "| 36 | 15 |\n",
       "| 39 | 10 |\n",
       "| 52 | 20 |\n",
       "| 48 | 13 |\n",
       "| 24 |  0 |\n",
       "| 15 |  4 |\n",
       "| 40 | 16 |\n",
       "| 41 | 18 |\n",
       "| 17 | 16 |\n",
       "| 12 | 16 |\n",
       "| 21 |  9 |\n",
       "| 49 |  9 |\n",
       "| 14 | 18 |\n",
       "| 55 |  4 |\n",
       "| 46 | 17 |\n",
       "| 22 |  0 |\n",
       "| 28 | 11 |\n",
       "| 23 | 14 |\n",
       "| 37 |  0 |\n",
       "| 17 | 19 |\n",
       "| 31 |  2 |\n",
       "| 49 |  9 |\n",
       "| 49 |  6 |\n",
       "\n"
      ],
      "text/plain": [
       "   Antes Depois\n",
       "1  39    16    \n",
       "2  25     8    \n",
       "3  24    12    \n",
       "4  50     0    \n",
       "5  13    14    \n",
       "6  52    16    \n",
       "7  21    13    \n",
       "8  29    12    \n",
       "9  10    19    \n",
       "10 22    17    \n",
       "11 50    17    \n",
       "12 15     2    \n",
       "13 36    15    \n",
       "14 39    10    \n",
       "15 52    20    \n",
       "16 48    13    \n",
       "17 24     0    \n",
       "18 15     4    \n",
       "19 40    16    \n",
       "20 41    18    \n",
       "21 17    16    \n",
       "22 12    16    \n",
       "23 21     9    \n",
       "24 49     9    \n",
       "25 14    18    \n",
       "26 55     4    \n",
       "27 46    17    \n",
       "28 22     0    \n",
       "29 28    11    \n",
       "30 23    14    \n",
       "31 37     0    \n",
       "32 17    19    \n",
       "33 31     2    \n",
       "34 49     9    \n",
       "35 49     6    "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "fumo"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 101,
   "id": "ca5e39be",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:48:03.709779Z",
     "iopub.status.busy": "2024-05-06T14:48:03.707965Z",
     "iopub.status.idle": "2024-05-06T14:48:03.751321Z",
     "shell.execute_reply": "2024-05-06T14:48:03.749414Z"
    },
    "id": "T4KmZijZotWj",
    "outputId": "97779ef9-8387-43d3-c41a-76b01cc7d52c",
    "papermill": {
     "duration": 0.136299,
     "end_time": "2024-05-06T14:48:03.754058",
     "exception": false,
     "start_time": "2024-05-06T14:48:03.617759",
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
       "<caption>A data.frame: 35 × 3</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>Antes</th><th scope=col>Depois</th><th scope=col>Dif</th></tr>\n",
       "\t<tr><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>39</td><td>16</td><td>-23</td></tr>\n",
       "\t<tr><td>25</td><td> 8</td><td>-17</td></tr>\n",
       "\t<tr><td>24</td><td>12</td><td>-12</td></tr>\n",
       "\t<tr><td>50</td><td> 0</td><td>-50</td></tr>\n",
       "\t<tr><td>13</td><td>14</td><td>  1</td></tr>\n",
       "\t<tr><td>52</td><td>16</td><td>-36</td></tr>\n",
       "\t<tr><td>21</td><td>13</td><td> -8</td></tr>\n",
       "\t<tr><td>29</td><td>12</td><td>-17</td></tr>\n",
       "\t<tr><td>10</td><td>19</td><td>  9</td></tr>\n",
       "\t<tr><td>22</td><td>17</td><td> -5</td></tr>\n",
       "\t<tr><td>50</td><td>17</td><td>-33</td></tr>\n",
       "\t<tr><td>15</td><td> 2</td><td>-13</td></tr>\n",
       "\t<tr><td>36</td><td>15</td><td>-21</td></tr>\n",
       "\t<tr><td>39</td><td>10</td><td>-29</td></tr>\n",
       "\t<tr><td>52</td><td>20</td><td>-32</td></tr>\n",
       "\t<tr><td>48</td><td>13</td><td>-35</td></tr>\n",
       "\t<tr><td>24</td><td> 0</td><td>-24</td></tr>\n",
       "\t<tr><td>15</td><td> 4</td><td>-11</td></tr>\n",
       "\t<tr><td>40</td><td>16</td><td>-24</td></tr>\n",
       "\t<tr><td>41</td><td>18</td><td>-23</td></tr>\n",
       "\t<tr><td>17</td><td>16</td><td> -1</td></tr>\n",
       "\t<tr><td>12</td><td>16</td><td>  4</td></tr>\n",
       "\t<tr><td>21</td><td> 9</td><td>-12</td></tr>\n",
       "\t<tr><td>49</td><td> 9</td><td>-40</td></tr>\n",
       "\t<tr><td>14</td><td>18</td><td>  4</td></tr>\n",
       "\t<tr><td>55</td><td> 4</td><td>-51</td></tr>\n",
       "\t<tr><td>46</td><td>17</td><td>-29</td></tr>\n",
       "\t<tr><td>22</td><td> 0</td><td>-22</td></tr>\n",
       "\t<tr><td>28</td><td>11</td><td>-17</td></tr>\n",
       "\t<tr><td>23</td><td>14</td><td> -9</td></tr>\n",
       "\t<tr><td>37</td><td> 0</td><td>-37</td></tr>\n",
       "\t<tr><td>17</td><td>19</td><td>  2</td></tr>\n",
       "\t<tr><td>31</td><td> 2</td><td>-29</td></tr>\n",
       "\t<tr><td>49</td><td> 9</td><td>-40</td></tr>\n",
       "\t<tr><td>49</td><td> 6</td><td>-43</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 35 × 3\n",
       "\\begin{tabular}{lll}\n",
       " Antes & Depois & Dif\\\\\n",
       " <dbl> & <dbl> & <dbl>\\\\\n",
       "\\hline\n",
       "\t 39 & 16 & -23\\\\\n",
       "\t 25 &  8 & -17\\\\\n",
       "\t 24 & 12 & -12\\\\\n",
       "\t 50 &  0 & -50\\\\\n",
       "\t 13 & 14 &   1\\\\\n",
       "\t 52 & 16 & -36\\\\\n",
       "\t 21 & 13 &  -8\\\\\n",
       "\t 29 & 12 & -17\\\\\n",
       "\t 10 & 19 &   9\\\\\n",
       "\t 22 & 17 &  -5\\\\\n",
       "\t 50 & 17 & -33\\\\\n",
       "\t 15 &  2 & -13\\\\\n",
       "\t 36 & 15 & -21\\\\\n",
       "\t 39 & 10 & -29\\\\\n",
       "\t 52 & 20 & -32\\\\\n",
       "\t 48 & 13 & -35\\\\\n",
       "\t 24 &  0 & -24\\\\\n",
       "\t 15 &  4 & -11\\\\\n",
       "\t 40 & 16 & -24\\\\\n",
       "\t 41 & 18 & -23\\\\\n",
       "\t 17 & 16 &  -1\\\\\n",
       "\t 12 & 16 &   4\\\\\n",
       "\t 21 &  9 & -12\\\\\n",
       "\t 49 &  9 & -40\\\\\n",
       "\t 14 & 18 &   4\\\\\n",
       "\t 55 &  4 & -51\\\\\n",
       "\t 46 & 17 & -29\\\\\n",
       "\t 22 &  0 & -22\\\\\n",
       "\t 28 & 11 & -17\\\\\n",
       "\t 23 & 14 &  -9\\\\\n",
       "\t 37 &  0 & -37\\\\\n",
       "\t 17 & 19 &   2\\\\\n",
       "\t 31 &  2 & -29\\\\\n",
       "\t 49 &  9 & -40\\\\\n",
       "\t 49 &  6 & -43\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 35 × 3\n",
       "\n",
       "| Antes &lt;dbl&gt; | Depois &lt;dbl&gt; | Dif &lt;dbl&gt; |\n",
       "|---|---|---|\n",
       "| 39 | 16 | -23 |\n",
       "| 25 |  8 | -17 |\n",
       "| 24 | 12 | -12 |\n",
       "| 50 |  0 | -50 |\n",
       "| 13 | 14 |   1 |\n",
       "| 52 | 16 | -36 |\n",
       "| 21 | 13 |  -8 |\n",
       "| 29 | 12 | -17 |\n",
       "| 10 | 19 |   9 |\n",
       "| 22 | 17 |  -5 |\n",
       "| 50 | 17 | -33 |\n",
       "| 15 |  2 | -13 |\n",
       "| 36 | 15 | -21 |\n",
       "| 39 | 10 | -29 |\n",
       "| 52 | 20 | -32 |\n",
       "| 48 | 13 | -35 |\n",
       "| 24 |  0 | -24 |\n",
       "| 15 |  4 | -11 |\n",
       "| 40 | 16 | -24 |\n",
       "| 41 | 18 | -23 |\n",
       "| 17 | 16 |  -1 |\n",
       "| 12 | 16 |   4 |\n",
       "| 21 |  9 | -12 |\n",
       "| 49 |  9 | -40 |\n",
       "| 14 | 18 |   4 |\n",
       "| 55 |  4 | -51 |\n",
       "| 46 | 17 | -29 |\n",
       "| 22 |  0 | -22 |\n",
       "| 28 | 11 | -17 |\n",
       "| 23 | 14 |  -9 |\n",
       "| 37 |  0 | -37 |\n",
       "| 17 | 19 |   2 |\n",
       "| 31 |  2 | -29 |\n",
       "| 49 |  9 | -40 |\n",
       "| 49 |  6 | -43 |\n",
       "\n"
      ],
      "text/plain": [
       "   Antes Depois Dif\n",
       "1  39    16     -23\n",
       "2  25     8     -17\n",
       "3  24    12     -12\n",
       "4  50     0     -50\n",
       "5  13    14       1\n",
       "6  52    16     -36\n",
       "7  21    13      -8\n",
       "8  29    12     -17\n",
       "9  10    19       9\n",
       "10 22    17      -5\n",
       "11 50    17     -33\n",
       "12 15     2     -13\n",
       "13 36    15     -21\n",
       "14 39    10     -29\n",
       "15 52    20     -32\n",
       "16 48    13     -35\n",
       "17 24     0     -24\n",
       "18 15     4     -11\n",
       "19 40    16     -24\n",
       "20 41    18     -23\n",
       "21 17    16      -1\n",
       "22 12    16       4\n",
       "23 21     9     -12\n",
       "24 49     9     -40\n",
       "25 14    18       4\n",
       "26 55     4     -51\n",
       "27 46    17     -29\n",
       "28 22     0     -22\n",
       "29 28    11     -17\n",
       "30 23    14      -9\n",
       "31 37     0     -37\n",
       "32 17    19       2\n",
       "33 31     2     -29\n",
       "34 49     9     -40\n",
       "35 49     6     -43"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "fumo['Dif'] <- fumo$Depois - fumo$Antes\n",
    "fumo"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 102,
   "id": "2bc6a8e4",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:48:03.936089Z",
     "iopub.status.busy": "2024-05-06T14:48:03.933520Z",
     "iopub.status.idle": "2024-05-06T14:48:03.981875Z",
     "shell.execute_reply": "2024-05-06T14:48:03.979764Z"
    },
    "id": "c4fvYVrdotTL",
    "outputId": "a0da369c-d29f-40c1-e8e6-ff715c14e3e3",
    "papermill": {
     "duration": 0.142026,
     "end_time": "2024-05-06T14:48:03.984808",
     "exception": false,
     "start_time": "2024-05-06T14:48:03.842782",
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
       "<caption>A data.frame: 35 × 4</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>Antes</th><th scope=col>Depois</th><th scope=col>Dif</th><th scope=col>|Dif|</th></tr>\n",
       "\t<tr><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>39</td><td>16</td><td>-23</td><td>23</td></tr>\n",
       "\t<tr><td>25</td><td> 8</td><td>-17</td><td>17</td></tr>\n",
       "\t<tr><td>24</td><td>12</td><td>-12</td><td>12</td></tr>\n",
       "\t<tr><td>50</td><td> 0</td><td>-50</td><td>50</td></tr>\n",
       "\t<tr><td>13</td><td>14</td><td>  1</td><td> 1</td></tr>\n",
       "\t<tr><td>52</td><td>16</td><td>-36</td><td>36</td></tr>\n",
       "\t<tr><td>21</td><td>13</td><td> -8</td><td> 8</td></tr>\n",
       "\t<tr><td>29</td><td>12</td><td>-17</td><td>17</td></tr>\n",
       "\t<tr><td>10</td><td>19</td><td>  9</td><td> 9</td></tr>\n",
       "\t<tr><td>22</td><td>17</td><td> -5</td><td> 5</td></tr>\n",
       "\t<tr><td>50</td><td>17</td><td>-33</td><td>33</td></tr>\n",
       "\t<tr><td>15</td><td> 2</td><td>-13</td><td>13</td></tr>\n",
       "\t<tr><td>36</td><td>15</td><td>-21</td><td>21</td></tr>\n",
       "\t<tr><td>39</td><td>10</td><td>-29</td><td>29</td></tr>\n",
       "\t<tr><td>52</td><td>20</td><td>-32</td><td>32</td></tr>\n",
       "\t<tr><td>48</td><td>13</td><td>-35</td><td>35</td></tr>\n",
       "\t<tr><td>24</td><td> 0</td><td>-24</td><td>24</td></tr>\n",
       "\t<tr><td>15</td><td> 4</td><td>-11</td><td>11</td></tr>\n",
       "\t<tr><td>40</td><td>16</td><td>-24</td><td>24</td></tr>\n",
       "\t<tr><td>41</td><td>18</td><td>-23</td><td>23</td></tr>\n",
       "\t<tr><td>17</td><td>16</td><td> -1</td><td> 1</td></tr>\n",
       "\t<tr><td>12</td><td>16</td><td>  4</td><td> 4</td></tr>\n",
       "\t<tr><td>21</td><td> 9</td><td>-12</td><td>12</td></tr>\n",
       "\t<tr><td>49</td><td> 9</td><td>-40</td><td>40</td></tr>\n",
       "\t<tr><td>14</td><td>18</td><td>  4</td><td> 4</td></tr>\n",
       "\t<tr><td>55</td><td> 4</td><td>-51</td><td>51</td></tr>\n",
       "\t<tr><td>46</td><td>17</td><td>-29</td><td>29</td></tr>\n",
       "\t<tr><td>22</td><td> 0</td><td>-22</td><td>22</td></tr>\n",
       "\t<tr><td>28</td><td>11</td><td>-17</td><td>17</td></tr>\n",
       "\t<tr><td>23</td><td>14</td><td> -9</td><td> 9</td></tr>\n",
       "\t<tr><td>37</td><td> 0</td><td>-37</td><td>37</td></tr>\n",
       "\t<tr><td>17</td><td>19</td><td>  2</td><td> 2</td></tr>\n",
       "\t<tr><td>31</td><td> 2</td><td>-29</td><td>29</td></tr>\n",
       "\t<tr><td>49</td><td> 9</td><td>-40</td><td>40</td></tr>\n",
       "\t<tr><td>49</td><td> 6</td><td>-43</td><td>43</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 35 × 4\n",
       "\\begin{tabular}{llll}\n",
       " Antes & Depois & Dif & \\textbar{}Dif\\textbar{}\\\\\n",
       " <dbl> & <dbl> & <dbl> & <dbl>\\\\\n",
       "\\hline\n",
       "\t 39 & 16 & -23 & 23\\\\\n",
       "\t 25 &  8 & -17 & 17\\\\\n",
       "\t 24 & 12 & -12 & 12\\\\\n",
       "\t 50 &  0 & -50 & 50\\\\\n",
       "\t 13 & 14 &   1 &  1\\\\\n",
       "\t 52 & 16 & -36 & 36\\\\\n",
       "\t 21 & 13 &  -8 &  8\\\\\n",
       "\t 29 & 12 & -17 & 17\\\\\n",
       "\t 10 & 19 &   9 &  9\\\\\n",
       "\t 22 & 17 &  -5 &  5\\\\\n",
       "\t 50 & 17 & -33 & 33\\\\\n",
       "\t 15 &  2 & -13 & 13\\\\\n",
       "\t 36 & 15 & -21 & 21\\\\\n",
       "\t 39 & 10 & -29 & 29\\\\\n",
       "\t 52 & 20 & -32 & 32\\\\\n",
       "\t 48 & 13 & -35 & 35\\\\\n",
       "\t 24 &  0 & -24 & 24\\\\\n",
       "\t 15 &  4 & -11 & 11\\\\\n",
       "\t 40 & 16 & -24 & 24\\\\\n",
       "\t 41 & 18 & -23 & 23\\\\\n",
       "\t 17 & 16 &  -1 &  1\\\\\n",
       "\t 12 & 16 &   4 &  4\\\\\n",
       "\t 21 &  9 & -12 & 12\\\\\n",
       "\t 49 &  9 & -40 & 40\\\\\n",
       "\t 14 & 18 &   4 &  4\\\\\n",
       "\t 55 &  4 & -51 & 51\\\\\n",
       "\t 46 & 17 & -29 & 29\\\\\n",
       "\t 22 &  0 & -22 & 22\\\\\n",
       "\t 28 & 11 & -17 & 17\\\\\n",
       "\t 23 & 14 &  -9 &  9\\\\\n",
       "\t 37 &  0 & -37 & 37\\\\\n",
       "\t 17 & 19 &   2 &  2\\\\\n",
       "\t 31 &  2 & -29 & 29\\\\\n",
       "\t 49 &  9 & -40 & 40\\\\\n",
       "\t 49 &  6 & -43 & 43\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 35 × 4\n",
       "\n",
       "| Antes &lt;dbl&gt; | Depois &lt;dbl&gt; | Dif &lt;dbl&gt; | |Dif| &lt;dbl&gt; |\n",
       "|---|---|---|---|\n",
       "| 39 | 16 | -23 | 23 |\n",
       "| 25 |  8 | -17 | 17 |\n",
       "| 24 | 12 | -12 | 12 |\n",
       "| 50 |  0 | -50 | 50 |\n",
       "| 13 | 14 |   1 |  1 |\n",
       "| 52 | 16 | -36 | 36 |\n",
       "| 21 | 13 |  -8 |  8 |\n",
       "| 29 | 12 | -17 | 17 |\n",
       "| 10 | 19 |   9 |  9 |\n",
       "| 22 | 17 |  -5 |  5 |\n",
       "| 50 | 17 | -33 | 33 |\n",
       "| 15 |  2 | -13 | 13 |\n",
       "| 36 | 15 | -21 | 21 |\n",
       "| 39 | 10 | -29 | 29 |\n",
       "| 52 | 20 | -32 | 32 |\n",
       "| 48 | 13 | -35 | 35 |\n",
       "| 24 |  0 | -24 | 24 |\n",
       "| 15 |  4 | -11 | 11 |\n",
       "| 40 | 16 | -24 | 24 |\n",
       "| 41 | 18 | -23 | 23 |\n",
       "| 17 | 16 |  -1 |  1 |\n",
       "| 12 | 16 |   4 |  4 |\n",
       "| 21 |  9 | -12 | 12 |\n",
       "| 49 |  9 | -40 | 40 |\n",
       "| 14 | 18 |   4 |  4 |\n",
       "| 55 |  4 | -51 | 51 |\n",
       "| 46 | 17 | -29 | 29 |\n",
       "| 22 |  0 | -22 | 22 |\n",
       "| 28 | 11 | -17 | 17 |\n",
       "| 23 | 14 |  -9 |  9 |\n",
       "| 37 |  0 | -37 | 37 |\n",
       "| 17 | 19 |   2 |  2 |\n",
       "| 31 |  2 | -29 | 29 |\n",
       "| 49 |  9 | -40 | 40 |\n",
       "| 49 |  6 | -43 | 43 |\n",
       "\n"
      ],
      "text/plain": [
       "   Antes Depois Dif |Dif|\n",
       "1  39    16     -23 23   \n",
       "2  25     8     -17 17   \n",
       "3  24    12     -12 12   \n",
       "4  50     0     -50 50   \n",
       "5  13    14       1  1   \n",
       "6  52    16     -36 36   \n",
       "7  21    13      -8  8   \n",
       "8  29    12     -17 17   \n",
       "9  10    19       9  9   \n",
       "10 22    17      -5  5   \n",
       "11 50    17     -33 33   \n",
       "12 15     2     -13 13   \n",
       "13 36    15     -21 21   \n",
       "14 39    10     -29 29   \n",
       "15 52    20     -32 32   \n",
       "16 48    13     -35 35   \n",
       "17 24     0     -24 24   \n",
       "18 15     4     -11 11   \n",
       "19 40    16     -24 24   \n",
       "20 41    18     -23 23   \n",
       "21 17    16      -1  1   \n",
       "22 12    16       4  4   \n",
       "23 21     9     -12 12   \n",
       "24 49     9     -40 40   \n",
       "25 14    18       4  4   \n",
       "26 55     4     -51 51   \n",
       "27 46    17     -29 29   \n",
       "28 22     0     -22 22   \n",
       "29 28    11     -17 17   \n",
       "30 23    14      -9  9   \n",
       "31 37     0     -37 37   \n",
       "32 17    19       2  2   \n",
       "33 31     2     -29 29   \n",
       "34 49     9     -40 40   \n",
       "35 49     6     -43 43   "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "fumo['|Dif|'] = abs(fumo$Dif)\n",
    "fumo"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 103,
   "id": "1cff82b8",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:48:04.168038Z",
     "iopub.status.busy": "2024-05-06T14:48:04.165923Z",
     "iopub.status.idle": "2024-05-06T14:48:04.221424Z",
     "shell.execute_reply": "2024-05-06T14:48:04.218633Z"
    },
    "papermill": {
     "duration": 0.151074,
     "end_time": "2024-05-06T14:48:04.224640",
     "exception": false,
     "start_time": "2024-05-06T14:48:04.073566",
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
       "<caption>A data.frame: 35 × 4</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>Antes</th><th scope=col>Depois</th><th scope=col>Dif</th><th scope=col>|Dif|</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>5</th><td>13</td><td>14</td><td>  1</td><td> 1</td></tr>\n",
       "\t<tr><th scope=row>21</th><td>17</td><td>16</td><td> -1</td><td> 1</td></tr>\n",
       "\t<tr><th scope=row>32</th><td>17</td><td>19</td><td>  2</td><td> 2</td></tr>\n",
       "\t<tr><th scope=row>22</th><td>12</td><td>16</td><td>  4</td><td> 4</td></tr>\n",
       "\t<tr><th scope=row>25</th><td>14</td><td>18</td><td>  4</td><td> 4</td></tr>\n",
       "\t<tr><th scope=row>10</th><td>22</td><td>17</td><td> -5</td><td> 5</td></tr>\n",
       "\t<tr><th scope=row>7</th><td>21</td><td>13</td><td> -8</td><td> 8</td></tr>\n",
       "\t<tr><th scope=row>9</th><td>10</td><td>19</td><td>  9</td><td> 9</td></tr>\n",
       "\t<tr><th scope=row>30</th><td>23</td><td>14</td><td> -9</td><td> 9</td></tr>\n",
       "\t<tr><th scope=row>18</th><td>15</td><td> 4</td><td>-11</td><td>11</td></tr>\n",
       "\t<tr><th scope=row>3</th><td>24</td><td>12</td><td>-12</td><td>12</td></tr>\n",
       "\t<tr><th scope=row>23</th><td>21</td><td> 9</td><td>-12</td><td>12</td></tr>\n",
       "\t<tr><th scope=row>12</th><td>15</td><td> 2</td><td>-13</td><td>13</td></tr>\n",
       "\t<tr><th scope=row>2</th><td>25</td><td> 8</td><td>-17</td><td>17</td></tr>\n",
       "\t<tr><th scope=row>8</th><td>29</td><td>12</td><td>-17</td><td>17</td></tr>\n",
       "\t<tr><th scope=row>29</th><td>28</td><td>11</td><td>-17</td><td>17</td></tr>\n",
       "\t<tr><th scope=row>13</th><td>36</td><td>15</td><td>-21</td><td>21</td></tr>\n",
       "\t<tr><th scope=row>28</th><td>22</td><td> 0</td><td>-22</td><td>22</td></tr>\n",
       "\t<tr><th scope=row>1</th><td>39</td><td>16</td><td>-23</td><td>23</td></tr>\n",
       "\t<tr><th scope=row>20</th><td>41</td><td>18</td><td>-23</td><td>23</td></tr>\n",
       "\t<tr><th scope=row>17</th><td>24</td><td> 0</td><td>-24</td><td>24</td></tr>\n",
       "\t<tr><th scope=row>19</th><td>40</td><td>16</td><td>-24</td><td>24</td></tr>\n",
       "\t<tr><th scope=row>14</th><td>39</td><td>10</td><td>-29</td><td>29</td></tr>\n",
       "\t<tr><th scope=row>27</th><td>46</td><td>17</td><td>-29</td><td>29</td></tr>\n",
       "\t<tr><th scope=row>33</th><td>31</td><td> 2</td><td>-29</td><td>29</td></tr>\n",
       "\t<tr><th scope=row>15</th><td>52</td><td>20</td><td>-32</td><td>32</td></tr>\n",
       "\t<tr><th scope=row>11</th><td>50</td><td>17</td><td>-33</td><td>33</td></tr>\n",
       "\t<tr><th scope=row>16</th><td>48</td><td>13</td><td>-35</td><td>35</td></tr>\n",
       "\t<tr><th scope=row>6</th><td>52</td><td>16</td><td>-36</td><td>36</td></tr>\n",
       "\t<tr><th scope=row>31</th><td>37</td><td> 0</td><td>-37</td><td>37</td></tr>\n",
       "\t<tr><th scope=row>24</th><td>49</td><td> 9</td><td>-40</td><td>40</td></tr>\n",
       "\t<tr><th scope=row>34</th><td>49</td><td> 9</td><td>-40</td><td>40</td></tr>\n",
       "\t<tr><th scope=row>35</th><td>49</td><td> 6</td><td>-43</td><td>43</td></tr>\n",
       "\t<tr><th scope=row>4</th><td>50</td><td> 0</td><td>-50</td><td>50</td></tr>\n",
       "\t<tr><th scope=row>26</th><td>55</td><td> 4</td><td>-51</td><td>51</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 35 × 4\n",
       "\\begin{tabular}{r|llll}\n",
       "  & Antes & Depois & Dif & \\textbar{}Dif\\textbar{}\\\\\n",
       "  & <dbl> & <dbl> & <dbl> & <dbl>\\\\\n",
       "\\hline\n",
       "\t5 & 13 & 14 &   1 &  1\\\\\n",
       "\t21 & 17 & 16 &  -1 &  1\\\\\n",
       "\t32 & 17 & 19 &   2 &  2\\\\\n",
       "\t22 & 12 & 16 &   4 &  4\\\\\n",
       "\t25 & 14 & 18 &   4 &  4\\\\\n",
       "\t10 & 22 & 17 &  -5 &  5\\\\\n",
       "\t7 & 21 & 13 &  -8 &  8\\\\\n",
       "\t9 & 10 & 19 &   9 &  9\\\\\n",
       "\t30 & 23 & 14 &  -9 &  9\\\\\n",
       "\t18 & 15 &  4 & -11 & 11\\\\\n",
       "\t3 & 24 & 12 & -12 & 12\\\\\n",
       "\t23 & 21 &  9 & -12 & 12\\\\\n",
       "\t12 & 15 &  2 & -13 & 13\\\\\n",
       "\t2 & 25 &  8 & -17 & 17\\\\\n",
       "\t8 & 29 & 12 & -17 & 17\\\\\n",
       "\t29 & 28 & 11 & -17 & 17\\\\\n",
       "\t13 & 36 & 15 & -21 & 21\\\\\n",
       "\t28 & 22 &  0 & -22 & 22\\\\\n",
       "\t1 & 39 & 16 & -23 & 23\\\\\n",
       "\t20 & 41 & 18 & -23 & 23\\\\\n",
       "\t17 & 24 &  0 & -24 & 24\\\\\n",
       "\t19 & 40 & 16 & -24 & 24\\\\\n",
       "\t14 & 39 & 10 & -29 & 29\\\\\n",
       "\t27 & 46 & 17 & -29 & 29\\\\\n",
       "\t33 & 31 &  2 & -29 & 29\\\\\n",
       "\t15 & 52 & 20 & -32 & 32\\\\\n",
       "\t11 & 50 & 17 & -33 & 33\\\\\n",
       "\t16 & 48 & 13 & -35 & 35\\\\\n",
       "\t6 & 52 & 16 & -36 & 36\\\\\n",
       "\t31 & 37 &  0 & -37 & 37\\\\\n",
       "\t24 & 49 &  9 & -40 & 40\\\\\n",
       "\t34 & 49 &  9 & -40 & 40\\\\\n",
       "\t35 & 49 &  6 & -43 & 43\\\\\n",
       "\t4 & 50 &  0 & -50 & 50\\\\\n",
       "\t26 & 55 &  4 & -51 & 51\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 35 × 4\n",
       "\n",
       "| <!--/--> | Antes &lt;dbl&gt; | Depois &lt;dbl&gt; | Dif &lt;dbl&gt; | |Dif| &lt;dbl&gt; |\n",
       "|---|---|---|---|---|\n",
       "| 5 | 13 | 14 |   1 |  1 |\n",
       "| 21 | 17 | 16 |  -1 |  1 |\n",
       "| 32 | 17 | 19 |   2 |  2 |\n",
       "| 22 | 12 | 16 |   4 |  4 |\n",
       "| 25 | 14 | 18 |   4 |  4 |\n",
       "| 10 | 22 | 17 |  -5 |  5 |\n",
       "| 7 | 21 | 13 |  -8 |  8 |\n",
       "| 9 | 10 | 19 |   9 |  9 |\n",
       "| 30 | 23 | 14 |  -9 |  9 |\n",
       "| 18 | 15 |  4 | -11 | 11 |\n",
       "| 3 | 24 | 12 | -12 | 12 |\n",
       "| 23 | 21 |  9 | -12 | 12 |\n",
       "| 12 | 15 |  2 | -13 | 13 |\n",
       "| 2 | 25 |  8 | -17 | 17 |\n",
       "| 8 | 29 | 12 | -17 | 17 |\n",
       "| 29 | 28 | 11 | -17 | 17 |\n",
       "| 13 | 36 | 15 | -21 | 21 |\n",
       "| 28 | 22 |  0 | -22 | 22 |\n",
       "| 1 | 39 | 16 | -23 | 23 |\n",
       "| 20 | 41 | 18 | -23 | 23 |\n",
       "| 17 | 24 |  0 | -24 | 24 |\n",
       "| 19 | 40 | 16 | -24 | 24 |\n",
       "| 14 | 39 | 10 | -29 | 29 |\n",
       "| 27 | 46 | 17 | -29 | 29 |\n",
       "| 33 | 31 |  2 | -29 | 29 |\n",
       "| 15 | 52 | 20 | -32 | 32 |\n",
       "| 11 | 50 | 17 | -33 | 33 |\n",
       "| 16 | 48 | 13 | -35 | 35 |\n",
       "| 6 | 52 | 16 | -36 | 36 |\n",
       "| 31 | 37 |  0 | -37 | 37 |\n",
       "| 24 | 49 |  9 | -40 | 40 |\n",
       "| 34 | 49 |  9 | -40 | 40 |\n",
       "| 35 | 49 |  6 | -43 | 43 |\n",
       "| 4 | 50 |  0 | -50 | 50 |\n",
       "| 26 | 55 |  4 | -51 | 51 |\n",
       "\n"
      ],
      "text/plain": [
       "   Antes Depois Dif |Dif|\n",
       "5  13    14       1  1   \n",
       "21 17    16      -1  1   \n",
       "32 17    19       2  2   \n",
       "22 12    16       4  4   \n",
       "25 14    18       4  4   \n",
       "10 22    17      -5  5   \n",
       "7  21    13      -8  8   \n",
       "9  10    19       9  9   \n",
       "30 23    14      -9  9   \n",
       "18 15     4     -11 11   \n",
       "3  24    12     -12 12   \n",
       "23 21     9     -12 12   \n",
       "12 15     2     -13 13   \n",
       "2  25     8     -17 17   \n",
       "8  29    12     -17 17   \n",
       "29 28    11     -17 17   \n",
       "13 36    15     -21 21   \n",
       "28 22     0     -22 22   \n",
       "1  39    16     -23 23   \n",
       "20 41    18     -23 23   \n",
       "17 24     0     -24 24   \n",
       "19 40    16     -24 24   \n",
       "14 39    10     -29 29   \n",
       "27 46    17     -29 29   \n",
       "33 31     2     -29 29   \n",
       "15 52    20     -32 32   \n",
       "11 50    17     -33 33   \n",
       "16 48    13     -35 35   \n",
       "6  52    16     -36 36   \n",
       "31 37     0     -37 37   \n",
       "24 49     9     -40 40   \n",
       "34 49     9     -40 40   \n",
       "35 49     6     -43 43   \n",
       "4  50     0     -50 50   \n",
       "26 55     4     -51 51   "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "fumo <- fumo[order(fumo$'|Dif|'),]\n",
    "fumo"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 104,
   "id": "b5e65d9c",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:48:04.408913Z",
     "iopub.status.busy": "2024-05-06T14:48:04.406844Z",
     "iopub.status.idle": "2024-05-06T14:48:04.473254Z",
     "shell.execute_reply": "2024-05-06T14:48:04.470372Z"
    },
    "id": "K_JKSwLHotMx",
    "outputId": "51594adf-1a5c-4d51-aad3-ed49e4c1e018",
    "papermill": {
     "duration": 0.161755,
     "end_time": "2024-05-06T14:48:04.476706",
     "exception": false,
     "start_time": "2024-05-06T14:48:04.314951",
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
       "<caption>A data.frame: 35 × 5</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>Antes</th><th scope=col>Depois</th><th scope=col>Dif</th><th scope=col>|Dif|</th><th scope=col>Posto</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;int&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>5</th><td>13</td><td>14</td><td>  1</td><td> 1</td><td> 1</td></tr>\n",
       "\t<tr><th scope=row>21</th><td>17</td><td>16</td><td> -1</td><td> 1</td><td> 2</td></tr>\n",
       "\t<tr><th scope=row>32</th><td>17</td><td>19</td><td>  2</td><td> 2</td><td> 3</td></tr>\n",
       "\t<tr><th scope=row>22</th><td>12</td><td>16</td><td>  4</td><td> 4</td><td> 4</td></tr>\n",
       "\t<tr><th scope=row>25</th><td>14</td><td>18</td><td>  4</td><td> 4</td><td> 5</td></tr>\n",
       "\t<tr><th scope=row>10</th><td>22</td><td>17</td><td> -5</td><td> 5</td><td> 6</td></tr>\n",
       "\t<tr><th scope=row>7</th><td>21</td><td>13</td><td> -8</td><td> 8</td><td> 7</td></tr>\n",
       "\t<tr><th scope=row>9</th><td>10</td><td>19</td><td>  9</td><td> 9</td><td> 8</td></tr>\n",
       "\t<tr><th scope=row>30</th><td>23</td><td>14</td><td> -9</td><td> 9</td><td> 9</td></tr>\n",
       "\t<tr><th scope=row>18</th><td>15</td><td> 4</td><td>-11</td><td>11</td><td>10</td></tr>\n",
       "\t<tr><th scope=row>3</th><td>24</td><td>12</td><td>-12</td><td>12</td><td>11</td></tr>\n",
       "\t<tr><th scope=row>23</th><td>21</td><td> 9</td><td>-12</td><td>12</td><td>12</td></tr>\n",
       "\t<tr><th scope=row>12</th><td>15</td><td> 2</td><td>-13</td><td>13</td><td>13</td></tr>\n",
       "\t<tr><th scope=row>2</th><td>25</td><td> 8</td><td>-17</td><td>17</td><td>14</td></tr>\n",
       "\t<tr><th scope=row>8</th><td>29</td><td>12</td><td>-17</td><td>17</td><td>15</td></tr>\n",
       "\t<tr><th scope=row>29</th><td>28</td><td>11</td><td>-17</td><td>17</td><td>16</td></tr>\n",
       "\t<tr><th scope=row>13</th><td>36</td><td>15</td><td>-21</td><td>21</td><td>17</td></tr>\n",
       "\t<tr><th scope=row>28</th><td>22</td><td> 0</td><td>-22</td><td>22</td><td>18</td></tr>\n",
       "\t<tr><th scope=row>1</th><td>39</td><td>16</td><td>-23</td><td>23</td><td>19</td></tr>\n",
       "\t<tr><th scope=row>20</th><td>41</td><td>18</td><td>-23</td><td>23</td><td>20</td></tr>\n",
       "\t<tr><th scope=row>17</th><td>24</td><td> 0</td><td>-24</td><td>24</td><td>21</td></tr>\n",
       "\t<tr><th scope=row>19</th><td>40</td><td>16</td><td>-24</td><td>24</td><td>22</td></tr>\n",
       "\t<tr><th scope=row>14</th><td>39</td><td>10</td><td>-29</td><td>29</td><td>23</td></tr>\n",
       "\t<tr><th scope=row>27</th><td>46</td><td>17</td><td>-29</td><td>29</td><td>24</td></tr>\n",
       "\t<tr><th scope=row>33</th><td>31</td><td> 2</td><td>-29</td><td>29</td><td>25</td></tr>\n",
       "\t<tr><th scope=row>15</th><td>52</td><td>20</td><td>-32</td><td>32</td><td>26</td></tr>\n",
       "\t<tr><th scope=row>11</th><td>50</td><td>17</td><td>-33</td><td>33</td><td>27</td></tr>\n",
       "\t<tr><th scope=row>16</th><td>48</td><td>13</td><td>-35</td><td>35</td><td>28</td></tr>\n",
       "\t<tr><th scope=row>6</th><td>52</td><td>16</td><td>-36</td><td>36</td><td>29</td></tr>\n",
       "\t<tr><th scope=row>31</th><td>37</td><td> 0</td><td>-37</td><td>37</td><td>30</td></tr>\n",
       "\t<tr><th scope=row>24</th><td>49</td><td> 9</td><td>-40</td><td>40</td><td>31</td></tr>\n",
       "\t<tr><th scope=row>34</th><td>49</td><td> 9</td><td>-40</td><td>40</td><td>32</td></tr>\n",
       "\t<tr><th scope=row>35</th><td>49</td><td> 6</td><td>-43</td><td>43</td><td>33</td></tr>\n",
       "\t<tr><th scope=row>4</th><td>50</td><td> 0</td><td>-50</td><td>50</td><td>34</td></tr>\n",
       "\t<tr><th scope=row>26</th><td>55</td><td> 4</td><td>-51</td><td>51</td><td>35</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 35 × 5\n",
       "\\begin{tabular}{r|lllll}\n",
       "  & Antes & Depois & Dif & \\textbar{}Dif\\textbar{} & Posto\\\\\n",
       "  & <dbl> & <dbl> & <dbl> & <dbl> & <int>\\\\\n",
       "\\hline\n",
       "\t5 & 13 & 14 &   1 &  1 &  1\\\\\n",
       "\t21 & 17 & 16 &  -1 &  1 &  2\\\\\n",
       "\t32 & 17 & 19 &   2 &  2 &  3\\\\\n",
       "\t22 & 12 & 16 &   4 &  4 &  4\\\\\n",
       "\t25 & 14 & 18 &   4 &  4 &  5\\\\\n",
       "\t10 & 22 & 17 &  -5 &  5 &  6\\\\\n",
       "\t7 & 21 & 13 &  -8 &  8 &  7\\\\\n",
       "\t9 & 10 & 19 &   9 &  9 &  8\\\\\n",
       "\t30 & 23 & 14 &  -9 &  9 &  9\\\\\n",
       "\t18 & 15 &  4 & -11 & 11 & 10\\\\\n",
       "\t3 & 24 & 12 & -12 & 12 & 11\\\\\n",
       "\t23 & 21 &  9 & -12 & 12 & 12\\\\\n",
       "\t12 & 15 &  2 & -13 & 13 & 13\\\\\n",
       "\t2 & 25 &  8 & -17 & 17 & 14\\\\\n",
       "\t8 & 29 & 12 & -17 & 17 & 15\\\\\n",
       "\t29 & 28 & 11 & -17 & 17 & 16\\\\\n",
       "\t13 & 36 & 15 & -21 & 21 & 17\\\\\n",
       "\t28 & 22 &  0 & -22 & 22 & 18\\\\\n",
       "\t1 & 39 & 16 & -23 & 23 & 19\\\\\n",
       "\t20 & 41 & 18 & -23 & 23 & 20\\\\\n",
       "\t17 & 24 &  0 & -24 & 24 & 21\\\\\n",
       "\t19 & 40 & 16 & -24 & 24 & 22\\\\\n",
       "\t14 & 39 & 10 & -29 & 29 & 23\\\\\n",
       "\t27 & 46 & 17 & -29 & 29 & 24\\\\\n",
       "\t33 & 31 &  2 & -29 & 29 & 25\\\\\n",
       "\t15 & 52 & 20 & -32 & 32 & 26\\\\\n",
       "\t11 & 50 & 17 & -33 & 33 & 27\\\\\n",
       "\t16 & 48 & 13 & -35 & 35 & 28\\\\\n",
       "\t6 & 52 & 16 & -36 & 36 & 29\\\\\n",
       "\t31 & 37 &  0 & -37 & 37 & 30\\\\\n",
       "\t24 & 49 &  9 & -40 & 40 & 31\\\\\n",
       "\t34 & 49 &  9 & -40 & 40 & 32\\\\\n",
       "\t35 & 49 &  6 & -43 & 43 & 33\\\\\n",
       "\t4 & 50 &  0 & -50 & 50 & 34\\\\\n",
       "\t26 & 55 &  4 & -51 & 51 & 35\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 35 × 5\n",
       "\n",
       "| <!--/--> | Antes &lt;dbl&gt; | Depois &lt;dbl&gt; | Dif &lt;dbl&gt; | |Dif| &lt;dbl&gt; | Posto &lt;int&gt; |\n",
       "|---|---|---|---|---|---|\n",
       "| 5 | 13 | 14 |   1 |  1 |  1 |\n",
       "| 21 | 17 | 16 |  -1 |  1 |  2 |\n",
       "| 32 | 17 | 19 |   2 |  2 |  3 |\n",
       "| 22 | 12 | 16 |   4 |  4 |  4 |\n",
       "| 25 | 14 | 18 |   4 |  4 |  5 |\n",
       "| 10 | 22 | 17 |  -5 |  5 |  6 |\n",
       "| 7 | 21 | 13 |  -8 |  8 |  7 |\n",
       "| 9 | 10 | 19 |   9 |  9 |  8 |\n",
       "| 30 | 23 | 14 |  -9 |  9 |  9 |\n",
       "| 18 | 15 |  4 | -11 | 11 | 10 |\n",
       "| 3 | 24 | 12 | -12 | 12 | 11 |\n",
       "| 23 | 21 |  9 | -12 | 12 | 12 |\n",
       "| 12 | 15 |  2 | -13 | 13 | 13 |\n",
       "| 2 | 25 |  8 | -17 | 17 | 14 |\n",
       "| 8 | 29 | 12 | -17 | 17 | 15 |\n",
       "| 29 | 28 | 11 | -17 | 17 | 16 |\n",
       "| 13 | 36 | 15 | -21 | 21 | 17 |\n",
       "| 28 | 22 |  0 | -22 | 22 | 18 |\n",
       "| 1 | 39 | 16 | -23 | 23 | 19 |\n",
       "| 20 | 41 | 18 | -23 | 23 | 20 |\n",
       "| 17 | 24 |  0 | -24 | 24 | 21 |\n",
       "| 19 | 40 | 16 | -24 | 24 | 22 |\n",
       "| 14 | 39 | 10 | -29 | 29 | 23 |\n",
       "| 27 | 46 | 17 | -29 | 29 | 24 |\n",
       "| 33 | 31 |  2 | -29 | 29 | 25 |\n",
       "| 15 | 52 | 20 | -32 | 32 | 26 |\n",
       "| 11 | 50 | 17 | -33 | 33 | 27 |\n",
       "| 16 | 48 | 13 | -35 | 35 | 28 |\n",
       "| 6 | 52 | 16 | -36 | 36 | 29 |\n",
       "| 31 | 37 |  0 | -37 | 37 | 30 |\n",
       "| 24 | 49 |  9 | -40 | 40 | 31 |\n",
       "| 34 | 49 |  9 | -40 | 40 | 32 |\n",
       "| 35 | 49 |  6 | -43 | 43 | 33 |\n",
       "| 4 | 50 |  0 | -50 | 50 | 34 |\n",
       "| 26 | 55 |  4 | -51 | 51 | 35 |\n",
       "\n"
      ],
      "text/plain": [
       "   Antes Depois Dif |Dif| Posto\n",
       "5  13    14       1  1     1   \n",
       "21 17    16      -1  1     2   \n",
       "32 17    19       2  2     3   \n",
       "22 12    16       4  4     4   \n",
       "25 14    18       4  4     5   \n",
       "10 22    17      -5  5     6   \n",
       "7  21    13      -8  8     7   \n",
       "9  10    19       9  9     8   \n",
       "30 23    14      -9  9     9   \n",
       "18 15     4     -11 11    10   \n",
       "3  24    12     -12 12    11   \n",
       "23 21     9     -12 12    12   \n",
       "12 15     2     -13 13    13   \n",
       "2  25     8     -17 17    14   \n",
       "8  29    12     -17 17    15   \n",
       "29 28    11     -17 17    16   \n",
       "13 36    15     -21 21    17   \n",
       "28 22     0     -22 22    18   \n",
       "1  39    16     -23 23    19   \n",
       "20 41    18     -23 23    20   \n",
       "17 24     0     -24 24    21   \n",
       "19 40    16     -24 24    22   \n",
       "14 39    10     -29 29    23   \n",
       "27 46    17     -29 29    24   \n",
       "33 31     2     -29 29    25   \n",
       "15 52    20     -32 32    26   \n",
       "11 50    17     -33 33    27   \n",
       "16 48    13     -35 35    28   \n",
       "6  52    16     -36 36    29   \n",
       "31 37     0     -37 37    30   \n",
       "24 49     9     -40 40    31   \n",
       "34 49     9     -40 40    32   \n",
       "35 49     6     -43 43    33   \n",
       "4  50     0     -50 50    34   \n",
       "26 55     4     -51 51    35   "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "fumo['Posto'] <- seq(1, nrow(fumo))\n",
    "fumo"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 105,
   "id": "9b3a015e",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:48:04.665504Z",
     "iopub.status.busy": "2024-05-06T14:48:04.663595Z",
     "iopub.status.idle": "2024-05-06T14:48:04.703847Z",
     "shell.execute_reply": "2024-05-06T14:48:04.701673Z"
    },
    "papermill": {
     "duration": 0.135587,
     "end_time": "2024-05-06T14:48:04.706620",
     "exception": false,
     "start_time": "2024-05-06T14:48:04.571033",
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
       "<caption>A data.frame: 24 × 2</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>|Dif|</th><th scope=col>Posto</th></tr>\n",
       "\t<tr><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td> 1</td><td> 1.5</td></tr>\n",
       "\t<tr><td> 2</td><td> 3.0</td></tr>\n",
       "\t<tr><td> 4</td><td> 4.5</td></tr>\n",
       "\t<tr><td> 5</td><td> 6.0</td></tr>\n",
       "\t<tr><td> 8</td><td> 7.0</td></tr>\n",
       "\t<tr><td> 9</td><td> 8.5</td></tr>\n",
       "\t<tr><td>11</td><td>10.0</td></tr>\n",
       "\t<tr><td>12</td><td>11.5</td></tr>\n",
       "\t<tr><td>13</td><td>13.0</td></tr>\n",
       "\t<tr><td>17</td><td>15.0</td></tr>\n",
       "\t<tr><td>21</td><td>17.0</td></tr>\n",
       "\t<tr><td>22</td><td>18.0</td></tr>\n",
       "\t<tr><td>23</td><td>19.5</td></tr>\n",
       "\t<tr><td>24</td><td>21.5</td></tr>\n",
       "\t<tr><td>29</td><td>24.0</td></tr>\n",
       "\t<tr><td>32</td><td>26.0</td></tr>\n",
       "\t<tr><td>33</td><td>27.0</td></tr>\n",
       "\t<tr><td>35</td><td>28.0</td></tr>\n",
       "\t<tr><td>36</td><td>29.0</td></tr>\n",
       "\t<tr><td>37</td><td>30.0</td></tr>\n",
       "\t<tr><td>40</td><td>31.5</td></tr>\n",
       "\t<tr><td>43</td><td>33.0</td></tr>\n",
       "\t<tr><td>50</td><td>34.0</td></tr>\n",
       "\t<tr><td>51</td><td>35.0</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 24 × 2\n",
       "\\begin{tabular}{ll}\n",
       " \\textbar{}Dif\\textbar{} & Posto\\\\\n",
       " <dbl> & <dbl>\\\\\n",
       "\\hline\n",
       "\t  1 &  1.5\\\\\n",
       "\t  2 &  3.0\\\\\n",
       "\t  4 &  4.5\\\\\n",
       "\t  5 &  6.0\\\\\n",
       "\t  8 &  7.0\\\\\n",
       "\t  9 &  8.5\\\\\n",
       "\t 11 & 10.0\\\\\n",
       "\t 12 & 11.5\\\\\n",
       "\t 13 & 13.0\\\\\n",
       "\t 17 & 15.0\\\\\n",
       "\t 21 & 17.0\\\\\n",
       "\t 22 & 18.0\\\\\n",
       "\t 23 & 19.5\\\\\n",
       "\t 24 & 21.5\\\\\n",
       "\t 29 & 24.0\\\\\n",
       "\t 32 & 26.0\\\\\n",
       "\t 33 & 27.0\\\\\n",
       "\t 35 & 28.0\\\\\n",
       "\t 36 & 29.0\\\\\n",
       "\t 37 & 30.0\\\\\n",
       "\t 40 & 31.5\\\\\n",
       "\t 43 & 33.0\\\\\n",
       "\t 50 & 34.0\\\\\n",
       "\t 51 & 35.0\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 24 × 2\n",
       "\n",
       "| |Dif| &lt;dbl&gt; | Posto &lt;dbl&gt; |\n",
       "|---|---|\n",
       "|  1 |  1.5 |\n",
       "|  2 |  3.0 |\n",
       "|  4 |  4.5 |\n",
       "|  5 |  6.0 |\n",
       "|  8 |  7.0 |\n",
       "|  9 |  8.5 |\n",
       "| 11 | 10.0 |\n",
       "| 12 | 11.5 |\n",
       "| 13 | 13.0 |\n",
       "| 17 | 15.0 |\n",
       "| 21 | 17.0 |\n",
       "| 22 | 18.0 |\n",
       "| 23 | 19.5 |\n",
       "| 24 | 21.5 |\n",
       "| 29 | 24.0 |\n",
       "| 32 | 26.0 |\n",
       "| 33 | 27.0 |\n",
       "| 35 | 28.0 |\n",
       "| 36 | 29.0 |\n",
       "| 37 | 30.0 |\n",
       "| 40 | 31.5 |\n",
       "| 43 | 33.0 |\n",
       "| 50 | 34.0 |\n",
       "| 51 | 35.0 |\n",
       "\n"
      ],
      "text/plain": [
       "   |Dif| Posto\n",
       "1   1     1.5 \n",
       "2   2     3.0 \n",
       "3   4     4.5 \n",
       "4   5     6.0 \n",
       "5   8     7.0 \n",
       "6   9     8.5 \n",
       "7  11    10.0 \n",
       "8  12    11.5 \n",
       "9  13    13.0 \n",
       "10 17    15.0 \n",
       "11 21    17.0 \n",
       "12 22    18.0 \n",
       "13 23    19.5 \n",
       "14 24    21.5 \n",
       "15 29    24.0 \n",
       "16 32    26.0 \n",
       "17 33    27.0 \n",
       "18 35    28.0 \n",
       "19 36    29.0 \n",
       "20 37    30.0 \n",
       "21 40    31.5 \n",
       "22 43    33.0 \n",
       "23 50    34.0 \n",
       "24 51    35.0 "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "posto <- aggregate(x = fumo$'Posto', by = list(fumo$'|Dif|'), FUN = mean)\n",
    "colnames(posto) <- c('|Dif|', 'Posto')\n",
    "posto"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 106,
   "id": "d7164858",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:48:04.894567Z",
     "iopub.status.busy": "2024-05-06T14:48:04.892682Z",
     "iopub.status.idle": "2024-05-06T14:48:04.944986Z",
     "shell.execute_reply": "2024-05-06T14:48:04.942913Z"
    },
    "papermill": {
     "duration": 0.148255,
     "end_time": "2024-05-06T14:48:04.947966",
     "exception": false,
     "start_time": "2024-05-06T14:48:04.799711",
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
       "<caption>A data.frame: 35 × 4</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>Antes</th><th scope=col>Depois</th><th scope=col>Dif</th><th scope=col>|Dif|</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>5</th><td>13</td><td>14</td><td>  1</td><td> 1</td></tr>\n",
       "\t<tr><th scope=row>21</th><td>17</td><td>16</td><td> -1</td><td> 1</td></tr>\n",
       "\t<tr><th scope=row>32</th><td>17</td><td>19</td><td>  2</td><td> 2</td></tr>\n",
       "\t<tr><th scope=row>22</th><td>12</td><td>16</td><td>  4</td><td> 4</td></tr>\n",
       "\t<tr><th scope=row>25</th><td>14</td><td>18</td><td>  4</td><td> 4</td></tr>\n",
       "\t<tr><th scope=row>10</th><td>22</td><td>17</td><td> -5</td><td> 5</td></tr>\n",
       "\t<tr><th scope=row>7</th><td>21</td><td>13</td><td> -8</td><td> 8</td></tr>\n",
       "\t<tr><th scope=row>9</th><td>10</td><td>19</td><td>  9</td><td> 9</td></tr>\n",
       "\t<tr><th scope=row>30</th><td>23</td><td>14</td><td> -9</td><td> 9</td></tr>\n",
       "\t<tr><th scope=row>18</th><td>15</td><td> 4</td><td>-11</td><td>11</td></tr>\n",
       "\t<tr><th scope=row>3</th><td>24</td><td>12</td><td>-12</td><td>12</td></tr>\n",
       "\t<tr><th scope=row>23</th><td>21</td><td> 9</td><td>-12</td><td>12</td></tr>\n",
       "\t<tr><th scope=row>12</th><td>15</td><td> 2</td><td>-13</td><td>13</td></tr>\n",
       "\t<tr><th scope=row>2</th><td>25</td><td> 8</td><td>-17</td><td>17</td></tr>\n",
       "\t<tr><th scope=row>8</th><td>29</td><td>12</td><td>-17</td><td>17</td></tr>\n",
       "\t<tr><th scope=row>29</th><td>28</td><td>11</td><td>-17</td><td>17</td></tr>\n",
       "\t<tr><th scope=row>13</th><td>36</td><td>15</td><td>-21</td><td>21</td></tr>\n",
       "\t<tr><th scope=row>28</th><td>22</td><td> 0</td><td>-22</td><td>22</td></tr>\n",
       "\t<tr><th scope=row>1</th><td>39</td><td>16</td><td>-23</td><td>23</td></tr>\n",
       "\t<tr><th scope=row>20</th><td>41</td><td>18</td><td>-23</td><td>23</td></tr>\n",
       "\t<tr><th scope=row>17</th><td>24</td><td> 0</td><td>-24</td><td>24</td></tr>\n",
       "\t<tr><th scope=row>19</th><td>40</td><td>16</td><td>-24</td><td>24</td></tr>\n",
       "\t<tr><th scope=row>14</th><td>39</td><td>10</td><td>-29</td><td>29</td></tr>\n",
       "\t<tr><th scope=row>27</th><td>46</td><td>17</td><td>-29</td><td>29</td></tr>\n",
       "\t<tr><th scope=row>33</th><td>31</td><td> 2</td><td>-29</td><td>29</td></tr>\n",
       "\t<tr><th scope=row>15</th><td>52</td><td>20</td><td>-32</td><td>32</td></tr>\n",
       "\t<tr><th scope=row>11</th><td>50</td><td>17</td><td>-33</td><td>33</td></tr>\n",
       "\t<tr><th scope=row>16</th><td>48</td><td>13</td><td>-35</td><td>35</td></tr>\n",
       "\t<tr><th scope=row>6</th><td>52</td><td>16</td><td>-36</td><td>36</td></tr>\n",
       "\t<tr><th scope=row>31</th><td>37</td><td> 0</td><td>-37</td><td>37</td></tr>\n",
       "\t<tr><th scope=row>24</th><td>49</td><td> 9</td><td>-40</td><td>40</td></tr>\n",
       "\t<tr><th scope=row>34</th><td>49</td><td> 9</td><td>-40</td><td>40</td></tr>\n",
       "\t<tr><th scope=row>35</th><td>49</td><td> 6</td><td>-43</td><td>43</td></tr>\n",
       "\t<tr><th scope=row>4</th><td>50</td><td> 0</td><td>-50</td><td>50</td></tr>\n",
       "\t<tr><th scope=row>26</th><td>55</td><td> 4</td><td>-51</td><td>51</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 35 × 4\n",
       "\\begin{tabular}{r|llll}\n",
       "  & Antes & Depois & Dif & \\textbar{}Dif\\textbar{}\\\\\n",
       "  & <dbl> & <dbl> & <dbl> & <dbl>\\\\\n",
       "\\hline\n",
       "\t5 & 13 & 14 &   1 &  1\\\\\n",
       "\t21 & 17 & 16 &  -1 &  1\\\\\n",
       "\t32 & 17 & 19 &   2 &  2\\\\\n",
       "\t22 & 12 & 16 &   4 &  4\\\\\n",
       "\t25 & 14 & 18 &   4 &  4\\\\\n",
       "\t10 & 22 & 17 &  -5 &  5\\\\\n",
       "\t7 & 21 & 13 &  -8 &  8\\\\\n",
       "\t9 & 10 & 19 &   9 &  9\\\\\n",
       "\t30 & 23 & 14 &  -9 &  9\\\\\n",
       "\t18 & 15 &  4 & -11 & 11\\\\\n",
       "\t3 & 24 & 12 & -12 & 12\\\\\n",
       "\t23 & 21 &  9 & -12 & 12\\\\\n",
       "\t12 & 15 &  2 & -13 & 13\\\\\n",
       "\t2 & 25 &  8 & -17 & 17\\\\\n",
       "\t8 & 29 & 12 & -17 & 17\\\\\n",
       "\t29 & 28 & 11 & -17 & 17\\\\\n",
       "\t13 & 36 & 15 & -21 & 21\\\\\n",
       "\t28 & 22 &  0 & -22 & 22\\\\\n",
       "\t1 & 39 & 16 & -23 & 23\\\\\n",
       "\t20 & 41 & 18 & -23 & 23\\\\\n",
       "\t17 & 24 &  0 & -24 & 24\\\\\n",
       "\t19 & 40 & 16 & -24 & 24\\\\\n",
       "\t14 & 39 & 10 & -29 & 29\\\\\n",
       "\t27 & 46 & 17 & -29 & 29\\\\\n",
       "\t33 & 31 &  2 & -29 & 29\\\\\n",
       "\t15 & 52 & 20 & -32 & 32\\\\\n",
       "\t11 & 50 & 17 & -33 & 33\\\\\n",
       "\t16 & 48 & 13 & -35 & 35\\\\\n",
       "\t6 & 52 & 16 & -36 & 36\\\\\n",
       "\t31 & 37 &  0 & -37 & 37\\\\\n",
       "\t24 & 49 &  9 & -40 & 40\\\\\n",
       "\t34 & 49 &  9 & -40 & 40\\\\\n",
       "\t35 & 49 &  6 & -43 & 43\\\\\n",
       "\t4 & 50 &  0 & -50 & 50\\\\\n",
       "\t26 & 55 &  4 & -51 & 51\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 35 × 4\n",
       "\n",
       "| <!--/--> | Antes &lt;dbl&gt; | Depois &lt;dbl&gt; | Dif &lt;dbl&gt; | |Dif| &lt;dbl&gt; |\n",
       "|---|---|---|---|---|\n",
       "| 5 | 13 | 14 |   1 |  1 |\n",
       "| 21 | 17 | 16 |  -1 |  1 |\n",
       "| 32 | 17 | 19 |   2 |  2 |\n",
       "| 22 | 12 | 16 |   4 |  4 |\n",
       "| 25 | 14 | 18 |   4 |  4 |\n",
       "| 10 | 22 | 17 |  -5 |  5 |\n",
       "| 7 | 21 | 13 |  -8 |  8 |\n",
       "| 9 | 10 | 19 |   9 |  9 |\n",
       "| 30 | 23 | 14 |  -9 |  9 |\n",
       "| 18 | 15 |  4 | -11 | 11 |\n",
       "| 3 | 24 | 12 | -12 | 12 |\n",
       "| 23 | 21 |  9 | -12 | 12 |\n",
       "| 12 | 15 |  2 | -13 | 13 |\n",
       "| 2 | 25 |  8 | -17 | 17 |\n",
       "| 8 | 29 | 12 | -17 | 17 |\n",
       "| 29 | 28 | 11 | -17 | 17 |\n",
       "| 13 | 36 | 15 | -21 | 21 |\n",
       "| 28 | 22 |  0 | -22 | 22 |\n",
       "| 1 | 39 | 16 | -23 | 23 |\n",
       "| 20 | 41 | 18 | -23 | 23 |\n",
       "| 17 | 24 |  0 | -24 | 24 |\n",
       "| 19 | 40 | 16 | -24 | 24 |\n",
       "| 14 | 39 | 10 | -29 | 29 |\n",
       "| 27 | 46 | 17 | -29 | 29 |\n",
       "| 33 | 31 |  2 | -29 | 29 |\n",
       "| 15 | 52 | 20 | -32 | 32 |\n",
       "| 11 | 50 | 17 | -33 | 33 |\n",
       "| 16 | 48 | 13 | -35 | 35 |\n",
       "| 6 | 52 | 16 | -36 | 36 |\n",
       "| 31 | 37 |  0 | -37 | 37 |\n",
       "| 24 | 49 |  9 | -40 | 40 |\n",
       "| 34 | 49 |  9 | -40 | 40 |\n",
       "| 35 | 49 |  6 | -43 | 43 |\n",
       "| 4 | 50 |  0 | -50 | 50 |\n",
       "| 26 | 55 |  4 | -51 | 51 |\n",
       "\n"
      ],
      "text/plain": [
       "   Antes Depois Dif |Dif|\n",
       "5  13    14       1  1   \n",
       "21 17    16      -1  1   \n",
       "32 17    19       2  2   \n",
       "22 12    16       4  4   \n",
       "25 14    18       4  4   \n",
       "10 22    17      -5  5   \n",
       "7  21    13      -8  8   \n",
       "9  10    19       9  9   \n",
       "30 23    14      -9  9   \n",
       "18 15     4     -11 11   \n",
       "3  24    12     -12 12   \n",
       "23 21     9     -12 12   \n",
       "12 15     2     -13 13   \n",
       "2  25     8     -17 17   \n",
       "8  29    12     -17 17   \n",
       "29 28    11     -17 17   \n",
       "13 36    15     -21 21   \n",
       "28 22     0     -22 22   \n",
       "1  39    16     -23 23   \n",
       "20 41    18     -23 23   \n",
       "17 24     0     -24 24   \n",
       "19 40    16     -24 24   \n",
       "14 39    10     -29 29   \n",
       "27 46    17     -29 29   \n",
       "33 31     2     -29 29   \n",
       "15 52    20     -32 32   \n",
       "11 50    17     -33 33   \n",
       "16 48    13     -35 35   \n",
       "6  52    16     -36 36   \n",
       "31 37     0     -37 37   \n",
       "24 49     9     -40 40   \n",
       "34 49     9     -40 40   \n",
       "35 49     6     -43 43   \n",
       "4  50     0     -50 50   \n",
       "26 55     4     -51 51   "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "fumo$Posto <- NULL\n",
    "fumo"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 107,
   "id": "efc30c5e",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:48:05.135019Z",
     "iopub.status.busy": "2024-05-06T14:48:05.133127Z",
     "iopub.status.idle": "2024-05-06T14:48:05.186240Z",
     "shell.execute_reply": "2024-05-06T14:48:05.184085Z"
    },
    "papermill": {
     "duration": 0.14856,
     "end_time": "2024-05-06T14:48:05.188945",
     "exception": false,
     "start_time": "2024-05-06T14:48:05.040385",
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
       "<caption>A data.frame: 35 × 5</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>|Dif|</th><th scope=col>Antes</th><th scope=col>Depois</th><th scope=col>Dif</th><th scope=col>Posto</th></tr>\n",
       "\t<tr><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td> 1</td><td>13</td><td>14</td><td>  1</td><td> 1.5</td></tr>\n",
       "\t<tr><td> 1</td><td>17</td><td>16</td><td> -1</td><td> 1.5</td></tr>\n",
       "\t<tr><td> 2</td><td>17</td><td>19</td><td>  2</td><td> 3.0</td></tr>\n",
       "\t<tr><td> 4</td><td>12</td><td>16</td><td>  4</td><td> 4.5</td></tr>\n",
       "\t<tr><td> 4</td><td>14</td><td>18</td><td>  4</td><td> 4.5</td></tr>\n",
       "\t<tr><td> 5</td><td>22</td><td>17</td><td> -5</td><td> 6.0</td></tr>\n",
       "\t<tr><td> 8</td><td>21</td><td>13</td><td> -8</td><td> 7.0</td></tr>\n",
       "\t<tr><td> 9</td><td>10</td><td>19</td><td>  9</td><td> 8.5</td></tr>\n",
       "\t<tr><td> 9</td><td>23</td><td>14</td><td> -9</td><td> 8.5</td></tr>\n",
       "\t<tr><td>11</td><td>15</td><td> 4</td><td>-11</td><td>10.0</td></tr>\n",
       "\t<tr><td>12</td><td>24</td><td>12</td><td>-12</td><td>11.5</td></tr>\n",
       "\t<tr><td>12</td><td>21</td><td> 9</td><td>-12</td><td>11.5</td></tr>\n",
       "\t<tr><td>13</td><td>15</td><td> 2</td><td>-13</td><td>13.0</td></tr>\n",
       "\t<tr><td>17</td><td>25</td><td> 8</td><td>-17</td><td>15.0</td></tr>\n",
       "\t<tr><td>17</td><td>29</td><td>12</td><td>-17</td><td>15.0</td></tr>\n",
       "\t<tr><td>17</td><td>28</td><td>11</td><td>-17</td><td>15.0</td></tr>\n",
       "\t<tr><td>21</td><td>36</td><td>15</td><td>-21</td><td>17.0</td></tr>\n",
       "\t<tr><td>22</td><td>22</td><td> 0</td><td>-22</td><td>18.0</td></tr>\n",
       "\t<tr><td>23</td><td>39</td><td>16</td><td>-23</td><td>19.5</td></tr>\n",
       "\t<tr><td>23</td><td>41</td><td>18</td><td>-23</td><td>19.5</td></tr>\n",
       "\t<tr><td>24</td><td>24</td><td> 0</td><td>-24</td><td>21.5</td></tr>\n",
       "\t<tr><td>24</td><td>40</td><td>16</td><td>-24</td><td>21.5</td></tr>\n",
       "\t<tr><td>29</td><td>39</td><td>10</td><td>-29</td><td>24.0</td></tr>\n",
       "\t<tr><td>29</td><td>46</td><td>17</td><td>-29</td><td>24.0</td></tr>\n",
       "\t<tr><td>29</td><td>31</td><td> 2</td><td>-29</td><td>24.0</td></tr>\n",
       "\t<tr><td>32</td><td>52</td><td>20</td><td>-32</td><td>26.0</td></tr>\n",
       "\t<tr><td>33</td><td>50</td><td>17</td><td>-33</td><td>27.0</td></tr>\n",
       "\t<tr><td>35</td><td>48</td><td>13</td><td>-35</td><td>28.0</td></tr>\n",
       "\t<tr><td>36</td><td>52</td><td>16</td><td>-36</td><td>29.0</td></tr>\n",
       "\t<tr><td>37</td><td>37</td><td> 0</td><td>-37</td><td>30.0</td></tr>\n",
       "\t<tr><td>40</td><td>49</td><td> 9</td><td>-40</td><td>31.5</td></tr>\n",
       "\t<tr><td>40</td><td>49</td><td> 9</td><td>-40</td><td>31.5</td></tr>\n",
       "\t<tr><td>43</td><td>49</td><td> 6</td><td>-43</td><td>33.0</td></tr>\n",
       "\t<tr><td>50</td><td>50</td><td> 0</td><td>-50</td><td>34.0</td></tr>\n",
       "\t<tr><td>51</td><td>55</td><td> 4</td><td>-51</td><td>35.0</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 35 × 5\n",
       "\\begin{tabular}{lllll}\n",
       " \\textbar{}Dif\\textbar{} & Antes & Depois & Dif & Posto\\\\\n",
       " <dbl> & <dbl> & <dbl> & <dbl> & <dbl>\\\\\n",
       "\\hline\n",
       "\t  1 & 13 & 14 &   1 &  1.5\\\\\n",
       "\t  1 & 17 & 16 &  -1 &  1.5\\\\\n",
       "\t  2 & 17 & 19 &   2 &  3.0\\\\\n",
       "\t  4 & 12 & 16 &   4 &  4.5\\\\\n",
       "\t  4 & 14 & 18 &   4 &  4.5\\\\\n",
       "\t  5 & 22 & 17 &  -5 &  6.0\\\\\n",
       "\t  8 & 21 & 13 &  -8 &  7.0\\\\\n",
       "\t  9 & 10 & 19 &   9 &  8.5\\\\\n",
       "\t  9 & 23 & 14 &  -9 &  8.5\\\\\n",
       "\t 11 & 15 &  4 & -11 & 10.0\\\\\n",
       "\t 12 & 24 & 12 & -12 & 11.5\\\\\n",
       "\t 12 & 21 &  9 & -12 & 11.5\\\\\n",
       "\t 13 & 15 &  2 & -13 & 13.0\\\\\n",
       "\t 17 & 25 &  8 & -17 & 15.0\\\\\n",
       "\t 17 & 29 & 12 & -17 & 15.0\\\\\n",
       "\t 17 & 28 & 11 & -17 & 15.0\\\\\n",
       "\t 21 & 36 & 15 & -21 & 17.0\\\\\n",
       "\t 22 & 22 &  0 & -22 & 18.0\\\\\n",
       "\t 23 & 39 & 16 & -23 & 19.5\\\\\n",
       "\t 23 & 41 & 18 & -23 & 19.5\\\\\n",
       "\t 24 & 24 &  0 & -24 & 21.5\\\\\n",
       "\t 24 & 40 & 16 & -24 & 21.5\\\\\n",
       "\t 29 & 39 & 10 & -29 & 24.0\\\\\n",
       "\t 29 & 46 & 17 & -29 & 24.0\\\\\n",
       "\t 29 & 31 &  2 & -29 & 24.0\\\\\n",
       "\t 32 & 52 & 20 & -32 & 26.0\\\\\n",
       "\t 33 & 50 & 17 & -33 & 27.0\\\\\n",
       "\t 35 & 48 & 13 & -35 & 28.0\\\\\n",
       "\t 36 & 52 & 16 & -36 & 29.0\\\\\n",
       "\t 37 & 37 &  0 & -37 & 30.0\\\\\n",
       "\t 40 & 49 &  9 & -40 & 31.5\\\\\n",
       "\t 40 & 49 &  9 & -40 & 31.5\\\\\n",
       "\t 43 & 49 &  6 & -43 & 33.0\\\\\n",
       "\t 50 & 50 &  0 & -50 & 34.0\\\\\n",
       "\t 51 & 55 &  4 & -51 & 35.0\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 35 × 5\n",
       "\n",
       "| |Dif| &lt;dbl&gt; | Antes &lt;dbl&gt; | Depois &lt;dbl&gt; | Dif &lt;dbl&gt; | Posto &lt;dbl&gt; |\n",
       "|---|---|---|---|---|\n",
       "|  1 | 13 | 14 |   1 |  1.5 |\n",
       "|  1 | 17 | 16 |  -1 |  1.5 |\n",
       "|  2 | 17 | 19 |   2 |  3.0 |\n",
       "|  4 | 12 | 16 |   4 |  4.5 |\n",
       "|  4 | 14 | 18 |   4 |  4.5 |\n",
       "|  5 | 22 | 17 |  -5 |  6.0 |\n",
       "|  8 | 21 | 13 |  -8 |  7.0 |\n",
       "|  9 | 10 | 19 |   9 |  8.5 |\n",
       "|  9 | 23 | 14 |  -9 |  8.5 |\n",
       "| 11 | 15 |  4 | -11 | 10.0 |\n",
       "| 12 | 24 | 12 | -12 | 11.5 |\n",
       "| 12 | 21 |  9 | -12 | 11.5 |\n",
       "| 13 | 15 |  2 | -13 | 13.0 |\n",
       "| 17 | 25 |  8 | -17 | 15.0 |\n",
       "| 17 | 29 | 12 | -17 | 15.0 |\n",
       "| 17 | 28 | 11 | -17 | 15.0 |\n",
       "| 21 | 36 | 15 | -21 | 17.0 |\n",
       "| 22 | 22 |  0 | -22 | 18.0 |\n",
       "| 23 | 39 | 16 | -23 | 19.5 |\n",
       "| 23 | 41 | 18 | -23 | 19.5 |\n",
       "| 24 | 24 |  0 | -24 | 21.5 |\n",
       "| 24 | 40 | 16 | -24 | 21.5 |\n",
       "| 29 | 39 | 10 | -29 | 24.0 |\n",
       "| 29 | 46 | 17 | -29 | 24.0 |\n",
       "| 29 | 31 |  2 | -29 | 24.0 |\n",
       "| 32 | 52 | 20 | -32 | 26.0 |\n",
       "| 33 | 50 | 17 | -33 | 27.0 |\n",
       "| 35 | 48 | 13 | -35 | 28.0 |\n",
       "| 36 | 52 | 16 | -36 | 29.0 |\n",
       "| 37 | 37 |  0 | -37 | 30.0 |\n",
       "| 40 | 49 |  9 | -40 | 31.5 |\n",
       "| 40 | 49 |  9 | -40 | 31.5 |\n",
       "| 43 | 49 |  6 | -43 | 33.0 |\n",
       "| 50 | 50 |  0 | -50 | 34.0 |\n",
       "| 51 | 55 |  4 | -51 | 35.0 |\n",
       "\n"
      ],
      "text/plain": [
       "   |Dif| Antes Depois Dif Posto\n",
       "1   1    13    14       1  1.5 \n",
       "2   1    17    16      -1  1.5 \n",
       "3   2    17    19       2  3.0 \n",
       "4   4    12    16       4  4.5 \n",
       "5   4    14    18       4  4.5 \n",
       "6   5    22    17      -5  6.0 \n",
       "7   8    21    13      -8  7.0 \n",
       "8   9    10    19       9  8.5 \n",
       "9   9    23    14      -9  8.5 \n",
       "10 11    15     4     -11 10.0 \n",
       "11 12    24    12     -12 11.5 \n",
       "12 12    21     9     -12 11.5 \n",
       "13 13    15     2     -13 13.0 \n",
       "14 17    25     8     -17 15.0 \n",
       "15 17    29    12     -17 15.0 \n",
       "16 17    28    11     -17 15.0 \n",
       "17 21    36    15     -21 17.0 \n",
       "18 22    22     0     -22 18.0 \n",
       "19 23    39    16     -23 19.5 \n",
       "20 23    41    18     -23 19.5 \n",
       "21 24    24     0     -24 21.5 \n",
       "22 24    40    16     -24 21.5 \n",
       "23 29    39    10     -29 24.0 \n",
       "24 29    46    17     -29 24.0 \n",
       "25 29    31     2     -29 24.0 \n",
       "26 32    52    20     -32 26.0 \n",
       "27 33    50    17     -33 27.0 \n",
       "28 35    48    13     -35 28.0 \n",
       "29 36    52    16     -36 29.0 \n",
       "30 37    37     0     -37 30.0 \n",
       "31 40    49     9     -40 31.5 \n",
       "32 40    49     9     -40 31.5 \n",
       "33 43    49     6     -43 33.0 \n",
       "34 50    50     0     -50 34.0 \n",
       "35 51    55     4     -51 35.0 "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "fumo <- merge(x = fumo, y = posto, by = '|Dif|', all.x = TRUE)\n",
    "fumo"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 108,
   "id": "6c8023ba",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:48:05.382694Z",
     "iopub.status.busy": "2024-05-06T14:48:05.380790Z",
     "iopub.status.idle": "2024-05-06T14:48:05.437843Z",
     "shell.execute_reply": "2024-05-06T14:48:05.435662Z"
    },
    "papermill": {
     "duration": 0.157308,
     "end_time": "2024-05-06T14:48:05.440727",
     "exception": false,
     "start_time": "2024-05-06T14:48:05.283419",
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
       "<caption>A data.frame: 35 × 6</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>|Dif|</th><th scope=col>Antes</th><th scope=col>Depois</th><th scope=col>Dif</th><th scope=col>Posto</th><th scope=col>Posto (+)</th></tr>\n",
       "\t<tr><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td> 1</td><td>13</td><td>14</td><td>  1</td><td> 1.5</td><td>1.5</td></tr>\n",
       "\t<tr><td> 1</td><td>17</td><td>16</td><td> -1</td><td> 1.5</td><td>0.0</td></tr>\n",
       "\t<tr><td> 2</td><td>17</td><td>19</td><td>  2</td><td> 3.0</td><td>3.0</td></tr>\n",
       "\t<tr><td> 4</td><td>12</td><td>16</td><td>  4</td><td> 4.5</td><td>4.5</td></tr>\n",
       "\t<tr><td> 4</td><td>14</td><td>18</td><td>  4</td><td> 4.5</td><td>4.5</td></tr>\n",
       "\t<tr><td> 5</td><td>22</td><td>17</td><td> -5</td><td> 6.0</td><td>0.0</td></tr>\n",
       "\t<tr><td> 8</td><td>21</td><td>13</td><td> -8</td><td> 7.0</td><td>0.0</td></tr>\n",
       "\t<tr><td> 9</td><td>10</td><td>19</td><td>  9</td><td> 8.5</td><td>8.5</td></tr>\n",
       "\t<tr><td> 9</td><td>23</td><td>14</td><td> -9</td><td> 8.5</td><td>0.0</td></tr>\n",
       "\t<tr><td>11</td><td>15</td><td> 4</td><td>-11</td><td>10.0</td><td>0.0</td></tr>\n",
       "\t<tr><td>12</td><td>24</td><td>12</td><td>-12</td><td>11.5</td><td>0.0</td></tr>\n",
       "\t<tr><td>12</td><td>21</td><td> 9</td><td>-12</td><td>11.5</td><td>0.0</td></tr>\n",
       "\t<tr><td>13</td><td>15</td><td> 2</td><td>-13</td><td>13.0</td><td>0.0</td></tr>\n",
       "\t<tr><td>17</td><td>25</td><td> 8</td><td>-17</td><td>15.0</td><td>0.0</td></tr>\n",
       "\t<tr><td>17</td><td>29</td><td>12</td><td>-17</td><td>15.0</td><td>0.0</td></tr>\n",
       "\t<tr><td>17</td><td>28</td><td>11</td><td>-17</td><td>15.0</td><td>0.0</td></tr>\n",
       "\t<tr><td>21</td><td>36</td><td>15</td><td>-21</td><td>17.0</td><td>0.0</td></tr>\n",
       "\t<tr><td>22</td><td>22</td><td> 0</td><td>-22</td><td>18.0</td><td>0.0</td></tr>\n",
       "\t<tr><td>23</td><td>39</td><td>16</td><td>-23</td><td>19.5</td><td>0.0</td></tr>\n",
       "\t<tr><td>23</td><td>41</td><td>18</td><td>-23</td><td>19.5</td><td>0.0</td></tr>\n",
       "\t<tr><td>24</td><td>24</td><td> 0</td><td>-24</td><td>21.5</td><td>0.0</td></tr>\n",
       "\t<tr><td>24</td><td>40</td><td>16</td><td>-24</td><td>21.5</td><td>0.0</td></tr>\n",
       "\t<tr><td>29</td><td>39</td><td>10</td><td>-29</td><td>24.0</td><td>0.0</td></tr>\n",
       "\t<tr><td>29</td><td>46</td><td>17</td><td>-29</td><td>24.0</td><td>0.0</td></tr>\n",
       "\t<tr><td>29</td><td>31</td><td> 2</td><td>-29</td><td>24.0</td><td>0.0</td></tr>\n",
       "\t<tr><td>32</td><td>52</td><td>20</td><td>-32</td><td>26.0</td><td>0.0</td></tr>\n",
       "\t<tr><td>33</td><td>50</td><td>17</td><td>-33</td><td>27.0</td><td>0.0</td></tr>\n",
       "\t<tr><td>35</td><td>48</td><td>13</td><td>-35</td><td>28.0</td><td>0.0</td></tr>\n",
       "\t<tr><td>36</td><td>52</td><td>16</td><td>-36</td><td>29.0</td><td>0.0</td></tr>\n",
       "\t<tr><td>37</td><td>37</td><td> 0</td><td>-37</td><td>30.0</td><td>0.0</td></tr>\n",
       "\t<tr><td>40</td><td>49</td><td> 9</td><td>-40</td><td>31.5</td><td>0.0</td></tr>\n",
       "\t<tr><td>40</td><td>49</td><td> 9</td><td>-40</td><td>31.5</td><td>0.0</td></tr>\n",
       "\t<tr><td>43</td><td>49</td><td> 6</td><td>-43</td><td>33.0</td><td>0.0</td></tr>\n",
       "\t<tr><td>50</td><td>50</td><td> 0</td><td>-50</td><td>34.0</td><td>0.0</td></tr>\n",
       "\t<tr><td>51</td><td>55</td><td> 4</td><td>-51</td><td>35.0</td><td>0.0</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 35 × 6\n",
       "\\begin{tabular}{llllll}\n",
       " \\textbar{}Dif\\textbar{} & Antes & Depois & Dif & Posto & Posto (+)\\\\\n",
       " <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl>\\\\\n",
       "\\hline\n",
       "\t  1 & 13 & 14 &   1 &  1.5 & 1.5\\\\\n",
       "\t  1 & 17 & 16 &  -1 &  1.5 & 0.0\\\\\n",
       "\t  2 & 17 & 19 &   2 &  3.0 & 3.0\\\\\n",
       "\t  4 & 12 & 16 &   4 &  4.5 & 4.5\\\\\n",
       "\t  4 & 14 & 18 &   4 &  4.5 & 4.5\\\\\n",
       "\t  5 & 22 & 17 &  -5 &  6.0 & 0.0\\\\\n",
       "\t  8 & 21 & 13 &  -8 &  7.0 & 0.0\\\\\n",
       "\t  9 & 10 & 19 &   9 &  8.5 & 8.5\\\\\n",
       "\t  9 & 23 & 14 &  -9 &  8.5 & 0.0\\\\\n",
       "\t 11 & 15 &  4 & -11 & 10.0 & 0.0\\\\\n",
       "\t 12 & 24 & 12 & -12 & 11.5 & 0.0\\\\\n",
       "\t 12 & 21 &  9 & -12 & 11.5 & 0.0\\\\\n",
       "\t 13 & 15 &  2 & -13 & 13.0 & 0.0\\\\\n",
       "\t 17 & 25 &  8 & -17 & 15.0 & 0.0\\\\\n",
       "\t 17 & 29 & 12 & -17 & 15.0 & 0.0\\\\\n",
       "\t 17 & 28 & 11 & -17 & 15.0 & 0.0\\\\\n",
       "\t 21 & 36 & 15 & -21 & 17.0 & 0.0\\\\\n",
       "\t 22 & 22 &  0 & -22 & 18.0 & 0.0\\\\\n",
       "\t 23 & 39 & 16 & -23 & 19.5 & 0.0\\\\\n",
       "\t 23 & 41 & 18 & -23 & 19.5 & 0.0\\\\\n",
       "\t 24 & 24 &  0 & -24 & 21.5 & 0.0\\\\\n",
       "\t 24 & 40 & 16 & -24 & 21.5 & 0.0\\\\\n",
       "\t 29 & 39 & 10 & -29 & 24.0 & 0.0\\\\\n",
       "\t 29 & 46 & 17 & -29 & 24.0 & 0.0\\\\\n",
       "\t 29 & 31 &  2 & -29 & 24.0 & 0.0\\\\\n",
       "\t 32 & 52 & 20 & -32 & 26.0 & 0.0\\\\\n",
       "\t 33 & 50 & 17 & -33 & 27.0 & 0.0\\\\\n",
       "\t 35 & 48 & 13 & -35 & 28.0 & 0.0\\\\\n",
       "\t 36 & 52 & 16 & -36 & 29.0 & 0.0\\\\\n",
       "\t 37 & 37 &  0 & -37 & 30.0 & 0.0\\\\\n",
       "\t 40 & 49 &  9 & -40 & 31.5 & 0.0\\\\\n",
       "\t 40 & 49 &  9 & -40 & 31.5 & 0.0\\\\\n",
       "\t 43 & 49 &  6 & -43 & 33.0 & 0.0\\\\\n",
       "\t 50 & 50 &  0 & -50 & 34.0 & 0.0\\\\\n",
       "\t 51 & 55 &  4 & -51 & 35.0 & 0.0\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 35 × 6\n",
       "\n",
       "| |Dif| &lt;dbl&gt; | Antes &lt;dbl&gt; | Depois &lt;dbl&gt; | Dif &lt;dbl&gt; | Posto &lt;dbl&gt; | Posto (+) &lt;dbl&gt; |\n",
       "|---|---|---|---|---|---|\n",
       "|  1 | 13 | 14 |   1 |  1.5 | 1.5 |\n",
       "|  1 | 17 | 16 |  -1 |  1.5 | 0.0 |\n",
       "|  2 | 17 | 19 |   2 |  3.0 | 3.0 |\n",
       "|  4 | 12 | 16 |   4 |  4.5 | 4.5 |\n",
       "|  4 | 14 | 18 |   4 |  4.5 | 4.5 |\n",
       "|  5 | 22 | 17 |  -5 |  6.0 | 0.0 |\n",
       "|  8 | 21 | 13 |  -8 |  7.0 | 0.0 |\n",
       "|  9 | 10 | 19 |   9 |  8.5 | 8.5 |\n",
       "|  9 | 23 | 14 |  -9 |  8.5 | 0.0 |\n",
       "| 11 | 15 |  4 | -11 | 10.0 | 0.0 |\n",
       "| 12 | 24 | 12 | -12 | 11.5 | 0.0 |\n",
       "| 12 | 21 |  9 | -12 | 11.5 | 0.0 |\n",
       "| 13 | 15 |  2 | -13 | 13.0 | 0.0 |\n",
       "| 17 | 25 |  8 | -17 | 15.0 | 0.0 |\n",
       "| 17 | 29 | 12 | -17 | 15.0 | 0.0 |\n",
       "| 17 | 28 | 11 | -17 | 15.0 | 0.0 |\n",
       "| 21 | 36 | 15 | -21 | 17.0 | 0.0 |\n",
       "| 22 | 22 |  0 | -22 | 18.0 | 0.0 |\n",
       "| 23 | 39 | 16 | -23 | 19.5 | 0.0 |\n",
       "| 23 | 41 | 18 | -23 | 19.5 | 0.0 |\n",
       "| 24 | 24 |  0 | -24 | 21.5 | 0.0 |\n",
       "| 24 | 40 | 16 | -24 | 21.5 | 0.0 |\n",
       "| 29 | 39 | 10 | -29 | 24.0 | 0.0 |\n",
       "| 29 | 46 | 17 | -29 | 24.0 | 0.0 |\n",
       "| 29 | 31 |  2 | -29 | 24.0 | 0.0 |\n",
       "| 32 | 52 | 20 | -32 | 26.0 | 0.0 |\n",
       "| 33 | 50 | 17 | -33 | 27.0 | 0.0 |\n",
       "| 35 | 48 | 13 | -35 | 28.0 | 0.0 |\n",
       "| 36 | 52 | 16 | -36 | 29.0 | 0.0 |\n",
       "| 37 | 37 |  0 | -37 | 30.0 | 0.0 |\n",
       "| 40 | 49 |  9 | -40 | 31.5 | 0.0 |\n",
       "| 40 | 49 |  9 | -40 | 31.5 | 0.0 |\n",
       "| 43 | 49 |  6 | -43 | 33.0 | 0.0 |\n",
       "| 50 | 50 |  0 | -50 | 34.0 | 0.0 |\n",
       "| 51 | 55 |  4 | -51 | 35.0 | 0.0 |\n",
       "\n"
      ],
      "text/plain": [
       "   |Dif| Antes Depois Dif Posto Posto (+)\n",
       "1   1    13    14       1  1.5  1.5      \n",
       "2   1    17    16      -1  1.5  0.0      \n",
       "3   2    17    19       2  3.0  3.0      \n",
       "4   4    12    16       4  4.5  4.5      \n",
       "5   4    14    18       4  4.5  4.5      \n",
       "6   5    22    17      -5  6.0  0.0      \n",
       "7   8    21    13      -8  7.0  0.0      \n",
       "8   9    10    19       9  8.5  8.5      \n",
       "9   9    23    14      -9  8.5  0.0      \n",
       "10 11    15     4     -11 10.0  0.0      \n",
       "11 12    24    12     -12 11.5  0.0      \n",
       "12 12    21     9     -12 11.5  0.0      \n",
       "13 13    15     2     -13 13.0  0.0      \n",
       "14 17    25     8     -17 15.0  0.0      \n",
       "15 17    29    12     -17 15.0  0.0      \n",
       "16 17    28    11     -17 15.0  0.0      \n",
       "17 21    36    15     -21 17.0  0.0      \n",
       "18 22    22     0     -22 18.0  0.0      \n",
       "19 23    39    16     -23 19.5  0.0      \n",
       "20 23    41    18     -23 19.5  0.0      \n",
       "21 24    24     0     -24 21.5  0.0      \n",
       "22 24    40    16     -24 21.5  0.0      \n",
       "23 29    39    10     -29 24.0  0.0      \n",
       "24 29    46    17     -29 24.0  0.0      \n",
       "25 29    31     2     -29 24.0  0.0      \n",
       "26 32    52    20     -32 26.0  0.0      \n",
       "27 33    50    17     -33 27.0  0.0      \n",
       "28 35    48    13     -35 28.0  0.0      \n",
       "29 36    52    16     -36 29.0  0.0      \n",
       "30 37    37     0     -37 30.0  0.0      \n",
       "31 40    49     9     -40 31.5  0.0      \n",
       "32 40    49     9     -40 31.5  0.0      \n",
       "33 43    49     6     -43 33.0  0.0      \n",
       "34 50    50     0     -50 34.0  0.0      \n",
       "35 51    55     4     -51 35.0  0.0      "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "fumo['Posto (+)'] <- apply(fumo[, c('Dif', 'Posto')], 1, function(x) if(x[1] > 0) x[2] else 0)\n",
    "fumo"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 109,
   "id": "57bf55eb",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:48:05.636140Z",
     "iopub.status.busy": "2024-05-06T14:48:05.633874Z",
     "iopub.status.idle": "2024-05-06T14:48:05.697519Z",
     "shell.execute_reply": "2024-05-06T14:48:05.694599Z"
    },
    "papermill": {
     "duration": 0.165229,
     "end_time": "2024-05-06T14:48:05.701016",
     "exception": false,
     "start_time": "2024-05-06T14:48:05.535787",
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
       "<caption>A data.frame: 35 × 7</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>|Dif|</th><th scope=col>Antes</th><th scope=col>Depois</th><th scope=col>Dif</th><th scope=col>Posto</th><th scope=col>Posto (+)</th><th scope=col>Posto (-)</th></tr>\n",
       "\t<tr><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td> 1</td><td>13</td><td>14</td><td>  1</td><td> 1.5</td><td>1.5</td><td> 0.0</td></tr>\n",
       "\t<tr><td> 1</td><td>17</td><td>16</td><td> -1</td><td> 1.5</td><td>0.0</td><td> 1.5</td></tr>\n",
       "\t<tr><td> 2</td><td>17</td><td>19</td><td>  2</td><td> 3.0</td><td>3.0</td><td> 0.0</td></tr>\n",
       "\t<tr><td> 4</td><td>12</td><td>16</td><td>  4</td><td> 4.5</td><td>4.5</td><td> 0.0</td></tr>\n",
       "\t<tr><td> 4</td><td>14</td><td>18</td><td>  4</td><td> 4.5</td><td>4.5</td><td> 0.0</td></tr>\n",
       "\t<tr><td> 5</td><td>22</td><td>17</td><td> -5</td><td> 6.0</td><td>0.0</td><td> 6.0</td></tr>\n",
       "\t<tr><td> 8</td><td>21</td><td>13</td><td> -8</td><td> 7.0</td><td>0.0</td><td> 7.0</td></tr>\n",
       "\t<tr><td> 9</td><td>10</td><td>19</td><td>  9</td><td> 8.5</td><td>8.5</td><td> 0.0</td></tr>\n",
       "\t<tr><td> 9</td><td>23</td><td>14</td><td> -9</td><td> 8.5</td><td>0.0</td><td> 8.5</td></tr>\n",
       "\t<tr><td>11</td><td>15</td><td> 4</td><td>-11</td><td>10.0</td><td>0.0</td><td>10.0</td></tr>\n",
       "\t<tr><td>12</td><td>24</td><td>12</td><td>-12</td><td>11.5</td><td>0.0</td><td>11.5</td></tr>\n",
       "\t<tr><td>12</td><td>21</td><td> 9</td><td>-12</td><td>11.5</td><td>0.0</td><td>11.5</td></tr>\n",
       "\t<tr><td>13</td><td>15</td><td> 2</td><td>-13</td><td>13.0</td><td>0.0</td><td>13.0</td></tr>\n",
       "\t<tr><td>17</td><td>25</td><td> 8</td><td>-17</td><td>15.0</td><td>0.0</td><td>15.0</td></tr>\n",
       "\t<tr><td>17</td><td>29</td><td>12</td><td>-17</td><td>15.0</td><td>0.0</td><td>15.0</td></tr>\n",
       "\t<tr><td>17</td><td>28</td><td>11</td><td>-17</td><td>15.0</td><td>0.0</td><td>15.0</td></tr>\n",
       "\t<tr><td>21</td><td>36</td><td>15</td><td>-21</td><td>17.0</td><td>0.0</td><td>17.0</td></tr>\n",
       "\t<tr><td>22</td><td>22</td><td> 0</td><td>-22</td><td>18.0</td><td>0.0</td><td>18.0</td></tr>\n",
       "\t<tr><td>23</td><td>39</td><td>16</td><td>-23</td><td>19.5</td><td>0.0</td><td>19.5</td></tr>\n",
       "\t<tr><td>23</td><td>41</td><td>18</td><td>-23</td><td>19.5</td><td>0.0</td><td>19.5</td></tr>\n",
       "\t<tr><td>24</td><td>24</td><td> 0</td><td>-24</td><td>21.5</td><td>0.0</td><td>21.5</td></tr>\n",
       "\t<tr><td>24</td><td>40</td><td>16</td><td>-24</td><td>21.5</td><td>0.0</td><td>21.5</td></tr>\n",
       "\t<tr><td>29</td><td>39</td><td>10</td><td>-29</td><td>24.0</td><td>0.0</td><td>24.0</td></tr>\n",
       "\t<tr><td>29</td><td>46</td><td>17</td><td>-29</td><td>24.0</td><td>0.0</td><td>24.0</td></tr>\n",
       "\t<tr><td>29</td><td>31</td><td> 2</td><td>-29</td><td>24.0</td><td>0.0</td><td>24.0</td></tr>\n",
       "\t<tr><td>32</td><td>52</td><td>20</td><td>-32</td><td>26.0</td><td>0.0</td><td>26.0</td></tr>\n",
       "\t<tr><td>33</td><td>50</td><td>17</td><td>-33</td><td>27.0</td><td>0.0</td><td>27.0</td></tr>\n",
       "\t<tr><td>35</td><td>48</td><td>13</td><td>-35</td><td>28.0</td><td>0.0</td><td>28.0</td></tr>\n",
       "\t<tr><td>36</td><td>52</td><td>16</td><td>-36</td><td>29.0</td><td>0.0</td><td>29.0</td></tr>\n",
       "\t<tr><td>37</td><td>37</td><td> 0</td><td>-37</td><td>30.0</td><td>0.0</td><td>30.0</td></tr>\n",
       "\t<tr><td>40</td><td>49</td><td> 9</td><td>-40</td><td>31.5</td><td>0.0</td><td>31.5</td></tr>\n",
       "\t<tr><td>40</td><td>49</td><td> 9</td><td>-40</td><td>31.5</td><td>0.0</td><td>31.5</td></tr>\n",
       "\t<tr><td>43</td><td>49</td><td> 6</td><td>-43</td><td>33.0</td><td>0.0</td><td>33.0</td></tr>\n",
       "\t<tr><td>50</td><td>50</td><td> 0</td><td>-50</td><td>34.0</td><td>0.0</td><td>34.0</td></tr>\n",
       "\t<tr><td>51</td><td>55</td><td> 4</td><td>-51</td><td>35.0</td><td>0.0</td><td>35.0</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 35 × 7\n",
       "\\begin{tabular}{lllllll}\n",
       " \\textbar{}Dif\\textbar{} & Antes & Depois & Dif & Posto & Posto (+) & Posto (-)\\\\\n",
       " <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl>\\\\\n",
       "\\hline\n",
       "\t  1 & 13 & 14 &   1 &  1.5 & 1.5 &  0.0\\\\\n",
       "\t  1 & 17 & 16 &  -1 &  1.5 & 0.0 &  1.5\\\\\n",
       "\t  2 & 17 & 19 &   2 &  3.0 & 3.0 &  0.0\\\\\n",
       "\t  4 & 12 & 16 &   4 &  4.5 & 4.5 &  0.0\\\\\n",
       "\t  4 & 14 & 18 &   4 &  4.5 & 4.5 &  0.0\\\\\n",
       "\t  5 & 22 & 17 &  -5 &  6.0 & 0.0 &  6.0\\\\\n",
       "\t  8 & 21 & 13 &  -8 &  7.0 & 0.0 &  7.0\\\\\n",
       "\t  9 & 10 & 19 &   9 &  8.5 & 8.5 &  0.0\\\\\n",
       "\t  9 & 23 & 14 &  -9 &  8.5 & 0.0 &  8.5\\\\\n",
       "\t 11 & 15 &  4 & -11 & 10.0 & 0.0 & 10.0\\\\\n",
       "\t 12 & 24 & 12 & -12 & 11.5 & 0.0 & 11.5\\\\\n",
       "\t 12 & 21 &  9 & -12 & 11.5 & 0.0 & 11.5\\\\\n",
       "\t 13 & 15 &  2 & -13 & 13.0 & 0.0 & 13.0\\\\\n",
       "\t 17 & 25 &  8 & -17 & 15.0 & 0.0 & 15.0\\\\\n",
       "\t 17 & 29 & 12 & -17 & 15.0 & 0.0 & 15.0\\\\\n",
       "\t 17 & 28 & 11 & -17 & 15.0 & 0.0 & 15.0\\\\\n",
       "\t 21 & 36 & 15 & -21 & 17.0 & 0.0 & 17.0\\\\\n",
       "\t 22 & 22 &  0 & -22 & 18.0 & 0.0 & 18.0\\\\\n",
       "\t 23 & 39 & 16 & -23 & 19.5 & 0.0 & 19.5\\\\\n",
       "\t 23 & 41 & 18 & -23 & 19.5 & 0.0 & 19.5\\\\\n",
       "\t 24 & 24 &  0 & -24 & 21.5 & 0.0 & 21.5\\\\\n",
       "\t 24 & 40 & 16 & -24 & 21.5 & 0.0 & 21.5\\\\\n",
       "\t 29 & 39 & 10 & -29 & 24.0 & 0.0 & 24.0\\\\\n",
       "\t 29 & 46 & 17 & -29 & 24.0 & 0.0 & 24.0\\\\\n",
       "\t 29 & 31 &  2 & -29 & 24.0 & 0.0 & 24.0\\\\\n",
       "\t 32 & 52 & 20 & -32 & 26.0 & 0.0 & 26.0\\\\\n",
       "\t 33 & 50 & 17 & -33 & 27.0 & 0.0 & 27.0\\\\\n",
       "\t 35 & 48 & 13 & -35 & 28.0 & 0.0 & 28.0\\\\\n",
       "\t 36 & 52 & 16 & -36 & 29.0 & 0.0 & 29.0\\\\\n",
       "\t 37 & 37 &  0 & -37 & 30.0 & 0.0 & 30.0\\\\\n",
       "\t 40 & 49 &  9 & -40 & 31.5 & 0.0 & 31.5\\\\\n",
       "\t 40 & 49 &  9 & -40 & 31.5 & 0.0 & 31.5\\\\\n",
       "\t 43 & 49 &  6 & -43 & 33.0 & 0.0 & 33.0\\\\\n",
       "\t 50 & 50 &  0 & -50 & 34.0 & 0.0 & 34.0\\\\\n",
       "\t 51 & 55 &  4 & -51 & 35.0 & 0.0 & 35.0\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 35 × 7\n",
       "\n",
       "| |Dif| &lt;dbl&gt; | Antes &lt;dbl&gt; | Depois &lt;dbl&gt; | Dif &lt;dbl&gt; | Posto &lt;dbl&gt; | Posto (+) &lt;dbl&gt; | Posto (-) &lt;dbl&gt; |\n",
       "|---|---|---|---|---|---|---|\n",
       "|  1 | 13 | 14 |   1 |  1.5 | 1.5 |  0.0 |\n",
       "|  1 | 17 | 16 |  -1 |  1.5 | 0.0 |  1.5 |\n",
       "|  2 | 17 | 19 |   2 |  3.0 | 3.0 |  0.0 |\n",
       "|  4 | 12 | 16 |   4 |  4.5 | 4.5 |  0.0 |\n",
       "|  4 | 14 | 18 |   4 |  4.5 | 4.5 |  0.0 |\n",
       "|  5 | 22 | 17 |  -5 |  6.0 | 0.0 |  6.0 |\n",
       "|  8 | 21 | 13 |  -8 |  7.0 | 0.0 |  7.0 |\n",
       "|  9 | 10 | 19 |   9 |  8.5 | 8.5 |  0.0 |\n",
       "|  9 | 23 | 14 |  -9 |  8.5 | 0.0 |  8.5 |\n",
       "| 11 | 15 |  4 | -11 | 10.0 | 0.0 | 10.0 |\n",
       "| 12 | 24 | 12 | -12 | 11.5 | 0.0 | 11.5 |\n",
       "| 12 | 21 |  9 | -12 | 11.5 | 0.0 | 11.5 |\n",
       "| 13 | 15 |  2 | -13 | 13.0 | 0.0 | 13.0 |\n",
       "| 17 | 25 |  8 | -17 | 15.0 | 0.0 | 15.0 |\n",
       "| 17 | 29 | 12 | -17 | 15.0 | 0.0 | 15.0 |\n",
       "| 17 | 28 | 11 | -17 | 15.0 | 0.0 | 15.0 |\n",
       "| 21 | 36 | 15 | -21 | 17.0 | 0.0 | 17.0 |\n",
       "| 22 | 22 |  0 | -22 | 18.0 | 0.0 | 18.0 |\n",
       "| 23 | 39 | 16 | -23 | 19.5 | 0.0 | 19.5 |\n",
       "| 23 | 41 | 18 | -23 | 19.5 | 0.0 | 19.5 |\n",
       "| 24 | 24 |  0 | -24 | 21.5 | 0.0 | 21.5 |\n",
       "| 24 | 40 | 16 | -24 | 21.5 | 0.0 | 21.5 |\n",
       "| 29 | 39 | 10 | -29 | 24.0 | 0.0 | 24.0 |\n",
       "| 29 | 46 | 17 | -29 | 24.0 | 0.0 | 24.0 |\n",
       "| 29 | 31 |  2 | -29 | 24.0 | 0.0 | 24.0 |\n",
       "| 32 | 52 | 20 | -32 | 26.0 | 0.0 | 26.0 |\n",
       "| 33 | 50 | 17 | -33 | 27.0 | 0.0 | 27.0 |\n",
       "| 35 | 48 | 13 | -35 | 28.0 | 0.0 | 28.0 |\n",
       "| 36 | 52 | 16 | -36 | 29.0 | 0.0 | 29.0 |\n",
       "| 37 | 37 |  0 | -37 | 30.0 | 0.0 | 30.0 |\n",
       "| 40 | 49 |  9 | -40 | 31.5 | 0.0 | 31.5 |\n",
       "| 40 | 49 |  9 | -40 | 31.5 | 0.0 | 31.5 |\n",
       "| 43 | 49 |  6 | -43 | 33.0 | 0.0 | 33.0 |\n",
       "| 50 | 50 |  0 | -50 | 34.0 | 0.0 | 34.0 |\n",
       "| 51 | 55 |  4 | -51 | 35.0 | 0.0 | 35.0 |\n",
       "\n"
      ],
      "text/plain": [
       "   |Dif| Antes Depois Dif Posto Posto (+) Posto (-)\n",
       "1   1    13    14       1  1.5  1.5        0.0     \n",
       "2   1    17    16      -1  1.5  0.0        1.5     \n",
       "3   2    17    19       2  3.0  3.0        0.0     \n",
       "4   4    12    16       4  4.5  4.5        0.0     \n",
       "5   4    14    18       4  4.5  4.5        0.0     \n",
       "6   5    22    17      -5  6.0  0.0        6.0     \n",
       "7   8    21    13      -8  7.0  0.0        7.0     \n",
       "8   9    10    19       9  8.5  8.5        0.0     \n",
       "9   9    23    14      -9  8.5  0.0        8.5     \n",
       "10 11    15     4     -11 10.0  0.0       10.0     \n",
       "11 12    24    12     -12 11.5  0.0       11.5     \n",
       "12 12    21     9     -12 11.5  0.0       11.5     \n",
       "13 13    15     2     -13 13.0  0.0       13.0     \n",
       "14 17    25     8     -17 15.0  0.0       15.0     \n",
       "15 17    29    12     -17 15.0  0.0       15.0     \n",
       "16 17    28    11     -17 15.0  0.0       15.0     \n",
       "17 21    36    15     -21 17.0  0.0       17.0     \n",
       "18 22    22     0     -22 18.0  0.0       18.0     \n",
       "19 23    39    16     -23 19.5  0.0       19.5     \n",
       "20 23    41    18     -23 19.5  0.0       19.5     \n",
       "21 24    24     0     -24 21.5  0.0       21.5     \n",
       "22 24    40    16     -24 21.5  0.0       21.5     \n",
       "23 29    39    10     -29 24.0  0.0       24.0     \n",
       "24 29    46    17     -29 24.0  0.0       24.0     \n",
       "25 29    31     2     -29 24.0  0.0       24.0     \n",
       "26 32    52    20     -32 26.0  0.0       26.0     \n",
       "27 33    50    17     -33 27.0  0.0       27.0     \n",
       "28 35    48    13     -35 28.0  0.0       28.0     \n",
       "29 36    52    16     -36 29.0  0.0       29.0     \n",
       "30 37    37     0     -37 30.0  0.0       30.0     \n",
       "31 40    49     9     -40 31.5  0.0       31.5     \n",
       "32 40    49     9     -40 31.5  0.0       31.5     \n",
       "33 43    49     6     -43 33.0  0.0       33.0     \n",
       "34 50    50     0     -50 34.0  0.0       34.0     \n",
       "35 51    55     4     -51 35.0  0.0       35.0     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "fumo['Posto (-)'] <- apply(fumo[, c('Dif', 'Posto')], 1, function(x) if(x[1] < 0) x[2] else 0)\n",
    "fumo"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 110,
   "id": "266fb3f6",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:48:05.894565Z",
     "iopub.status.busy": "2024-05-06T14:48:05.892668Z",
     "iopub.status.idle": "2024-05-06T14:48:05.945623Z",
     "shell.execute_reply": "2024-05-06T14:48:05.943570Z"
    },
    "id": "R2Nyk4E_os77",
    "outputId": "e22a2377-88b8-4b5b-e901-ddd8b04cab75",
    "papermill": {
     "duration": 0.151772,
     "end_time": "2024-05-06T14:48:05.948330",
     "exception": false,
     "start_time": "2024-05-06T14:48:05.796558",
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
       "<caption>A data.frame: 35 × 6</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>|Dif|</th><th scope=col>Antes</th><th scope=col>Depois</th><th scope=col>Dif</th><th scope=col>Posto (+)</th><th scope=col>Posto (-)</th></tr>\n",
       "\t<tr><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td> 1</td><td>13</td><td>14</td><td>  1</td><td>1.5</td><td> 0.0</td></tr>\n",
       "\t<tr><td> 1</td><td>17</td><td>16</td><td> -1</td><td>0.0</td><td> 1.5</td></tr>\n",
       "\t<tr><td> 2</td><td>17</td><td>19</td><td>  2</td><td>3.0</td><td> 0.0</td></tr>\n",
       "\t<tr><td> 4</td><td>12</td><td>16</td><td>  4</td><td>4.5</td><td> 0.0</td></tr>\n",
       "\t<tr><td> 4</td><td>14</td><td>18</td><td>  4</td><td>4.5</td><td> 0.0</td></tr>\n",
       "\t<tr><td> 5</td><td>22</td><td>17</td><td> -5</td><td>0.0</td><td> 6.0</td></tr>\n",
       "\t<tr><td> 8</td><td>21</td><td>13</td><td> -8</td><td>0.0</td><td> 7.0</td></tr>\n",
       "\t<tr><td> 9</td><td>10</td><td>19</td><td>  9</td><td>8.5</td><td> 0.0</td></tr>\n",
       "\t<tr><td> 9</td><td>23</td><td>14</td><td> -9</td><td>0.0</td><td> 8.5</td></tr>\n",
       "\t<tr><td>11</td><td>15</td><td> 4</td><td>-11</td><td>0.0</td><td>10.0</td></tr>\n",
       "\t<tr><td>12</td><td>24</td><td>12</td><td>-12</td><td>0.0</td><td>11.5</td></tr>\n",
       "\t<tr><td>12</td><td>21</td><td> 9</td><td>-12</td><td>0.0</td><td>11.5</td></tr>\n",
       "\t<tr><td>13</td><td>15</td><td> 2</td><td>-13</td><td>0.0</td><td>13.0</td></tr>\n",
       "\t<tr><td>17</td><td>25</td><td> 8</td><td>-17</td><td>0.0</td><td>15.0</td></tr>\n",
       "\t<tr><td>17</td><td>29</td><td>12</td><td>-17</td><td>0.0</td><td>15.0</td></tr>\n",
       "\t<tr><td>17</td><td>28</td><td>11</td><td>-17</td><td>0.0</td><td>15.0</td></tr>\n",
       "\t<tr><td>21</td><td>36</td><td>15</td><td>-21</td><td>0.0</td><td>17.0</td></tr>\n",
       "\t<tr><td>22</td><td>22</td><td> 0</td><td>-22</td><td>0.0</td><td>18.0</td></tr>\n",
       "\t<tr><td>23</td><td>39</td><td>16</td><td>-23</td><td>0.0</td><td>19.5</td></tr>\n",
       "\t<tr><td>23</td><td>41</td><td>18</td><td>-23</td><td>0.0</td><td>19.5</td></tr>\n",
       "\t<tr><td>24</td><td>24</td><td> 0</td><td>-24</td><td>0.0</td><td>21.5</td></tr>\n",
       "\t<tr><td>24</td><td>40</td><td>16</td><td>-24</td><td>0.0</td><td>21.5</td></tr>\n",
       "\t<tr><td>29</td><td>39</td><td>10</td><td>-29</td><td>0.0</td><td>24.0</td></tr>\n",
       "\t<tr><td>29</td><td>46</td><td>17</td><td>-29</td><td>0.0</td><td>24.0</td></tr>\n",
       "\t<tr><td>29</td><td>31</td><td> 2</td><td>-29</td><td>0.0</td><td>24.0</td></tr>\n",
       "\t<tr><td>32</td><td>52</td><td>20</td><td>-32</td><td>0.0</td><td>26.0</td></tr>\n",
       "\t<tr><td>33</td><td>50</td><td>17</td><td>-33</td><td>0.0</td><td>27.0</td></tr>\n",
       "\t<tr><td>35</td><td>48</td><td>13</td><td>-35</td><td>0.0</td><td>28.0</td></tr>\n",
       "\t<tr><td>36</td><td>52</td><td>16</td><td>-36</td><td>0.0</td><td>29.0</td></tr>\n",
       "\t<tr><td>37</td><td>37</td><td> 0</td><td>-37</td><td>0.0</td><td>30.0</td></tr>\n",
       "\t<tr><td>40</td><td>49</td><td> 9</td><td>-40</td><td>0.0</td><td>31.5</td></tr>\n",
       "\t<tr><td>40</td><td>49</td><td> 9</td><td>-40</td><td>0.0</td><td>31.5</td></tr>\n",
       "\t<tr><td>43</td><td>49</td><td> 6</td><td>-43</td><td>0.0</td><td>33.0</td></tr>\n",
       "\t<tr><td>50</td><td>50</td><td> 0</td><td>-50</td><td>0.0</td><td>34.0</td></tr>\n",
       "\t<tr><td>51</td><td>55</td><td> 4</td><td>-51</td><td>0.0</td><td>35.0</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 35 × 6\n",
       "\\begin{tabular}{llllll}\n",
       " \\textbar{}Dif\\textbar{} & Antes & Depois & Dif & Posto (+) & Posto (-)\\\\\n",
       " <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl>\\\\\n",
       "\\hline\n",
       "\t  1 & 13 & 14 &   1 & 1.5 &  0.0\\\\\n",
       "\t  1 & 17 & 16 &  -1 & 0.0 &  1.5\\\\\n",
       "\t  2 & 17 & 19 &   2 & 3.0 &  0.0\\\\\n",
       "\t  4 & 12 & 16 &   4 & 4.5 &  0.0\\\\\n",
       "\t  4 & 14 & 18 &   4 & 4.5 &  0.0\\\\\n",
       "\t  5 & 22 & 17 &  -5 & 0.0 &  6.0\\\\\n",
       "\t  8 & 21 & 13 &  -8 & 0.0 &  7.0\\\\\n",
       "\t  9 & 10 & 19 &   9 & 8.5 &  0.0\\\\\n",
       "\t  9 & 23 & 14 &  -9 & 0.0 &  8.5\\\\\n",
       "\t 11 & 15 &  4 & -11 & 0.0 & 10.0\\\\\n",
       "\t 12 & 24 & 12 & -12 & 0.0 & 11.5\\\\\n",
       "\t 12 & 21 &  9 & -12 & 0.0 & 11.5\\\\\n",
       "\t 13 & 15 &  2 & -13 & 0.0 & 13.0\\\\\n",
       "\t 17 & 25 &  8 & -17 & 0.0 & 15.0\\\\\n",
       "\t 17 & 29 & 12 & -17 & 0.0 & 15.0\\\\\n",
       "\t 17 & 28 & 11 & -17 & 0.0 & 15.0\\\\\n",
       "\t 21 & 36 & 15 & -21 & 0.0 & 17.0\\\\\n",
       "\t 22 & 22 &  0 & -22 & 0.0 & 18.0\\\\\n",
       "\t 23 & 39 & 16 & -23 & 0.0 & 19.5\\\\\n",
       "\t 23 & 41 & 18 & -23 & 0.0 & 19.5\\\\\n",
       "\t 24 & 24 &  0 & -24 & 0.0 & 21.5\\\\\n",
       "\t 24 & 40 & 16 & -24 & 0.0 & 21.5\\\\\n",
       "\t 29 & 39 & 10 & -29 & 0.0 & 24.0\\\\\n",
       "\t 29 & 46 & 17 & -29 & 0.0 & 24.0\\\\\n",
       "\t 29 & 31 &  2 & -29 & 0.0 & 24.0\\\\\n",
       "\t 32 & 52 & 20 & -32 & 0.0 & 26.0\\\\\n",
       "\t 33 & 50 & 17 & -33 & 0.0 & 27.0\\\\\n",
       "\t 35 & 48 & 13 & -35 & 0.0 & 28.0\\\\\n",
       "\t 36 & 52 & 16 & -36 & 0.0 & 29.0\\\\\n",
       "\t 37 & 37 &  0 & -37 & 0.0 & 30.0\\\\\n",
       "\t 40 & 49 &  9 & -40 & 0.0 & 31.5\\\\\n",
       "\t 40 & 49 &  9 & -40 & 0.0 & 31.5\\\\\n",
       "\t 43 & 49 &  6 & -43 & 0.0 & 33.0\\\\\n",
       "\t 50 & 50 &  0 & -50 & 0.0 & 34.0\\\\\n",
       "\t 51 & 55 &  4 & -51 & 0.0 & 35.0\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 35 × 6\n",
       "\n",
       "| |Dif| &lt;dbl&gt; | Antes &lt;dbl&gt; | Depois &lt;dbl&gt; | Dif &lt;dbl&gt; | Posto (+) &lt;dbl&gt; | Posto (-) &lt;dbl&gt; |\n",
       "|---|---|---|---|---|---|\n",
       "|  1 | 13 | 14 |   1 | 1.5 |  0.0 |\n",
       "|  1 | 17 | 16 |  -1 | 0.0 |  1.5 |\n",
       "|  2 | 17 | 19 |   2 | 3.0 |  0.0 |\n",
       "|  4 | 12 | 16 |   4 | 4.5 |  0.0 |\n",
       "|  4 | 14 | 18 |   4 | 4.5 |  0.0 |\n",
       "|  5 | 22 | 17 |  -5 | 0.0 |  6.0 |\n",
       "|  8 | 21 | 13 |  -8 | 0.0 |  7.0 |\n",
       "|  9 | 10 | 19 |   9 | 8.5 |  0.0 |\n",
       "|  9 | 23 | 14 |  -9 | 0.0 |  8.5 |\n",
       "| 11 | 15 |  4 | -11 | 0.0 | 10.0 |\n",
       "| 12 | 24 | 12 | -12 | 0.0 | 11.5 |\n",
       "| 12 | 21 |  9 | -12 | 0.0 | 11.5 |\n",
       "| 13 | 15 |  2 | -13 | 0.0 | 13.0 |\n",
       "| 17 | 25 |  8 | -17 | 0.0 | 15.0 |\n",
       "| 17 | 29 | 12 | -17 | 0.0 | 15.0 |\n",
       "| 17 | 28 | 11 | -17 | 0.0 | 15.0 |\n",
       "| 21 | 36 | 15 | -21 | 0.0 | 17.0 |\n",
       "| 22 | 22 |  0 | -22 | 0.0 | 18.0 |\n",
       "| 23 | 39 | 16 | -23 | 0.0 | 19.5 |\n",
       "| 23 | 41 | 18 | -23 | 0.0 | 19.5 |\n",
       "| 24 | 24 |  0 | -24 | 0.0 | 21.5 |\n",
       "| 24 | 40 | 16 | -24 | 0.0 | 21.5 |\n",
       "| 29 | 39 | 10 | -29 | 0.0 | 24.0 |\n",
       "| 29 | 46 | 17 | -29 | 0.0 | 24.0 |\n",
       "| 29 | 31 |  2 | -29 | 0.0 | 24.0 |\n",
       "| 32 | 52 | 20 | -32 | 0.0 | 26.0 |\n",
       "| 33 | 50 | 17 | -33 | 0.0 | 27.0 |\n",
       "| 35 | 48 | 13 | -35 | 0.0 | 28.0 |\n",
       "| 36 | 52 | 16 | -36 | 0.0 | 29.0 |\n",
       "| 37 | 37 |  0 | -37 | 0.0 | 30.0 |\n",
       "| 40 | 49 |  9 | -40 | 0.0 | 31.5 |\n",
       "| 40 | 49 |  9 | -40 | 0.0 | 31.5 |\n",
       "| 43 | 49 |  6 | -43 | 0.0 | 33.0 |\n",
       "| 50 | 50 |  0 | -50 | 0.0 | 34.0 |\n",
       "| 51 | 55 |  4 | -51 | 0.0 | 35.0 |\n",
       "\n"
      ],
      "text/plain": [
       "   |Dif| Antes Depois Dif Posto (+) Posto (-)\n",
       "1   1    13    14       1 1.5        0.0     \n",
       "2   1    17    16      -1 0.0        1.5     \n",
       "3   2    17    19       2 3.0        0.0     \n",
       "4   4    12    16       4 4.5        0.0     \n",
       "5   4    14    18       4 4.5        0.0     \n",
       "6   5    22    17      -5 0.0        6.0     \n",
       "7   8    21    13      -8 0.0        7.0     \n",
       "8   9    10    19       9 8.5        0.0     \n",
       "9   9    23    14      -9 0.0        8.5     \n",
       "10 11    15     4     -11 0.0       10.0     \n",
       "11 12    24    12     -12 0.0       11.5     \n",
       "12 12    21     9     -12 0.0       11.5     \n",
       "13 13    15     2     -13 0.0       13.0     \n",
       "14 17    25     8     -17 0.0       15.0     \n",
       "15 17    29    12     -17 0.0       15.0     \n",
       "16 17    28    11     -17 0.0       15.0     \n",
       "17 21    36    15     -21 0.0       17.0     \n",
       "18 22    22     0     -22 0.0       18.0     \n",
       "19 23    39    16     -23 0.0       19.5     \n",
       "20 23    41    18     -23 0.0       19.5     \n",
       "21 24    24     0     -24 0.0       21.5     \n",
       "22 24    40    16     -24 0.0       21.5     \n",
       "23 29    39    10     -29 0.0       24.0     \n",
       "24 29    46    17     -29 0.0       24.0     \n",
       "25 29    31     2     -29 0.0       24.0     \n",
       "26 32    52    20     -32 0.0       26.0     \n",
       "27 33    50    17     -33 0.0       27.0     \n",
       "28 35    48    13     -35 0.0       28.0     \n",
       "29 36    52    16     -36 0.0       29.0     \n",
       "30 37    37     0     -37 0.0       30.0     \n",
       "31 40    49     9     -40 0.0       31.5     \n",
       "32 40    49     9     -40 0.0       31.5     \n",
       "33 43    49     6     -43 0.0       33.0     \n",
       "34 50    50     0     -50 0.0       34.0     \n",
       "35 51    55     4     -51 0.0       35.0     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "fumo$Posto <- NULL\n",
    "fumo"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "aed118a6",
   "metadata": {
    "id": "QrhSJfAipsmh",
    "papermill": {
     "duration": 0.09252,
     "end_time": "2024-05-06T14:48:06.133723",
     "exception": false,
     "start_time": "2024-05-06T14:48:06.041203",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Obter $T$\n",
    "\n",
    "## $T$ = menor das somas de postos de mesmo sinal"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 111,
   "id": "d4e37446",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:48:06.323132Z",
     "iopub.status.busy": "2024-05-06T14:48:06.321331Z",
     "iopub.status.idle": "2024-05-06T14:48:06.344800Z",
     "shell.execute_reply": "2024-05-06T14:48:06.342648Z"
    },
    "id": "TTWy-3OQpsmh",
    "outputId": "041d1650-b553-4f7c-f4ce-03284c9f445e",
    "papermill": {
     "duration": 0.121167,
     "end_time": "2024-05-06T14:48:06.347799",
     "exception": false,
     "start_time": "2024-05-06T14:48:06.226632",
     "status": "completed"
    },
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
    "T <- min( sum( fumo['Posto (+)'] ), sum( fumo['Posto (-)'] ) )\n",
    "T"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "10fb38a9",
   "metadata": {
    "id": "3y4Tn1y4psmi",
    "papermill": {
     "duration": 0.094977,
     "end_time": "2024-05-06T14:48:06.536457",
     "exception": false,
     "start_time": "2024-05-06T14:48:06.441480",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Obter $\\mu_T$\n",
    "\n",
    "# $$\\mu_T = \\frac{n(n+1)}{4}$$\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 112,
   "id": "68755e36",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:48:06.730494Z",
     "iopub.status.busy": "2024-05-06T14:48:06.728573Z",
     "iopub.status.idle": "2024-05-06T14:48:06.759534Z",
     "shell.execute_reply": "2024-05-06T14:48:06.757195Z"
    },
    "id": "0KhV5ph6psmi",
    "outputId": "d5a49227-aefe-4ab2-8f96-1575e4d00a68",
    "papermill": {
     "duration": 0.130141,
     "end_time": "2024-05-06T14:48:06.762651",
     "exception": false,
     "start_time": "2024-05-06T14:48:06.632510",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "315"
      ],
      "text/latex": [
       "315"
      ],
      "text/markdown": [
       "315"
      ],
      "text/plain": [
       "[1] 315"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "mu_T <- ( n * ( n + 1 ) ) / 4\n",
    "mu_T"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "4cdad230",
   "metadata": {
    "id": "ZqFb-m08psmj",
    "papermill": {
     "duration": 0.09285,
     "end_time": "2024-05-06T14:48:06.950491",
     "exception": false,
     "start_time": "2024-05-06T14:48:06.857641",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Obter $\\sigma_T$\n",
    "\n",
    "# $$\\sigma_T = \\sqrt{\\frac{n(n + 1)(2n + 1)}{24}}$$"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 113,
   "id": "8ea38da4",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:48:07.183921Z",
     "iopub.status.busy": "2024-05-06T14:48:07.182076Z",
     "iopub.status.idle": "2024-05-06T14:48:07.203893Z",
     "shell.execute_reply": "2024-05-06T14:48:07.201823Z"
    },
    "id": "c6dypGFSpsmj",
    "outputId": "a56e71d7-cec3-4529-f266-b82315fa8766",
    "papermill": {
     "duration": 0.161904,
     "end_time": "2024-05-06T14:48:07.206764",
     "exception": false,
     "start_time": "2024-05-06T14:48:07.044860",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "61.0532554414586"
      ],
      "text/latex": [
       "61.0532554414586"
      ],
      "text/markdown": [
       "61.0532554414586"
      ],
      "text/plain": [
       "[1] 61.05326"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "sigma_T <- sqrt( ( n * ( n + 1 ) * ( ( 2 * n ) + 1 ) ) / 24 )\n",
    "sigma_T"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "4423a5f5",
   "metadata": {
    "id": "qEk2CUKApsmk",
    "papermill": {
     "duration": 0.092492,
     "end_time": "2024-05-06T14:48:07.393927",
     "exception": false,
     "start_time": "2024-05-06T14:48:07.301435",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Obter $Z_{teste}$\n",
    "\n",
    "# $$Z = \\frac{T - \\mu_T}{\\sigma_T}$$"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 114,
   "id": "637255f3",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:48:07.589386Z",
     "iopub.status.busy": "2024-05-06T14:48:07.587513Z",
     "iopub.status.idle": "2024-05-06T14:48:07.609851Z",
     "shell.execute_reply": "2024-05-06T14:48:07.607741Z"
    },
    "id": "KqPQgbBEpsmk",
    "outputId": "fc02c944-b662-4539-a4c4-e91f746358f3",
    "papermill": {
     "duration": 0.123573,
     "end_time": "2024-05-06T14:48:07.613356",
     "exception": false,
     "start_time": "2024-05-06T14:48:07.489783",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "-4.7990888918437"
      ],
      "text/latex": [
       "-4.7990888918437"
      ],
      "text/markdown": [
       "-4.7990888918437"
      ],
      "text/plain": [
       "[1] -4.799089"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "Z <- ( T - mu_T ) / sigma_T\n",
    "Z"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "f6112032",
   "metadata": {
    "id": "iMpU26IZpsmm",
    "papermill": {
     "duration": 0.09794,
     "end_time": "2024-05-06T14:48:07.805559",
     "exception": false,
     "start_time": "2024-05-06T14:48:07.707619",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "![Estatística-Teste](https://caelum-online-public.s3.amazonaws.com/1229-estatistica-parte3/01/img021.png)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "01a161d0",
   "metadata": {
    "id": "XFgoaLzSpsmm",
    "papermill": {
     "duration": 0.095058,
     "end_time": "2024-05-06T14:48:07.995458",
     "exception": false,
     "start_time": "2024-05-06T14:48:07.900400",
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
   "id": "d37ffbd7",
   "metadata": {
    "id": "YYGhG-lSpsmm",
    "papermill": {
     "duration": 0.096962,
     "end_time": "2024-05-06T14:48:08.186920",
     "exception": false,
     "start_time": "2024-05-06T14:48:08.089958",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### **Passo 5** - Aceitação ou rejeição da hipótese nula"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "8579bf28",
   "metadata": {
    "id": "pDOdx-Vqpsmm",
    "papermill": {
     "duration": 0.096657,
     "end_time": "2024-05-06T14:48:08.377119",
     "exception": false,
     "start_time": "2024-05-06T14:48:08.280462",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "<img src='https://caelum-online-public.s3.amazonaws.com/1229-estatistica-parte3/01/img022.png' width='80%'>"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "b0cc081d",
   "metadata": {
    "id": "ODKOD-rkpsmm",
    "papermill": {
     "duration": 0.095367,
     "end_time": "2024-05-06T14:48:08.567587",
     "exception": false,
     "start_time": "2024-05-06T14:48:08.472220",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### <font color='red'>Critério do valor crítico</font>\n",
    "\n",
    "> ### Rejeitar $H_0$ se $Z \\leq -z_{\\alpha / 2}$ ou se $Z \\geq z_{\\alpha / 2}$"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 115,
   "id": "d0fcbe5c",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:48:08.765617Z",
     "iopub.status.busy": "2024-05-06T14:48:08.763573Z",
     "iopub.status.idle": "2024-05-06T14:48:08.785768Z",
     "shell.execute_reply": "2024-05-06T14:48:08.783472Z"
    },
    "id": "Gmp8dB6Apsmm",
    "outputId": "8311f709-2b10-477c-8410-93d6efbde833",
    "papermill": {
     "duration": 0.124046,
     "end_time": "2024-05-06T14:48:08.788543",
     "exception": false,
     "start_time": "2024-05-06T14:48:08.664497",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "TRUE"
      ],
      "text/latex": [
       "TRUE"
      ],
      "text/markdown": [
       "TRUE"
      ],
      "text/plain": [
       "[1] TRUE"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "Z <= -z_alpha_2"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 116,
   "id": "de4da176",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:48:08.984801Z",
     "iopub.status.busy": "2024-05-06T14:48:08.982652Z",
     "iopub.status.idle": "2024-05-06T14:48:09.003926Z",
     "shell.execute_reply": "2024-05-06T14:48:09.001822Z"
    },
    "id": "E9jxoexkpsmn",
    "outputId": "57165249-f63d-411c-ff87-d25e1e9ee401",
    "papermill": {
     "duration": 0.121247,
     "end_time": "2024-05-06T14:48:09.006728",
     "exception": false,
     "start_time": "2024-05-06T14:48:08.885481",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "FALSE"
      ],
      "text/latex": [
       "FALSE"
      ],
      "text/markdown": [
       "FALSE"
      ],
      "text/plain": [
       "[1] FALSE"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "Z >= z_alpha_2"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "f20d862c",
   "metadata": {
    "id": "n0gtzn53psmo",
    "papermill": {
     "duration": 0.097611,
     "end_time": "2024-05-06T14:48:09.201170",
     "exception": false,
     "start_time": "2024-05-06T14:48:09.103559",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### <font color='green'>Conclusão: Rejeitamos a hipótese de que não existe diferença entre os grupos, isto é, existe uma diferença entre as médias de cigarros fumados pelos pacientes antes e depois do tratamento. E como é possível verificar através das médias de cigarros fumados por dia antes (31.86) e depois (11.2) do tratamento, podemos concluir que o tratamento apresentou resultado satisfatório.</font>"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "f864aaa1",
   "metadata": {
    "id": "8bP36mQ-psmp",
    "papermill": {
     "duration": 0.094542,
     "end_time": "2024-05-06T14:48:09.391482",
     "exception": false,
     "start_time": "2024-05-06T14:48:09.296940",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### <font color='red'>Critério do valor $p$</font>\n",
    "\n",
    "> ### Rejeitar $H_0$ se o valor $p\\leq\\alpha$"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "77e84bcf",
   "metadata": {
    "id": "H8kFeqh1psmp",
    "papermill": {
     "duration": 0.104557,
     "end_time": "2024-05-06T14:48:09.595243",
     "exception": false,
     "start_time": "2024-05-06T14:48:09.490686",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "#### <font color=red>Documentações:\n",
    "\n",
    "- [**wilcox.test**](https://www.rdocumentation.org/packages/stats/versions/3.6.1/topics/wilcox.test)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 117,
   "id": "6622f3fc",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:48:09.794666Z",
     "iopub.status.busy": "2024-05-06T14:48:09.792519Z",
     "iopub.status.idle": "2024-05-06T14:48:09.827174Z",
     "shell.execute_reply": "2024-05-06T14:48:09.824792Z"
    },
    "id": "bgWrxnBmpsmp",
    "papermill": {
     "duration": 0.142319,
     "end_time": "2024-05-06T14:48:09.831402",
     "exception": false,
     "start_time": "2024-05-06T14:48:09.689083",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Warning message in wilcox.test.default(fumo$Depois, fumo$Antes, paired = T, correct = F):\n",
      "“cannot compute exact p-value with ties”\n"
     ]
    },
    {
     "data": {
      "text/plain": [
       "\n",
       "\tWilcoxon signed rank test\n",
       "\n",
       "data:  fumo$Depois and fumo$Antes\n",
       "V = 22, p-value = 1.584e-06\n",
       "alternative hypothesis: true location shift is not equal to 0\n"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "resultado <- wilcox.test(fumo$Depois, fumo$Antes, paired = T, correct = F)\n",
    "resultado"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 118,
   "id": "ff3e1c15",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:48:10.026763Z",
     "iopub.status.busy": "2024-05-06T14:48:10.024873Z",
     "iopub.status.idle": "2024-05-06T14:48:10.048935Z",
     "shell.execute_reply": "2024-05-06T14:48:10.046311Z"
    },
    "papermill": {
     "duration": 0.124122,
     "end_time": "2024-05-06T14:48:10.052439",
     "exception": false,
     "start_time": "2024-05-06T14:48:09.928317",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "1.58431001850587e-06"
      ],
      "text/latex": [
       "1.58431001850587e-06"
      ],
      "text/markdown": [
       "1.58431001850587e-06"
      ],
      "text/plain": [
       "[1] 1.58431e-06"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "p_valor <- resultado$p.value\n",
    "p_valor"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 119,
   "id": "f6ca8e5b",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:48:10.245460Z",
     "iopub.status.busy": "2024-05-06T14:48:10.243613Z",
     "iopub.status.idle": "2024-05-06T14:48:10.265006Z",
     "shell.execute_reply": "2024-05-06T14:48:10.262438Z"
    },
    "id": "Qk13I21vpsmq",
    "outputId": "f111c5d0-c448-40d3-f4ee-f39e7b3a3dc3",
    "papermill": {
     "duration": 0.122618,
     "end_time": "2024-05-06T14:48:10.268303",
     "exception": false,
     "start_time": "2024-05-06T14:48:10.145685",
     "status": "completed"
    },
    "scrolled": true,
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "TRUE"
      ],
      "text/latex": [
       "TRUE"
      ],
      "text/markdown": [
       "TRUE"
      ],
      "text/plain": [
       "[1] TRUE"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "p_valor <= significancia"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "998e8de4",
   "metadata": {
    "papermill": {
     "duration": 0.094682,
     "end_time": "2024-05-06T14:48:10.458298",
     "exception": false,
     "start_time": "2024-05-06T14:48:10.363616",
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
   "collapsed_sections": [
    "cVgsZ_E3jQKg",
    "nk65O0lepz57"
   ],
   "name": "Curso_de_Estatística_Parte_3.ipynb",
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
   "duration": 148.677241,
   "end_time": "2024-05-06T14:48:10.679990",
   "environment_variables": {},
   "exception": null,
   "input_path": "__notebook__.ipynb",
   "output_path": "__notebook__.ipynb",
   "parameters": {},
   "start_time": "2024-05-06T14:45:42.002749",
   "version": "2.5.0"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
