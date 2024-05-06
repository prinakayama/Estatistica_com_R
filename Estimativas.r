{
 "cells": [
  {
   "cell_type": "markdown",
   "id": "76ceaa7a",
   "metadata": {
    "id": "WvMflodMjQKe",
    "papermill": {
     "duration": 0.011481,
     "end_time": "2024-05-06T14:14:23.958490",
     "exception": false,
     "start_time": "2024-05-06T14:14:23.947009",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "***\n",
    "# <font color=green size=10>CURSO DE ESTATÍSTICA - PARTE 2</font>\n",
    "***\n",
    "\n",
    "## Trabalho sobre Probabilidades, Amostragem e Estimações\n",
    "\n",
    "Utilizando os conhecimentos adquiridos em nosso treinamento execute as tarefas abaixo. Siga o roteiro proposto e vá completando as células vazias."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "b6a828fb",
   "metadata": {
    "id": "cVgsZ_E3jQKg",
    "papermill": {
     "duration": 0.010507,
     "end_time": "2024-05-06T14:14:23.980555",
     "exception": false,
     "start_time": "2024-05-06T14:14:23.970048",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# <font color=green>DATASET DO PROJETO</font>\n",
    "***"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "b6270201",
   "metadata": {
    "id": "iN1gIbaKjQKh",
    "papermill": {
     "duration": 0.0112,
     "end_time": "2024-05-06T14:14:24.002268",
     "exception": false,
     "start_time": "2024-05-06T14:14:23.991068",
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
   "id": "a05118fa",
   "metadata": {
    "id": "U6V7br1RjQKi",
    "papermill": {
     "duration": 0.010311,
     "end_time": "2024-05-06T14:14:24.023028",
     "exception": false,
     "start_time": "2024-05-06T14:14:24.012717",
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
   "id": "766e8511",
   "metadata": {
    "id": "r0Fe_qnzjQKj",
    "papermill": {
     "duration": 0.010744,
     "end_time": "2024-05-06T14:14:24.044544",
     "exception": false,
     "start_time": "2024-05-06T14:14:24.033800",
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
   "id": "e2fbc6b8",
   "metadata": {
    "id": "OK1IQH5cX7Gb",
    "papermill": {
     "duration": 0.010697,
     "end_time": "2024-05-06T14:14:24.065939",
     "exception": false,
     "start_time": "2024-05-06T14:14:24.055242",
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
   "id": "0f747d94",
   "metadata": {
    "id": "ZIqLOffNTg1Y",
    "papermill": {
     "duration": 0.010333,
     "end_time": "2024-05-06T14:14:24.086705",
     "exception": false,
     "start_time": "2024-05-06T14:14:24.076372",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "***\n",
    "***"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "5f0db825",
   "metadata": {
    "id": "8Rw70V6ojQKk",
    "papermill": {
     "duration": 0.010354,
     "end_time": "2024-05-06T14:14:24.107332",
     "exception": false,
     "start_time": "2024-05-06T14:14:24.096978",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Utilize as células abaixo para importar as bibliotecas e configurações que precisar para executar as tarefas"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 1,
   "id": "1fcff860",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:14:24.132373Z",
     "iopub.status.busy": "2024-05-06T14:14:24.130241Z",
     "iopub.status.idle": "2024-05-06T14:14:24.268407Z",
     "shell.execute_reply": "2024-05-06T14:14:24.266468Z"
    },
    "id": "fcTgimHBybMz",
    "papermill": {
     "duration": 0.153071,
     "end_time": "2024-05-06T14:14:24.270893",
     "exception": false,
     "start_time": "2024-05-06T14:14:24.117822",
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
    "library(glue)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "d7830065",
   "metadata": {
    "id": "2a-gvBvCULwt",
    "papermill": {
     "duration": 0.010639,
     "end_time": "2024-05-06T14:14:24.292312",
     "exception": false,
     "start_time": "2024-05-06T14:14:24.281673",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Importe o dataset e armazene o conteúdo em uma DataFrame"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 2,
   "id": "617c1194",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:14:24.346277Z",
     "iopub.status.busy": "2024-05-06T14:14:24.315592Z",
     "iopub.status.idle": "2024-05-06T14:14:24.597429Z",
     "shell.execute_reply": "2024-05-06T14:14:24.595559Z"
    },
    "id": "ufRZ7TLwjQKo",
    "papermill": {
     "duration": 0.297075,
     "end_time": "2024-05-06T14:14:24.599883",
     "exception": false,
     "start_time": "2024-05-06T14:14:24.302808",
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
   "cell_type": "markdown",
   "id": "7cad8f56",
   "metadata": {
    "id": "Oq3CKHCmTg1j",
    "papermill": {
     "duration": 0.010682,
     "end_time": "2024-05-06T14:14:24.621303",
     "exception": false,
     "start_time": "2024-05-06T14:14:24.610621",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Visualize o conteúdo do DataFrame"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 3,
   "id": "0cf57f60",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:14:24.646291Z",
     "iopub.status.busy": "2024-05-06T14:14:24.644720Z",
     "iopub.status.idle": "2024-05-06T14:14:24.691074Z",
     "shell.execute_reply": "2024-05-06T14:14:24.689295Z"
    },
    "id": "GsC_WhLFjQKq",
    "papermill": {
     "duration": 0.061383,
     "end_time": "2024-05-06T14:14:24.693386",
     "exception": false,
     "start_time": "2024-05-06T14:14:24.632003",
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
   "cell_type": "markdown",
   "id": "71e78034",
   "metadata": {
    "papermill": {
     "duration": 0.010922,
     "end_time": "2024-05-06T14:14:24.715256",
     "exception": false,
     "start_time": "2024-05-06T14:14:24.704334",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# <font color='green'>Problema A</font>"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "83cc00c9",
   "metadata": {
    "papermill": {
     "duration": 0.010781,
     "end_time": "2024-05-06T14:14:24.736806",
     "exception": false,
     "start_time": "2024-05-06T14:14:24.726025",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Avaliando nosso dataset é possível verificar que a **proporção de homens** como chefes de domicílios é de quase **70%**. Precisamos **selecionar aleatoriamente grupos de 10 indivíduos** para verificar as diferenças entre os rendimentos em cada grupo. Qual a **probabilidade de selecionamos um grupo que apresente a mesma proporção da população**, ou seja, selecionarmos um grupo que seja **composto por 7 homens e 3 mulheres**?\n",
    "\n",
    "#### <font color='blue'>Como tarefa extra, verifique a real proporção de homens e mulheres em nosso dataset (vimos como fazer isso em nosso primeiro curso de estatística).</font>\n",
    "\n",
    "#### <font color='red'>Verifique que tipo de distribuição de probabilidade se encaixa neste experimento.</font>"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "125adbe9",
   "metadata": {
    "papermill": {
     "duration": 0.010966,
     "end_time": "2024-05-06T14:14:24.758647",
     "exception": false,
     "start_time": "2024-05-06T14:14:24.747681",
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
   "execution_count": 4,
   "id": "65bdea2e",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:14:24.784109Z",
     "iopub.status.busy": "2024-05-06T14:14:24.782522Z",
     "iopub.status.idle": "2024-05-06T14:14:24.795777Z",
     "shell.execute_reply": "2024-05-06T14:14:24.794140Z"
    },
    "papermill": {
     "duration": 0.028562,
     "end_time": "2024-05-06T14:14:24.798076",
     "exception": false,
     "start_time": "2024-05-06T14:14:24.769514",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "k <- 7"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 5,
   "id": "cbb608e9",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:14:24.823456Z",
     "iopub.status.busy": "2024-05-06T14:14:24.821933Z",
     "iopub.status.idle": "2024-05-06T14:14:24.835303Z",
     "shell.execute_reply": "2024-05-06T14:14:24.833565Z"
    },
    "papermill": {
     "duration": 0.028575,
     "end_time": "2024-05-06T14:14:24.837570",
     "exception": false,
     "start_time": "2024-05-06T14:14:24.808995",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "n <- 10"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 6,
   "id": "9c540949",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:14:24.863005Z",
     "iopub.status.busy": "2024-05-06T14:14:24.861454Z",
     "iopub.status.idle": "2024-05-06T14:14:24.924972Z",
     "shell.execute_reply": "2024-05-06T14:14:24.923286Z"
    },
    "papermill": {
     "duration": 0.079171,
     "end_time": "2024-05-06T14:14:24.927692",
     "exception": false,
     "start_time": "2024-05-06T14:14:24.848521",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "p <- 0.70"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 7,
   "id": "0af50fea",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:14:24.953292Z",
     "iopub.status.busy": "2024-05-06T14:14:24.951757Z",
     "iopub.status.idle": "2024-05-06T14:14:24.972415Z",
     "shell.execute_reply": "2024-05-06T14:14:24.970720Z"
    },
    "papermill": {
     "duration": 0.035863,
     "end_time": "2024-05-06T14:14:24.974701",
     "exception": false,
     "start_time": "2024-05-06T14:14:24.938838",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "0.266827932"
      ],
      "text/latex": [
       "0.266827932"
      ],
      "text/markdown": [
       "0.266827932"
      ],
      "text/plain": [
       "[1] 0.2668279"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "probabilidade <- dbinom(k,n,p)\n",
    "probabilidade"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "a9c31527",
   "metadata": {
    "papermill": {
     "duration": 0.011111,
     "end_time": "2024-05-06T14:14:24.997383",
     "exception": false,
     "start_time": "2024-05-06T14:14:24.986272",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# <font color='green'>Problema B</font>"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "d8fbd44c",
   "metadata": {
    "papermill": {
     "duration": 0.011128,
     "end_time": "2024-05-06T14:14:25.019537",
     "exception": false,
     "start_time": "2024-05-06T14:14:25.008409",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Ainda sobre a questão anterior, **quantos grupos de 10 indivíduos** nós precisaríamos selecionar, de forma aleatória, para conseguir **100 grupos compostos por 7 homens e 3 mulheres**?\n",
    "\n",
    "#### <font color='red'>Lembre-se da forma de cálculo da média de uma distribuição binomial</font>"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "f6a98271",
   "metadata": {
    "papermill": {
     "duration": 0.040834,
     "end_time": "2024-05-06T14:14:25.071466",
     "exception": false,
     "start_time": "2024-05-06T14:14:25.030632",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Solução"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "c3e1b913",
   "metadata": {
    "papermill": {
     "duration": 0.011022,
     "end_time": "2024-05-06T14:14:25.093581",
     "exception": false,
     "start_time": "2024-05-06T14:14:25.082559",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Média da distribuição binomial\n",
    "\n",
    "# $$\\mu=nXp$$"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 8,
   "id": "00917ef3",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:14:25.119787Z",
     "iopub.status.busy": "2024-05-06T14:14:25.118248Z",
     "iopub.status.idle": "2024-05-06T14:14:25.238775Z",
     "shell.execute_reply": "2024-05-06T14:14:25.237208Z"
    },
    "papermill": {
     "duration": 0.136141,
     "end_time": "2024-05-06T14:14:25.240909",
     "exception": false,
     "start_time": "2024-05-06T14:14:25.104768",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "375"
      ],
      "text/latex": [
       "375"
      ],
      "text/markdown": [
       "375"
      ],
      "text/plain": [
       "[1] 375"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# media = n * p \n",
    "# n = media/ p\n",
    "\n",
    "n <- 100 / probabilidade\n",
    "n <- round(n)\n",
    "n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "995a01ac",
   "metadata": {
    "papermill": {
     "duration": 0.011191,
     "end_time": "2024-05-06T14:14:25.263510",
     "exception": false,
     "start_time": "2024-05-06T14:14:25.252319",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# <font color='green'>Problema C</font>"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "ee2ea2ef",
   "metadata": {
    "papermill": {
     "duration": 0.011695,
     "end_time": "2024-05-06T14:14:25.286385",
     "exception": false,
     "start_time": "2024-05-06T14:14:25.274690",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Um cliente nos encomendou um estudo para avaliar o **rendimento dos chefes de domicílio no Brasil**. Para isso precisamos realizar uma nova coleta de dados, isto é, uma nova pesquisa de campo. Após reunião com o cliente foi possível elencar o seguinte conjunto de informações:\n",
    "\n",
    "> A. O resultado da pesquisa precisa estar pronto em **2 meses**;\n",
    "\n",
    "> B. Teremos somente **R$\\$$ 150.000,00** de recursos para realização da pesquisa de campo; e\n",
    "    \n",
    "> C. Seria interessante uma **margem de erro não superior a 10% em relação a média estimada**.\n",
    "\n",
    "Em nossa experiência com estudos deste tipo, sabemos que o **custo médio por indivíduo entrevistado fica em torno de R$\\$$ 100,00**. Com este conjunto de fatos avalie e obtenha o seguinte conjunto de informações para passar ao cliente:\n",
    "\n",
    "\n",
    "> 1. Para obter uma estimativa para os parâmetros da população (renda dos chefes de domicílio no Brasil), realize uma amostragem aleatória simples em nosso conjunto de dados. Essa amostra deve conter 200 elementos (utilize set.seed(100) para garantir que o mesmo experimento possa ser realizado novamente). Obtenha a média e o desvio-padrão dessa amostra.\n",
    "    \n",
    "> 2. Para a **margem de erro** especificada pelo cliente obtenha os **tamanhos de amostra** necessários para garantir os **níveis de confiança de 90%, 95% e 99%**.\n",
    "    \n",
    "> 3. Obtenha o **custo da pesquisa** para os três níveis de confiança.\n",
    "    \n",
    "> 4. Para o maior nível de confiança viável (dentro do orçamento disponível), obtenha um **intervalo de confiança para a média da população**.\n",
    "    \n",
    "> 5. Assumindo o **nível de confiança escolhido no item anterior**, qual **margem de erro** pode ser considerada utilizando todo o recurso disponibilizado pelo cliente?\n",
    "    \n",
    "> 6. Assumindo um **nível de confiança de 95%**, **quanto a pesquisa custaria ao cliente** caso fosse considerada uma **margem de erro de apenas 5%** em relação a média estimada?\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "117414bc",
   "metadata": {
    "papermill": {
     "duration": 0.011272,
     "end_time": "2024-05-06T14:14:25.308902",
     "exception": false,
     "start_time": "2024-05-06T14:14:25.297630",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# <font color='blue'>Solução do item 1</font>"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "e7d31e8c",
   "metadata": {
    "papermill": {
     "duration": 0.011503,
     "end_time": "2024-05-06T14:14:25.331697",
     "exception": false,
     "start_time": "2024-05-06T14:14:25.320194",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Seleção de uma amostra aleatório simples\n",
    "\n",
    "#### <font color='red'>Lembre-se de utilizar *set.seed(100)*</font>"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 9,
   "id": "8bb4ade7",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:14:25.358427Z",
     "iopub.status.busy": "2024-05-06T14:14:25.356881Z",
     "iopub.status.idle": "2024-05-06T14:14:25.386452Z",
     "shell.execute_reply": "2024-05-06T14:14:25.384648Z"
    },
    "papermill": {
     "duration": 0.045702,
     "end_time": "2024-05-06T14:14:25.389032",
     "exception": false,
     "start_time": "2024-05-06T14:14:25.343330",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "set.seed(100)\n",
    "dataset = sample_n(dados,200)$Renda"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 10,
   "id": "9bf8d99e",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:14:25.415669Z",
     "iopub.status.busy": "2024-05-06T14:14:25.414193Z",
     "iopub.status.idle": "2024-05-06T14:14:25.430767Z",
     "shell.execute_reply": "2024-05-06T14:14:25.429111Z"
    },
    "papermill": {
     "duration": 0.032534,
     "end_time": "2024-05-06T14:14:25.433254",
     "exception": false,
     "start_time": "2024-05-06T14:14:25.400720",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "2181.56"
      ],
      "text/latex": [
       "2181.56"
      ],
      "text/markdown": [
       "2181.56"
      ],
      "text/plain": [
       "[1] 2181.56"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "mean(dataset)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 11,
   "id": "ae10b368",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:14:25.460045Z",
     "iopub.status.busy": "2024-05-06T14:14:25.458519Z",
     "iopub.status.idle": "2024-05-06T14:14:25.475098Z",
     "shell.execute_reply": "2024-05-06T14:14:25.473460Z"
    },
    "papermill": {
     "duration": 0.032575,
     "end_time": "2024-05-06T14:14:25.477407",
     "exception": false,
     "start_time": "2024-05-06T14:14:25.444832",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "3218.28770390803"
      ],
      "text/latex": [
       "3218.28770390803"
      ],
      "text/markdown": [
       "3218.28770390803"
      ],
      "text/plain": [
       "[1] 3218.288"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "sd(dataset)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "b0ef07a8",
   "metadata": {
    "papermill": {
     "duration": 0.011753,
     "end_time": "2024-05-06T14:14:25.500813",
     "exception": false,
     "start_time": "2024-05-06T14:14:25.489060",
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
   "execution_count": 12,
   "id": "0f26b414",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:14:25.527670Z",
     "iopub.status.busy": "2024-05-06T14:14:25.526114Z",
     "iopub.status.idle": "2024-05-06T14:14:25.546912Z",
     "shell.execute_reply": "2024-05-06T14:14:25.544924Z"
    },
    "papermill": {
     "duration": 0.036782,
     "end_time": "2024-05-06T14:14:25.549323",
     "exception": false,
     "start_time": "2024-05-06T14:14:25.512541",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "media_amostra <- mean(dataset)\n",
    "desvio_padrao_amostra <- sd(dataset)\n",
    "recursos <- 150000\n",
    "custo_entrevista <- 100"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "3cf45050",
   "metadata": {
    "papermill": {
     "duration": 0.012554,
     "end_time": "2024-05-06T14:14:25.573562",
     "exception": false,
     "start_time": "2024-05-06T14:14:25.561008",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# <font color='blue'>Solução do item 2</font>"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "fadba0a6",
   "metadata": {
    "papermill": {
     "duration": 0.011598,
     "end_time": "2024-05-06T14:14:25.596878",
     "exception": false,
     "start_time": "2024-05-06T14:14:25.585280",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Obtenha a margem de erro\n",
    "\n",
    "#### <font color='red'>Lembre-se que a margem de erro deve estar na mesma unidade da variável que está sendo estudada (R$)</font>"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 13,
   "id": "e01b4b19",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:14:25.623870Z",
     "iopub.status.busy": "2024-05-06T14:14:25.622298Z",
     "iopub.status.idle": "2024-05-06T14:14:25.644904Z",
     "shell.execute_reply": "2024-05-06T14:14:25.643257Z"
    },
    "papermill": {
     "duration": 0.038618,
     "end_time": "2024-05-06T14:14:25.647209",
     "exception": false,
     "start_time": "2024-05-06T14:14:25.608591",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "'A margem de erro eh de R$ 218,16 para mais ou para menos'"
      ],
      "text/latex": [
       "'A margem de erro eh de R\\$ 218,16 para mais ou para menos'"
      ],
      "text/markdown": [
       "'A margem de erro eh de R$ 218,16 para mais ou para menos'"
      ],
      "text/plain": [
       "A margem de erro eh de R$ 218,16 para mais ou para menos"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "e <- 0.10 * media_amostra\n",
    "glue('A margem de erro eh de R$ {format(e, digits=2, decimal.mark=\",\", nsmall=2, big.mark=\".\", scientific=F)} para mais ou para menos')"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "10385320",
   "metadata": {
    "papermill": {
     "duration": 0.01176,
     "end_time": "2024-05-06T14:14:25.670921",
     "exception": false,
     "start_time": "2024-05-06T14:14:25.659161",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Tamanho da amostra ($1 - \\alpha = 90\\%$)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 14,
   "id": "787d2bac",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:14:25.699155Z",
     "iopub.status.busy": "2024-05-06T14:14:25.697612Z",
     "iopub.status.idle": "2024-05-06T14:14:25.714400Z",
     "shell.execute_reply": "2024-05-06T14:14:25.712768Z"
    },
    "papermill": {
     "duration": 0.03338,
     "end_time": "2024-05-06T14:14:25.716717",
     "exception": false,
     "start_time": "2024-05-06T14:14:25.683337",
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
    "0.5 + (0.9 / 2)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 15,
   "id": "63031e4b",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:14:25.745802Z",
     "iopub.status.busy": "2024-05-06T14:14:25.743573Z",
     "iopub.status.idle": "2024-05-06T14:14:25.772104Z",
     "shell.execute_reply": "2024-05-06T14:14:25.770128Z"
    },
    "papermill": {
     "duration": 0.045424,
     "end_time": "2024-05-06T14:14:25.774839",
     "exception": false,
     "start_time": "2024-05-06T14:14:25.729415",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "'Para um nivel de confianca de 90% devemos selecionar uma amostra de 589 elementos.'"
      ],
      "text/latex": [
       "'Para um nivel de confianca de 90\\% devemos selecionar uma amostra de 589 elementos.'"
      ],
      "text/markdown": [
       "'Para um nivel de confianca de 90% devemos selecionar uma amostra de 589 elementos.'"
      ],
      "text/plain": [
       "Para um nivel de confianca de 90% devemos selecionar uma amostra de 589 elementos."
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "z <- qnorm(.95)\n",
    "n_confianca_90 <- (z * (desvio_padrao_amostra / e)) ** 2\n",
    "n_confianca_90 <- round(n_confianca_90)\n",
    "glue('Para um nivel de confianca de 90% devemos selecionar uma amostra de {n_confianca_90} elementos.')"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "efd5b127",
   "metadata": {
    "papermill": {
     "duration": 0.012376,
     "end_time": "2024-05-06T14:14:25.799795",
     "exception": false,
     "start_time": "2024-05-06T14:14:25.787419",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Tamanho da amostra ($1 - \\alpha = 95\\%$)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 16,
   "id": "1feb77e9",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:14:25.828300Z",
     "iopub.status.busy": "2024-05-06T14:14:25.826414Z",
     "iopub.status.idle": "2024-05-06T14:14:25.845831Z",
     "shell.execute_reply": "2024-05-06T14:14:25.843913Z"
    },
    "papermill": {
     "duration": 0.036398,
     "end_time": "2024-05-06T14:14:25.848448",
     "exception": false,
     "start_time": "2024-05-06T14:14:25.812050",
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
   "execution_count": 17,
   "id": "e219ec34",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:14:25.878059Z",
     "iopub.status.busy": "2024-05-06T14:14:25.876201Z",
     "iopub.status.idle": "2024-05-06T14:14:25.906115Z",
     "shell.execute_reply": "2024-05-06T14:14:25.904520Z"
    },
    "papermill": {
     "duration": 0.047656,
     "end_time": "2024-05-06T14:14:25.908516",
     "exception": false,
     "start_time": "2024-05-06T14:14:25.860860",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "'Para um nivel de confianca de 95% devemos selecionar uma amostra de 836 elementos.'"
      ],
      "text/latex": [
       "'Para um nivel de confianca de 95\\% devemos selecionar uma amostra de 836 elementos.'"
      ],
      "text/markdown": [
       "'Para um nivel de confianca de 95% devemos selecionar uma amostra de 836 elementos.'"
      ],
      "text/plain": [
       "Para um nivel de confianca de 95% devemos selecionar uma amostra de 836 elementos."
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "z <- qnorm(.975)\n",
    "n_confianca_95 <- (z * (desvio_padrao_amostra / e)) ** 2\n",
    "n_confianca_95 <- round(n_confianca_95)\n",
    "glue('Para um nivel de confianca de 95% devemos selecionar uma amostra de {n_confianca_95} elementos.')"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "53ef8705",
   "metadata": {
    "papermill": {
     "duration": 0.012455,
     "end_time": "2024-05-06T14:14:25.933621",
     "exception": false,
     "start_time": "2024-05-06T14:14:25.921166",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Tamanho da amostra ($1 - \\alpha = 99\\%$)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 18,
   "id": "781015ad",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:14:25.961953Z",
     "iopub.status.busy": "2024-05-06T14:14:25.960250Z",
     "iopub.status.idle": "2024-05-06T14:14:25.978275Z",
     "shell.execute_reply": "2024-05-06T14:14:25.976560Z"
    },
    "papermill": {
     "duration": 0.034941,
     "end_time": "2024-05-06T14:14:25.980860",
     "exception": false,
     "start_time": "2024-05-06T14:14:25.945919",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "0.995"
      ],
      "text/latex": [
       "0.995"
      ],
      "text/markdown": [
       "0.995"
      ],
      "text/plain": [
       "[1] 0.995"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "0.5 + (0.99 / 2)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 19,
   "id": "f1698a1c",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:14:26.010631Z",
     "iopub.status.busy": "2024-05-06T14:14:26.009100Z",
     "iopub.status.idle": "2024-05-06T14:14:26.032013Z",
     "shell.execute_reply": "2024-05-06T14:14:26.030327Z"
    },
    "papermill": {
     "duration": 0.040425,
     "end_time": "2024-05-06T14:14:26.034338",
     "exception": false,
     "start_time": "2024-05-06T14:14:25.993913",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "'Para um nivel de confianca de 99% devemos selecionar uma amostra de 1444 elementos.'"
      ],
      "text/latex": [
       "'Para um nivel de confianca de 99\\% devemos selecionar uma amostra de 1444 elementos.'"
      ],
      "text/markdown": [
       "'Para um nivel de confianca de 99% devemos selecionar uma amostra de 1444 elementos.'"
      ],
      "text/plain": [
       "Para um nivel de confianca de 99% devemos selecionar uma amostra de 1444 elementos."
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "z <- qnorm(.995)\n",
    "n_confianca_99 <- (z * (desvio_padrao_amostra / e)) ** 2\n",
    "n_confianca_99 <- round(n_confianca_99)\n",
    "glue('Para um nivel de confianca de 99% devemos selecionar uma amostra de {n_confianca_99} elementos.')"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "c112e114",
   "metadata": {
    "papermill": {
     "duration": 0.012637,
     "end_time": "2024-05-06T14:14:26.059813",
     "exception": false,
     "start_time": "2024-05-06T14:14:26.047176",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# <font color='blue'>Solução do item 3</font>"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "e13b71e6",
   "metadata": {
    "papermill": {
     "duration": 0.012527,
     "end_time": "2024-05-06T14:14:26.085148",
     "exception": false,
     "start_time": "2024-05-06T14:14:26.072621",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Custo da pesquisa para o nível de confiança de 90%"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 20,
   "id": "ab3b0516",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:14:26.113761Z",
     "iopub.status.busy": "2024-05-06T14:14:26.112257Z",
     "iopub.status.idle": "2024-05-06T14:14:26.137542Z",
     "shell.execute_reply": "2024-05-06T14:14:26.135474Z"
    },
    "papermill": {
     "duration": 0.042582,
     "end_time": "2024-05-06T14:14:26.140279",
     "exception": false,
     "start_time": "2024-05-06T14:14:26.097697",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Warning message in prettyNum(.Internal(format(x, trim, digits, nsmall, width, 3L, :\n",
      "“'big.mark' and 'decimal.mark' are both '.', which could be confusing”\n"
     ]
    },
    {
     "data": {
      "text/html": [
       "'Para um nivel de confianca de 90% o custo da pesquisa seria de R$ 58.900.00'"
      ],
      "text/latex": [
       "'Para um nivel de confianca de 90\\% o custo da pesquisa seria de R\\$ 58.900.00'"
      ],
      "text/markdown": [
       "'Para um nivel de confianca de 90% o custo da pesquisa seria de R$ 58.900.00'"
      ],
      "text/plain": [
       "Para um nivel de confianca de 90% o custo da pesquisa seria de R$ 58.900.00"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "custo_confianca_90 <- n_confianca_90 * custo_entrevista \n",
    "glue('Para um nivel de confianca de 90% o custo da pesquisa seria de R$ {format(custo_confianca_90, digit=2, decimal_mark=\",\", nsmall=2, big.mark=\".\", scientific=F)}')"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "c35d6372",
   "metadata": {
    "papermill": {
     "duration": 0.012771,
     "end_time": "2024-05-06T14:14:26.166032",
     "exception": false,
     "start_time": "2024-05-06T14:14:26.153261",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Custo da pesquisa para o nível de confiança de 95%"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 21,
   "id": "fd877208",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:14:26.195305Z",
     "iopub.status.busy": "2024-05-06T14:14:26.193757Z",
     "iopub.status.idle": "2024-05-06T14:14:26.218583Z",
     "shell.execute_reply": "2024-05-06T14:14:26.216543Z"
    },
    "papermill": {
     "duration": 0.042442,
     "end_time": "2024-05-06T14:14:26.221287",
     "exception": false,
     "start_time": "2024-05-06T14:14:26.178845",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Warning message in prettyNum(.Internal(format(x, trim, digits, nsmall, width, 3L, :\n",
      "“'big.mark' and 'decimal.mark' are both '.', which could be confusing”\n"
     ]
    },
    {
     "data": {
      "text/html": [
       "'Para um nivel de confianca de 95% o custo da pesquisa seria de R$ 58.900.00'"
      ],
      "text/latex": [
       "'Para um nivel de confianca de 95\\% o custo da pesquisa seria de R\\$ 58.900.00'"
      ],
      "text/markdown": [
       "'Para um nivel de confianca de 95% o custo da pesquisa seria de R$ 58.900.00'"
      ],
      "text/plain": [
       "Para um nivel de confianca de 95% o custo da pesquisa seria de R$ 58.900.00"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "custo_confianca_95 <- n_confianca_95 * custo_entrevista \n",
    "glue('Para um nivel de confianca de 95% o custo da pesquisa seria de R$ {format(custo_confianca_90, digit=2, decimal_mark=\",\", nsmall=2, big.mark=\".\", scientific=F)}')"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "4dc2c067",
   "metadata": {
    "papermill": {
     "duration": 0.012993,
     "end_time": "2024-05-06T14:14:26.247477",
     "exception": false,
     "start_time": "2024-05-06T14:14:26.234484",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Custo da pesquisa para o nível de confiança de 99%"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 22,
   "id": "f4784750",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:14:26.276915Z",
     "iopub.status.busy": "2024-05-06T14:14:26.275402Z",
     "iopub.status.idle": "2024-05-06T14:14:26.299616Z",
     "shell.execute_reply": "2024-05-06T14:14:26.297672Z"
    },
    "papermill": {
     "duration": 0.041837,
     "end_time": "2024-05-06T14:14:26.302325",
     "exception": false,
     "start_time": "2024-05-06T14:14:26.260488",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Warning message in prettyNum(.Internal(format(x, trim, digits, nsmall, width, 3L, :\n",
      "“'big.mark' and 'decimal.mark' are both '.', which could be confusing”\n"
     ]
    },
    {
     "data": {
      "text/html": [
       "'Para um nivel de confianca de 90% o custo da pesquisa seria de R$ 144.400.00'"
      ],
      "text/latex": [
       "'Para um nivel de confianca de 90\\% o custo da pesquisa seria de R\\$ 144.400.00'"
      ],
      "text/markdown": [
       "'Para um nivel de confianca de 90% o custo da pesquisa seria de R$ 144.400.00'"
      ],
      "text/plain": [
       "Para um nivel de confianca de 90% o custo da pesquisa seria de R$ 144.400.00"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "custo_confianca_99 <- n_confianca_99 * custo_entrevista \n",
    "glue('Para um nivel de confianca de 90% o custo da pesquisa seria de R$ {format(custo_confianca_99, digit=2, decimal_mark=\",\", nsmall=2, big.mark=\".\", scientific=F)}')"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "15f15343",
   "metadata": {
    "papermill": {
     "duration": 0.013241,
     "end_time": "2024-05-06T14:14:26.328946",
     "exception": false,
     "start_time": "2024-05-06T14:14:26.315705",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# <font color='blue'>Solução do item 4</font>"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 23,
   "id": "58fa7ea2",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:14:26.358932Z",
     "iopub.status.busy": "2024-05-06T14:14:26.357458Z",
     "iopub.status.idle": "2024-05-06T14:14:26.382006Z",
     "shell.execute_reply": "2024-05-06T14:14:26.380385Z"
    },
    "papermill": {
     "duration": 0.041859,
     "end_time": "2024-05-06T14:14:26.384128",
     "exception": false,
     "start_time": "2024-05-06T14:14:26.342269",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "1963.40266570567"
      ],
      "text/latex": [
       "1963.40266570567"
      ],
      "text/markdown": [
       "1963.40266570567"
      ],
      "text/plain": [
       "[1] 1963.403"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "2399.71733429433"
      ],
      "text/latex": [
       "2399.71733429433"
      ],
      "text/markdown": [
       "2399.71733429433"
      ],
      "text/plain": [
       "[1] 2399.717"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "probabilidade <- 0.5 + (0.95 / 2)\n",
    "z <- qnorm(probabilidade)\n",
    "media_amostra - (z* (desvio_padrao_amostra / sqrt(n_confianca_95)))\n",
    "media_amostra + (z* (desvio_padrao_amostra / sqrt(n_confianca_95)))"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "ab1d2e7e",
   "metadata": {
    "papermill": {
     "duration": 0.013504,
     "end_time": "2024-05-06T14:14:26.411365",
     "exception": false,
     "start_time": "2024-05-06T14:14:26.397861",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# <font color='blue'>Solução do item 5</font>"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 24,
   "id": "c3618b7f",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:14:26.442216Z",
     "iopub.status.busy": "2024-05-06T14:14:26.440566Z",
     "iopub.status.idle": "2024-05-06T14:14:26.459781Z",
     "shell.execute_reply": "2024-05-06T14:14:26.458023Z"
    },
    "papermill": {
     "duration": 0.036899,
     "end_time": "2024-05-06T14:14:26.461914",
     "exception": false,
     "start_time": "2024-05-06T14:14:26.425015",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "1500"
      ],
      "text/latex": [
       "1500"
      ],
      "text/markdown": [
       "1500"
      ],
      "text/plain": [
       "[1] 1500"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "n_confianca_95 <- recursos / custo_entrevista\n",
    "n_confianca_95"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 25,
   "id": "a4a457d1",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:14:26.492861Z",
     "iopub.status.busy": "2024-05-06T14:14:26.491221Z",
     "iopub.status.idle": "2024-05-06T14:14:26.517945Z",
     "shell.execute_reply": "2024-05-06T14:14:26.516285Z"
    },
    "papermill": {
     "duration": 0.044679,
     "end_time": "2024-05-06T14:14:26.520325",
     "exception": false,
     "start_time": "2024-05-06T14:14:26.475646",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "162.864836424474"
      ],
      "text/latex": [
       "162.864836424474"
      ],
      "text/markdown": [
       "162.864836424474"
      ],
      "text/plain": [
       "[1] 162.8648"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "z <- qnorm(.975)\n",
    "e <- z * (desvio_padrao_amostra / sqrt(n_confianca_95))\n",
    "e"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 26,
   "id": "7996fae6",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:14:26.553491Z",
     "iopub.status.busy": "2024-05-06T14:14:26.552007Z",
     "iopub.status.idle": "2024-05-06T14:14:26.573657Z",
     "shell.execute_reply": "2024-05-06T14:14:26.571290Z"
    },
    "papermill": {
     "duration": 0.041443,
     "end_time": "2024-05-06T14:14:26.576502",
     "exception": false,
     "start_time": "2024-05-06T14:14:26.535059",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "'A nova margem de erro eh 7,47%.'"
      ],
      "text/latex": [
       "'A nova margem de erro eh 7,47\\%.'"
      ],
      "text/markdown": [
       "'A nova margem de erro eh 7,47%.'"
      ],
      "text/plain": [
       "A nova margem de erro eh 7,47%."
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "e_percentual <- (e / media_amostra) * 100\n",
    "glue('A nova margem de erro eh {format(e_percentual, digits = 2, nsmall = 2, decimal.mark= \",\")}%.')"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "903f1a6c",
   "metadata": {
    "papermill": {
     "duration": 0.013919,
     "end_time": "2024-05-06T14:14:26.604621",
     "exception": false,
     "start_time": "2024-05-06T14:14:26.590702",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# <font color='blue'>Solução do item 6</font>"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 27,
   "id": "b1c24b76",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:14:26.636694Z",
     "iopub.status.busy": "2024-05-06T14:14:26.635105Z",
     "iopub.status.idle": "2024-05-06T14:14:26.656520Z",
     "shell.execute_reply": "2024-05-06T14:14:26.654329Z"
    },
    "papermill": {
     "duration": 0.040229,
     "end_time": "2024-05-06T14:14:26.659265",
     "exception": false,
     "start_time": "2024-05-06T14:14:26.619036",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "'A margem de erro eh de R$ 109,08para mais ou para menos'"
      ],
      "text/latex": [
       "'A margem de erro eh de R\\$ 109,08para mais ou para menos'"
      ],
      "text/markdown": [
       "'A margem de erro eh de R$ 109,08para mais ou para menos'"
      ],
      "text/plain": [
       "A margem de erro eh de R$ 109,08para mais ou para menos"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "e <- 0.05 * media_amostra\n",
    "glue('A margem de erro eh de R$ {format(e,digits=2, decimal.mark=\",\", nsmall=2, big.mark=\".\", scientific=F)}para mais ou para menos')"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 28,
   "id": "cab184ed",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:14:26.691275Z",
     "iopub.status.busy": "2024-05-06T14:14:26.689633Z",
     "iopub.status.idle": "2024-05-06T14:14:26.714870Z",
     "shell.execute_reply": "2024-05-06T14:14:26.712619Z"
    },
    "papermill": {
     "duration": 0.044117,
     "end_time": "2024-05-06T14:14:26.717555",
     "exception": false,
     "start_time": "2024-05-06T14:14:26.673438",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "'Para um nivel de confianca de 95% devemos selecionar uma amostra de 3344 elementos'"
      ],
      "text/latex": [
       "'Para um nivel de confianca de 95\\% devemos selecionar uma amostra de 3344 elementos'"
      ],
      "text/markdown": [
       "'Para um nivel de confianca de 95% devemos selecionar uma amostra de 3344 elementos'"
      ],
      "text/plain": [
       "Para um nivel de confianca de 95% devemos selecionar uma amostra de 3344 elementos"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "z <- qnorm(.975)\n",
    "n_confianca_95 <- (z * (desvio_padrao_amostra / e)) ** 2\n",
    "n_confianca_95 <- round(n_confianca_95)\n",
    "glue('Para um nivel de confianca de 95% devemos selecionar uma amostra de {n_confianca_95} elementos')"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 29,
   "id": "39073853",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T14:14:26.749646Z",
     "iopub.status.busy": "2024-05-06T14:14:26.748106Z",
     "iopub.status.idle": "2024-05-06T14:14:26.770593Z",
     "shell.execute_reply": "2024-05-06T14:14:26.768275Z"
    },
    "papermill": {
     "duration": 0.041514,
     "end_time": "2024-05-06T14:14:26.773448",
     "exception": false,
     "start_time": "2024-05-06T14:14:26.731934",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<span style=white-space:pre-wrap>'Para um nivel de confianca de 95% o custo da pesquisa seria de R$  334.400,00para mais ou para menos'</span>"
      ],
      "text/latex": [
       "'Para um nivel de confianca de 95\\% o custo da pesquisa seria de R\\$  334.400,00para mais ou para menos'"
      ],
      "text/markdown": [
       "<span style=white-space:pre-wrap>'Para um nivel de confianca de 95% o custo da pesquisa seria de R$  334.400,00para mais ou para menos'</span>"
      ],
      "text/plain": [
       "Para um nivel de confianca de 95% o custo da pesquisa seria de R$  334.400,00para mais ou para menos"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "custo_confianca_95 <- n_confianca_95 * custo_entrevista\n",
    "glue('Para um nivel de confianca de 95% o custo da pesquisa seria de R$  {format(custo_confianca_95,digits=2, decimal.mark=\",\", nsmall=2, big.mark=\".\", scientific=F)}para mais ou para menos')\n"
   ]
  }
 ],
 "metadata": {
  "colab": {
   "name": "Análise_Descritiva.ipynb",
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
   "duration": 6.062211,
   "end_time": "2024-05-06T14:14:26.909138",
   "environment_variables": {},
   "exception": null,
   "input_path": "__notebook__.ipynb",
   "output_path": "__notebook__.ipynb",
   "parameters": {},
   "start_time": "2024-05-06T14:14:20.846927",
   "version": "2.5.0"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
