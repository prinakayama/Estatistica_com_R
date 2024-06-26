{
 "cells": [
  {
   "cell_type": "markdown",
   "id": "457a4e82",
   "metadata": {
    "id": "WvMflodMjQKe",
    "papermill": {
     "duration": 0.021694,
     "end_time": "2024-05-04T17:15:57.555282",
     "exception": false,
     "start_time": "2024-05-04T17:15:57.533588",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "***\n",
    "# <font color=green size=10>CURSO DE ESTATÍSTICA - PARTE 1</font>\n",
    "***\n",
    "\n",
    "## Trabalho de Análise Descritiva de um Conjunto de Dados\n",
    "\n",
    "Utilizando os conhecimentos adquiridos em nosso treinamento realize uma análise descritiva básica de um conjunto de dados retirados da Pesquisa Nacional por Amostra de Domicílios - 2015 do IBGE. \n",
    "\n",
    "Vamos construir histogramas, calcular e avaliar medidas de tendência central, medidas separatrizes e de dispersão dos dados.\n",
    "\n",
    "Siga o roteiro proposto e vá completando as células vazias. Procure pensar em mais informações interessantes que podem ser exploradas em nosso dataset."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "fca3f212",
   "metadata": {
    "id": "cVgsZ_E3jQKg",
    "papermill": {
     "duration": 0.021145,
     "end_time": "2024-05-04T17:15:57.596846",
     "exception": false,
     "start_time": "2024-05-04T17:15:57.575701",
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
   "id": "b2d29f93",
   "metadata": {
    "id": "iN1gIbaKjQKh",
    "papermill": {
     "duration": 0.020344,
     "end_time": "2024-05-04T17:15:57.638132",
     "exception": false,
     "start_time": "2024-05-04T17:15:57.617788",
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
   "id": "f4641bf9",
   "metadata": {
    "id": "U6V7br1RjQKi",
    "papermill": {
     "duration": 0.020223,
     "end_time": "2024-05-04T17:15:57.680654",
     "exception": false,
     "start_time": "2024-05-04T17:15:57.660431",
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
   "id": "895ac330",
   "metadata": {
    "id": "r0Fe_qnzjQKj",
    "papermill": {
     "duration": 0.02074,
     "end_time": "2024-05-04T17:15:57.721579",
     "exception": false,
     "start_time": "2024-05-04T17:15:57.700839",
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
   "id": "6f4075c0",
   "metadata": {
    "id": "OK1IQH5cX7Gb",
    "papermill": {
     "duration": 0.020411,
     "end_time": "2024-05-04T17:15:57.762956",
     "exception": false,
     "start_time": "2024-05-04T17:15:57.742545",
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
   "id": "7653bb24",
   "metadata": {
    "id": "ZIqLOffNTg1Y",
    "papermill": {
     "duration": 0.020205,
     "end_time": "2024-05-04T17:15:57.803400",
     "exception": false,
     "start_time": "2024-05-04T17:15:57.783195",
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
   "id": "cc8b2f93",
   "metadata": {
    "id": "8Rw70V6ojQKk",
    "papermill": {
     "duration": 0.020276,
     "end_time": "2024-05-04T17:15:57.844047",
     "exception": false,
     "start_time": "2024-05-04T17:15:57.823771",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Utilize as células abaixo para importar as bibliotecas que precisar e para configurações gerais\n",
    "#### <font color='red'>Sugestões: dplyr, ggplot2 etc.</font>"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 1,
   "id": "78e917f2",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-04T17:15:57.891973Z",
     "iopub.status.busy": "2024-05-04T17:15:57.888906Z",
     "iopub.status.idle": "2024-05-04T17:16:42.771143Z",
     "shell.execute_reply": "2024-05-04T17:16:42.768699Z"
    },
    "id": "fcTgimHBybMz",
    "papermill": {
     "duration": 44.911007,
     "end_time": "2024-05-04T17:16:42.775404",
     "exception": false,
     "start_time": "2024-05-04T17:15:57.864397",
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
      "\n",
      "Warning message in install.packages(\"dplyr\"):\n",
      "“installation of package ‘dplyr’ had non-zero exit status”\n",
      "Installing package into ‘/usr/local/lib/R/site-library’\n",
      "(as ‘lib’ is unspecified)\n",
      "\n"
     ]
    }
   ],
   "source": [
    "install.packages(\"dplyr\")\n",
    "install.packages(\"ggplot2\")"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 2,
   "id": "1bc628b8",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-04T17:16:42.861417Z",
     "iopub.status.busy": "2024-05-04T17:16:42.821770Z",
     "iopub.status.idle": "2024-05-04T17:16:43.046925Z",
     "shell.execute_reply": "2024-05-04T17:16:43.044877Z"
    },
    "papermill": {
     "duration": 0.252582,
     "end_time": "2024-05-04T17:16:43.050625",
     "exception": false,
     "start_time": "2024-05-04T17:16:42.798043",
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
   "execution_count": 3,
   "id": "230a3f33",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-04T17:16:43.097268Z",
     "iopub.status.busy": "2024-05-04T17:16:43.095400Z",
     "iopub.status.idle": "2024-05-04T17:16:43.138813Z",
     "shell.execute_reply": "2024-05-04T17:16:43.135745Z"
    },
    "papermill": {
     "duration": 0.071241,
     "end_time": "2024-05-04T17:16:43.142549",
     "exception": false,
     "start_time": "2024-05-04T17:16:43.071308",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "options(repr.plot.width = 9, repr.plot.height = 6)\n",
    "formatos <- theme(\n",
    "        plot.title = element_text(size=14, hjust=0.5),\n",
    "        axis.title.y = element_text(size=12, vjust= +0.2),\n",
    "        axis.title.x = element_text(size=12, vjust= -0.2),\n",
    "        axis.text.y = element_text(size=10),\n",
    "        axis.text.x = element_text(size=10),     \n",
    "\n",
    ")"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "5e90a426",
   "metadata": {
    "id": "2a-gvBvCULwt",
    "papermill": {
     "duration": 0.020761,
     "end_time": "2024-05-04T17:16:43.183971",
     "exception": false,
     "start_time": "2024-05-04T17:16:43.163210",
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
   "execution_count": 4,
   "id": "18a43308",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-04T17:16:43.230153Z",
     "iopub.status.busy": "2024-05-04T17:16:43.228264Z",
     "iopub.status.idle": "2024-05-04T17:16:43.510545Z",
     "shell.execute_reply": "2024-05-04T17:16:43.508312Z"
    },
    "id": "ufRZ7TLwjQKo",
    "papermill": {
     "duration": 0.308715,
     "end_time": "2024-05-04T17:16:43.513355",
     "exception": false,
     "start_time": "2024-05-04T17:16:43.204640",
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
   "id": "36e17c1c",
   "metadata": {
    "id": "Oq3CKHCmTg1j",
    "papermill": {
     "duration": 0.020796,
     "end_time": "2024-05-04T17:16:43.554862",
     "exception": false,
     "start_time": "2024-05-04T17:16:43.534066",
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
   "execution_count": 5,
   "id": "960b6c84",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-04T17:16:43.601634Z",
     "iopub.status.busy": "2024-05-04T17:16:43.599744Z",
     "iopub.status.idle": "2024-05-04T17:16:43.639860Z",
     "shell.execute_reply": "2024-05-04T17:16:43.637643Z"
    },
    "id": "GsC_WhLFjQKq",
    "outputId": "dbda77ae-c90f-4eb0-a2da-181dea0f77ee",
    "papermill": {
     "duration": 0.066887,
     "end_time": "2024-05-04T17:16:43.642723",
     "exception": false,
     "start_time": "2024-05-04T17:16:43.575836",
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
   "id": "f21ce065",
   "metadata": {
    "id": "HDrFJQitTg1n",
    "papermill": {
     "duration": 0.021873,
     "end_time": "2024-05-04T17:16:43.685749",
     "exception": false,
     "start_time": "2024-05-04T17:16:43.663876",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Para avaliar o comportamento da variável RENDA vamos construir uma tabela de frequências considerando as seguintes classes em salários mínimos (SM)\n",
    "#### <font color='blue'>Descreva os pontos mais relevantes que você observa na tabela e no gráfico.</font>\n",
    "\n",
    "Classes de renda:\n",
    "\n",
    "<b>A</b> ► Acima de 25 SM\n",
    "\n",
    "<b>B</b> ► De 15 a 25 SM\n",
    "\n",
    "<b>C</b> ► De 5 a 15 SM\n",
    "\n",
    "<b>D</b> ► De 2 a 5 SM\n",
    "\n",
    "<b>E</b> ► Até 2 SM\n",
    "\n",
    "Para construir as classes de renda considere que o salário mínimo na época da pesquisa era de <b>R$ 788,00</b>.\n",
    "\n",
    "#### Siga os passos abaixo:"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "0c2978fb",
   "metadata": {
    "id": "zJBkeGxiTg1o",
    "papermill": {
     "duration": 0.021899,
     "end_time": "2024-05-04T17:16:43.728805",
     "exception": false,
     "start_time": "2024-05-04T17:16:43.706906",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### 1º Definir os intevalos das classes em reais (R$)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 6,
   "id": "273d89cc",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-04T17:16:43.776424Z",
     "iopub.status.busy": "2024-05-04T17:16:43.774238Z",
     "iopub.status.idle": "2024-05-04T17:16:43.800998Z",
     "shell.execute_reply": "2024-05-04T17:16:43.798851Z"
    },
    "id": "-Ct3QUj6Tg1p",
    "outputId": "53fd7aa4-7026-4143-f4dc-f6e55be70d11",
    "papermill": {
     "duration": 0.053762,
     "end_time": "2024-05-04T17:16:43.803769",
     "exception": false,
     "start_time": "2024-05-04T17:16:43.750007",
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
       "<ol class=list-inline><li>0</li><li>1576</li><li>3940</li><li>11820</li><li>19700</li><li>2e+05</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 0\n",
       "\\item 1576\n",
       "\\item 3940\n",
       "\\item 11820\n",
       "\\item 19700\n",
       "\\item 2e+05\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 0\n",
       "2. 1576\n",
       "3. 3940\n",
       "4. 11820\n",
       "5. 19700\n",
       "6. 2e+05\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       "[1]      0   1576   3940  11820  19700 200000"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "classes <- c(\n",
    "    min(dados$Renda),\n",
    "    2*788,\n",
    "    5*788,\n",
    "    15*788,\n",
    "    25*788,\n",
    "    max(dados$Renda)\n",
    ")\n",
    "classes\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "c184fa3f",
   "metadata": {
    "id": "dZ7X37CGTg1t",
    "papermill": {
     "duration": 0.021951,
     "end_time": "2024-05-04T17:16:43.848315",
     "exception": false,
     "start_time": "2024-05-04T17:16:43.826364",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### 2º Definir os labels das classes"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 7,
   "id": "cf8f51aa",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-04T17:16:43.899668Z",
     "iopub.status.busy": "2024-05-04T17:16:43.897758Z",
     "iopub.status.idle": "2024-05-04T17:16:43.922691Z",
     "shell.execute_reply": "2024-05-04T17:16:43.920721Z"
    },
    "id": "4UFOzitTTg1u",
    "papermill": {
     "duration": 0.052444,
     "end_time": "2024-05-04T17:16:43.925334",
     "exception": false,
     "start_time": "2024-05-04T17:16:43.872890",
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
       "<ol class=list-inline><li>'E'</li><li>'D'</li><li>'C'</li><li>'B'</li><li>'A'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'E'\n",
       "\\item 'D'\n",
       "\\item 'C'\n",
       "\\item 'B'\n",
       "\\item 'A'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'E'\n",
       "2. 'D'\n",
       "3. 'C'\n",
       "4. 'B'\n",
       "5. 'A'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       "[1] \"E\" \"D\" \"C\" \"B\" \"A\""
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "labels <- c('E','D','C','B','A')\n",
    "labels"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "9d0202c9",
   "metadata": {
    "id": "umFq1o-UTg1w",
    "papermill": {
     "duration": 0.021732,
     "end_time": "2024-05-04T17:16:43.969246",
     "exception": false,
     "start_time": "2024-05-04T17:16:43.947514",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### 3º Construir a coluna de frequências"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 8,
   "id": "36bdd63b",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-04T17:16:44.072925Z",
     "iopub.status.busy": "2024-05-04T17:16:44.071108Z",
     "iopub.status.idle": "2024-05-04T17:16:44.127862Z",
     "shell.execute_reply": "2024-05-04T17:16:44.125685Z"
    },
    "id": "uSztBoqOTg1x",
    "outputId": "9663adf3-955f-4f39-a632-53ec9ac2bc30",
    "papermill": {
     "duration": 0.139322,
     "end_time": "2024-05-04T17:16:44.130838",
     "exception": false,
     "start_time": "2024-05-04T17:16:43.991516",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "\n",
       "    E     D     C     B     A \n",
       "49755 18602  7241   822   420 "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "frequencia <- table(\n",
    "    cut(\n",
    "        x = dados$Renda,\n",
    "        breaks = classes, \n",
    "        labels = labels, \n",
    "        include.lowest = T\n",
    "    )\n",
    ")\n",
    "frequencia"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "72b32b9b",
   "metadata": {
    "id": "2k6nGUZKTg11",
    "papermill": {
     "duration": 0.021777,
     "end_time": "2024-05-04T17:16:44.174584",
     "exception": false,
     "start_time": "2024-05-04T17:16:44.152807",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### 4º Construir a coluna de percentuais"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 9,
   "id": "a46b9b99",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-04T17:16:44.222466Z",
     "iopub.status.busy": "2024-05-04T17:16:44.220659Z",
     "iopub.status.idle": "2024-05-04T17:16:44.244485Z",
     "shell.execute_reply": "2024-05-04T17:16:44.241708Z"
    },
    "papermill": {
     "duration": 0.052026,
     "end_time": "2024-05-04T17:16:44.248360",
     "exception": false,
     "start_time": "2024-05-04T17:16:44.196334",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "\n",
       "         E          D          C          B          A \n",
       "64.7514315 24.2087454  9.4234774  1.0697553  0.5465903 "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "percentual <- prop.table(frequencia)*100\n",
    "percentual"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "b9ecdd06",
   "metadata": {
    "id": "9dvk6-9_Tg16",
    "papermill": {
     "duration": 0.022095,
     "end_time": "2024-05-04T17:16:44.292369",
     "exception": false,
     "start_time": "2024-05-04T17:16:44.270274",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### 5º Juntar as colunas de frequência e percentuais e ordenar as linhas de acordo com os labels das classes"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 10,
   "id": "a83a9313",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-04T17:16:44.341763Z",
     "iopub.status.busy": "2024-05-04T17:16:44.339800Z",
     "iopub.status.idle": "2024-05-04T17:16:44.372468Z",
     "shell.execute_reply": "2024-05-04T17:16:44.369545Z"
    },
    "papermill": {
     "duration": 0.061234,
     "end_time": "2024-05-04T17:16:44.376221",
     "exception": false,
     "start_time": "2024-05-04T17:16:44.314987",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A matrix: 5 × 3 of type chr</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>Frequencia</th><th scope=col></th><th scope=col>percentual</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>E</th><td>49755</td><td>Porcentagem (%)</td><td>64.7514315460698 </td></tr>\n",
       "\t<tr><th scope=row>D</th><td>18602</td><td>Porcentagem (%)</td><td>24.2087454450807 </td></tr>\n",
       "\t<tr><th scope=row>C</th><td>7241 </td><td>Porcentagem (%)</td><td>9.42347735554399 </td></tr>\n",
       "\t<tr><th scope=row>B</th><td>822  </td><td>Porcentagem (%)</td><td>1.06975533576262 </td></tr>\n",
       "\t<tr><th scope=row>A</th><td>420  </td><td>Porcentagem (%)</td><td>0.546590317542946</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A matrix: 5 × 3 of type chr\n",
       "\\begin{tabular}{r|lll}\n",
       "  & Frequencia &  & percentual\\\\\n",
       "\\hline\n",
       "\tE & 49755 & Porcentagem (\\%) & 64.7514315460698 \\\\\n",
       "\tD & 18602 & Porcentagem (\\%) & 24.2087454450807 \\\\\n",
       "\tC & 7241  & Porcentagem (\\%) & 9.42347735554399 \\\\\n",
       "\tB & 822   & Porcentagem (\\%) & 1.06975533576262 \\\\\n",
       "\tA & 420   & Porcentagem (\\%) & 0.546590317542946\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A matrix: 5 × 3 of type chr\n",
       "\n",
       "| <!--/--> | Frequencia | <!----> | percentual |\n",
       "|---|---|---|---|\n",
       "| E | 49755 | Porcentagem (%) | 64.7514315460698  |\n",
       "| D | 18602 | Porcentagem (%) | 24.2087454450807  |\n",
       "| C | 7241  | Porcentagem (%) | 9.42347735554399  |\n",
       "| B | 822   | Porcentagem (%) | 1.06975533576262  |\n",
       "| A | 420   | Porcentagem (%) | 0.546590317542946 |\n",
       "\n"
      ],
      "text/plain": [
       "  Frequencia                 percentual       \n",
       "E 49755      Porcentagem (%) 64.7514315460698 \n",
       "D 18602      Porcentagem (%) 24.2087454450807 \n",
       "C 7241       Porcentagem (%) 9.42347735554399 \n",
       "B 822        Porcentagem (%) 1.06975533576262 \n",
       "A 420        Porcentagem (%) 0.546590317542946"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "dist_freq_renda <- cbind('Frequencia' = frequencia, 'Porcentagem (%)', percentual)\n",
    "dist_freq_renda"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 11,
   "id": "f3647660",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-04T17:16:44.425723Z",
     "iopub.status.busy": "2024-05-04T17:16:44.423596Z",
     "iopub.status.idle": "2024-05-04T17:16:44.452380Z",
     "shell.execute_reply": "2024-05-04T17:16:44.450319Z"
    },
    "papermill": {
     "duration": 0.057014,
     "end_time": "2024-05-04T17:16:44.455408",
     "exception": false,
     "start_time": "2024-05-04T17:16:44.398394",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A matrix: 5 × 3 of type chr</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>Frequencia</th><th scope=col></th><th scope=col>percentual</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>A</th><td>420  </td><td>Porcentagem (%)</td><td>0.546590317542946</td></tr>\n",
       "\t<tr><th scope=row>B</th><td>822  </td><td>Porcentagem (%)</td><td>1.06975533576262 </td></tr>\n",
       "\t<tr><th scope=row>C</th><td>7241 </td><td>Porcentagem (%)</td><td>9.42347735554399 </td></tr>\n",
       "\t<tr><th scope=row>D</th><td>18602</td><td>Porcentagem (%)</td><td>24.2087454450807 </td></tr>\n",
       "\t<tr><th scope=row>E</th><td>49755</td><td>Porcentagem (%)</td><td>64.7514315460698 </td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A matrix: 5 × 3 of type chr\n",
       "\\begin{tabular}{r|lll}\n",
       "  & Frequencia &  & percentual\\\\\n",
       "\\hline\n",
       "\tA & 420   & Porcentagem (\\%) & 0.546590317542946\\\\\n",
       "\tB & 822   & Porcentagem (\\%) & 1.06975533576262 \\\\\n",
       "\tC & 7241  & Porcentagem (\\%) & 9.42347735554399 \\\\\n",
       "\tD & 18602 & Porcentagem (\\%) & 24.2087454450807 \\\\\n",
       "\tE & 49755 & Porcentagem (\\%) & 64.7514315460698 \\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A matrix: 5 × 3 of type chr\n",
       "\n",
       "| <!--/--> | Frequencia | <!----> | percentual |\n",
       "|---|---|---|---|\n",
       "| A | 420   | Porcentagem (%) | 0.546590317542946 |\n",
       "| B | 822   | Porcentagem (%) | 1.06975533576262  |\n",
       "| C | 7241  | Porcentagem (%) | 9.42347735554399  |\n",
       "| D | 18602 | Porcentagem (%) | 24.2087454450807  |\n",
       "| E | 49755 | Porcentagem (%) | 64.7514315460698  |\n",
       "\n"
      ],
      "text/plain": [
       "  Frequencia                 percentual       \n",
       "A 420        Porcentagem (%) 0.546590317542946\n",
       "B 822        Porcentagem (%) 1.06975533576262 \n",
       "C 7241       Porcentagem (%) 9.42347735554399 \n",
       "D 18602      Porcentagem (%) 24.2087454450807 \n",
       "E 49755      Porcentagem (%) 64.7514315460698 "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "dist_freq_renda[\n",
    "    order(row.names(dist_freq_renda)),\n",
    "]"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "cf0cae77",
   "metadata": {
    "id": "DOYtXuSbTg18",
    "papermill": {
     "duration": 0.022673,
     "end_time": "2024-05-04T17:16:44.501763",
     "exception": false,
     "start_time": "2024-05-04T17:16:44.479090",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "\n",
    "### Construa um gráfico de barras para visualizar as informações da tabela de frequências acima\n",
    "\n",
    "#### <font color='red'>Lembre-se de transformar a matriz de resultados em um data frame.</font>"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 12,
   "id": "75781834",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-04T17:16:44.553816Z",
     "iopub.status.busy": "2024-05-04T17:16:44.551957Z",
     "iopub.status.idle": "2024-05-04T17:16:44.582905Z",
     "shell.execute_reply": "2024-05-04T17:16:44.580784Z"
    },
    "papermill": {
     "duration": 0.060065,
     "end_time": "2024-05-04T17:16:44.585954",
     "exception": false,
     "start_time": "2024-05-04T17:16:44.525889",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 5 × 3</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>Frequencia</th><th scope=col>V2</th><th scope=col>percentual</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>E</th><td>49755</td><td>Porcentagem (%)</td><td>64.7514315460698 </td></tr>\n",
       "\t<tr><th scope=row>D</th><td>18602</td><td>Porcentagem (%)</td><td>24.2087454450807 </td></tr>\n",
       "\t<tr><th scope=row>C</th><td>7241 </td><td>Porcentagem (%)</td><td>9.42347735554399 </td></tr>\n",
       "\t<tr><th scope=row>B</th><td>822  </td><td>Porcentagem (%)</td><td>1.06975533576262 </td></tr>\n",
       "\t<tr><th scope=row>A</th><td>420  </td><td>Porcentagem (%)</td><td>0.546590317542946</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 5 × 3\n",
       "\\begin{tabular}{r|lll}\n",
       "  & Frequencia & V2 & percentual\\\\\n",
       "  & <chr> & <chr> & <chr>\\\\\n",
       "\\hline\n",
       "\tE & 49755 & Porcentagem (\\%) & 64.7514315460698 \\\\\n",
       "\tD & 18602 & Porcentagem (\\%) & 24.2087454450807 \\\\\n",
       "\tC & 7241  & Porcentagem (\\%) & 9.42347735554399 \\\\\n",
       "\tB & 822   & Porcentagem (\\%) & 1.06975533576262 \\\\\n",
       "\tA & 420   & Porcentagem (\\%) & 0.546590317542946\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 5 × 3\n",
       "\n",
       "| <!--/--> | Frequencia &lt;chr&gt; | V2 &lt;chr&gt; | percentual &lt;chr&gt; |\n",
       "|---|---|---|---|\n",
       "| E | 49755 | Porcentagem (%) | 64.7514315460698  |\n",
       "| D | 18602 | Porcentagem (%) | 24.2087454450807  |\n",
       "| C | 7241  | Porcentagem (%) | 9.42347735554399  |\n",
       "| B | 822   | Porcentagem (%) | 1.06975533576262  |\n",
       "| A | 420   | Porcentagem (%) | 0.546590317542946 |\n",
       "\n"
      ],
      "text/plain": [
       "  Frequencia V2              percentual       \n",
       "E 49755      Porcentagem (%) 64.7514315460698 \n",
       "D 18602      Porcentagem (%) 24.2087454450807 \n",
       "C 7241       Porcentagem (%) 9.42347735554399 \n",
       "B 822        Porcentagem (%) 1.06975533576262 \n",
       "A 420        Porcentagem (%) 0.546590317542946"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "bar_chart <- data.frame(dist_freq_renda)\n",
    "bar_chart"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 13,
   "id": "7eb08d26",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-04T17:16:44.638405Z",
     "iopub.status.busy": "2024-05-04T17:16:44.636534Z",
     "iopub.status.idle": "2024-05-04T17:16:45.234694Z",
     "shell.execute_reply": "2024-05-04T17:16:45.232453Z"
    },
    "papermill": {
     "duration": 0.628115,
     "end_time": "2024-05-04T17:16:45.238115",
     "exception": false,
     "start_time": "2024-05-04T17:16:44.610000",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "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\nAFDO/wN7cGLBGl+YVAAAAABJRU5ErkJggg=="
     },
     "metadata": {
      "image/png": {
       "height": 360,
       "width": 540
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "ggplot(bar_chart, aes(x=row.names(bar_chart), y = Frequencia))+\n",
    "    geom_bar(stat = 'identity')+\n",
    "    ylab('Frequencia')+\n",
    "    xlab('Classes de Renda')+ \n",
    "    ggtitle('Grafico Classes de Renda')+\n",
    "    formatos"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "9942c835",
   "metadata": {
    "id": "9ppt5JevTg1-",
    "papermill": {
     "duration": 0.025927,
     "end_time": "2024-05-04T17:16:45.288483",
     "exception": false,
     "start_time": "2024-05-04T17:16:45.262556",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "> ### Conclusões\n",
    "\n",
    "Escreva suas conclusões aqui..."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "35ab7c29",
   "metadata": {
    "id": "yt-gFm93Tg1-",
    "papermill": {
     "duration": 0.027749,
     "end_time": "2024-05-04T17:16:45.341399",
     "exception": false,
     "start_time": "2024-05-04T17:16:45.313650",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Crie um histograma para as variáveis QUANTITATIVAS de nosso dataset\n",
    "#### <font color='blue'>Descreva os pontos mais relevantes que você observa nos gráficos (assimetrias e seus tipos, possíveis causas para determinados comportamentos etc.)</font>"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 14,
   "id": "1a57dfa9",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-04T17:16:45.393936Z",
     "iopub.status.busy": "2024-05-04T17:16:45.391944Z",
     "iopub.status.idle": "2024-05-04T17:16:45.815068Z",
     "shell.execute_reply": "2024-05-04T17:16:45.812861Z"
    },
    "papermill": {
     "duration": 0.452363,
     "end_time": "2024-05-04T17:16:45.818303",
     "exception": false,
     "start_time": "2024-05-04T17:16:45.365940",
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
       "height": 360,
       "width": 540
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "ggplot(dados, aes(x=Idade))+\n",
    "  geom_histogram(bins=50)+\n",
    "  ylab('Frequencia')+\n",
    "  xlab('Idade')+\n",
    "  ggtitle('Histograma de Idade')+\n",
    "  formatos"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 15,
   "id": "a7d99742",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-04T17:16:45.873440Z",
     "iopub.status.busy": "2024-05-04T17:16:45.871584Z",
     "iopub.status.idle": "2024-05-04T17:16:46.287469Z",
     "shell.execute_reply": "2024-05-04T17:16:46.284774Z"
    },
    "papermill": {
     "duration": 0.446507,
     "end_time": "2024-05-04T17:16:46.290391",
     "exception": false,
     "start_time": "2024-05-04T17:16:45.843884",
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
       "height": 360,
       "width": 540
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "ggplot(dados, aes(x=Altura))+\n",
    "  geom_histogram(bins=50)+\n",
    "  ylab('Frequencia')+\n",
    "  xlab('Altura')+\n",
    "  ggtitle('Histograma de Alturas')+\n",
    "  formatos"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 16,
   "id": "f73d6f0c",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-04T17:16:46.345665Z",
     "iopub.status.busy": "2024-05-04T17:16:46.343803Z",
     "iopub.status.idle": "2024-05-04T17:16:46.654176Z",
     "shell.execute_reply": "2024-05-04T17:16:46.652051Z"
    },
    "id": "s55WPk1aTg2C",
    "outputId": "ef3e2078-2434-4db5-f364-b4af821e29e6",
    "papermill": {
     "duration": 0.342625,
     "end_time": "2024-05-04T17:16:46.657485",
     "exception": false,
     "start_time": "2024-05-04T17:16:46.314860",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "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\nTe2iX/K0DZcOIZx3zF2dGu76/i9CCEtv9JNkCCFZ8bP1hoQQ/u+C+d4pn/3fmy5fIOEs1JMz\nW0IIO3S4fXgIob35vZs+Lvym9aU6ROVSO28zsKK95aN9Lnuh4/Zc+4wTf/hMp52P2HtMCOGC\nI2/qtP0/N+zx9a9/fedDHiis+Pzx8v//YUv74jhWz0+zJyNZ6HwLIYR01Spr1ZQ1ffKnRb4A\na/4hSqTra1rmTPvwoY8XiF4hhMn/nBpCGLx2w7wtzTMebmzPVi2996IeFuhXBBWAEiuvH7dZ\nfUUu17rtd857+9O5996e/f6/f7Lfz0IIQ9b/fqf9/9sy97XdTtf8rDKZePt3++155q3T23Ih\nhLbGybecsce+t72VTFWdec0O+d32vOmsmlTy+bO3Ov22f+V7fvL6X/ba8PBURTKEkPiit6jz\nq/BP+sV9bZ+9OP3vk7fu8pUvPTerJYQwZU4JPlkp4hDJ8edvH0J46LiNTrjqgWlN7SGE6e+/\n8MOdv3zP1NbU/NewrfXTK0ZVpN+56/Atj73svVn5cW7/+61nfvU794cQDr7m24WfQCJTm06G\nEF5pbFs8x+rpafZkJBd1vnVyzEr1bU3v/PmTRVye1HmIkietOjCXbdrvquc77dgy45+H3PVO\nIll5xlcGz9v46cQJIYTRe49btIMC/c3i+TIxgD6s+Bs+vnvvSfkbzCeSFaNXWHnsyKUziUQI\noWrpTR6f8fntDjesLQ8hDFp1vXFf/+rk1vZcLvevSw/N75muGrzCCqM+e5LM4Vf8u+PRn7ty\n7p3pa4Yuu+JyI5KJRN0Ke96259gQwma/e2vebvmvJx62wR879n33nmOSiUQIYcColTfa5KvL\njxgYQljqS3ucu/UyIYSqpdfe/8jb83vmv2l3yJfv6di9ZdYzIYSymrU7Dchug6rCZ19P3PND\nLEz7+fuulh//RLJy1Ii5b8Pv8ovHG9LJTt/b++4fzxyYSYYQkqkBo1dccen6uSs3Nj/+tq6f\nP5f7otuu53K5jevKQwjrX/Dioh5roYOWy+X++9dtwmdfT9zz0+zhSPZwvi3UxLu3CyFs96fO\n98dc1CH65NXLK5OJRLJs1+N+8cg/HwshbHbnY3++5YL1lq4KIaxz4oMd+z524EohhPPe+4Kb\nUQL9nKAC0FnxQSWXy73/95sO2WWzMUMbytPJ8uraFb78te+edsm78993YuLvz1h79NCyVLp2\n8DKTP7ulxn//8btDdtti1JCBZamygUuP2mqP79zx1AcLFvDGA1fuu/O4ZZeqqhs88huH/fTd\nprb7txwZQtjxiQ/n7bPQoJLL5V6556KdNlqzvro8U1k7dq3NTvzV7TPbsrMn3fP1lYeXpctX\n2mTubQ0LDio9P0QX2h+69vTtvrrqwAGV5TUNK2+ww3l3vJDL5RYMKrlcbsbrD//ggJ1XGD64\nPJ2uaRi64VZ7X3HPiwt7zvl84avw335teAghVTZk3t3fe3isHgeVnp5mD0eyJ/NtoVobX6lN\nJ4ducF2n7QUM0Zv3nrP6Up1X+SdTA3b+wTUt89/fZaelKisatup8ExmA+SVyOd8MCNCXzPzo\nw0/bsjVDh9fNf5XXT0fXn/bOjPPfn3nsiAK/7Yr+6cYtRx74SPPbMz8s/pYm2dZpf/vDvY8/\n8/Qpp48f+61jvrfxulvsvOtqQ+ZLL7M/uKpmxHc2OOf5J05co8jDAf/bBBWAPuaOrw7/5hMf\nbvLr/zzy7RXnbWz59LGBAzdtLltu+qzXqpO+SYlFMOu/19aNPHjLCa/dt+/yJXnCbOukVNmw\n7Z+cdO/6Sy/Y+qe9l9/p962vffLWmArfTQx0x2J6gD5m44sOCiE8ftS2l9315NSZzW3Ns19+\n4q791t9xdnt23RMnSCksqpoRB1213ci/ff+YhdzDp9RaZz+3/+0TNzr9LikF+EI+UQHoe+79\n6R7f/NnvWjrc1TuRSKy391l/mXCioEIBWmY+udrSG6997X9u3XO5kjxhe3t7IpVa8N3Q+w5f\ndY8/rvH+27e4gwrwhQQVgD5p6it/u/62e59//f3WZNXwMatuscMeW6+zTG8XRR826eEJd741\n6oiDN12Mx8i1XXnJpct84+DtlqlejEcB/lcIKgAAQHSsUQEAAKIjqAAAANERVAAAgOgIKgAA\nQHQEFQAAIDqCCgAAEB1BBQAAiI6gAgAAREdQAQAAopPu7QJilMvlersEAAD435dIJLpqElQ6\ny2az06ZN6+0qutTQ0JBKpRobGxsbG3u7lj4sk8nU1tZOnTq1twvp2/Kzcc6cObNnz+7tWvqw\ndDpdV1dnNhapvr4+nU43NTXNmjWrt2vpw9LpdH19/ZQpU3q7kL6trq4uk8mYjUVKpVINDQ1T\np0719nExamtry8rKmpubZ86c2du1dGnQoEFdNbn0CwAAiI6gAgAAREdQAQAAoiOoAAAA0RFU\nAACA6AgqAABAdHrh64nbG9+76cprH/7XS7Ny1cuv8bVDv/ut5QZk8k0zXnvkipvve+XVNzOD\nR39pw20O22tcusMXK3fTWnBHAAAgQkv6E5Vs68dnHPGDu/4xfZMd9z9493Eznrnn5OMuasrm\nQgjNM5446qQLnp1cvf1+B2+8Sv39t1x4/BXPzOvYTWvBHQEAgDgt6U9UJt5+9jMzEideceZG\nS1eGEDZYpW3/E+649LWDjlu54Z+/vGpWauh5v/zRchWpELZePnvk2fed9eaBt4ytSIUQumkt\nuOMSPncAAKCHlvQnKjff8+6AUfvnU0oIoX7F/Y455pivlaVDrv3alz+pX+mA5T7LD2vtvX0u\n23zTS9NCCN21FtwRAACI1RINKu0t//3HzJaR31jr802J9Lhx49ZbbkBr4wtTWtuHbTNmXkvF\nwG0rkokPH5sSQuimteCOi/NEAQCAoizRS79aZz8fQqgdNeOG8674y79emZOuXX6FNXc99JB1\nhlW1z3krhFA1rLLD7snhZampE2eFELppbZ/zXmEdOxZ21113vfTSS/nHlZWVRxxxRMnOudSS\nyWQIoaysLP+AwiSTyUQiUVNT09uF9G35SZjJZIxkMczGkjAbSyI/jMawSKlUKpiNRUskEiGE\n6urq3i6kb0un0/n/jXY2ZrPZblqXaFDJtk4LITz3sx+/NnTDb3zrO2VNHz9w+x1nfu+lM264\nZEx2VgihtnK+dSMDM8nJzY0hhGzXrd00dd+x45annnrqvvvuyz9uaGg49thjS3K+i086nc7P\nPIpRUVHR2yX8LzAbS8JsLIlUKpV/jUgxzMaSMBtLwmwsiZhnY3t7ezetvfDyIlG9xdXnHJ5K\nhBDCFuPG7HvA2Zf8+rXz9q4OIXzaPF+t01qzyUxlCCGR7LK1m6buO3bcMnz48FVWWSX/uKam\npq2trRQnulikUqlEIpHNZrsPoHQvkUikUqmY/6H7BLOxJMzGkjAbS8JsLAmzsSTMxpLIz8Zc\nLtd9HuhF2Wy2mxC1RINKMjMkhLDc/rukPruNSXn9hhvVlf/juWfT3141hDDno6awXN1nu+cm\ntbbXL1sdQkhXju2qtZum7jt2LOzII4888sgj84+z2ey0afEutW9oaEilUk1NTY2NjV+8N13I\nZDK1tbXTp0/v7UL6tvxsbG5unj17dm/X0oel0+m6ujqzsUj19fXpdLqlpWXWrFlfvDddSKfT\n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\ngg=="
     },
     "metadata": {
      "image/png": {
       "height": 360,
       "width": 540
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "ggplot(dados, aes(x=Renda))+\n",
    "  geom_histogram(bins=50)+\n",
    "  ylab('Frequencia')+\n",
    "  xlab('R$')+\n",
    "  ggtitle('Histograma de Rendas (R$)')+\n",
    "  formatos"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "bb737621",
   "metadata": {
    "id": "w45i-qJ1Tg2E",
    "papermill": {
     "duration": 0.025346,
     "end_time": "2024-05-04T17:16:46.708105",
     "exception": false,
     "start_time": "2024-05-04T17:16:46.682759",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "> ### Conclusões\n",
    "\n",
    "Escreva suas conclusões aqui..."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "5836dd94",
   "metadata": {
    "id": "pnAH1T5fTg2F",
    "papermill": {
     "duration": 0.027067,
     "end_time": "2024-05-04T17:16:46.760892",
     "exception": false,
     "start_time": "2024-05-04T17:16:46.733825",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Para a variável RENDA, construa um histograma somente com as informações das pessoas com rendimento até R$ 20.000,00"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 17,
   "id": "9fc37c2e",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-04T17:16:46.818233Z",
     "iopub.status.busy": "2024-05-04T17:16:46.816325Z",
     "iopub.status.idle": "2024-05-04T17:16:47.409842Z",
     "shell.execute_reply": "2024-05-04T17:16:47.407773Z"
    },
    "papermill": {
     "duration": 0.626396,
     "end_time": "2024-05-04T17:16:47.413107",
     "exception": false,
     "start_time": "2024-05-04T17:16:46.786711",
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
      "image/png": "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"
     },
     "metadata": {
      "image/png": {
       "height": 360,
       "width": 540
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "ggplot(dados[dados$Renda < 20000,], aes(x=Renda))+\n",
    "  geom_histogram()+\n",
    "  ylab('Frequencia')+\n",
    "  xlab('R$')+\n",
    "  ggtitle('Histograma de Rendas - Pessoas com renda ate R$20.000,00')+\n",
    "  formatos\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "d6c3a4b5",
   "metadata": {
    "id": "vvtzLOUKTg2H",
    "papermill": {
     "duration": 0.027158,
     "end_time": "2024-05-04T17:16:47.467047",
     "exception": false,
     "start_time": "2024-05-04T17:16:47.439889",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Construa uma tabela de frequências e uma com os percentuais cruzando das variáveis SEXO e COR\n",
    "#### <font color='blue'>Avalie o resultado da tabela e escreva suas principais conclusões</font>\n",
    "#### <font color='red'>Utilize os vetores abaixo para renomear as linha e colunas das tabelas de frequências e dos gráficos em nosso projeto</font>"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 18,
   "id": "9fa82121",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-04T17:16:47.523959Z",
     "iopub.status.busy": "2024-05-04T17:16:47.522104Z",
     "iopub.status.idle": "2024-05-04T17:16:47.543738Z",
     "shell.execute_reply": "2024-05-04T17:16:47.541354Z"
    },
    "id": "sChJRo_qTg2I",
    "papermill": {
     "duration": 0.053703,
     "end_time": "2024-05-04T17:16:47.546900",
     "exception": false,
     "start_time": "2024-05-04T17:16:47.493197",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "sexo = c(\n",
    "    'Masculino', \n",
    "    'Feminino'\n",
    ")\n",
    "cor = c(\n",
    "    'Indígena', \n",
    "    'Branca', \n",
    "    'Preta', \n",
    "    'Amarela', \n",
    "    'Parda'\n",
    ")\n",
    "anos_de_estudo = c(\n",
    "    'Sem instrução e menos de 1 ano', \n",
    "    '1 ano', \n",
    "    '2 anos', \n",
    "    '3 anos', \n",
    "    '4 anos', \n",
    "    '5 anos', \n",
    "    '6 anos', \n",
    "    '7 anos', \n",
    "    '8 anos', \n",
    "    '9 anos', \n",
    "    '10 anos', \n",
    "    '11 anos', \n",
    "    '12 anos', \n",
    "    '13 anos', \n",
    "    '14 anos', \n",
    "    '15 anos ou mais', \n",
    "    'Não determinados'\n",
    ")"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 19,
   "id": "e7f9e944",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-04T17:16:47.606588Z",
     "iopub.status.busy": "2024-05-04T17:16:47.604656Z",
     "iopub.status.idle": "2024-05-04T17:16:47.646670Z",
     "shell.execute_reply": "2024-05-04T17:16:47.644453Z"
    },
    "papermill": {
     "duration": 0.075676,
     "end_time": "2024-05-04T17:16:47.650360",
     "exception": false,
     "start_time": "2024-05-04T17:16:47.574684",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "#SEXO\n",
    "dados$Cat.Sexo <-factor(dados$Sexo)\n",
    "levels(dados$Cat.Sexo) <-sexo \n",
    "\n",
    "#COR\n",
    "dados$Cat.Cor <-factor(dados$Cor)\n",
    "levels(dados$Cat.Cor) <- cor \n",
    "\n",
    "#ANOS DE ESTUDO\n",
    "dados$Cat.Anos.de.Estudo <-factor(dados$Anos.de.Estudo, order = T)\n",
    "levels(dados$Cat.Anos.de.Estudo) <- anos_de_estudo"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 20,
   "id": "b14b08b9",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-04T17:16:47.712043Z",
     "iopub.status.busy": "2024-05-04T17:16:47.709842Z",
     "iopub.status.idle": "2024-05-04T17:16:47.753556Z",
     "shell.execute_reply": "2024-05-04T17:16:47.751532Z"
    },
    "papermill": {
     "duration": 0.07765,
     "end_time": "2024-05-04T17:16:47.756310",
     "exception": false,
     "start_time": "2024-05-04T17:16:47.678660",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 6 × 10</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>UF</th><th scope=col>Sexo</th><th scope=col>Idade</th><th scope=col>Cor</th><th scope=col>Anos.de.Estudo</th><th scope=col>Renda</th><th scope=col>Altura</th><th scope=col>Cat.Sexo</th><th scope=col>Cat.Cor</th><th scope=col>Cat.Anos.de.Estudo</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;fct&gt;</th><th scope=col>&lt;fct&gt;</th><th scope=col>&lt;ord&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>1</th><td>11</td><td>0</td><td>23</td><td>8</td><td>12</td><td> 800</td><td>1.603808</td><td>Masculino</td><td>Parda </td><td>11 anos</td></tr>\n",
       "\t<tr><th scope=row>2</th><td>11</td><td>1</td><td>23</td><td>2</td><td>12</td><td>1150</td><td>1.739790</td><td>Feminino </td><td>Branca</td><td>11 anos</td></tr>\n",
       "\t<tr><th scope=row>3</th><td>11</td><td>1</td><td>35</td><td>8</td><td>15</td><td> 880</td><td>1.760444</td><td>Feminino </td><td>Parda </td><td>14 anos</td></tr>\n",
       "\t<tr><th scope=row>4</th><td>11</td><td>0</td><td>46</td><td>2</td><td> 6</td><td>3500</td><td>1.783158</td><td>Masculino</td><td>Branca</td><td>5 anos </td></tr>\n",
       "\t<tr><th scope=row>5</th><td>11</td><td>1</td><td>47</td><td>8</td><td> 9</td><td> 150</td><td>1.690631</td><td>Feminino </td><td>Parda </td><td>8 anos </td></tr>\n",
       "\t<tr><th scope=row>6</th><td>11</td><td>1</td><td>34</td><td>8</td><td>12</td><td> 790</td><td>1.637906</td><td>Feminino </td><td>Parda </td><td>11 anos</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 6 × 10\n",
       "\\begin{tabular}{r|llllllllll}\n",
       "  & UF & Sexo & Idade & Cor & Anos.de.Estudo & Renda & Altura & Cat.Sexo & Cat.Cor & Cat.Anos.de.Estudo\\\\\n",
       "  & <int> & <int> & <int> & <int> & <int> & <int> & <dbl> & <fct> & <fct> & <ord>\\\\\n",
       "\\hline\n",
       "\t1 & 11 & 0 & 23 & 8 & 12 &  800 & 1.603808 & Masculino & Parda  & 11 anos\\\\\n",
       "\t2 & 11 & 1 & 23 & 2 & 12 & 1150 & 1.739790 & Feminino  & Branca & 11 anos\\\\\n",
       "\t3 & 11 & 1 & 35 & 8 & 15 &  880 & 1.760444 & Feminino  & Parda  & 14 anos\\\\\n",
       "\t4 & 11 & 0 & 46 & 2 &  6 & 3500 & 1.783158 & Masculino & Branca & 5 anos \\\\\n",
       "\t5 & 11 & 1 & 47 & 8 &  9 &  150 & 1.690631 & Feminino  & Parda  & 8 anos \\\\\n",
       "\t6 & 11 & 1 & 34 & 8 & 12 &  790 & 1.637906 & Feminino  & Parda  & 11 anos\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 6 × 10\n",
       "\n",
       "| <!--/--> | UF &lt;int&gt; | Sexo &lt;int&gt; | Idade &lt;int&gt; | Cor &lt;int&gt; | Anos.de.Estudo &lt;int&gt; | Renda &lt;int&gt; | Altura &lt;dbl&gt; | Cat.Sexo &lt;fct&gt; | Cat.Cor &lt;fct&gt; | Cat.Anos.de.Estudo &lt;ord&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|---|---|\n",
       "| 1 | 11 | 0 | 23 | 8 | 12 |  800 | 1.603808 | Masculino | Parda  | 11 anos |\n",
       "| 2 | 11 | 1 | 23 | 2 | 12 | 1150 | 1.739790 | Feminino  | Branca | 11 anos |\n",
       "| 3 | 11 | 1 | 35 | 8 | 15 |  880 | 1.760444 | Feminino  | Parda  | 14 anos |\n",
       "| 4 | 11 | 0 | 46 | 2 |  6 | 3500 | 1.783158 | Masculino | Branca | 5 anos  |\n",
       "| 5 | 11 | 1 | 47 | 8 |  9 |  150 | 1.690631 | Feminino  | Parda  | 8 anos  |\n",
       "| 6 | 11 | 1 | 34 | 8 | 12 |  790 | 1.637906 | Feminino  | Parda  | 11 anos |\n",
       "\n"
      ],
      "text/plain": [
       "  UF Sexo Idade Cor Anos.de.Estudo Renda Altura   Cat.Sexo  Cat.Cor\n",
       "1 11 0    23    8   12              800  1.603808 Masculino Parda  \n",
       "2 11 1    23    2   12             1150  1.739790 Feminino  Branca \n",
       "3 11 1    35    8   15              880  1.760444 Feminino  Parda  \n",
       "4 11 0    46    2    6             3500  1.783158 Masculino Branca \n",
       "5 11 1    47    8    9              150  1.690631 Feminino  Parda  \n",
       "6 11 1    34    8   12              790  1.637906 Feminino  Parda  \n",
       "  Cat.Anos.de.Estudo\n",
       "1 11 anos           \n",
       "2 11 anos           \n",
       "3 14 anos           \n",
       "4 5 anos            \n",
       "5 8 anos            \n",
       "6 11 anos           "
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
   "execution_count": 21,
   "id": "db0cee0f",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-04T17:16:47.814803Z",
     "iopub.status.busy": "2024-05-04T17:16:47.812182Z",
     "iopub.status.idle": "2024-05-04T17:16:47.851139Z",
     "shell.execute_reply": "2024-05-04T17:16:47.848195Z"
    },
    "id": "KbeFXAGSTg2K",
    "outputId": "9c417ded-dc7d-4c97-adb2-67cfbdcab852",
    "papermill": {
     "duration": 0.072023,
     "end_time": "2024-05-04T17:16:47.854739",
     "exception": false,
     "start_time": "2024-05-04T17:16:47.782716",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A matrix: 2 × 5 of type int</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>Indígena</th><th scope=col>Branca</th><th scope=col>Preta</th><th scope=col>Amarela</th><th scope=col>Parda</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>Masculino</th><td>256</td><td>22194</td><td>5502</td><td>235</td><td>25063</td></tr>\n",
       "\t<tr><th scope=row>Feminino</th><td>101</td><td> 9621</td><td>2889</td><td>117</td><td>10862</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A matrix: 2 × 5 of type int\n",
       "\\begin{tabular}{r|lllll}\n",
       "  & Indígena & Branca & Preta & Amarela & Parda\\\\\n",
       "\\hline\n",
       "\tMasculino & 256 & 22194 & 5502 & 235 & 25063\\\\\n",
       "\tFeminino & 101 &  9621 & 2889 & 117 & 10862\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A matrix: 2 × 5 of type int\n",
       "\n",
       "| <!--/--> | Indígena | Branca | Preta | Amarela | Parda |\n",
       "|---|---|---|---|---|---|\n",
       "| Masculino | 256 | 22194 | 5502 | 235 | 25063 |\n",
       "| Feminino | 101 |  9621 | 2889 | 117 | 10862 |\n",
       "\n"
      ],
      "text/plain": [
       "          Indígena Branca Preta Amarela Parda\n",
       "Masculino 256      22194  5502  235     25063\n",
       "Feminino  101       9621  2889  117     10862"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "frequencia <- table(dados$Cat.Sexo, dados$Cat.Cor)\n",
    "frequencia <- cbind(frequencia)\n",
    "frequencia"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 22,
   "id": "e3f6e2a6",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-04T17:16:47.912731Z",
     "iopub.status.busy": "2024-05-04T17:16:47.910795Z",
     "iopub.status.idle": "2024-05-04T17:16:47.939208Z",
     "shell.execute_reply": "2024-05-04T17:16:47.936404Z"
    },
    "id": "csL1jaeSTg2M",
    "outputId": "f5f0afe7-4812-42cc-a43d-623062ba669e",
    "papermill": {
     "duration": 0.060857,
     "end_time": "2024-05-04T17:16:47.942098",
     "exception": false,
     "start_time": "2024-05-04T17:16:47.881241",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A matrix: 2 × 5 of type dbl</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>Indígena</th><th scope=col>Branca</th><th scope=col>Preta</th><th scope=col>Amarela</th><th scope=col>Parda</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>Masculino</th><td>0.3331598</td><td>28.88339</td><td>7.160333</td><td>0.3058303</td><td>32.61713</td></tr>\n",
       "\t<tr><th scope=row>Feminino</th><td>0.1314420</td><td>12.52082</td><td>3.759761</td><td>0.1522644</td><td>14.13587</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A matrix: 2 × 5 of type dbl\n",
       "\\begin{tabular}{r|lllll}\n",
       "  & Indígena & Branca & Preta & Amarela & Parda\\\\\n",
       "\\hline\n",
       "\tMasculino & 0.3331598 & 28.88339 & 7.160333 & 0.3058303 & 32.61713\\\\\n",
       "\tFeminino & 0.1314420 & 12.52082 & 3.759761 & 0.1522644 & 14.13587\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A matrix: 2 × 5 of type dbl\n",
       "\n",
       "| <!--/--> | Indígena | Branca | Preta | Amarela | Parda |\n",
       "|---|---|---|---|---|---|\n",
       "| Masculino | 0.3331598 | 28.88339 | 7.160333 | 0.3058303 | 32.61713 |\n",
       "| Feminino | 0.1314420 | 12.52082 | 3.759761 | 0.1522644 | 14.13587 |\n",
       "\n"
      ],
      "text/plain": [
       "          Indígena  Branca   Preta    Amarela   Parda   \n",
       "Masculino 0.3331598 28.88339 7.160333 0.3058303 32.61713\n",
       "Feminino  0.1314420 12.52082 3.759761 0.1522644 14.13587"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "percentual <- cbind(prop.table(frequencia)*100)\n",
    "percentual "
   ]
  },
  {
   "cell_type": "markdown",
   "id": "dc5d07f3",
   "metadata": {
    "id": "2jLZmww2Tg2O",
    "papermill": {
     "duration": 0.026849,
     "end_time": "2024-05-04T17:16:47.995666",
     "exception": false,
     "start_time": "2024-05-04T17:16:47.968817",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "> ### Conclusões\n",
    "\n",
    "Escreva suas conclusões aqui..."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "6a4f57e1",
   "metadata": {
    "id": "Aoeayf6zTg2P",
    "papermill": {
     "duration": 0.027725,
     "end_time": "2024-05-04T17:16:48.050758",
     "exception": false,
     "start_time": "2024-05-04T17:16:48.023033",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## Realize, para a variável RENDA, uma análise descritiva com as ferramentas que aprendemos em nosso treinamento"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "9ef7dd15",
   "metadata": {
    "id": "c2CtT71oTg2P",
    "papermill": {
     "duration": 0.027596,
     "end_time": "2024-05-04T17:16:48.105844",
     "exception": false,
     "start_time": "2024-05-04T17:16:48.078248",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Obtenha a média aritimética"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 23,
   "id": "e031882c",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-04T17:16:48.165364Z",
     "iopub.status.busy": "2024-05-04T17:16:48.163181Z",
     "iopub.status.idle": "2024-05-04T17:16:48.183325Z",
     "shell.execute_reply": "2024-05-04T17:16:48.181300Z"
    },
    "id": "qlJESCU6Tg2P",
    "outputId": "c559b943-586a-4c3f-c209-a73f6fa69499",
    "papermill": {
     "duration": 0.052003,
     "end_time": "2024-05-04T17:16:48.185973",
     "exception": false,
     "start_time": "2024-05-04T17:16:48.133970",
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
   "cell_type": "markdown",
   "id": "e9ca9738",
   "metadata": {
    "id": "Xd4saPBCTg2R",
    "papermill": {
     "duration": 0.027892,
     "end_time": "2024-05-04T17:16:48.241659",
     "exception": false,
     "start_time": "2024-05-04T17:16:48.213767",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Obtenha a mediana"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 24,
   "id": "55d6b8c0",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-04T17:16:48.300055Z",
     "iopub.status.busy": "2024-05-04T17:16:48.298096Z",
     "iopub.status.idle": "2024-05-04T17:16:48.319649Z",
     "shell.execute_reply": "2024-05-04T17:16:48.317660Z"
    },
    "id": "vHTqX-UATg2R",
    "outputId": "58a46063-6bf0-4dbe-8048-50aa49fffd9c",
    "papermill": {
     "duration": 0.053506,
     "end_time": "2024-05-04T17:16:48.322182",
     "exception": false,
     "start_time": "2024-05-04T17:16:48.268676",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "1200"
      ],
      "text/latex": [
       "1200"
      ],
      "text/markdown": [
       "1200"
      ],
      "text/plain": [
       "[1] 1200"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "median(dados$Renda)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "343f935b",
   "metadata": {
    "id": "_e40rDSwTg2U",
    "papermill": {
     "duration": 0.027258,
     "end_time": "2024-05-04T17:16:48.377893",
     "exception": false,
     "start_time": "2024-05-04T17:16:48.350635",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Obtenha a moda"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 25,
   "id": "1be0b268",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-04T17:16:48.436823Z",
     "iopub.status.busy": "2024-05-04T17:16:48.434831Z",
     "iopub.status.idle": "2024-05-04T17:16:48.452676Z",
     "shell.execute_reply": "2024-05-04T17:16:48.450338Z"
    },
    "papermill": {
     "duration": 0.05075,
     "end_time": "2024-05-04T17:16:48.455735",
     "exception": false,
     "start_time": "2024-05-04T17:16:48.404985",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "Moda <- function(x){\n",
    "    frequencias <- table(x)\n",
    "    return(names(frequencias)[frequencias == max(frequencias)])\n",
    "}"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 26,
   "id": "12c8d1ba",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-04T17:16:48.514977Z",
     "iopub.status.busy": "2024-05-04T17:16:48.513045Z",
     "iopub.status.idle": "2024-05-04T17:16:48.555750Z",
     "shell.execute_reply": "2024-05-04T17:16:48.553466Z"
    },
    "id": "BFOOdYOvTg2V",
    "outputId": "d2cf04e9-4bf6-41ce-ffc1-aae49f20247c",
    "papermill": {
     "duration": 0.07599,
     "end_time": "2024-05-04T17:16:48.558910",
     "exception": false,
     "start_time": "2024-05-04T17:16:48.482920",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "788"
      ],
      "text/latex": [
       "788"
      ],
      "text/markdown": [
       "788"
      ],
      "text/plain": [
       "[1] 788"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "as.numeric(Moda(dados$Renda))"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "3ee5618e",
   "metadata": {
    "id": "hCgV_XaQTg2Z",
    "papermill": {
     "duration": 0.028915,
     "end_time": "2024-05-04T17:16:48.615901",
     "exception": false,
     "start_time": "2024-05-04T17:16:48.586986",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Obtenha a variância"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 27,
   "id": "b93e777d",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-04T17:16:48.676654Z",
     "iopub.status.busy": "2024-05-04T17:16:48.674649Z",
     "iopub.status.idle": "2024-05-04T17:16:48.697861Z",
     "shell.execute_reply": "2024-05-04T17:16:48.695019Z"
    },
    "id": "SwRgACeGTg2a",
    "outputId": "a9779276-27e6-4ab1-f31d-a59664cdd71d",
    "papermill": {
     "duration": 0.057697,
     "end_time": "2024-05-04T17:16:48.701228",
     "exception": false,
     "start_time": "2024-05-04T17:16:48.643531",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "11044906.006217"
      ],
      "text/latex": [
       "11044906.006217"
      ],
      "text/markdown": [
       "11044906.006217"
      ],
      "text/plain": [
       "[1] 11044906"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "var(dados$Renda)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "dc49ee9c",
   "metadata": {
    "id": "gsO6MKOcTg2c",
    "papermill": {
     "duration": 0.027894,
     "end_time": "2024-05-04T17:16:48.757112",
     "exception": false,
     "start_time": "2024-05-04T17:16:48.729218",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Obtenha o desvio-padrão"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 28,
   "id": "88a646ac",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-04T17:16:48.818374Z",
     "iopub.status.busy": "2024-05-04T17:16:48.816440Z",
     "iopub.status.idle": "2024-05-04T17:16:48.837484Z",
     "shell.execute_reply": "2024-05-04T17:16:48.835309Z"
    },
    "id": "gR-LVTRYTg2d",
    "outputId": "2a251413-fc76-4b81-bba7-6439ff59424e",
    "papermill": {
     "duration": 0.055162,
     "end_time": "2024-05-04T17:16:48.840388",
     "exception": false,
     "start_time": "2024-05-04T17:16:48.785226",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "3323.3877303464"
      ],
      "text/latex": [
       "3323.3877303464"
      ],
      "text/markdown": [
       "3323.3877303464"
      ],
      "text/plain": [
       "[1] 3323.388"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "sd(dados$Renda)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "89a0f4fb",
   "metadata": {
    "id": "vG-rdO5fTg2f",
    "papermill": {
     "duration": 0.028282,
     "end_time": "2024-05-04T17:16:48.899115",
     "exception": false,
     "start_time": "2024-05-04T17:16:48.870833",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Obtenha a média, mediana e valor máximo da variável RENDA segundo SEXO e COR\n",
    "#### <font color='blue'>Destaque os pontos mais importante que você observa nas tabulações</font>\n",
    "#### <font color='red'>Utilize *tapply* com as funções *mean*, *median* e *max*</font>"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 29,
   "id": "76139989",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-04T17:16:48.970097Z",
     "iopub.status.busy": "2024-05-04T17:16:48.968264Z",
     "iopub.status.idle": "2024-05-04T17:16:49.000122Z",
     "shell.execute_reply": "2024-05-04T17:16:48.997983Z"
    },
    "id": "VgxygKWXTg2g",
    "outputId": "4983099d-9ff4-400d-85fe-02e1f875e4ee",
    "papermill": {
     "duration": 0.07423,
     "end_time": "2024-05-04T17:16:49.003118",
     "exception": false,
     "start_time": "2024-05-04T17:16:48.928888",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A matrix: 2 × 5 of type dbl</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>Indígena</th><th scope=col>Branca</th><th scope=col>Preta</th><th scope=col>Amarela</th><th scope=col>Parda</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>Masculino</th><td>1081.711</td><td>2925.744</td><td>1603.862</td><td>4758.251</td><td>1659.577</td></tr>\n",
       "\t<tr><th scope=row>Feminino</th><td>2464.386</td><td>2109.867</td><td>1134.596</td><td>3027.342</td><td>1176.759</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A matrix: 2 × 5 of type dbl\n",
       "\\begin{tabular}{r|lllll}\n",
       "  & Indígena & Branca & Preta & Amarela & Parda\\\\\n",
       "\\hline\n",
       "\tMasculino & 1081.711 & 2925.744 & 1603.862 & 4758.251 & 1659.577\\\\\n",
       "\tFeminino & 2464.386 & 2109.867 & 1134.596 & 3027.342 & 1176.759\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A matrix: 2 × 5 of type dbl\n",
       "\n",
       "| <!--/--> | Indígena | Branca | Preta | Amarela | Parda |\n",
       "|---|---|---|---|---|---|\n",
       "| Masculino | 1081.711 | 2925.744 | 1603.862 | 4758.251 | 1659.577 |\n",
       "| Feminino | 2464.386 | 2109.867 | 1134.596 | 3027.342 | 1176.759 |\n",
       "\n"
      ],
      "text/plain": [
       "          Indígena Branca   Preta    Amarela  Parda   \n",
       "Masculino 1081.711 2925.744 1603.862 4758.251 1659.577\n",
       "Feminino  2464.386 2109.867 1134.596 3027.342 1176.759"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "medias <- tapply(dados$Renda, list(dados$Cat.Sexo, dados$Cat.Cor), mean)\n",
    "medias"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 30,
   "id": "435454cc",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-04T17:16:49.067357Z",
     "iopub.status.busy": "2024-05-04T17:16:49.065427Z",
     "iopub.status.idle": "2024-05-04T17:16:49.098659Z",
     "shell.execute_reply": "2024-05-04T17:16:49.096460Z"
    },
    "papermill": {
     "duration": 0.067928,
     "end_time": "2024-05-04T17:16:49.101706",
     "exception": false,
     "start_time": "2024-05-04T17:16:49.033778",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A matrix: 2 × 5 of type dbl</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>Indígena</th><th scope=col>Branca</th><th scope=col>Preta</th><th scope=col>Amarela</th><th scope=col>Parda</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>Masculino</th><td>797.5</td><td>1700</td><td>1200</td><td>2800</td><td>1200</td></tr>\n",
       "\t<tr><th scope=row>Feminino</th><td>788.0</td><td>1200</td><td> 800</td><td>1500</td><td> 800</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A matrix: 2 × 5 of type dbl\n",
       "\\begin{tabular}{r|lllll}\n",
       "  & Indígena & Branca & Preta & Amarela & Parda\\\\\n",
       "\\hline\n",
       "\tMasculino & 797.5 & 1700 & 1200 & 2800 & 1200\\\\\n",
       "\tFeminino & 788.0 & 1200 &  800 & 1500 &  800\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A matrix: 2 × 5 of type dbl\n",
       "\n",
       "| <!--/--> | Indígena | Branca | Preta | Amarela | Parda |\n",
       "|---|---|---|---|---|---|\n",
       "| Masculino | 797.5 | 1700 | 1200 | 2800 | 1200 |\n",
       "| Feminino | 788.0 | 1200 |  800 | 1500 |  800 |\n",
       "\n"
      ],
      "text/plain": [
       "          Indígena Branca Preta Amarela Parda\n",
       "Masculino 797.5    1700   1200  2800    1200 \n",
       "Feminino  788.0    1200    800  1500     800 "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "medianas <- tapply(dados$Renda, list(dados$Cat.Sexo, dados$Cat.Cor), median)\n",
    "medianas"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 31,
   "id": "57fe6220",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-04T17:16:49.163379Z",
     "iopub.status.busy": "2024-05-04T17:16:49.161510Z",
     "iopub.status.idle": "2024-05-04T17:16:49.192471Z",
     "shell.execute_reply": "2024-05-04T17:16:49.190278Z"
    },
    "papermill": {
     "duration": 0.065199,
     "end_time": "2024-05-04T17:16:49.195608",
     "exception": false,
     "start_time": "2024-05-04T17:16:49.130409",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A matrix: 2 × 5 of type int</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>Indígena</th><th scope=col>Branca</th><th scope=col>Preta</th><th scope=col>Amarela</th><th scope=col>Parda</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>Masculino</th><td> 10000</td><td>200000</td><td>50000</td><td>50000</td><td>100000</td></tr>\n",
       "\t<tr><th scope=row>Feminino</th><td>120000</td><td>100000</td><td>23000</td><td>20000</td><td> 30000</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A matrix: 2 × 5 of type int\n",
       "\\begin{tabular}{r|lllll}\n",
       "  & Indígena & Branca & Preta & Amarela & Parda\\\\\n",
       "\\hline\n",
       "\tMasculino &  10000 & 200000 & 50000 & 50000 & 100000\\\\\n",
       "\tFeminino & 120000 & 100000 & 23000 & 20000 &  30000\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A matrix: 2 × 5 of type int\n",
       "\n",
       "| <!--/--> | Indígena | Branca | Preta | Amarela | Parda |\n",
       "|---|---|---|---|---|---|\n",
       "| Masculino |  10000 | 200000 | 50000 | 50000 | 100000 |\n",
       "| Feminino | 120000 | 100000 | 23000 | 20000 |  30000 |\n",
       "\n"
      ],
      "text/plain": [
       "          Indígena Branca Preta Amarela Parda \n",
       "Masculino  10000   200000 50000 50000   100000\n",
       "Feminino  120000   100000 23000 20000    30000"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "maximos <- tapply(dados$Renda, list(dados$Cat.Sexo, dados$Cat.Cor), max)\n",
    "maximos"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "0feb863a",
   "metadata": {
    "id": "ibndm9iwTg2i",
    "papermill": {
     "duration": 0.031363,
     "end_time": "2024-05-04T17:16:49.256692",
     "exception": false,
     "start_time": "2024-05-04T17:16:49.225329",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "> ### Conclusões\n",
    "\n",
    "Escreva suas conclusões aqui..."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "4e8ed293",
   "metadata": {
    "id": "CleJ6c1rTg2i",
    "papermill": {
     "duration": 0.030433,
     "end_time": "2024-05-04T17:16:49.317283",
     "exception": false,
     "start_time": "2024-05-04T17:16:49.286850",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Obtenha as medidas de dispersão da variável RENDA segundo SEXO e COR\n",
    "#### <font color='blue'>Destaque os pontos mais importante que você observa nas tabulações</font>\n",
    "#### <font color='red'>Utilize *tapply* com as funções *var* e *sd*</font>"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 32,
   "id": "33558c73",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-04T17:16:49.385736Z",
     "iopub.status.busy": "2024-05-04T17:16:49.383736Z",
     "iopub.status.idle": "2024-05-04T17:16:49.415273Z",
     "shell.execute_reply": "2024-05-04T17:16:49.413140Z"
    },
    "papermill": {
     "duration": 0.067696,
     "end_time": "2024-05-04T17:16:49.417933",
     "exception": false,
     "start_time": "2024-05-04T17:16:49.350237",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A matrix: 2 × 5 of type dbl</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>Indígena</th><th scope=col>Branca</th><th scope=col>Preta</th><th scope=col>Amarela</th><th scope=col>Parda</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>Masculino</th><td>  1449841</td><td>22570023</td><td>3749294</td><td>32957070</td><td>5345747</td></tr>\n",
       "\t<tr><th scope=row>Feminino</th><td>142981765</td><td>10569087</td><td>1821960</td><td>13921657</td><td>2547960</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A matrix: 2 × 5 of type dbl\n",
       "\\begin{tabular}{r|lllll}\n",
       "  & Indígena & Branca & Preta & Amarela & Parda\\\\\n",
       "\\hline\n",
       "\tMasculino &   1449841 & 22570023 & 3749294 & 32957070 & 5345747\\\\\n",
       "\tFeminino & 142981765 & 10569087 & 1821960 & 13921657 & 2547960\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A matrix: 2 × 5 of type dbl\n",
       "\n",
       "| <!--/--> | Indígena | Branca | Preta | Amarela | Parda |\n",
       "|---|---|---|---|---|---|\n",
       "| Masculino |   1449841 | 22570023 | 3749294 | 32957070 | 5345747 |\n",
       "| Feminino | 142981765 | 10569087 | 1821960 | 13921657 | 2547960 |\n",
       "\n"
      ],
      "text/plain": [
       "          Indígena  Branca   Preta   Amarela  Parda  \n",
       "Masculino   1449841 22570023 3749294 32957070 5345747\n",
       "Feminino  142981765 10569087 1821960 13921657 2547960"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "variancia <- tapply(dados$Renda, list(dados$Cat.Sexo, dados$Cat.Cor), var)\n",
    "variancia"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 33,
   "id": "14eae5f7",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-04T17:16:49.483553Z",
     "iopub.status.busy": "2024-05-04T17:16:49.481059Z",
     "iopub.status.idle": "2024-05-04T17:16:49.515326Z",
     "shell.execute_reply": "2024-05-04T17:16:49.513056Z"
    },
    "id": "bNv-eWZ3Tg2j",
    "outputId": "63565a2b-e5cf-40c2-f147-2a34c5b22817",
    "papermill": {
     "duration": 0.070276,
     "end_time": "2024-05-04T17:16:49.517959",
     "exception": false,
     "start_time": "2024-05-04T17:16:49.447683",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A matrix: 2 × 5 of type dbl</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>Indígena</th><th scope=col>Branca</th><th scope=col>Preta</th><th scope=col>Amarela</th><th scope=col>Parda</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>Masculino</th><td> 1204.093</td><td>4750.792</td><td>1936.309</td><td>5740.825</td><td>2312.087</td></tr>\n",
       "\t<tr><th scope=row>Feminino</th><td>11957.498</td><td>3251.013</td><td>1349.800</td><td>3731.174</td><td>1596.233</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A matrix: 2 × 5 of type dbl\n",
       "\\begin{tabular}{r|lllll}\n",
       "  & Indígena & Branca & Preta & Amarela & Parda\\\\\n",
       "\\hline\n",
       "\tMasculino &  1204.093 & 4750.792 & 1936.309 & 5740.825 & 2312.087\\\\\n",
       "\tFeminino & 11957.498 & 3251.013 & 1349.800 & 3731.174 & 1596.233\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A matrix: 2 × 5 of type dbl\n",
       "\n",
       "| <!--/--> | Indígena | Branca | Preta | Amarela | Parda |\n",
       "|---|---|---|---|---|---|\n",
       "| Masculino |  1204.093 | 4750.792 | 1936.309 | 5740.825 | 2312.087 |\n",
       "| Feminino | 11957.498 | 3251.013 | 1349.800 | 3731.174 | 1596.233 |\n",
       "\n"
      ],
      "text/plain": [
       "          Indígena  Branca   Preta    Amarela  Parda   \n",
       "Masculino  1204.093 4750.792 1936.309 5740.825 2312.087\n",
       "Feminino  11957.498 3251.013 1349.800 3731.174 1596.233"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "desvio_padrao <- tapply(dados$Renda, list(dados$Cat.Sexo, dados$Cat.Cor), sd)\n",
    "desvio_padrao"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "5b04e68a",
   "metadata": {
    "id": "57aHvJMSTg2l",
    "papermill": {
     "duration": 0.030805,
     "end_time": "2024-05-04T17:16:49.578971",
     "exception": false,
     "start_time": "2024-05-04T17:16:49.548166",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "> ### Conclusões\n",
    "\n",
    "Escreva suas conclusões aqui..."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "af7471d1",
   "metadata": {
    "id": "QSYjkdyOTg2l",
    "papermill": {
     "duration": 0.030353,
     "end_time": "2024-05-04T17:16:49.638585",
     "exception": false,
     "start_time": "2024-05-04T17:16:49.608232",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Construa um box plot da variável RENDA segundo SEXO e COR\n",
    "#### <font color='blue'>É possível verificar algum comportamento diferenciado no rendimento entre os grupos de pessoas analisados? Avalie o gráfico e destaque os pontos mais importantes;</font>\n",
    "#### <font color='red'>1º - Utilize somente as informações de pessoas com renda abaixo de R$ 10.000</font>\n",
    "#### <font color='red'>2º - Para incluir uma terceira variável na construção de um boxplot utilize o parâmetro *fill* da seguinte maneira: *aes(x = Cor, y = Renda, fill = Sexo)*.</font>"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 34,
   "id": "19d057cf",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-04T17:16:49.701298Z",
     "iopub.status.busy": "2024-05-04T17:16:49.699382Z",
     "iopub.status.idle": "2024-05-04T17:16:50.710924Z",
     "shell.execute_reply": "2024-05-04T17:16:50.708615Z"
    },
    "papermill": {
     "duration": 1.046188,
     "end_time": "2024-05-04T17:16:50.713767",
     "exception": false,
     "start_time": "2024-05-04T17:16:49.667579",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "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\noEGDM2fOLFy4kP+yNiAgwHIT1Z49e/KPkOM4LjAwMCYmRiqVqtXqTZs2WSq/9957O3fuvHjx\nIn83Vf7vn0ql6tixo7u7+61btw4cOMDfJkilUnEcV1hYKBaL+dsf8fUXLlzo5ub266+/nj59\nOjk5mX/go5+fn7e3d82aNbt06fLuu+/m5+fzf7ybN28ulUrDw8N/+OEH/sbNfHhvvPHGjRs3\nUlNTExIS9Hq9RCKJjo6uVavW9evXRSKRUqnMyMjQ6/XR0dHNmjXLzc3VarVKpfLrr7/mBygW\ni3v06JGZmenq6qpUKo8cOaLRaFxcXBQKhU6n8/f3T01NtTzwhGXZ6dOnN2nSxMXF5Ycffvj1\n11+1Wq2Hh8fkyZONRuP169eNRuOGDRtMJhN/S1n+gY8mkyk3N/f8+fMajSYkJGTcuHF+fn5F\nRUXHjh27efOmm5tbvXr1+EXM+fPn4+Pjly1bxrIs/0DP5s2b16tXr06dOizLbtq06c6dO76+\nvgMGDGjWrBkf0vXr1y9evFhQUBASEtK0adPs7OzTp09fvXr1xIkT+fn5rq6u/fr169u3b0FB\nwd9//33q1CkiatSoUadOnSyJRPfu3RmG4T9B1vftXb58+cmTJ41GY7169SZOnMivUP/999/V\nq1dnZmYqFIq6det6eXkxDOPh4SEWi41GI8MwERERloxrx44dGzduzM3NdXd3HzlyJH/1s1ar\nHTp0aGFhIcdx7u7uGzduJKJLly7t3r377Nmzer0+NDT01Vdf5c/DMZvNJ0+evH79ukKhiIqK\nspzlsnr16l27dul0Oi8vr7fffjsgIODUqVMpKSlarVYqlfr4+NStW5dflKenp48cOdJyF7K6\ndet+9dVXpXzokpOTL1y4kJ+fHxwczD9U0Ww2Z2Zm/vzzz5cuXXJxcWnVqlX79u35ygkJCZcv\nX9ZqtfyX7vwU3bhxY9myZampqd7e3v369XPkGnp758+f5/eciIiIBg0a8B+u7OzsU6dO3b59\nu0aNGk2aNHF3d+cLX3rpJf5xgVRCDmZhNptPnTp1/fp1mUwWGRkZFRXFl1+8ePH333+/e/du\naGjogAEDrBMJe/yjTgsLC318fN5//33+aaRlotfrT5w4cePGDXd39wYNGgQGBmo0mp9++unC\nhQscx4WEhLRu3bpJkyZ81v3ZZ5/t27ePiPiHqPJPCC2rS5cuXb161Wg0hoWFlfIMR965c+f4\n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\np5+uX78uk8nc3d0vX77McRzDMBzHERHDMETE/9+epZo1iURiMBhK79S6/ZIadwTLss2bNz9y\n5Ih948W2zDCMWCy2hMey7OTJk7t27dq9e3ebylFRUc8999yqVauMRiM9mAc3N7e8vDyz2Wyp\nzDCMRCKJiYlp2bLld999Z92CRCIxmUxEZDabLYW+vr7Tpk2bO3fu3bt3raNiGMbX11ej0RQW\nFlqGUK9evUmTJq1YseLEiROWRhiGUavVarU6KytLp9NZGpHL5UFBQenp6Tk5OdYtBwQEDB8+\nfM6cOWaz2XpO2rRp88orr0yZMkWr1fKFfn5+sbGx+/bti4+PLyoq4quJxeKxY8f27t17+/bt\ncXFxlpZFItHmzZsVCsU777xz9uxZS+XJkyd37ty5T58+lhb4MHbt2kVEH3/88fHjx41GI8Mw\nUqnU19c3JyfHy8tLo9HwE8uyLBFxHCcWi81ms/WW8vPzKygo8PLyys7Ozs/PN5vNLi4ugwYN\nevHFF+Pj4ydPnmy9BZ9//vmpU6eeOnXq66+/zszM5DjO1dX1lVde6d69u06nmzZtWlJSEj8h\nKpXK09MzJydHJpNlZmby8ywSiXr06DFhwoScnJxp06alpaXxsQUGBn711Vdqtbp79+708Odi\n165dRUVFmzdvPnLkSHp6emBgYPv27Xv27CkSiZYtW7Z9+3aDwcAwjFwunzRpUvv27f/44489\ne/akpKT4+PhER0fn5+dfvXrVYDDUqVNn0KBBMTEx1vvStGnTLly4YPmRZdk1a9b4+Ph8+umn\nhw8f5nczV1fX999/v2HDhhqNZv369WfPns3NzQ0JCenTp8+zzz5LROPHj09KSuI/GlKp9MMP\nP/zzzz8PHDjAv51hmNDQ0JEjRzZp0mT9+vVr16613ltUKpW/v39GRkZwcHBkZGRycvL169eV\nSmXdunWHDBmyevXqY8eO6XQ6mUwWERExY8YMV1fXmzdvrlu37sqVK2azOSwsbPDgwREREVSC\nMWPGpKSkWH4MDg5esmSJwWD4+eefDx8+nJ6eHhAQ0K5du169eonF4t27d69evTo3N5eIfHx8\nxowZk5qaeuDAgbt37wYFBXXu3LlLly78jkR2v98MBkN6erpWqzWZTJbRsSy7dOnSwMDAEydO\nbN26NSkpSaVS1a9fPzw8fP/+/cnJye7u7g0bNhw6dKirq2tJQ+Ddu3dv3bp158+fLygoqF27\n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\nVq1axeEUeRZMqVSuXr06NjZW41NQoShq/PjxHTp0KKoFQzBJpnZ5XFycdmFWVtacOXMePHjA\nREXTtKWl5fTp00NCQvLy8vTscebMmdevX1cvqVSp0vr16y0sLEoe/seNGTPm+fPnGoUNGjSY\nN2+eduU7d+5ERUVlZmaq9qJq1arNnj3byclJz+7S09PHjBmTmZmpXtiqVaupU6eWKvwPWp4z\nZ058fDz5/8YXCoWTJk1atWqVxv9ZFou1Y8cO5h+iGbK3t8/Ozi7qh06DVCqNioq6cuUK+f/v\nEpfLHT58uOHJbVZW1o8//vjw4UPy/+1pZWU1YcKE4OBgA1suBTabzZwJyszMlMvl5dCj2e4e\n8FFIVIwJiUrxkKiUlM5Dxs+EzkNYM2xTZdu2bRqHd6mpqd988w1zGUo9hqISv7Fjx3bq1Emj\nsKjjddWRpXph69atp0yZolHz1q1bM2bM0F73rl27jhkzRqNyaGiozi8ORVGxsbEahYsXLz59\n+rR25aZNm86cOVNn2ISQ/fv3b9mypailKr/99ltZHMoX9Z0SiUQHDhzQKJw5c+Zff/2l8fGx\n2ezt27fb29vr092OHTt2796tXe7j47NixYqSBK6Xa9euzZo1S+eijRs3alxXycrKGjp0aEFB\ngfonzmKxmFRTz+sq33zzTWJionb5+PHjO3bsWJLYNU2bNu3vv/9W3/hMSDr3Tz6f//vvvxvS\nXdkpUaKyevXqY8eOqZcw3/Sff/6ZuQxeapGRkTdv3tTemdevX+/q6mpIy6WARAX0h8H0AObr\ns81SSNmsu+FtMgcNOg0fPlyj5OTJkzKZTKNTmqaLOrOwb98+jZLNmzcX1R1N09qrc/bs2Zyc\nHI3CY8eOsVgs7cpxcXHal4aKSu9pmmbOxaq7cOGCzsrXrl0rKmxCyO+//17MZlTReYXKQL/8\n8ktR+4D2dktOTr5+/br2x6dQKHRexNOpqLvmEhISCgoK9GxEfz/99FNRiyZPnqxR8scff0gk\nEo1PXKlUPnv27NGjR/p0l5qaqjNLIbp25hJ5/fr13bt3NTaRNBBNAAAgAElEQVS+Uqksav+U\nSqXv3783pEdzUFBQcOLECY1CZiPov8vp9O7duxs3bujcmbVPQACYFYxRqdg2bNiwYcMG08ZQ\nq04dUqWaaWMghMhksunTp5s6CuMICwsLCwu7fPmyqQMBTcWkOtpnTF+9eqXzprKiaNwMRgjR\neb2iGEql8u3bt35+fuqFL1680BmDTCZLSkpiRt3oY968eeoXB5RKZVG3DioUiuzsbJ23v0sk\nkrS0NH2607ijzChOnTqlf+XXr1/rLKco6sWLF3o2op3/qDx58qRWrVr6x6OPYk7ba0fy6tWr\noq4xvnz5smbNmh/t7u7du0UtMvDmgjdv3pT0LTExMYMGDTKkU5N79+6dzk+Qpmn9dzmdXr16\npbOcoqiXL18a0jJAWUOiUrGNGDGif//+Jr/1KzazyH/G5YbH4y1YsOBTuvXLWAMooXxoXyXg\ncrkluoajfbONzjEkxWOz2RolxQwX4XK5GiXF3B2nce9E8bcGFRU5l8vV8wa8UgzpNm6bxWy3\nYhZpKObaEZ9v/Nl7itm22utezP6pvWPoVMy9efpcNCuG9m6saraomK2trQ3p0RwUtdkpitLz\nEymKUXZmAJPArV8AZsrLy8vUIXyCDDz8Lebwy9HRUaPEz8+vRImK9p3io0ePLlFsFhYWHh4e\nGuUBAQHaYVMUZWNjoz1mupiAV65cqVFS1PxXFhYWAoFA5yIul+vl5aXPUWxISMhH65RUiS66\n1qhRQ+cxnFKp1P9KiPZewWCz2dWrV9c/GD0VM4lT1apVNUo0rryp8/f3L2qRusDAwKIWFTPP\nmD58fX117iTF7J/t27c3pEdz4OzsLBaLda54QECAIS17e3sXtTPrc+kMwISQqACYr6JOKxrO\nwPOd5YCJ8KNxFlVBZzmfz1dNmqxPAAxVCYvFKibP2bFjh0ZJ27ZtK1eurN2dzimVKIoaO3as\nRmHjxo2L6o7D4ai3zJxp/uqrr7TPvPbq1YvP52tXHjRokPbqFHV6VedGGzx4sM7Kffv2LSps\nQsjAgQOLalCFz+f37t27mAqlU79+/aL6bdasmUaJUCjs2bOnRiFzwbZ79+569jhy5Eid5R06\ndCiLS0bF3Am8du1ajZLmzZtXrVpVO4xWrVoVM922OoFA0LRpU+1ynTtzidjY2GjPc8VisXRO\nakcIcXZ2Lio3rkBYLNbAgQM1fqNYLJbhXweRSNSjRw/y4feOoig7O7vQ0FBDWgYoa0hUAMzX\n8ePH2Wy2IUmFlZWVzv/f7du313jWQVG9CAQCnafcisoEdD7TgMPhTJkyReNel8DAwGJOEwYG\nBo4fP97Ozq6oCoQQHo83f/587SMtFosVHR2tcYGicuXK69atmzVrlvp8TUWtNYfDWbVq1bRp\n09RPUVeuXHnevHnM7YUa9WfMmKHdCJ/PX7hwYf369dWb7dOnz6ZNmzQOi/l8/uTJk3We4d67\nd692YUBAwMqVK2vUqKEq4fF4w4YN69Wrl3ZlV1fXBQsWqI9FsbS0DA8P13mAwoy81yhksVg6\nR9x27tx54MCB6uk085iXfv36aVdWCQoKmj59uo2Njfq71CuIRKKyG3p38OBB7UIHBwed++2Q\nIUPCwsLUc7+aNWuuXr2aeSCPPpo0aRIeHq7eAkVR7du3N/A4vihisXjUqFEahRRF6XxQDJfL\nXbBgQaNGjVQlLBarW7du3333nf49zpw5s0mTJuolAoFg6tSpxT8XSB8jRozo16+feuZcu3bt\ntWvXaj+ox8nJaevWrQZ2Zya6dOkyZswY9Xvq3N3dFy5caPidwEOHDh0wYID69gwICFi0aFFZ\nP7MIwECYntiYMD1x8TA9cemcPXt2xYoVUqlUIBAMHz48PT09MzOzdu3aa9asycrKIoS4uLh8\n9913GzduTE5O5nK5OTk5crncyspq0aJF1apVYxpRP4PLPA+REPLixYvff/89MTGxVq1a/fr1\nS0xMfPnypaWl5dWrVx8+fGhtbd2zZ0/mpP7z58/3799/7do1uVzu5OS0atWqgoKCJ0+epKWl\nXbx48dWrV2KxuH///s2bN2da7tixI/P8Fg6Ho5ptUy6Xnzt37v79+y4uLs2bN3d2dmZajouL\nu3PnDiGkTp06gYGBBQUFHh4ezIG1TCZLSEhISkpinmVZuXLlnJyc8+fPy2SyJk2aqA61jxw5\nsn79euYT7969u+o09v37969du6ZQKIKCglSPOGTafPfunZOTk7Ozc2JiYn5+fqVKlW7evHnh\nwgU2m922bVvVNMEFBQUJCQkpKSlubm7Vq1dXHXEOGTIkJSWFEFK7du2oqKjiP8GXL1++ePHC\nwsLC29tblXolJSWdP3/+3bt3AQEBISEhxd8pvnfvXub5LW5ubkuXLmWST2aCplevXtna2np7\nexf/IEKFQvH06dPXr187ODh4e3sXf3Ry/PjxtWvXMtuzefPmOtMwFYlEcvr06efPn3t4eLRu\n3VrPg3ipVBofH5+SkuLq6lqjRo2zZ89euHCBy+V26NAhKChInxYM8csvvxw/flwul4tEoq1b\ntxa/NTIzM588eZKdne3h4eHp6SkSiZRKpf7PUSGEFBQUnD17NiEhwdXVtXXr1sWn30Yxb968\n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\nOTm5qBYaN2589+7dgoIC9e3g4eGxbNkygUCgUTkmJobJFtRZWFjs3r3bwsKilOtACCHk0qVL\nP/30E0VR6h+ru7v7q1evtCsze4KqMrOHdOzYcfz48YbEYBT29vbZ2dl6/vJER0drX+ijKGrv\n3r1lkasUFhZOnjw5ISFBvS9CCLMxVb8tfD5/6dKlnp6eOhuJioo6d+6cRqGnp+fatWuL6pfN\nZjO/dZmZmXr+4BioqNNApaP/pelbt27FxMRERkbqWd+4cX4acO8WAFQA586d05mQqy416MOc\nsxRCSHi45tNyU1NTi6r86NEjopaQ0DStVCp37txJ9E7bfv/9d+1C/Q8a4uPjIyMjNbIUQohS\nqdTOUgght27dUj+4Z4wYMULP7hiXLl1iulD1RQjZtWuXVCpVFTKr/+TJE40VvHTpUlFZCiEk\nMjJy5cqVcrlcY+vFx8dr3GJ0+PBhjRWhaVoul69atUq72dmzZ+vs7ubNm0VFYoguXbroLKdp\neuDAgczrXbt2paSkFNPI1atXNbIUQsiLFy9+++037cq//PKLdmF+fv6yZcv0DVqXwsLCVatW\nqRIP8v+PVWeWQv6/J2jsGLGxsdq7nJnbtWuXdiFN01OmTCmL7o4dO6aepRC1X1T13xaZTKZz\n9yaEJCYmamcphJDnz5+fPn3ayOHCZwm3fgFABbBu3TpTh1DmtK/HDho0SP+36xyzUbyrV682\nbty4pO9iUBSVkZHx8XpqDh8+XLNmTfWSjw6i+KiiMlWKoi5fvty7d29VyeXLl4tvSucYEqad\nbt26qUouXLigOtmsolQqnz59mpqa6ujoqBFeUWGfO3cuJCSk+JBKqpg8U3UO+NKlSx9NZbUr\nUBT1559/9u/fX73w/v37RY1Bun379sfDLdqjR49KOkJDZ8yXL1/W2OXM2c2bN4v6aN6+fVsW\nPV6+fFl1fbIYSqUyPj4+MzPTxsZGY5HO8x2M2NjYNjAkcGsAACAASURBVG3aGCFK89ZW7ceh\nKOc/VudU0ZsRkKhUbBs2bNiwYYOpoyiBrz2rmDqEsiUvLOzTp4+po/h0hIWFhYWFEUIKCgpM\nHUuZ03mkVab36d27d6/UiUopAtPOxMpuBWmaTktLUy8p3dBk7XaYEf86K2dkZGgkKsW4dOmS\n0RMVfTZmqbeD9seXmJhYVH0DB1WXNAfWqRS5tGkVM91CKU5D6CM9PV3Plmma1pmoaHw71JXz\n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\n5dtuu23//v25ubmugGNiYl588cWNGzfu2LHDu301GfNw6tSpSZMmeczbHj162Gy2b7/91qNH\nn1tx1113ff75594vqbm3+njXrl0LFy4sLCzU6XSuv51rPDt37ty1a9dFixa5/1klSRo7duzQ\noUO9e5wzZ46a1rrr2bOnz18WDhw4MHfuXKvV6hql2NjYJUuW1K5dW03ar2r69OnfffedR6Ek\nSVOmTFm6dGlRUZGr5fr168+ZM0fdDSiNy5cvT5s27fTp064WTCbTxIkTMzIy1qxZ43Q6XUPU\npk2bHj16vPbaax4tJCUlvfjii94tnzp16oUXXvCYzFOnTlVzQp/0en1kZKQQIisry+FwlHIT\nyqL0AwWtIVEpTyQqJSNR8UCiogVqorJs2bI1a9YENpL4+Hj1yIy7vn37BiSYSkGSJKPRWMrM\n6vrav6YPi/uesffTkhuXJMlkMjmdTvdjL1dtpIwmT56sHiBSXbp0aezYscXtUnsErNPpYmNj\nL1686LOye+bgMmzYMPW4RLlzHVe5ePHiQw895DGG3pW9X5UkafXq1XFxce6FJ0+efPTRR302\nsnz5co/jKtnZ2WPGjCksLPSYA3Xq1Fm9enUpN6Rfv37FRe49YVq1arVgwYJStvz0008fOXLE\nowXxx2E3j458lgshnn322W7durmXOByO8ePHX7x40WOrTSbT22+/7Trg6YFEBaXHGhUAEOrJ\nFYF17tw5j5IBAwYEJJLKovTHf667/Wuq75FRlJxgeDSuKEphYaH3cTn/ZSlCiI8++sj96Zdf\nflnCD//egRWXpXhXFkL8/PPPfspS1O6GDBkihNi+fftVj236fFVRFO+fKl5++eXiGlm4cKFH\nyc6dOwsKCrznQGpq6sGDB0uOX7Vo0aISIveeMEeOHElJSSlNy6mpqYcPH/ZuQT370buj4sLw\nzrgOHTp0/vx576222Wxff/11aWIDSsYalcpt1apVq1atCnQU10Dpfc0n7FZhTlm+4447Ah0F\ntKuyHCwNoGs96KFxFbw5aWlp7k9TUlLKKwDvRjxOlit3VqtVCHHu3LnrPgZ15swZjxKPMxXd\neZx0J3z90OCSkpLSvn37qwbg8yS6kqWkpNSrV6801XyWX+ufOzs726MkNTW1uJbPnj1b+paB\n4pCoVG7JyckjR46sLHsz6qlfgY5CQ/Q63adbtnDqV2CZzWaj0ditWze//nR9fXQ6nboqGtWB\n92/b/mY0Gt2fqovj/SQoKMh/jbuYTKZyfK/RaCwoKPBZ2XshewldlzKq65gApfyTFVfN/bog\npeH9bVXCpvl1OqH64NQvANWd0Whs1qxZxWSMJfAOoGHDhgGJpBLxX9Zd8fOhhFNu/MTjOk6t\nW7f2XwDdunXzayb2xBNPCCHatGlT8i8OJcSgXufNXQnXufKu3Lp16+Iqt2nTpoSQXObPn1/6\nIVIXaDVr1qw0lZs2bWowGErZeAnVGjdu7FHSunVrn/XVRfml6Q4oGYkKAIjRo0erV3wKYAwP\nPvigR8myZcsCEkkpXdPVUf2xkypJUqNGjUJDQ8ulKfe/vvozs7ret5QsFkvJbV5Vs2bNEhIS\n3AdKfeyn/Xu9Xj969Gj3km7duvnMjdUN8Q6jZ8+exTWuXj3ZXXh4uPfOvRDCZ8vXSpIk9ULA\nPXr08BhDj76EED5XeIeEhIwcOdKj8LnnnvPZlCRJTz/9tEdhp06dWrRo4VFNCHHnnXc2aNCg\nNFvRvHnz4l7S6/Xe83P48OGlnPwhISEjRozwWJEiSVJMTExwcLB7y+q1v4KDg70bkSRp+vTp\nHoXx8fG33367z23p3LlzaWIDSkaiAgCiXbt2s2bNqlmzpqukfv36pd9/Cg0NLcs5J0KI7t27\n+7w6qs/LvBqNRveLNV2V94bodDr1lhTuevToUcKiKY+0pF69em+99VZ0dLRHtYiIiHnz5nn0\nqNPp5s6dO2bMGPdGjEbjo48+mpiYWPoNsVgsBsPvZyxLktSjR4+XXnrpww8/DAsL867svdX1\n6tX79NNPfbb86quvul/EKTo6etq0aWvXrvXYcTcYDHPmzJk1a5bHSVP16tX75z//OWbMGPfT\nXbp16/buu+96p3M6nW7z5s0jRoxw35bevXvPmjXr5Zdfdj/yYDKZxowZs2zZMo+ER6/XL1iw\n4KGHHvIYz0ceecQ7X/IpKipq/vz5HjvQBoNh7ty53ulH06ZNX3nllb59+7oCMxgMw4YNmzx5\nss/5GRkZOW/ePO/yGTNmeBxXiYiImD9//qxZs9x3uCVJ8rnuokaNGq+99prPyey6lYrRaFTH\n0L011+OYmJjp06e/9dZbHgciEhISli9f7jOrfP311z0+2mazeeXKld41dTrdzJkz+/Tp4+pR\nr9cPHz782Wef9a5cnK1bt3qHYTQa33777aSkJPcYxo8fP2rUqNK3PGrUqOTkZPf5mZSUtGjR\nokWLFrnfUScsLOypp55at26dx41lzGbzvHnzfH7QHn/8cZ+TOeDHqFE1VKlliAHH5YlLxuWJ\nPXB5Yi1QL0+s3ivQ4XCcOXNGveFjQkKCTqfbu3eveicNo9HYsWPH06dPh4eHd+/eXd1TUfdI\nXDtJx48ff+mllzIyMkJDQ9Ufp6Ojoxs0aDBlypTLly/LstynT5+bb7752LFj9evXj4mJefvt\nty9evNixY8fJkyeXHOTAgQOLioqcTqfRaFTv9qh69dVX9+/fHx0dPWHChMTExB9//PGnn34K\nDQ2Ni4uzWq2XLl2y2Wzt2rVr27ZtXl7epEmTzp8/HxIS8n//938dOnRQFCUlJeW3337Lz8+P\njo5OTEx0/ZfywAMPqDejVMdn1KhRrVu3btKkSXp6+jfffON0OpOSklx78FlZWdOnTz937lxc\nXNyMGTNclwH99NNP1VAHDBhw5513qoVFRUXffvvtqVOnmjRpkpSU5Nq5GTVqVEZGhqIozZs3\nnzhx4qVLl9T9pBUrVqSmptavX79379516tRp2LBhYWHhyZMni4qKGjRo4H7J0ZMnT77xxhtp\naWnNmze/7bbbIiMj69ate+HChd27d6ekpMTHx995552ui8/ec889drtdveGJ64JvsiynpKSk\npaXFxMQ0aNDAlYqkpaV9/vnnly9f7tKlS7du3cLCwmRZzsvL27179+7du6Ojo/v16xcfH69W\nzsvLO3nypM1ma9CggXo3PSHE/v37n3/+efXmKn379p00aZJanpubq95KUp0qrm25dOnS6dOn\nLRZLo0aNQkJC1MKvvvpq06ZNTqdzwIABvXr1co3n3r17T548mZiY2LlzZ9d49u/fv6ioSFGU\noKCgZcuWnT17NjIyMigo6IcffigoKGjfvn2TJk1K+J/n8uXLJ06cuHLlSnBwcGJiYnx8vDrV\nMzIyTp06pdPpEhMT3fdZP/3009WrV9vt9sjIyHfffbe4ZlUZGRn79u1LT0/v0KGD+9lB33//\n/Y8//lirVq0uXbqo/1m99tpru3fv1uv1rVq1Gjx4sOt4xdatW5ctW6YeAq1du7b3Rb3dx7BB\ngwYZGRlpaWmxsbH169d3/7N6T+bifPvtt+rVlu++++5OnTqVXPnKlSunT5/W6/WNGzcOCwuL\njo7Oyckp5X1UVO+++656hyKLxbJq1SrXPL948eLp06dDQ0MbNWp0fWt+CgoKTp48abVaGzRo\nUKtWLbVQUZTU1NSUlJSoqKiGDRu6ErMzZ85s2bIlNze3e/fu7mmST67J3KhRI/U+pyXg8sQo\nPRKV8kSiUjISFQ8kKlrgnqjAJTQ01GKxOByOrKysQMeiLa5EJdCBaEtkZKRer8/Pz8/Pzw90\nLNpyHYlKlUeigtLjwBwAAAAAzSFRAQAAAKA5JCoAAAAANIdEBQAAAIDmkKgAAAAA0BwSFQAA\nAACaQ6ICAAAAQHNIVAAAAABoDokKAAAAAM0hUQEAAACgOYZAB+DbfyfdP+tktuupJBnComvf\n2P2e5Pv7BOukAAYGAAAAoAJoNFERQuj0YePH3as+lu22Uz98/e+Ny39Ot6x8+raAxgUAAADA\n77SbqEj6kDvvvPN/zwcMrv3k/e/uXpYxuXuUgYMqAAAAQFWm3UTFW9Kttdb+evyS3Rll+FPY\nuVZHWGipNkSRnUKnJ8sJoOiffwq35pZ7s7qcHHtC/ZjTp6IyrgghJElSFKXceyl3clFRoEMA\nAADQqMqUqBz4Jt0Y3DzRYhBCLLp/WMod86bE71u+bqut64zFIxsJpWjHB6s/+3rf2YtZwhRW\nv3n7oeMe7hwfIoRYNnrYr73m3FH0/tufH8hXTLF1G/Yd/uiQbg3+aFj5bvM/1n++68zF3JCY\nep17D0we0v33bKb4Nl0KCgrsdvvvDSmKJFV0HiRJUsV3en2SkpKio6MroKPQ0NC8vLxKkKt0\nvUWn01XMn8/VS2WZLRVGHRCGpTiMjLdK9L9uheF/mBIwYTy4zxZGBiXT6A/P/510/5wzyiMP\n36c+lR22Uwe//vehnFEvLBzSJlIIsej+YUdbd7Wfzx8xoHvD5u2a1w46snrSc5+e7T5wVLtG\nNe05aV+t//BXe6MP3n9ZL4llo4ftDgpXHHXuueKFxgAAIABJREFUH9G7ZpD9q3Wr95zN/9ua\n9V3CTUKIQ28/M/3jnzveMeyWZnUyf9v/3qffNLxr1qLxNwghSmjTZdq0adu2bVMfR0ZGfvHF\nFxU8VgAAAPDJarWGhoYGOgpcJ+0eUZGdOcuXL3cvCap1Q6jT4Xp65b8/rnhvVW3T71dYPpwa\n0rHXtCljOqhPOzU6NvqZA+cKnfUteiGELd2+4L0ZiRa9EKJtK/HNA0t2pBd0CTc5bb/O/uTn\n+gPmTH+wtRBC3Nazcd6EmdsWO8f9Qy9dpU0AAAAAfqLdREVvqv3xh6tcT3Mup2x+c+aKGX9V\nVr3dr2awECK45ghXliKEGDl9jhBCKI7My5fSL6R+tzlFCOH849WQ2g8k/pFdGIKbCiEUWRFC\n5Jz8oFBWxgxt5mqn/aOvrB5VpB6KLLlN1YMPPnjPPfeoj3U6XXZ2tqgoERERQoj8/HzXuWdV\nTHZ2dkFBwbW+S5Ik9dQvWZb9EVUlZTAYgoKChBBWq7Usx1GNRmPFnL9XYYxGo8Viyc0t/6VT\nlVpQUJDJZHI6nVarNdCxaEtwcLAsyzabLdCBaEtYWJhOp7PZbIWFhYGORVvCw8Pz8/MdDsfV\nq1YbOp0uLCxMCGG1Wp1O51Xrl1EFdAH/0W6i4iE8pt6IKTM3DH3k47dP9vtbayGEKSLKvUL2\nsa+Wv/PxwWNnZHN47bi4enX+dNajISTCZ7N5KdlCiObB/xsHyRDm2g0ruU1V48aNGzdurD6W\nZTkjI+O6t/H6OJ3OqpqovLF06Y/7/xtiNl3j+6Q/FtOXw2mNNrujwG4PMhotxkrzYSnG76cC\nl2VkCh3OyFq157/6arkGFmA6nU5RlKr6IbpuZrNZCMHIeJNlWZZlhsWD+vMHI+OTw+FgWNzp\n9b//cOxwOEjhULLKtO+lN9WpYZAKUvN/f/6/oynCWXhm4rOvmjsOfWnF7MTa4UKI3JS53/zn\notu7fa/WstQKFkKctjlb/pGrOG1nDh290rBt+3DH2au1CT+TnY81jL8tNurqNf3m/bNpy349\nPbFJrZEJcQEMQyN+teYtvJIX6CgAAEC1oLt6Fc3IT9uSYZejk2K8XyrM3pntkLuOG6hmFEKI\n1N2lyigiEvvrJenNT064So6uXfDizJdl5frbBAAAAFBG2j2iojjzXVfTEkLJvXLuy01b9aba\nEwYmeFc2R3QP13/05YI3Gw/tarHn/Lxv+5ajmUKIbw8di7mxZQm9GEPbP3l7wvz1U+fkD7+l\neVz2qe/Xbj5bv/dz0QbJWWKb4dyOBQAAAPAb7SYqHlf90puC6zft/NSEvzYL8hGz3lx/yYwJ\ny97+5PVXdoXWSmjT5a63/trqpSee+vDlmY3fWVNyR10nLnHUWvXx9s+XfW6LrFO3+7DHH763\n01Xb7Bx2rQsnAAAAAJSWRu+jUklV8GL6mJgYIURubm5VvcrKorkvdc9M18YalQasURF/rFGZ\nv2xZoAMpT2azOTg4ODMzM9CBaEtoaKjFYnE4HFlZWYGORVvCwsJkWc7LY7HWn0RGRur1+vz8\n/Pz8/KvXrk6io6NzcnJYTO9Or9dHRkYKIbKysipmMb26v4TKqDKtUQEAAABQTZCoAAAAANAc\nEhUAAAAAmkOiAgAAAEBzSFQAAAAAaA6JCgAAAADNIVEBAAAAoDkkKgAAAAA0h0QFAAAAgOaQ\nqAAANKGoqCg3N9e9JC0t7ZlnnnEvcTqdmZmZ+/btO3XqlMfbMzIyPvjgAyFEbm5uYWGhECI7\nO9tut//yyy/Z2dlCCLvdnpWVpVYeMmRIv379vGM4c+ZMQUGBR+Evv/yydu1aWZYzMzMVRXGv\nbLPZ1Md2uz0nJ0cIYbVa09LSvFvu37//e++957GBNpvNo0QIIcvyqVOn1Dt2OxwOV8xr165d\nvny5q5q6OWpUsix7NDJgwICRI0e6nqq3AC8qKjp06JDT6XSvabfb33vvvb1796pPMzMz1QpF\nRUWuQS4sLHTFmZaW5n37+cWLF996663eW3306FHvDXT/Q7hbsWJFSkqKK2C73T5u3LgVK1Ys\nXbrUu3L//v2feuopj8JLly6dOHHCu7JrPN0VFBRYrVar1er6IwohnE7noUOHioqKPCqvXLly\n5cqV7rEJIbzHUx3nU6dOnTt3LjMz070Fdeq6l6hDff78eavV6tHdxIkTBw4c6L0h6pT23pAz\nZ854V3bFWRoffPDBxYsXc3Nz3UejqKhIndUeXJPEo7vz589ftaPi2gR8ktz/z0UZybKckZFR\nYd3FxMQIt6/kqmfR3Je6Z6bfFhsVwBjeP5u27NfTE5s0GJkQF8AwNOJXa97CK3nzly0LdCDl\nyWw2BwcHe+xAIDQ01GKxuO8l+9WBAwfefPPN06dPK4oSFRU1YsSIdevWefx3mpSUVFRU9MMP\nP7h/bSUmJi5btmzq1KkHDx50ryxJkiRJ3rvvPplMprVr186ePfvw4cNq48HBwY888kjv3r1H\njx6dnp7u3qPFYunatevp06d/++03tTwoKCgiIuLixYuKokjS79+qOp2uc+fOf/vb3wYOHOjx\nPStJ0oQJE2JiYt55552zZ88qihIbGzty5Mi+ffumpKTMnDkzLS1NfYvRaJRl2XuPUJKkZs2a\nHT9+3LWBZrO5a9euY8eOff/99z/77DOPykFBQfn5+a7YhBChoaEzZ860Wq3Tp0/3qKwoil6v\n1+l0rn1ck8lkt9sVRXE9UMfh/vvvHzx48F133eV0Ot23MSoqasWKFZMmTXLttup0usGDBz/0\n0EPHjh1btWrVsWPHZFkODw/v37//0KFD9+7dO3fuXPcWdDqdz7/d/Pnzp06d6tGdEGLbtm0L\nFiz48ssvXeWJiYnz58/PyMiYMWOGK/mJiop6+umn27dvv3v37nfeeefcuXNqfUmS4uPje/To\nsWHDBleaajabn3322ebNmw8fPtx96NTYdDqdEMIVZHBw8E033bR///68vDz3wHQ63YABA3r2\n7LlmzZoDBw44HA6LxdK9e3dJknbu3FlQUOBq2WQy3XvvvSNGjLjjjjvct12SpJCQkPfff/+j\njz7auHFjTk6OTqdr0qTJ+PHjW7du/e9//3v58uVq3ihJUqtWraZPn242m9evX7958+bc3Fy9\nXt+iRYvk5OSmTZt6j6cQYs+ePbNmzXIfT0mSEhISunXrtmfPnpMnT6ofyaFDh959990FBQVr\n1qzZvn27zWYzGAwdO3ZMTk6uW7fuO++88+GHH6oTRq/Xd+/efcqUKQaDwaOvgwcPvvnmm2qb\n0dHRo0eP7t27t8+oyp26v4TKiESlPJGolC8SFa0hUak+KjJR+eyzz5YtW+baN3XfKSwNvV7v\nvSt/rXzuGRsMBu+f4a9VCZvjekl90Llz53379l33l7IkSWFhYbm5uVr4Wvc5ns2bN//ll19c\nCaS61Q0bNvQ+OHatfA6yyWRyOp3ec+O22277+uuvr3WalSU29YGru9JMCQ/qJHefMEKIW2+9\nddeuXR41LRZLQkLC8ePHPQKYOXPmTTfd5FH5+++/f/bZZ68ahvrX7NSp09mzZy9cuOBezWQy\nJSYm/vTTTx4t1K1bd/Xq1e4l27ZtW7JkiWtiqA9uueUWj1TZT0hUKi9O/QIABIzVan3zzTfd\nj35c6+5j2bMU4fbTuLuyZymixM1xvaQ+2Lt3b1l2nRVFycnJ0UKWIooZz2PHjrm/pIZa9ixF\nFDPIRUVFPudGRWYpQgjlD+4lJVT2Wa5uiMeE8c5ShBA2m809S1ErS5K0dOlS7z/KtGnTShOG\n+sbvvvvOPUtRq9ntdu8sRQiRmpq6detW19OCgoI33njD/WOuPtizZ8++fft8xgCoSFQAAAHz\n448/2mw2jexew9808ofWSBhlcU2bIMtyenq69zqWUp4bWXLLxb30xRdfuB4fOXLE58dckiQS\nFZTM8wxCVC6rVq1atWpVoKPwlxaNGopQc6CjwJ9kZWf17ds30FEAAK5Nxaw3c3FfMV/c6nlJ\nklhYj5KRqFRuycnJI0eOrMJrVERmeqCjwJ/UiKjx9zVrAx1FeWKNik8VtkblwIEDzz33nF+7\nACCEqFmzZhlbuKZT5tyXhRS3RESW5djY2DJGhaqNU78AAAFzww031KhRw7XguNqqDiMgSZJ6\nsayAh1EFRvuatkKn0yUmJtatW9ej3GQyXVOPPs/dKq7+4MGDXY9btmwZFRXl8ddXN6Fbt26l\njwHVUOD/ywAAVFtGo/Gpp55Sr4erllzrvmxoaGjZw6hRo4ZHiSRJkZGRZWy2hNh0Op1rJ099\ncO+99wYFBZWlu0aNGpV+9MplZ724RnzuAffr189isXi8t1u3bmWMpLj8p2bNmiEhIR6Fer3+\nwQcfdB/8klsuS2Au7qNxfW22b99euH00JEkym82jR4/2bq1OnTo9e/Z070i9PvWUKVO8m127\ntlSHx9V+hwwZ0q5dO9dTtf3Y2Ng777zT+y2dOnVyv8iY0Wh8+umnDQaDKyqdTqcoyogRI1q0\naFGaGFBt6WfMmBHoGKoORVG87xTmP8HBwaL4C5tUAd/u/k8DW16DkDJ9c5fRkezc7zKyOkXX\naBMRFsAwNCKjyP5tgb33HXcEOpDyZDAYjEaj+z3OIIQwmUwGg0GW5QoYmbi4uF69elmt1oKC\nApPJ1Lp160mTJsXHx//www+uOjqdbuXKlSEhIb/99pvrYlw6ne7++++fNWtWfHz8nj173C//\nGhUVFRwc7HA4XJdzNZlMkZGRJpPJ484kkiRt27ZtyJAhNpstJSXFbrcbjcb69eu/8sorY8eO\ntVqtx44dc9/na9269fDhw2NiYlJTUx0Oh8lkSkhIaN26tcPhUH8hVnsMDw9/4IEHZsyYUatW\nrW+//dZ9eyMjI2fPnj1s2DB1ky0Wyw033PDkk0/efvvtgwYNSklJuXz5ssPhMJvN0dHR0dHR\niqI4nU7XJX2FEBaL5Y477sjPzy8qKlL/Uo0bNx40aNCkSZMeeOAB773PNm3a5Ofny7LsusdL\no0aNVq9ePWDAgC1btrhf3Cw8PNxsNtepU0e9NLMsy0FBQTVr1gwODrZYLLGxsU6n0+Fw6PX6\nOnXqzJ49+4knnti0aVNRUZH7DujChQsff/zxs2fPum5UEh4ePnPmzP79+/fp06ewsLCgoECn\n0zVv3jw5Ofnee++977771q1b51qWLUlS7dq1ve+BaDQat2zZkpWVdfz4cfcd9NDQ0E2bNtWr\nV+/AgQPqX9ZoNN59990vvfTS4MGD09LSLl686HQ6zWZzq1atlixZ0rFjx27dumVnZ+fm5jqd\nTr1eX6NGjVtuueXJJ588evSoeuU09c4qf//738eNG/fRRx+53zZRkqSIiAjXUAgh9Hp9gwYN\nRo8enZ+fr96C01UzLi5uwoQJ6o0pCwoKnE5nYmLiiBEjbr75ZqvVmpubq/5R9Hp9XFzcCy+8\nMGXKlHXr1nlcGnjcuHGPPfZYs2bNsrOzbTZbTExM165dp02b1qlTpx49ehw+fDgvL09RlLCw\nsLvvvnvmzJldunRp2LBhdnZ2QUFB7dq1u3Xr9vzzz9epU8f7o2c2m4cOHfrxxx+7PhHq1nXt\n2vWRRx7R6XT5+fkmk6lVq1ZPPPFEv379evbsGR0drd4UIT4+vm/fvs8880yXLl1atmz5008/\nqbeFqVGjRnJycnJyskdfderU6dWrV15eXkFBgdFobNeu3bPPPnv77beXfUF/aaj7S6iMuI9K\neeI+KuWL+6hoDfdRqT4q+IaPlUhYWJgsyx739UNkZKRer8/Pz/e+aX01Fx0dnZOTU/o7xFcH\ner1ePVyZlZVVLhcBvyruo1J5ceoXAAAAAM0hUQEAAACgOSQqAAAAADSHRAUAAACA5pCoAAAA\nANAcEhUAAAAAmkOiAgAAAEBzSFQAAAAAaA6JCgAAAADNIVEBAAAAoDkkKgAAAAA0h0QFAAAA\ngOaQqAAAAADQHBIVAAAAAJpjCHQAQLEMZsvsYydnHzt5rW+UJKEo5RODLMtGvf7vp86tPpNW\nPi0GjiQJIco6Mi2bNy+XYAAAAEpGogLtenzKlMenTLnWd0mSFB0dnZGRIcuyP6KqpEwmU3h4\nuBDiypUrSnmlcQAAAH7DqV8AAAAANIdEBQAAAIDmkKgAAAAA0BwSFQAAAACaQ6ICAAAAQHNI\nVAAAAABoDokKAAAAAM0hUQEAAACgOSQqAAAAADSHRAUAAACA5pCoAAAAANAcEhUAAAAAmkOi\nAgAAAEBzSFQAAAAAaA6JCgAAAADNIVEBAAAAoDkkKgAAAAA0h0QFAAAAgOaQqAAAAADQHBIV\nAAAAAJpDogIAAABAc0hUAAAAAGgOiQoAAAAAzSFRAQAAAKA5JCoAAAAANIdEBQAAAIDmkKgA\nAAAA0BwSFQAAAACaQ6ICAAAAQHNIVAAAAABoDokKAAAAAM0hUQEAAACgOYZABwBNWPnWP745\nsN/fvdhttqKCAlNQkNFiKffGDZL0zOOPN23atNxbBgAAQMUjUYEQQpxMS/1vh5usjRr7tZfo\n7/bV/urfv/W4/UqnpHJvvOUnG/Py8sq9WQAAAAQEiQp+Z4+oYYut6dcuHKGh6r9+6cgPR2kA\nAAAQKKxRAQAAAKA5JCoAAAAANIdEBQAAAIDmkKgAAAAA0BwSFQAAAACaQ6ICAAAAQHNIVAAA\nAABoDokKAAAAAM0hUQEAAACgOSQqAAAAADSHRAUAAACA5pCoAAAAANAcEhUAAAAAmmMIdAAA\nUFYHDhzYuXNnWlpazZo1O3fufOutt0qSdE0tnDp1aunSpefOnZMkKSEhYcqUKXXq1Cmu8qVL\nlzZt2nTy5EmTydSsWbP+/fsHBwdfU3dOp3P79u0HDx7MzMysV69e3759mzZtek0tVCWXL1/e\ntGnTb7/9ZjAY1PEMDQ31X3c2m23JkiVHjhwpKCiIiYm59957u3fv7r/uAI07duzY9u3bU1JS\nIiMjO3To0Lt3b52OX7GhFSQqACoxWZYXLFiwY8cOnU6nKMrRo0d37NjRvn37GTNmmM3mUjay\natWq1atXu54ePnx47NixDz/88IABA7wr79y5c+HChXa7XQghSdLevXs/+eSTWbNmlT7TyMrK\nmjp16qlTp9SYjxw5snXr1uHDh48ZM6aULVQl33zzzfz58202m7pv9N13323atGnGjBktW7b0\nR3cnTpyYNGmSw+FQn+bl5c2dO3fLli0vv/yyP7oDNG716tUffvih+liSpF27dm3evHnu3Lnh\n4eGBDQxQkTQDqMQ+++yzHTt2CCFkWVYURZZlIcTBgwf/+c9/lrKFlJQU9yxFpSjKypUrMzIy\nPMrT09MXLFhgt9sVRXF1l5OTM2fOHDV1KY2lS5eePn3aFbNq3bp1+/btK2ULVUZGRsYrr7xS\nWFgohJBlWR1Pq9V6TeN5TZ577jlXluJy6NChDRs2+KM7QMv27NmzYcMG1/9C6gfw5MmTr7/+\neqBDA35HogKgEtu2bZvPs7z+9a9/qV+6V1VcSqMoyvr16z0Kv/76azVL8ah58eLFH3/8sTTd\n5ebm7tmzx6MFIYROp9u+fXtpWqhKdu7cWVhY6DEasixfuXLlwIED5d7dyZMns7Ozfb702Wef\nlXt3gMZt377d+/9PRVH+85//WK3WgIQEeODUr8pt1apVq1atKns7NRs1Fs1bl72dACoqKpo6\ndWqgo9C05OTk5OTkQEdRztLS0rx3+oUQVqs1Nzc3IiLiqi2cO3euuJfOnj3r3Z0kST57TE1N\n7dix41W7u3Dhgs+3y7Ls3V2Vd/78+eJeSk1NLffujh49WtxLxSUwQBV27ty54v47unDhQmJi\nYsWHBHggUanckpOTR44cqZ44URb/N3t2ucQTQCaTae7cue3bt5ckKTo6OiMjo5Q/qFcTJpOp\nSp5zbDabbTabd7kkSRaLpZQtFPeSdwtBQUHFVS7hpdJUkyQpJCSkNC1UJSX8jUo5ntekhI+A\nwcC3IaqdoKCg4n558ccHELgOnPoFoBLr0KGD96kLOp2uWbNmpVxMX8IVn3r16uVR0rZtW59f\n6pIk3XDDDaXpLi4uLioqyvuiOoqitGvXrjQtVCVt27b1WS5JUnEvlUXnzp2LuxxckyZNyr07\nQOPat2/v/R+aJEkxMTFxcXEBCQnwQKICoBIbNWqU2Wx23+/X6XSSJI0bN66ULQwcODAqKsq7\nPC4urmvXrh6FSUlJbdq0cS9Rd3wHDBhQq1at0nSn0+mSk5MVRXGPWZKkqKioQYMGlTLmKqND\nhw4dOnRwL1HH884776xbt265d2cymXr37u1drtfrp0yZUu7dARo3aNCgyMhI9+xd/X/p4Ycf\nvtYrvAN+QqICoBKLj49fvHhxixYtXCUJCQnz5s1r3foa1lytX7++ZcuW7l/M7du393ndG0mS\nZs6cOXDgQFeaYTabx48fP378+NJ3d9ttt02bNi0mJsZVkpSUtHjx4ip5bl7JJEl6/vnnhwwZ\notfr1RKz2Tx27NgJEyb4qcfJkycPHDjQ/W8dExOzePHi2NhYP/UIaFaNGjWWLFnSqVMnV0lM\nTMz06dNvvfXWAEYFuPN9biKujyzL3tcz9R91Ryc3N7dc1qhsbN46u3mLq1ctg1o7v4rf/Mm5\nuwdc7N6j3BvvsOYf80YMZ41KcVxrVK5cuVIlP/WXLl26cOFCzZo1a9aseU2/BZrN5uDg4MzM\nzIyMjP379+t0us6dO1/1hoP5+flnzpwxmUwJCQlGo/E6ApZlOS0tTb3hY40aNa6jBb8KDQ21\nWCwOhyMrK6sCuisoKDhz5ozBYKhfv/71jec1KSoqOnjw4IULF2688cZrPXQTFhYmy3JeXp6f\nYqukIiMj9Xp9fn5+fn5+oGPRlujo6JycHD9dbru8ZGVlpaSkREVF1alTpwLu9qjX6yMjI9V+\nvS8X7g/uPwyhcmH5IICqIDY2tow/ikdFRfk8L8in4OBg98M410Gn08XHx8fHx5elkSojKCio\nefPmFdadyWRKSkqqsO4AjatRo4YGfy4BBKd+AQAAANAgEhUAAAAAmkOiAgAAAEBzSFQAAAAA\naA6JCgAAAADNIVEBAAAAoDkkKgAAAAA0h0QFAAAAgOaQqAAAAADQHBIVAAAAAJoTgETFmvba\nPffcMzcl9zremzxk4JSNp9XHh/7+eP+BIz/5Kas8gwMAAACgAYZAB3CdCjO/mbMlbdizywe0\nqhHoWAAAAACUs8p66tdPH+/pO2nJqJtqBjoQAAAAAOVPK0dUFNkpdHqp1PU7jH26Q0ADqGL0\nQjT8+kvl+/3+7cZqlevE1f7lWO3Uc+XetuHsmXJvEwAAAIES4ERl2ehhv/aac0fR+29/fiBf\nMcXWbdh3+KNDujVQX1Xk/K3/fGPzV/svWB21G7Ue+tDjrjde/n762Bk/rPtkU7BOTS6UfZ/8\n/ZOv9/96LieuRaeHH+s/ddzkYW+uu69msFo/Zd/m1Ru2HDt9UR8S1eKmHveNHd4g2HDVAIRS\ntOOD1Z99ve/sxSxhCqvfvP3QcQ93jg9x34SMjIyCggLX0+DgYD+NVXF0Op1ery9jI+NHjRp0\n5Uq5xBNATZs21ev1kiQJIXQ6nfoAKp3u98Oner1eUZTABqMp6siU/UNUxbg+PoyMB0mSJEli\nWDyoE4aR8alcvqarEtdoVMz3kSzL/u4C/hP4IyoX97z8lqPO/X99qmaQ/at1q9csnFyn3fou\n4SYhxKbZj//jwKU2tw+8p0WdS7/uXfrs40ZZDvXVyC/rp7/03uGb7ho+oX/U2R++mPbXOe6v\npn+78rF5W+rd1O+BR5or2We3bPjo6f8eXfHmrBijruQAjrz1t1c/Pdt94Ki7GtW056R9tf7D\n+U9d/OD9l92PvCxatGjbtm3q48jIyC+++MJPA1WckJCQkJCQq9cr0U033VQuwWhHjRosXvKN\nkfEpMjIy0CFokcFgYGR8slgsgQ5Bi4KCgoKCggIdheaEhYUFOgSNqpiRsVqtFdAL/CTwiYot\n3b7gvRmJFr0Qom0r8c0DS3akF3QJN9kub35rf3ri8Jdmj2othBC392kfNum5D3xc40u2p89e\ndzi+74vTxrcVQogefWqnj1nx0++vKkrRvCX/imo/fum0u9SSXj0S7x/78rzNKQsG1S8hACHE\n4dSQjr2mTRnz+1lmnRodG/3MgXOFzvoWfhoBAAAA/CjwiUpI7QcS/9jvNwQ3FUIosiKEuLh7\npyTpnhzawlWz5ZCJ4oMp3i3kXdyQ7ZQHD2vmKrllfMsVk3arjwsz/3WiwHHLnU1TU1P/eL1+\n5zDT918cE4PqlxCAEGLk9DlCCKE4Mi9fSr+Q+t3mFCGE88+9P/jgg/fcc4/6WKfTZWdnX+dA\nXLuIiAghRH5+vt1uv6Y3FhQUuI1GVSNJUkhISF5eXskHlBMSEkwmU4VFFXBGo1E9LzEnJ4dT\nv9wZjUaLxZKbez0XTK/CgoKCTCaT0+nkx0gPwcHBsizbbLZAB6ItYWFhOp3OZrMVFhYGOhZt\nCQ8Pz8/PdzgcgQ5EQ3Q6nXosxWq1Op3Oq9YvowroAv4T+ETFEBLhs9x2vkDSR9Q1/e/Yhd6S\nWMPg4zJlhZcuCiEaB/2vpim8gRC/Jyr2gl+FEHtmPbXnz+8KNqWXHIAQIvvYV8vf+fjgsTOy\nObx2XFy9Oj7WPDRu3Lhx48bqY1mWMzIyimvNT5xO57UmKocPH54788WGEcVuuJ/kFRVZi+yh\nJmOIPzMESRKSJClKSXvjJzKz5i1Y0KRJE/+FoTWuJQd2u51ExZ1Op1MU5Vo/RFWe2WwWQjAy\n3mRZlmWZYfGg/q/CyPjkcDgYFneuNSoOh4MUDiULfKIihO8Vz8EJwYoz9XyRs84fuYrizLY6\nlRivmqbIMCHEqQJnm2CjWmLPS3G9qjfWFELc99b6YTHFnTjrOwBn4ZmJz75q7jj0pRWzE2uH\nCyFyU+Z+85+LpdsorWsbEzWvaYMK7vTVA/w3AAAUW0lEQVT9s2nLfj09sUmDkQlxFdy1h78e\n/S2wAQAAAKBk2r2PSuzNPRRFXrDxF1fJ2X8tdPj6JTik9tBgvbT9oxOukn1v/uR6HBR9Z7RR\n99W6H1wljoITjz+c/NIXVzn3qTB7Z7ZD7jpuoJqlCCFSd1eRLAUAAADQOC0cUfHNEnXHQzd+\n9Na6qTOyhnRpUffKyf9u3HI+MchHwHpLg+kj2k197/mXjfcmNY46+8O//22rIcRlg3q1RH3k\ntPs7Tn5r7tSiu7u2bR5kT//yg/Wp+fFPd6tdcgDmiO7h+o++XPBm46FdLfacn/dt33I0Uwjx\n7aFjMTe2DK++91wBAAAA/E67R1SEEPdMey15YLeLe7cuf3X5v3/Me2LxkhtCjD5rthz+4ksT\n7kz/butrr735S+ENi6a0FkJEG3/fusYDnp/7+Ehxet/bry9avf5fxhvunrtyXj3zVa7cpTfX\nXzJjQmPHz6+/8tLK9z7NrH37W6+/ckNcxIcvzzyaz8mmAAAAgB9JVWBZrSLn/2v7rugO3W+q\n+fsqlLQdUye89uvbH26INFTocY8KXkwfExMjhMjNzb3Wq6wcPHhwy/Kl1XyNykPPTqtWi+lN\nJlN4eLgQ4sqVK1XgU1+OzGZzcHBwZmZmoAPRltDQUIvF4nA4srJ8XBS+OgsLC5NlOS8vL9CB\naEtkZKRer8/Pz8/Pzw90LNoSHR2dk5PDYnp3er1evUFTVlZWxSymV/eXUBlp+ohKKUm6oO/f\nW71k9tsnL+fKsuPib/uXrjoe3S65grMUAAAAAOVFu2tUroU0+ZWnlyx4Y9LYrUIISTI06dxv\n7pO3BzoqAAAAANepaiQqIqh2p6kLOuVnXUrPKgirGRcdXEW2CwAAAKieqtQOfXCN2AY1Ah0E\nAAAAgDKrCmtUAAAAAFQxJCoAAAAANIdEBQAAAIDmkKgAAAAA0BwSFQAAAACaQ6ICoCqw2+0p\nKSk2m61iunM6nbt27Tp06FDFdCeEOH/+/MGDByvmLs5CiOzs7E2bNp07d65iukO5S09Pv3Ll\nSqCjAIAyqVKXJwZQDaWnp69atWrPnj2yLEuS1LZt20ceeaRBgwZ+6i43N3fy5Mnue/Dt27ef\nPXu2Xq/3U48bNmxYs2ZNUVGR+rRx48YzZsyIjY31U3fffffdnDlzCgsL1ad6vX7MmDFDhw71\nU3coX06nc/Pmze+++25ubq4QIjIycsyYMX/5y190On6XBFD58D8XgErs0qVLEydO/Oabb2RZ\nFkIoinLo0KEnnnji5MmTfupx1KhRHscZDh48+NBDD/mpuxUrVqxevdqVpQghfvvtt3HjxuXn\n5/uju4MHD06fPt2VpQghnE7n6tWr165d64/uUO6WLFnyxhtvWK1W9WlWVtbixYvfeuutwEYF\nANeHRAVAJab+cqwoiqtEURS73b5q1Sp/dPfqq6+65wwuFy5cOHjwYLl3V1RU9Omnn3qXFxYW\nLl68uNy7E0LMnTvXZ/n777/vj+5Qvn755ZcvvvhCCOH6RKgPNm7cmJaWFsjIAOC6kKgAqMS+\n++4770JZlg8dOmS328u9u7179xb30rp168q9u127drnnYO6OHDlS7t0JIXJycnyWO51O9nS1\n78CBAz7LFUUp7iUA0DLWqFRuq1atur5fjpNqxZR7MJVIUWHRY489Fugoqr777rvvvvvu82sX\neXl5PnflFUXJy8urUaNG+Xbnfk6UB3VJQPnKzMws7qUKu2yAS0pKSlxcXAV3imtSwiTMy8ur\nyEgAoFyQqFRuycnJI0eOLGHnyaeDBw9uWb7UTyFVCiazaenSpU2aNAl0IBXHZDKFh4cLIa5c\nuVLcj/SVUc2aNc+dO+e9RRaLRd3e8hUREVHc4pB69eqVe3eJiYklRFLu3QkhJEkqbnq0bNnS\nHz2iHNWuXbu4l2rVqlWRkQBAueDULwCV2O233+5zx7pnz57+uMzRyJEji3vp4YcfLvfu2rdv\nb7FYfL7Uu3fvcu9OCFHc1dKCg4PDwsL80SPKUZcuXYxGoyRJ7oWSJIWEhNx0002BigoArhuJ\nCoBKbNCgQR07dhRCqDtnanLSuHHjBx980B/d9e7du3Hjxt7l/fr1i4qK8kePU6dO9djvFEIk\nJibee++9/uhuwYIFRqPRo1CSpOIW2UNTYmJiHn/8cb1eL0mSOm0kSTIYDE8//XRoaGigowOA\na8apXwAqMaPROHv27B07dnz11Vepqam1a9e++eab77jjDoPBX/+5vf766xs3bly7dq3NZpMk\nKTQ09P/+7//UZMkfkpKS1q5dO2fOnNOnT9vt9oiIiEGDBg0aNMhP3YWEhHzyySfTp08/dOiQ\nw+EwGAzx8fELFy4MCQnxU48oX3/5y19atGixfv36EydO6HS65s2bDxs2jPO+AFRSJCoAKjdJ\nknr16tWrV68K63Hw4MGDBw+usO6io6MXLVpUYd3p9fo5c+aEhoZaLBaHw5GVlVVhXaNcxMfH\nP/nkk4GOAgDKAad+AQAAANAcEhUAAAAAmkOiAgAAAEBzSFQAAAAAaA6JCgAAAADNIVEBAAAA\noDkkKgAAAAA0h0QFAAAAgOaQqAAAAADQHBIVAAAAAJpDogIAAABAc0hUAAAAAGgOiQoAAAAA\nzTEEOgAEhqyIfIezgju1y7L6b8V37UFRlMAGAAAAgJKRqFRHJpPpWI51xPdHK7hfu9MZbDa/\nf/7yh+mZfu1IkqSSUxFFJxmNRr/GAAAAgLIgUamOWrVq9e4HHwQ6Cn+RJCk6OjojI0OW5UDH\nAgAAgOvEGhUAAAAAmkOiAgAAAEBzSFQAAAAAaA6JCgAAAADNIVEBAAAAoDkkKgAAAAA0h0QF\nAAAAgOaQqAAAAADQHBIVAAAAAJpDogIAAABAc0hUAAAAAGgOiQoAAAAAzSFRAQAAAKA5JCoA\nAAAANIdEBQAAAIDmkKgAAAAA0BwSFQAAAACaQ6ICAAAAQHNIVAAAAABoDokKAAAAAM0hUQEA\nAACgOSQqAAAAADSHRAUAAACA5pCoAAAAANAcEhUAAAAAmkOiAgAAAEBzSFQAAAAAaI6kKEqg\nY6g6ZFnOyMiosL5WrFghhOjTp09iYmLFdFopSJJkNpsLCwuZ2+5Onz79+eefCyHGjx9vMpkC\nHY6G6PV6g8FQWFgY6EC0ZdeuXYcPH65Tp86gQYMCHYu2GI1GRVEcDkegA9GWNWvW5OTkdO7c\nuWPHjoGORVvMZrPdbpdlOdCBaEhmZuZ7770nhBg6dGjNmjUroMeYmJgK6AX+YAh0AFWKTqer\nsA+D0+ncvHmzECIpKYlPoLfQ0NBAh6AtR48eVSfM5MmTw8PDAx2O5oSFhQU6BG05fvz45s2b\nb7jhhuTk5EDHgkrgq6++SktLi4uL69OnT6Bjgdbl5uaq30dDhw5lBwYl49QvAAAAAJpDogIA\nAABAc0hUAAAAAGgOi+kBAAAAaA5HVAAAAABoDokKAAAAAM0hUQEAAACgOdxHpVLKPr5z5fvb\nfj72mzG2Qdub+z48oqdBCnRMqHAndm9c+/EXx86mO/UhjW+4dfT4B1rEWoQQtsxtw0Yv96g8\n9d0Pbw77/T6PJcwfplaV5L8pwYSpemxXPhn24Fve5XpzvY83vC6uNp2YMNWK4sjcvuOHPr17\nuBeWZQ7w9QQPJCqVT2H2txP/b7Gz7o2D7nuo4OyBD9e9+mt2jSWPdAh0XKhQ6d+smPLK1uhW\nXYaMGWopOPf5hk3PPnrwpXeWtgg2FGb+KIToP3xksNsR03pmvfqghPnD1Kqq/DQlmDBVkiG4\n+ciRIz0KD3yy4XytTurjEqYTE6a6ufzDGyveOOaeqJRlDvD1BB8UVDa7pj04YPDDvxU41Kd7\nlk24p/+QE388RTXxyn1Dho5ZUij//jT/4pcD77nn0RU/K4py5tMnBwx6sLg3ljB/mFpVlZ+m\nBBOmmsg6vq7/gHv/m1WoPi1hOjFhqg9HQdbP+/41ceiA/gMfcC8vyxzg6wneWKNS2SjOfxzN\nrNFsdCPL77+Gth95pyIXvvtTRmDjQkVSnJn/yS6sd/cA0x8HvoNq9uwWYc74/hchRObBLGPo\nTcW9s9j5w9SquvwyJZgw1YMi57/64oamI164MeL3EwWLnU5MmGqj4NK6QcMf+NvsZWdszj+9\nUJY5wNcTfCFRqWTs+Ycv2511+jZ0lVii+ll00vndlwMYFSqYItvvu+++/l1qupedK3IaQmKF\nECdS8iS9bvmsp0aPHHL/uL/OXPiPE7l2tVIJ84epVYX5Y0owYaqJ05tmH3I0eWFIE1dJcdOJ\nCVN9WKL6LV26dNmyZZM7u38NlWkO8PUEn0hUKhlnwUkhRHCdILcyXZxJbz1tDVRIqHg6Y81h\nw4Z1q/W/aZCyY/HxfHvHMc2EEAesRQWXP0+NbHd/8iN3dW12dPcnzzw6I90uixLnD1OrCvPH\nlGDCVAfOorSX3v35xolPhOj/t2y5uOnEhKk+JH1EQkJCQkJC7RCje3lZ5gBfT/CJxfSVjCxb\nhRDhQXr3wiij7lJhfoAiQoApTuu/31++fMM3NTuNfrxttBBKg263N4/v+sDdbYQQQtzeq715\n7POfL9hy7pX+CSXMH6ZW1eWXKcGEqQ5Ofbggw5C49JZabmXFTqcZNzNhqruy/KfB1xN8IlGp\nZCRdiBAip/BPZ4Vm2GWdMaiYd6AqSz/8xeJX3zx6yXnLkCcm39dTJ4QQUvKECe51Yto+3Dp4\n++mtR0T/hBLmD1Or6vLLlGDCVHmKXLDo41P1hyyy6NyvAlvsdJK6MGGqu7L8p8HXE3zi1K9K\nxhDUWAhRcNHmVqZcsDtD6ocEKiQEyr73X06etuxCdNLzS//xf/f3NBV/RflWIUa56LIocf4w\ntaqVsk8JJkyVl/3r31OLlIfurnfVmup0YsKgLHOAryf4RKJSyRiDW8ea9Be2p7hKCrO+zHcq\ntW+NDWBUqHgpW+fOef+bjsOeenPelBsTwlzltstfrFy58nC+3b3ybzaHqUZDUeL8YWpVVX6a\nEkyYKu/blf+1RN/VKvhPZ16UMJ2YMCjLHODrCT6RqFQ2kmF0i8jMn9aqC2GFEMc//VTSWUa1\niQ5sXKhIipw/Z/V3sTc+9vyoW/V/PpCis0Rt2bJl5buHXSVZv6zZn1vUakQzIUqcP0ytKspf\nU4IJU6Upztx/nsqpc3tPj/KSphMTBmWZA3w9wRf9jBkzAh0Drk3t9rHbPv783z9lRoQoR/6z\nadGGA43umnZvUt1Ax4WKY7uy6R8f/RDdroHtzK8/uzmZWqNFi2ZRZ77+csfWE9mKw3r5h2+2\nLXpts7lh33lju+slSZQ4f5haVZLeFOenKcGEqcIK0te//+nRno+PaRf6p8s6lTydmDDVzeV9\nn395xj5i+EBXSVnmAF9P8CYpihLoGHDNso7teO3NDUdOXTCE1u7ce+iEe3sai1+fgKon89is\n0X/7r3d5eL1n177eWVFsOzf849Mv96VcstaIq9+i/a0Pju4fafjfFClh/jC1qiT/TQkmTFV1\n4p9PPLnx9MoNH9c2eZ55UfJ0YsJUKz+/OmHqzvxPPnrHvbAsc4CvJ3ggUQEAAACgOaxRAQAA\nAKA5JCoAAAAANIdEBQAAAIDmkKgAAAAA0BwSFQAAAACaQ6ICAAAAQHNIVAAAAABoDokKAAAA\nAM0hUQEAAACgOSQqAAAAADSHRAUAAACA5pCoAAAAANAcEhUAQGk92rfntNM5gY4CAFAtkKgA\nQLVTlPut5EWn04VERN9wc9/Zq3coXm/55euPXnjq0Q07dq2Z9NiMJW+ftNoDEDcAoDqRFMX7\n+wgAUJUV5X5rDr/FYGl0V98b/lcqOzLSfv3mwHGnotz85L/2LOitFity/oxhnWduPGwMqW2y\npesb17OdOKsENVm5d++DrSMDswEAgGqARAUAqh01UQmNm5ibutTjpbNfzmv0l2dlneVQTk6b\nYIMQ4sd5XdtO/ab39Hc/fmFk78igWntT35R3d75paEpwr6xLW01SIDYAAFANcOoXAOB/Eno9\n80y9MMVZsPK8VS159dUfLDV6bn3x3mDd70lJZKv+655pU3Bl2z8u5AUuUgBAFWcIdAAAAG1p\nH2pyf3okz24Mb+vxs1aLifPfrp/SPNRYkYEBAKoVjqgAANwp76fnSzrzfTWD1ee3RwflXfj7\nhpO57pUsUT1Hjx6dFGby1QIAAOWARAUAIIQQQnFmph5bPqXXxsv57ca92/mPJGTCigdkp/Xe\nli0fmbb4ikO2Wx2BDRMAUE2wmB4Aqh11MX1xrw6e/eH65wbr3Uq+Wz31gb8t/iWjUAgh6cw3\n3HrH8PvHTRl7h5mV9AAAvyFRAYBqx/fliYWcc/G3r/YeNYY1e+PbPQ+2/NOlhxWndc+2TaOG\njMlr09x64CebrMTd+sjRr5ZH6ElWAAB+QaICANVOCZcnPvrxhFaD3ohq9sqVY097v7FrhKXW\n3tQ1EWeeHztg0b9Sui47+p+/tqiQkAEA1Q5rVAAA/9Ny4Io2Icbcs39Xn8r2Czt37vzhfIF7\nneC4Dq988pVeko4u+28gYgQAVAskKgCAP2kfanIUnpGFEEIUZu287bbbRr/6k0cdvaVxrFEn\nCY7JAwD8hUQFAPAndkVR5KL0IlkIYYn8Sw2D7syG9R51so4vulDkTBh2g68GAAAoByQqAIA/\naRJkEEJsvJQvhJAMUf+8r2n2yQXd/7r4h9NZQghFcR7fteauW6YZLPWXPdkqwLECAKouEhUA\nwJ/06R0nhHhxwAvq0zv//p/nh970nxVPdmgUtTe36NP2cc26P/C9ocmyL/beEs4NHwEA/sJV\nvwAAV3fx2Lfbdu2f/sSUiMdmPtet6113dA3RcWFiAIAfkagAAEpLvTzxxhbRgQ4EAFD1GQId\nAACg0uj/0PjwSEugowAAVAscUQEAAACgOSymBwAAAKA5JCoAAAAANIdEBQAAAIDmkKgAAAAA\n0Jz/B/kVGjonUFcsAAAAAElFTkSuQmCC"
     },
     "metadata": {
      "image/png": {
       "height": 360,
       "width": 540
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "ggplot(data = dados[dados$Renda < 10000,], aes(x = Cat.Cor, y= Renda, fill = Cat.Sexo))+\n",
    "    geom_boxplot(size=0.2)+\n",
    "    coord_flip()+\n",
    "    ylab(\"R$\")+\n",
    "    xlab(\"Cor\")+\n",
    "    guides(fill = guide_legend(title = 'Sexo'))+\n",
    "    ggtitle('Box-plot da Renda por Sexo e Cor')+\n",
    "    formatos"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "9eedea8b",
   "metadata": {
    "id": "ROiIQRFhTg2o",
    "papermill": {
     "duration": 0.030959,
     "end_time": "2024-05-04T17:16:50.775229",
     "exception": false,
     "start_time": "2024-05-04T17:16:50.744270",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "> ### Conclusões\n",
    "\n",
    "Escreva suas conclusões aqui..."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "61df2629",
   "metadata": {
    "id": "zi4BaGooTg2o",
    "papermill": {
     "duration": 0.030649,
     "end_time": "2024-05-04T17:16:50.836789",
     "exception": false,
     "start_time": "2024-05-04T17:16:50.806140",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Qual percentual de pessoas de nosso <i>dataset</i> ganham um salário mínimo (R$ 788,00) ou menos?"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 35,
   "id": "639a3ff0",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-04T17:16:50.903983Z",
     "iopub.status.busy": "2024-05-04T17:16:50.901942Z",
     "iopub.status.idle": "2024-05-04T17:16:50.923739Z",
     "shell.execute_reply": "2024-05-04T17:16:50.921489Z"
    },
    "papermill": {
     "duration": 0.059546,
     "end_time": "2024-05-04T17:16:50.926785",
     "exception": false,
     "start_time": "2024-05-04T17:16:50.867239",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "28.8677771993753"
      ],
      "text/latex": [
       "28.8677771993753"
      ],
      "text/markdown": [
       "28.8677771993753"
      ],
      "text/plain": [
       "[1] 28.86778"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "length(dados$Renda[dados$Renda <= 788]) / length(dados$Renda) * 100"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "157148f6",
   "metadata": {
    "id": "bl0fOMuKTg2q",
    "papermill": {
     "duration": 0.031327,
     "end_time": "2024-05-04T17:16:50.989104",
     "exception": false,
     "start_time": "2024-05-04T17:16:50.957777",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Qual o valor máximo ganho por 99% das pessoas de nosso <i>dataset</i>?\n",
    "#### <font color='red'>Utilize o método *quantile()* para realizar esta análise.</font>"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 36,
   "id": "a3550e34",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-04T17:16:51.058203Z",
     "iopub.status.busy": "2024-05-04T17:16:51.056061Z",
     "iopub.status.idle": "2024-05-04T17:16:51.078757Z",
     "shell.execute_reply": "2024-05-04T17:16:51.076445Z"
    },
    "id": "cIVwy8bKTg2q",
    "outputId": "25876a34-9f9c-4497-f187-96f7af03dfef",
    "papermill": {
     "duration": 0.060807,
     "end_time": "2024-05-04T17:16:51.082571",
     "exception": false,
     "start_time": "2024-05-04T17:16:51.021764",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<strong>99%:</strong> 15000"
      ],
      "text/latex": [
       "\\textbf{99\\textbackslash{}\\%:} 15000"
      ],
      "text/markdown": [
       "**99%:** 15000"
      ],
      "text/plain": [
       "  99% \n",
       "15000 "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "quantile(dados$Renda, .99)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "8876c621",
   "metadata": {
    "id": "zeRhvtngTg2r",
    "papermill": {
     "duration": 0.030983,
     "end_time": "2024-05-04T17:16:51.144817",
     "exception": false,
     "start_time": "2024-05-04T17:16:51.113834",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Obtenha a média, mediana, valor máximo e desvio-padrão da variável RENDA segundo ANOS DE ESTUDO e SEXO\n",
    "#### <font color='blue'>Destaque os pontos mais importante que você observa nas tabulações</font>"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 37,
   "id": "eff96b2d",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-04T17:16:51.213910Z",
     "iopub.status.busy": "2024-05-04T17:16:51.212047Z",
     "iopub.status.idle": "2024-05-04T17:16:51.253356Z",
     "shell.execute_reply": "2024-05-04T17:16:51.250483Z"
    },
    "papermill": {
     "duration": 0.078855,
     "end_time": "2024-05-04T17:16:51.256903",
     "exception": false,
     "start_time": "2024-05-04T17:16:51.178048",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A matrix: 17 × 2 of type dbl</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>Masculino</th><th scope=col>Feminino</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>Sem instrução e menos de 1 ano</th><td> 799.4946</td><td> 516.2017</td></tr>\n",
       "\t<tr><th scope=row>1 ano</th><td> 895.6290</td><td> 492.7720</td></tr>\n",
       "\t<tr><th scope=row>2 anos</th><td> 931.1790</td><td> 529.9116</td></tr>\n",
       "\t<tr><th scope=row>3 anos</th><td>1109.2039</td><td> 546.8539</td></tr>\n",
       "\t<tr><th scope=row>4 anos</th><td>1302.3293</td><td> 704.2791</td></tr>\n",
       "\t<tr><th scope=row>5 anos</th><td>1338.6532</td><td> 781.3898</td></tr>\n",
       "\t<tr><th scope=row>6 anos</th><td>1448.8754</td><td> 833.7328</td></tr>\n",
       "\t<tr><th scope=row>7 anos</th><td>1465.4979</td><td> 830.7510</td></tr>\n",
       "\t<tr><th scope=row>8 anos</th><td>1639.3967</td><td> 933.6154</td></tr>\n",
       "\t<tr><th scope=row>9 anos</th><td>1508.0389</td><td> 868.0217</td></tr>\n",
       "\t<tr><th scope=row>10 anos</th><td>1731.2708</td><td> 925.9192</td></tr>\n",
       "\t<tr><th scope=row>11 anos</th><td>2117.0605</td><td>1286.7909</td></tr>\n",
       "\t<tr><th scope=row>12 anos</th><td>2470.3308</td><td>1682.3137</td></tr>\n",
       "\t<tr><th scope=row>13 anos</th><td>3195.0992</td><td>1911.7300</td></tr>\n",
       "\t<tr><th scope=row>14 anos</th><td>3706.6203</td><td>2226.4605</td></tr>\n",
       "\t<tr><th scope=row>15 anos ou mais</th><td>6134.2798</td><td>3899.5132</td></tr>\n",
       "\t<tr><th scope=row>Não determinados</th><td>1295.7619</td><td> 798.1744</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A matrix: 17 × 2 of type dbl\n",
       "\\begin{tabular}{r|ll}\n",
       "  & Masculino & Feminino\\\\\n",
       "\\hline\n",
       "\tSem instrução e menos de 1 ano &  799.4946 &  516.2017\\\\\n",
       "\t1 ano &  895.6290 &  492.7720\\\\\n",
       "\t2 anos &  931.1790 &  529.9116\\\\\n",
       "\t3 anos & 1109.2039 &  546.8539\\\\\n",
       "\t4 anos & 1302.3293 &  704.2791\\\\\n",
       "\t5 anos & 1338.6532 &  781.3898\\\\\n",
       "\t6 anos & 1448.8754 &  833.7328\\\\\n",
       "\t7 anos & 1465.4979 &  830.7510\\\\\n",
       "\t8 anos & 1639.3967 &  933.6154\\\\\n",
       "\t9 anos & 1508.0389 &  868.0217\\\\\n",
       "\t10 anos & 1731.2708 &  925.9192\\\\\n",
       "\t11 anos & 2117.0605 & 1286.7909\\\\\n",
       "\t12 anos & 2470.3308 & 1682.3137\\\\\n",
       "\t13 anos & 3195.0992 & 1911.7300\\\\\n",
       "\t14 anos & 3706.6203 & 2226.4605\\\\\n",
       "\t15 anos ou mais & 6134.2798 & 3899.5132\\\\\n",
       "\tNão determinados & 1295.7619 &  798.1744\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A matrix: 17 × 2 of type dbl\n",
       "\n",
       "| <!--/--> | Masculino | Feminino |\n",
       "|---|---|---|\n",
       "| Sem instrução e menos de 1 ano |  799.4946 |  516.2017 |\n",
       "| 1 ano |  895.6290 |  492.7720 |\n",
       "| 2 anos |  931.1790 |  529.9116 |\n",
       "| 3 anos | 1109.2039 |  546.8539 |\n",
       "| 4 anos | 1302.3293 |  704.2791 |\n",
       "| 5 anos | 1338.6532 |  781.3898 |\n",
       "| 6 anos | 1448.8754 |  833.7328 |\n",
       "| 7 anos | 1465.4979 |  830.7510 |\n",
       "| 8 anos | 1639.3967 |  933.6154 |\n",
       "| 9 anos | 1508.0389 |  868.0217 |\n",
       "| 10 anos | 1731.2708 |  925.9192 |\n",
       "| 11 anos | 2117.0605 | 1286.7909 |\n",
       "| 12 anos | 2470.3308 | 1682.3137 |\n",
       "| 13 anos | 3195.0992 | 1911.7300 |\n",
       "| 14 anos | 3706.6203 | 2226.4605 |\n",
       "| 15 anos ou mais | 6134.2798 | 3899.5132 |\n",
       "| Não determinados | 1295.7619 |  798.1744 |\n",
       "\n"
      ],
      "text/plain": [
       "                               Masculino Feminino \n",
       "Sem instrução e menos de 1 ano  799.4946  516.2017\n",
       "1 ano                           895.6290  492.7720\n",
       "2 anos                          931.1790  529.9116\n",
       "3 anos                         1109.2039  546.8539\n",
       "4 anos                         1302.3293  704.2791\n",
       "5 anos                         1338.6532  781.3898\n",
       "6 anos                         1448.8754  833.7328\n",
       "7 anos                         1465.4979  830.7510\n",
       "8 anos                         1639.3967  933.6154\n",
       "9 anos                         1508.0389  868.0217\n",
       "10 anos                        1731.2708  925.9192\n",
       "11 anos                        2117.0605 1286.7909\n",
       "12 anos                        2470.3308 1682.3137\n",
       "13 anos                        3195.0992 1911.7300\n",
       "14 anos                        3706.6203 2226.4605\n",
       "15 anos ou mais                6134.2798 3899.5132\n",
       "Não determinados               1295.7619  798.1744"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "medias <- tapply(dados$Renda, list(dados$Cat.Anos.de.Estudo, dados$Cat.Sexo), mean)\n",
    "medias"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 38,
   "id": "cade6e40",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-04T17:16:51.324751Z",
     "iopub.status.busy": "2024-05-04T17:16:51.322656Z",
     "iopub.status.idle": "2024-05-04T17:16:51.371237Z",
     "shell.execute_reply": "2024-05-04T17:16:51.368277Z"
    },
    "papermill": {
     "duration": 0.086244,
     "end_time": "2024-05-04T17:16:51.374509",
     "exception": false,
     "start_time": "2024-05-04T17:16:51.288265",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A matrix: 17 × 2 of type dbl</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>Masculino</th><th scope=col>Feminino</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>Sem instrução e menos de 1 ano</th><td> 700</td><td> 390</td></tr>\n",
       "\t<tr><th scope=row>1 ano</th><td> 788</td><td> 400</td></tr>\n",
       "\t<tr><th scope=row>2 anos</th><td> 788</td><td> 450</td></tr>\n",
       "\t<tr><th scope=row>3 anos</th><td> 800</td><td> 500</td></tr>\n",
       "\t<tr><th scope=row>4 anos</th><td>1000</td><td> 788</td></tr>\n",
       "\t<tr><th scope=row>5 anos</th><td>1045</td><td> 788</td></tr>\n",
       "\t<tr><th scope=row>6 anos</th><td>1200</td><td> 788</td></tr>\n",
       "\t<tr><th scope=row>7 anos</th><td>1200</td><td> 788</td></tr>\n",
       "\t<tr><th scope=row>8 anos</th><td>1300</td><td> 800</td></tr>\n",
       "\t<tr><th scope=row>9 anos</th><td>1200</td><td> 788</td></tr>\n",
       "\t<tr><th scope=row>10 anos</th><td>1218</td><td> 800</td></tr>\n",
       "\t<tr><th scope=row>11 anos</th><td>1500</td><td>1000</td></tr>\n",
       "\t<tr><th scope=row>12 anos</th><td>1800</td><td>1200</td></tr>\n",
       "\t<tr><th scope=row>13 anos</th><td>2400</td><td>1300</td></tr>\n",
       "\t<tr><th scope=row>14 anos</th><td>2500</td><td>1600</td></tr>\n",
       "\t<tr><th scope=row>15 anos ou mais</th><td>4000</td><td>2800</td></tr>\n",
       "\t<tr><th scope=row>Não determinados</th><td>1200</td><td> 788</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A matrix: 17 × 2 of type dbl\n",
       "\\begin{tabular}{r|ll}\n",
       "  & Masculino & Feminino\\\\\n",
       "\\hline\n",
       "\tSem instrução e menos de 1 ano &  700 &  390\\\\\n",
       "\t1 ano &  788 &  400\\\\\n",
       "\t2 anos &  788 &  450\\\\\n",
       "\t3 anos &  800 &  500\\\\\n",
       "\t4 anos & 1000 &  788\\\\\n",
       "\t5 anos & 1045 &  788\\\\\n",
       "\t6 anos & 1200 &  788\\\\\n",
       "\t7 anos & 1200 &  788\\\\\n",
       "\t8 anos & 1300 &  800\\\\\n",
       "\t9 anos & 1200 &  788\\\\\n",
       "\t10 anos & 1218 &  800\\\\\n",
       "\t11 anos & 1500 & 1000\\\\\n",
       "\t12 anos & 1800 & 1200\\\\\n",
       "\t13 anos & 2400 & 1300\\\\\n",
       "\t14 anos & 2500 & 1600\\\\\n",
       "\t15 anos ou mais & 4000 & 2800\\\\\n",
       "\tNão determinados & 1200 &  788\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A matrix: 17 × 2 of type dbl\n",
       "\n",
       "| <!--/--> | Masculino | Feminino |\n",
       "|---|---|---|\n",
       "| Sem instrução e menos de 1 ano |  700 |  390 |\n",
       "| 1 ano |  788 |  400 |\n",
       "| 2 anos |  788 |  450 |\n",
       "| 3 anos |  800 |  500 |\n",
       "| 4 anos | 1000 |  788 |\n",
       "| 5 anos | 1045 |  788 |\n",
       "| 6 anos | 1200 |  788 |\n",
       "| 7 anos | 1200 |  788 |\n",
       "| 8 anos | 1300 |  800 |\n",
       "| 9 anos | 1200 |  788 |\n",
       "| 10 anos | 1218 |  800 |\n",
       "| 11 anos | 1500 | 1000 |\n",
       "| 12 anos | 1800 | 1200 |\n",
       "| 13 anos | 2400 | 1300 |\n",
       "| 14 anos | 2500 | 1600 |\n",
       "| 15 anos ou mais | 4000 | 2800 |\n",
       "| Não determinados | 1200 |  788 |\n",
       "\n"
      ],
      "text/plain": [
       "                               Masculino Feminino\n",
       "Sem instrução e menos de 1 ano  700       390    \n",
       "1 ano                           788       400    \n",
       "2 anos                          788       450    \n",
       "3 anos                          800       500    \n",
       "4 anos                         1000       788    \n",
       "5 anos                         1045       788    \n",
       "6 anos                         1200       788    \n",
       "7 anos                         1200       788    \n",
       "8 anos                         1300       800    \n",
       "9 anos                         1200       788    \n",
       "10 anos                        1218       800    \n",
       "11 anos                        1500      1000    \n",
       "12 anos                        1800      1200    \n",
       "13 anos                        2400      1300    \n",
       "14 anos                        2500      1600    \n",
       "15 anos ou mais                4000      2800    \n",
       "Não determinados               1200       788    "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "medianas <- tapply(dados$Renda, list(dados$Cat.Anos.de.Estudo, dados$Cat.Sexo), median)\n",
    "medianas"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 39,
   "id": "19c650f1",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-04T17:16:51.442414Z",
     "iopub.status.busy": "2024-05-04T17:16:51.440410Z",
     "iopub.status.idle": "2024-05-04T17:16:51.479363Z",
     "shell.execute_reply": "2024-05-04T17:16:51.477214Z"
    },
    "papermill": {
     "duration": 0.076202,
     "end_time": "2024-05-04T17:16:51.482327",
     "exception": false,
     "start_time": "2024-05-04T17:16:51.406125",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A matrix: 17 × 2 of type int</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>Masculino</th><th scope=col>Feminino</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>Sem instrução e menos de 1 ano</th><td> 30000</td><td> 10000</td></tr>\n",
       "\t<tr><th scope=row>1 ano</th><td> 30000</td><td>  2000</td></tr>\n",
       "\t<tr><th scope=row>2 anos</th><td> 40000</td><td>  4000</td></tr>\n",
       "\t<tr><th scope=row>3 anos</th><td> 80000</td><td>  3500</td></tr>\n",
       "\t<tr><th scope=row>4 anos</th><td> 50000</td><td> 10000</td></tr>\n",
       "\t<tr><th scope=row>5 anos</th><td> 35000</td><td>  8000</td></tr>\n",
       "\t<tr><th scope=row>6 anos</th><td> 25000</td><td>  6000</td></tr>\n",
       "\t<tr><th scope=row>7 anos</th><td> 40000</td><td>  9000</td></tr>\n",
       "\t<tr><th scope=row>8 anos</th><td> 30000</td><td> 18000</td></tr>\n",
       "\t<tr><th scope=row>9 anos</th><td> 60000</td><td> 20000</td></tr>\n",
       "\t<tr><th scope=row>10 anos</th><td> 45000</td><td>  6000</td></tr>\n",
       "\t<tr><th scope=row>11 anos</th><td>200000</td><td>100000</td></tr>\n",
       "\t<tr><th scope=row>12 anos</th><td> 30000</td><td>120000</td></tr>\n",
       "\t<tr><th scope=row>13 anos</th><td> 25000</td><td> 20000</td></tr>\n",
       "\t<tr><th scope=row>14 anos</th><td> 50000</td><td> 20000</td></tr>\n",
       "\t<tr><th scope=row>15 anos ou mais</th><td>200000</td><td>100000</td></tr>\n",
       "\t<tr><th scope=row>Não determinados</th><td>  7000</td><td>  3000</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A matrix: 17 × 2 of type int\n",
       "\\begin{tabular}{r|ll}\n",
       "  & Masculino & Feminino\\\\\n",
       "\\hline\n",
       "\tSem instrução e menos de 1 ano &  30000 &  10000\\\\\n",
       "\t1 ano &  30000 &   2000\\\\\n",
       "\t2 anos &  40000 &   4000\\\\\n",
       "\t3 anos &  80000 &   3500\\\\\n",
       "\t4 anos &  50000 &  10000\\\\\n",
       "\t5 anos &  35000 &   8000\\\\\n",
       "\t6 anos &  25000 &   6000\\\\\n",
       "\t7 anos &  40000 &   9000\\\\\n",
       "\t8 anos &  30000 &  18000\\\\\n",
       "\t9 anos &  60000 &  20000\\\\\n",
       "\t10 anos &  45000 &   6000\\\\\n",
       "\t11 anos & 200000 & 100000\\\\\n",
       "\t12 anos &  30000 & 120000\\\\\n",
       "\t13 anos &  25000 &  20000\\\\\n",
       "\t14 anos &  50000 &  20000\\\\\n",
       "\t15 anos ou mais & 200000 & 100000\\\\\n",
       "\tNão determinados &   7000 &   3000\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A matrix: 17 × 2 of type int\n",
       "\n",
       "| <!--/--> | Masculino | Feminino |\n",
       "|---|---|---|\n",
       "| Sem instrução e menos de 1 ano |  30000 |  10000 |\n",
       "| 1 ano |  30000 |   2000 |\n",
       "| 2 anos |  40000 |   4000 |\n",
       "| 3 anos |  80000 |   3500 |\n",
       "| 4 anos |  50000 |  10000 |\n",
       "| 5 anos |  35000 |   8000 |\n",
       "| 6 anos |  25000 |   6000 |\n",
       "| 7 anos |  40000 |   9000 |\n",
       "| 8 anos |  30000 |  18000 |\n",
       "| 9 anos |  60000 |  20000 |\n",
       "| 10 anos |  45000 |   6000 |\n",
       "| 11 anos | 200000 | 100000 |\n",
       "| 12 anos |  30000 | 120000 |\n",
       "| 13 anos |  25000 |  20000 |\n",
       "| 14 anos |  50000 |  20000 |\n",
       "| 15 anos ou mais | 200000 | 100000 |\n",
       "| Não determinados |   7000 |   3000 |\n",
       "\n"
      ],
      "text/plain": [
       "                               Masculino Feminino\n",
       "Sem instrução e menos de 1 ano  30000     10000  \n",
       "1 ano                           30000      2000  \n",
       "2 anos                          40000      4000  \n",
       "3 anos                          80000      3500  \n",
       "4 anos                          50000     10000  \n",
       "5 anos                          35000      8000  \n",
       "6 anos                          25000      6000  \n",
       "7 anos                          40000      9000  \n",
       "8 anos                          30000     18000  \n",
       "9 anos                          60000     20000  \n",
       "10 anos                         45000      6000  \n",
       "11 anos                        200000    100000  \n",
       "12 anos                         30000    120000  \n",
       "13 anos                         25000     20000  \n",
       "14 anos                         50000     20000  \n",
       "15 anos ou mais                200000    100000  \n",
       "Não determinados                 7000      3000  "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "maximo <- tapply(dados$Renda, list(dados$Cat.Anos.de.Estudo, dados$Cat.Sexo), max)\n",
    "maximo"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 40,
   "id": "50ce210a",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-04T17:16:51.551399Z",
     "iopub.status.busy": "2024-05-04T17:16:51.549534Z",
     "iopub.status.idle": "2024-05-04T17:16:51.599338Z",
     "shell.execute_reply": "2024-05-04T17:16:51.596377Z"
    },
    "papermill": {
     "duration": 0.088088,
     "end_time": "2024-05-04T17:16:51.602935",
     "exception": false,
     "start_time": "2024-05-04T17:16:51.514847",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A matrix: 17 × 2 of type dbl</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>Masculino</th><th scope=col>Feminino</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>Sem instrução e menos de 1 ano</th><td>1023.9049</td><td> 639.3115</td></tr>\n",
       "\t<tr><th scope=row>1 ano</th><td>1331.9506</td><td> 425.2918</td></tr>\n",
       "\t<tr><th scope=row>2 anos</th><td>1435.1738</td><td> 498.2342</td></tr>\n",
       "\t<tr><th scope=row>3 anos</th><td>2143.8001</td><td> 424.1244</td></tr>\n",
       "\t<tr><th scope=row>4 anos</th><td>1419.8218</td><td> 629.5534</td></tr>\n",
       "\t<tr><th scope=row>5 anos</th><td>1484.6506</td><td> 635.7826</td></tr>\n",
       "\t<tr><th scope=row>6 anos</th><td>1476.6286</td><td> 574.5470</td></tr>\n",
       "\t<tr><th scope=row>7 anos</th><td>1419.7087</td><td> 602.0380</td></tr>\n",
       "\t<tr><th scope=row>8 anos</th><td>1515.5837</td><td> 896.7812</td></tr>\n",
       "\t<tr><th scope=row>9 anos</th><td>2137.6648</td><td> 973.2217</td></tr>\n",
       "\t<tr><th scope=row>10 anos</th><td>2078.6097</td><td> 620.6119</td></tr>\n",
       "\t<tr><th scope=row>11 anos</th><td>2676.5389</td><td>1819.0404</td></tr>\n",
       "\t<tr><th scope=row>12 anos</th><td>2268.0815</td><td>4851.8335</td></tr>\n",
       "\t<tr><th scope=row>13 anos</th><td>2797.1168</td><td>2053.7898</td></tr>\n",
       "\t<tr><th scope=row>14 anos</th><td>3987.2150</td><td>2064.0833</td></tr>\n",
       "\t<tr><th scope=row>15 anos ou mais</th><td>7447.6136</td><td>4212.7707</td></tr>\n",
       "\t<tr><th scope=row>Não determinados</th><td> 979.6487</td><td> 459.9860</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A matrix: 17 × 2 of type dbl\n",
       "\\begin{tabular}{r|ll}\n",
       "  & Masculino & Feminino\\\\\n",
       "\\hline\n",
       "\tSem instrução e menos de 1 ano & 1023.9049 &  639.3115\\\\\n",
       "\t1 ano & 1331.9506 &  425.2918\\\\\n",
       "\t2 anos & 1435.1738 &  498.2342\\\\\n",
       "\t3 anos & 2143.8001 &  424.1244\\\\\n",
       "\t4 anos & 1419.8218 &  629.5534\\\\\n",
       "\t5 anos & 1484.6506 &  635.7826\\\\\n",
       "\t6 anos & 1476.6286 &  574.5470\\\\\n",
       "\t7 anos & 1419.7087 &  602.0380\\\\\n",
       "\t8 anos & 1515.5837 &  896.7812\\\\\n",
       "\t9 anos & 2137.6648 &  973.2217\\\\\n",
       "\t10 anos & 2078.6097 &  620.6119\\\\\n",
       "\t11 anos & 2676.5389 & 1819.0404\\\\\n",
       "\t12 anos & 2268.0815 & 4851.8335\\\\\n",
       "\t13 anos & 2797.1168 & 2053.7898\\\\\n",
       "\t14 anos & 3987.2150 & 2064.0833\\\\\n",
       "\t15 anos ou mais & 7447.6136 & 4212.7707\\\\\n",
       "\tNão determinados &  979.6487 &  459.9860\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A matrix: 17 × 2 of type dbl\n",
       "\n",
       "| <!--/--> | Masculino | Feminino |\n",
       "|---|---|---|\n",
       "| Sem instrução e menos de 1 ano | 1023.9049 |  639.3115 |\n",
       "| 1 ano | 1331.9506 |  425.2918 |\n",
       "| 2 anos | 1435.1738 |  498.2342 |\n",
       "| 3 anos | 2143.8001 |  424.1244 |\n",
       "| 4 anos | 1419.8218 |  629.5534 |\n",
       "| 5 anos | 1484.6506 |  635.7826 |\n",
       "| 6 anos | 1476.6286 |  574.5470 |\n",
       "| 7 anos | 1419.7087 |  602.0380 |\n",
       "| 8 anos | 1515.5837 |  896.7812 |\n",
       "| 9 anos | 2137.6648 |  973.2217 |\n",
       "| 10 anos | 2078.6097 |  620.6119 |\n",
       "| 11 anos | 2676.5389 | 1819.0404 |\n",
       "| 12 anos | 2268.0815 | 4851.8335 |\n",
       "| 13 anos | 2797.1168 | 2053.7898 |\n",
       "| 14 anos | 3987.2150 | 2064.0833 |\n",
       "| 15 anos ou mais | 7447.6136 | 4212.7707 |\n",
       "| Não determinados |  979.6487 |  459.9860 |\n",
       "\n"
      ],
      "text/plain": [
       "                               Masculino Feminino \n",
       "Sem instrução e menos de 1 ano 1023.9049  639.3115\n",
       "1 ano                          1331.9506  425.2918\n",
       "2 anos                         1435.1738  498.2342\n",
       "3 anos                         2143.8001  424.1244\n",
       "4 anos                         1419.8218  629.5534\n",
       "5 anos                         1484.6506  635.7826\n",
       "6 anos                         1476.6286  574.5470\n",
       "7 anos                         1419.7087  602.0380\n",
       "8 anos                         1515.5837  896.7812\n",
       "9 anos                         2137.6648  973.2217\n",
       "10 anos                        2078.6097  620.6119\n",
       "11 anos                        2676.5389 1819.0404\n",
       "12 anos                        2268.0815 4851.8335\n",
       "13 anos                        2797.1168 2053.7898\n",
       "14 anos                        3987.2150 2064.0833\n",
       "15 anos ou mais                7447.6136 4212.7707\n",
       "Não determinados                979.6487  459.9860"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "desvio_padrao <- tapply(dados$Renda, list(dados$Cat.Anos.de.Estudo, dados$Cat.Sexo), sd)\n",
    "desvio_padrao"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "9156b82f",
   "metadata": {
    "id": "1Rm1n7a_Tg2u",
    "papermill": {
     "duration": 0.033156,
     "end_time": "2024-05-04T17:16:51.673028",
     "exception": false,
     "start_time": "2024-05-04T17:16:51.639872",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Construa um box plot da variável RENDA segundo ANOS DE ESTUDO e SEXO\n",
    "#### <font color='blue'>É possível verificar algum comportamento diferenciado no rendimento entre os grupos de pessoas analisados? Avalie o gráfico e destaque os pontos mais importantes.</font>\n",
    "#### <font color='red'>1º - Utilize somente as informações de pessoas com renda abaixo de R$ 10.000</font>\n",
    "#### <font color='red'>2º - Para incluir uma terceira variável na construção de um boxplot utilize o parâmetro *fill* da seguinte maneira: *aes(x = Anos.de.Estudo, y = Renda, fill = Sexo)*.</font>"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 41,
   "id": "bf15c8b4",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-04T17:16:51.745129Z",
     "iopub.status.busy": "2024-05-04T17:16:51.742889Z",
     "iopub.status.idle": "2024-05-04T17:16:53.243436Z",
     "shell.execute_reply": "2024-05-04T17:16:53.241147Z"
    },
    "papermill": {
     "duration": 1.541449,
     "end_time": "2024-05-04T17:16:53.248381",
     "exception": false,
     "start_time": "2024-05-04T17:16:51.706932",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "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\nXz+uX79ebR6ZTFZSUvLXX39pORfix48fz507p1zIx48fz58/P2XKFJV7xcTEqPzijhw50r17\nd22OCz5nEKgAIyEoTkIIZV2OVZiu2MLVRTlQobHctq6auf3guR2Rt80cmrXrHrR/ts/6OQtP\nbVztdehPzQdqF7J+hfWh45fjd8efp5vatu09Zsq0seY0DHG8f1/7/Y4/z8ce2CmQ4rbO7kOm\nLP5meK1WEQEAgBqJjIysze5cLldloHLq1Cl1u9Rmcr+8vDx1bynERRKJJD09XXmANUEQXC5X\nIZHL5ZKzfisXm5ycrE2gwuVyyaWEqs1J2r17t8qmIUPJysrScl4EHMeVP0B10tPTVY46w3E8\nOVnt2spcLlflF/fu3TuRSETOdgCAOhCogMaq9Zyd5+b876V1qwi5Ja2rZ/fFgFVbPukgu3bX\n/4coXQ7FyqfTmE3jPika6xw0pXPQFOUyrX36Lt9g+BEp0dHRtVwwu0ExYxnDNFz1j8/nK3cB\nAo3IpEmTJk2aVNO9ajmRoLq7W5FIVJti1dEwklvhLQ1rvJBrbsjn1xBgaDm7Q02nnGpoI79r\nVB/tT1bdp0cQhIa4SEP5RjbLHKgLEKgAYGzCwsJCQkIa/qxEWho3cqShq9AocTicq+qfgtcD\ncmV645v1y9TUlOwwY+i6qLZw4cLJkyfrvLunp6fK9L59+z5//lzlW6xaPEqwsLBQN7ZBYSIp\nBoPh5OSUl5enEK5gGObh4aEQ1Xh6eqqLatSdoAIPD48HDx5ok5M0ZswY7TPXg2bNmqlrU1Ig\nk8k8PDy0LJb8qJWLJQhCwwfr6emZkpKiEK5gGGZvb6+XKeyBcYPB9AAAAICRsLe3123CWQzD\nWrRo4ePjo/Ldvn37qpuCtjZx0c6dO1XWFsOw8PBwhcTg4GCVt8gjRoxQSOzTp4+ZmZlChTEM\na9WqVcuWWnXHHThwIJPJ1H7ZwYbWekmn0xXG7ahETges/exbVlZWvXv3VkjEMIxOpwcFBanb\na8SIESq7fo2Eh1BACxCoAAAAAMZj37592mRTiBBatWq1du1aDbfmUVFRykFF27ZttRyHrZKV\nldVXX32lXKyHh0fPnj0VEocMGTJu3Dj5CZTpdHpoaGhgYKBCTnNz89WrV9vZ2ckntmzZcvny\n5VpGcfb29itXrrS0/GRBrY4dO5KrlyjYtGmTNmXWs9WrVys3lVhZWSm8XLlypcIHpdmPP/7o\n7+8vn2JmZrZs2bKmTZuq26VXr15Tpkyh0//XhQfH8dGjRw8dOlT744LPllYtgwCAulAXCz5a\nW1vTaDQ+n29MXb/O+vnWw4KP299mfG9ECz5+n5y5589qZoaoU9D1y7AmTpxIVbJz585r1qx5\n/Pjx7du3c3JyGAyGn59ft27dXr9+nZ6eTqfTW7duPWDAAKFQWO2CjytXrnz9+rVIJLKxsQkP\nD2/VqlXtq1pWVhYaGioUCsln87/99puGzkhZWVn//vtvUVGRo6Nj165dnZyc1OUUi8V3797N\nzs5mMpkeHh5ffvllTdua+Hx+fHx8RkaGqampj48POa/X1atXd+zYIRaLcRx3dnbeu3dvjcrU\nFzJkqvYvyO3bt//666+SkhJnZ+cxY8a0bNnyyZMniYmJAoHA3d29V69eui3Z+fLly5cvX5aX\nl7u7u3/11Vcq4zcF+fn59+/fz8/Pb9Kkib+/f7NmzZTz4DhuY2ODEOLxePod9lOjYAw0KBCo\nAGAwEKhoY9zIkfM8XOha98HQzd2ikit5hYOc7Hs0sanTA9WPCrH4aHE5BCp614gClZqysrIS\nCATVBiqNC5PJJJdiLCkpqen4+AZOy0ClcYFABSiDwfQAgAatd58+9yrKMQxjMpgikYhAdfJs\npYzG9mJxPlhbx9fvCtN0Op2G02SETO+zBnX3qb6HOgAAANCQQaACAGjQZnz/PUKIRqNZW1t/\n+PDByBqBzc3NWSyWSCQqLy83dF0AAACAhgUG0wMAAAAAAAAaHAhUAAAAAAAAAA0OBCoAAAAA\nAACABgcCFQAAAAAAAECDA4EKAAAAAAAAoMGBQAUAAAAAAADQ4ECgAgAAAAAAAGhwIFABAAAA\nAAAANDiw4CMAoE5ErF379NEjhGEa8hAyGZLJEI5juF4fmkilP4WHd+/eXZ9lAgAAAKB+QaAC\nAKgTfKmUG/pduXdLDXkc4m82vXAue+jwgl599HhonzJO7cEAACAASURBVFPHZTKZHgsEAAAA\nQP2DQAUAABqEiIiIR48eUS8xDCMIQn7DzMysqqqKIAiCIMhEGo0mk8nId8mcLBZLKBRSKTiO\ne3l5vX//XigUkhnodLpEIqEyIITs7e3HjRt35cqVrKwsBoOBYZhAIBCJRFQGDofD5/MVakvV\nCiHEYDDGjRs3ceJE+QzPnj0LCwuTzz906NCLFy+qiyExDMMwbNmyZSdOnEhPTyez0Wg0iUSC\nECIIgsFgeHp6zps37/Lly48ePSotLXV1dR04cOCgQYPwT1vkhg8fLhAIqJetWrXaunWrfIaP\nHz/GxMQkJCQUFhY2bdo0MDDQwsJi+/bt5EdHo9G6dOkSEREhv8uFCxd27Nghn8Jisc6fPy+f\nUlxcfPjw4cePH/N4PJlMhv3XnEhum5ubT5kyZfDgwQq7zJw5s6KignxpYmKycuXKu3fvPn78\nmDzBwYMHDxgwAK9hk6PCtYQQ+u2337y9veVTTp8+HRMT8/HjR4SQjY3NokWLunTpornY+/fv\nb968uaqqCiGE43inTp3WrFmjkCcpKeno0aMpKSkYhrVs2XLcuHEvXry4fft2Xl6eg4ND9+7d\nx4wZw2az5XeJjIy8ceMGdUX5+vpGRkbKZ5BIJHFxcdevX8/Ozm7SpEmXLl3Gjx9vampao89E\nB48fPyavRg6H06ZNm8mTJ1tbW48aNUr+v4+/v//PP/9c1zXRjfJ1PmzYMDpd/zd+ycnJR48e\nTU5OJgiiZcuWEyZMaN26td6PAj5PmPz/NwBAfRIIBJWVlfot09ramkaj8fl88v7DgBb+/PPZ\ndh0M1aKyJjCgZ8+eeiyzjpibm7NYLJFI1K9fP8N+ZfKBh27atGkTFRVFbp86dWrv3r11XRMy\nZ/v27deuXUvdfg0aNEh5dzabfe7cOXK7sLBw3rx5Hz580Fy4ubn5yZMnye3r169v2rRJZbar\nV6+SG0lJSUuXLpWPElXq0aPH8uXLye3U1NTvv/9eQ2byBDt37vzzzz/TaDTNFaZMmjSpuLhY\nOX3evHkDBgwgtxcvXvzy5UuFDMHBwfKxpYI9e/acPn1aIZHD4Zw9e5Z6ef78+V27dmEYRsaZ\nZKgmH0gTBOHk5LR161ZLS0syceLEicrfhXwQKBQKlyxZwuVy5TPY2Nhs3brV3t5eXW1JTCbT\nwsICIVRSUlLTVlbyfOWfF+A4Lv9cgGJhYREbG1ujwmvPzMwMIaThL0hBQcG8efNKSkrIl+SJ\ntGrVauPGjSwWS481uXDhwh9//IH++6JxHCcIYubMmcOGDatpUTiO29jYIIR4PJ5YLNZjJe3s\n7PRYGqhPMJgeAAAMz+CBZe0fWr158yYxMZHc1jlKqVFNyJzPnz+/fPkymTJlyhSVuwsEgoSE\nBHI7Ojq6tLS02sIrKiq2b99Obm/evLnamkRFRQkEgmorf/fu3devX5PbCxcurLZYhNDjx4+v\nXbtWbYUpKqMUhBDVrHT//n3lKAUhdPbs2YKCApX7ikSiM2fOKKfz+fz169eT24WFhXv27CEI\nggoJyNY/KjO5nZ+ff/DgQTLl3r17KiNGoVC4e/ducvvMmTMKUQpCqKysjMpQF7hcLnm+VP0J\ngpBKpSq/3/Ly8rqric6io6PLysqol2TNqfPSl+LiYvKLoD4Z8tuPjo4uKirS44HAZwsCFQAA\nMLApU6YYugr6Qd2A1icMw+7cuUNuq7vPRght2LABISQWi//9918tH67funWL3NAQfgwcOBAh\n9P79+6ysLC0rTDVByPdP0wDDsNu3b2tZuEL/NHnUWVCNS8oZ1L117tw5dR/Cw4cPyY1///2X\n7KenGUEQ8fHx5PbOnTvVZaOCz1u3bmFKc3LIZLKEhAT9PnSXR11RWtLQEmUQYrE4ISFB+TrH\nMIz68PUiISFBoSspQoggCIlE8uDBAz0eCHy2YIwKAMYmOjo6Ojra0LVATTw8UTvDHFoilqxb\nt84wx/68kc/y1T3RryMEQRQWFlabjYwKeDyeNjfTJHJgj2bk6JEanXJNnzQTBKH9Lvfu3as2\nj/yDdgX5+fkq09PS0tTtQkUL1famo1RVVfH5fA6Ho6HnEvU1ffjwQWWMJJFISktLq+39pZsP\nHz7UqDOkhgjZIMrKylRe5zW6lrSh4Uuv598BYKwgUAGNFSEpvXbj+YD+KsY2aHjrcxAWFhYS\nEmLwrkQLDTfAlM6gL1u2rBGNUQkODn7//r2h66IHVlZWqN67g2MYRvZr14zJZCKEzM3NyZEG\n2pTMYDCqzUOOjbG2ttamQBL5KWkPx3Hty/f3979y5YrmPOTwBpVsbW1Vpru4uKjbhfqUqGEn\n1WKxWOR4eg6Ho65ZiRqTY2lpqTKewTCMHH9SFywtLWs0pkXd52Yo5ubm6gKtml5+mmkorUb/\nKQBQB7p+gcaq+PmunbsO1vQtABqg48ePG7oK+jFmzBhyQ7mvTt0hCKJr167ktoZb8O+++w4h\nxGKxOnbsqOUkWp07d642T1xcHELI3d3d3t5ey7MeOnQouUHGTtWSyWTdunXTJidCaM6cOdXm\nIburaa6bgtGjR6vbxcfHh9zw9/fX5hPAMKxr165kzpCQEHXZevToQW6oXBAJx/GOHTsqzB6m\nR9VOgCYPw7Dff/+9jmqiGzabre461+8CU35+fspHIWfw8/Pz0+OBwGcLAhXQ+EgFPO7Da6sj\nH9boLQAasrqYM7RGah9aODs7U/fTgwYNqrtYhSqZ3PDy8vr666/JFGqeLuVdqDmIpk2bxuFw\nqq0ei8VasmQJue3r66s5M47jP/74ozbxj4+PDxX/LF26VGU1FBK9vb2DgoKqLZmick4nDMMG\nDRpEbvfv379Zs2bKeXr16uXm5qayTA6H06tXL+V0BoOxcuVKctvFxWXs2LHov+5w8hvyLCws\nvvnmG3J78ODBHA5HOQ+NRlu8eDG5PXr0aGdnZ4VzYbPZ06dPV1lVvejQoUNgYCCS+y5wHFd3\nzTAYjHqYK7mmwsLC2Gy2Qp2dnZ2ppwl64ejoOGHCBPTpB0UQxLhx4zS0wgGgPdqqVasMXQcA\naoBfdHz05DV/337IkxAYzhk3doQ2b+mGkEkRhtfdk2GJRCK/WoVecDgcHMclEkndDTPV0rX4\neK6Dk9BWUy8gs8wMixRuectWH9099Hho+zeJAZ4e6m65GhQWi0Wn06VS6ciRI69evUquUKEO\nnU5X6MuhfCPIYDDku6yQjzbJWwcqRWEXJpM5bty4rKwsgUBAo9HItVnkM5CdcDTc2WMY1qdP\nH/kJfP39/TkcztOnT+XzeHt7ax7GgGHYrFmz0tLSqGVbyINS/zo6Os6fP18sFhcWFkqlUhsb\nmxEjRixYsED+1nzw4MEKI78tLS3lx4hbWVkFBASUlpYWFBRIJBILC4ugoCAfHx9yFQgyj7e3\n9969e6lOTf369Xvx4oVC534Mw6i5idF/cVp+fn5RUZHCV0BuMJnMESNGLF26lHrL1dXV19c3\nPj5eKpWSKXQ6PSwsjE6nFxcXSyQSGxubUaNGzZs3T8u2F9L48eOvXLmi0KVq+PDh8lMhDxky\npLS0NCMjg6wqh8OZMWPG7NmzNQzg6dmzJ5PJfPnyJfUpeXh4REdHy0ca7du3d3d3f//+fXl5\nOYZh7u7u06ZNs7a2zs3NFYlEpqamgYGBERER8p0Dx40b9++//1Kz6CKEHBwcjh07RnX9YrFY\n/fr1k0gkOTk5QqHQxMSkR48eK1asUIheVKLRaOS1wefzazqvXdeuXZs0aZKZmfnx40c6nd6q\nVaslS5b06tXr5s2b8tmcnZ0N0iJKXhIa/oKQ13lJSYn8dR4eHq73mMrX19fLyyszM5P80t3c\n3H744Qd1TXOaYRhGXk5CoVC/i/aamJjosTRQn2AdFdDIEFJeVg4PIZR2ZPW2x+JzZw5p85aq\ngkQ3YvddvJXwvqAMMc3dWnUYPXV6l6amCKHtoWPeBq4bLIo5eOlJFcFs4uIxcOysUV+5U7s+\nvXzo+KXb73JL6GZNfPx6h04b68qmIYREvKQDu4484WYWlQlsnD0DgqdODPRWd3wE66jAOipy\n66hQM5zm5ubGx8ePGjWKz+eLxWJra+vk5GSxWCz/UH/Lli09e/Zs27Ytk8kkY5WEhAR/f3/5\nksePHx8TE0O95PP5fD7fxsaGjGClUmlCQoKTk5P8IoB8Pp98BEsOdEYIJSUlyS/clpCQcOjQ\nIXLNBJlMVlxcTKPRmEymubm58qnZ2tqSI9fv3Lkj/11UVVXl5OS0aNEiNzfX2dlZJBItW7YM\nISQf5wiFQhqNJpVKGQyGSCRis9klJSXyA1EIghAIBCofxlOePXvm4uKiebA1dabUy8rKyiZN\nmqjLz+Fw+vfv/8MPP/Tt21ddHplMJhKJyPtsiURCLcGp+VYpPT3d09OTeqnNCWpj165dM2bM\n0JChqqoKx3E2m21lZSUQCLSZiEwkEpWWljo4OGjIQ15m8oN8FD5qZUVFRRKJxMnJSUOeagtR\nUJt1VCjkt6mwjs3Vq1c7duxYR0P5tVHtOiryavq56Ub5S68pWEcFKINABTRWSdtmLo2vUhmN\naHiLkrhv7rK4971GTGzvaS8uz7154tRbsWdszEYahraHjrnLsSAkTiHj+ttzxDeP77v/vmrx\nnye6WzARQm9iloXHvGrec1i/Tl78/JRzp64Ibfz37g43x8UrJ094g7cYMybA0RR7czf28qOC\nybtiRjp9cncSHBxMPT0dOHCg3ie1JP+ayi9lYCg/Llr85NUrnKXpSbBMJCJEIozJxGvywLha\nsvLy1cuXkz03GjiyP0lD+L70jmyZMbI/MWTzFEKI+l9sNMhmN/i+GgvyvIzydwMhpN+fjqqq\nKpUPU0CjALN+gc/UqxzTToHL50/pSL708+SGhj/JFkrd2DSEkKBQvPnYquZsGkLoCx90b/LW\nG4X87hZMqShvXWyivd/cqEUBCCGE+gR2NglZeHJrQuESn+RnPNGXGxePbm2NEOrRo+PH3w4K\nc6rQp4FKbm4u1bmirKxM+9WmawTDsDoqWXsbfl6lzeyupMePH3PfvNHLcYuKivLy8x/cu5eR\nnq6XAvUMw4Z9/bWjo+OnaYb/vuqClmPWGyOj/L7qcwqEemaU3xcy3vPS70+HEV/YnwMIVMBn\navyKdQghREhKi4sK83MeXshCCFHP3EwdJ5NRCkKIbuKNECJkBEKIX3S6QkoEz+hKlWPpHdLB\n7HzqmQyGXzt7Ju3V5l/PjRv0Rds27k428+fPVz7urFmzqAdFXl5eeu+gRY5REYvFeh/9UlM4\njmvf2eDZw4e8hPutLdRO2aS9jNLyl8UlFnk57tZ1NXVpbVwoKm3n60s93qPGqGi59l8jYmJi\nIhAIjOyJL4PBYDKZBEFoHk3UGHE4nIYwtk2/aDQaOTNYVVWVkTUWkWNvtH8Y1ChgGEb2kBQI\nBHpsBNN+6STQAEGgAj5TPO7NPw6dfcbNlLEsHJ2dXZ0+eeJCN1W9IICorBgh5G3yyX8cbw49\npbwAo/tv27LsyPGLFw5u2V8hYlo6du4aMHnqaGfmJ0+8Jk+eTG3XxRgV8q+yRCKhhiM3ClKp\nxM/GaoizHjp8EwjdLS5pb20xrln1Y23r36MqoVAopL4dOp1OBiqN6/vShomJiVAoNMgtQkRE\nxKNHj6iXV69eTUxM/OWXX3g8HpvNHjx48Lfffpuamnrt2rXU1FQ2m92uXTtfX9+VK1eSDw4w\nDBsxYkR2dvbLly9FIhGO461bt162bNmCBQuys7PJMhkMxqxZszIyMrhcblVVlZ2dnaen54cP\nHx4+fFhVVUU2kQ0aNKht27YnT57MysoiBxlv27ZNubYzZ87MzMwku12ZmpoGBQWlpaVxuVyx\nWOzg4BAREeHq6qqwS3FxcVhYmEAgIAjC2dl53759fD7/6dOnubm5tra2vr6+dnZ2w4cPJ+9i\nCYLAcZxa6J0ilUp379796tUrgiA4HI6dnZ25uXlBQUFhYaG1tfXQoUN79uyZmZl5+fLlvLw8\nV1fXoKAgJyenkSNHkkEajuMRERHK0/hKJJJnz569f//e3Nzcx8fHxcXl2bNn+/fvLyoqsrW1\nnTRpEjWXtLygoCDqUpk8eTI5kZS87Ozsffv2ZWdn29vbBwcHd+rUSdMVgBBC6OPHjxMmTBAK\nheRCNEePHi0vLz9z5kxaWpq9vX1AQAA1sbK8hISEO3fufPz4sWXLlgMHDty0aVNSUhJBEE2a\nNBk5cuSAAQNGjx5dWVlJhj04ji9cuPDDhw9OTk40Gi0vL8/ExKR169bKM3lwudzU1FSZTObl\n5aXyuFwud9euXfn5+ba2tmPHjv3qq6+U88THxyckJAiFQh8fn8DAwFevXuXn5zdt2rRjx47q\npluYOnVqbm4ueXUNGjRIm9mrxWLxkydPsrOzLS0t27Vrp9D8S3r69Gl8fHxZWZm3t/fIkSPZ\nbPabN29SU1MRQi1atJAf2FYjOI6TgYpQKDSymBnoDMaogMaqNmNUpMLMKePnsDqNDv9uaHNH\nC4RQRdYvE2c/2Bp71pNN2x465pH9kkOb/v8PoVSUPWLUrM6bD6/wtqrI/m3irH++2R87wu5/\n8/evnjgq1WH+4ShqoQOiODst8fm/hw+cJlrPPrBW7aBb4x5MXyO7fv+tTXqKXgKVmPe5299m\nfN/CfXyDDFQWcN+Nmregbdu25EvlwfRGgxpMX8/H1bBICKVGi47rV0hIyMSJE6mX1daWnC1N\nPsL57rvvcnJyFPKw2Wwq1mUwGMo3eRiGyS8Eee3ata1bt2pu72IymZobZsk55eRDoKSkpE2b\nNuXm5lIZTE1NFX7l7O3tDx8+TL0cMmSI8rNzJpNJLlBDWrVq1b///iufwdXVdc+ePRrqNmPG\njIyMDOUKy3/vPj4+GzdupGYGr6ysnDt3LhWL6gzDsH79+s2ePZts9CgrK4uKinr48H+T5vv6\n+i5YsEB+NoLZs2enpaXJF2JjY3Ps2DHqZUFBwYIFC9St9W5vbz9v3rwOHToopA8aNEh5nkDl\nkFXe8+fPo6KiCgsLyZc0Gm3EiBHffvst1ReLz+fPnz//3bt31C40Gq1p06aZmZlUSocOHRYs\nWKDD+HUYTA+UGW0HYgA0EPLieRJZj6kjyCgFIZRzt0CbHU3sR5rQsMt7EqgUXmrM4wqR1wjP\nsuSo0NDQayUChDC7ps17B02a6GhSmfmsTk4AAKDK4MGDtclmwCd0f/75Z1lZGbmtTW0JgkhO\nTiZnWkMInTp1SiFKIfPIt8ipvMMjCGLIkCHkNo/Hi4qKqrZXXrXdR8lJIGbOnEm+LC4uXrp0\naX5+vnwG5WcxhYWFP/zwA7l9+vRplT18RCLRqFGjyO29e/cqRCkIoaysrLlz56qr2M2bN5Wj\nFKT0vb9+/ZpaBAYhNGfOnNpHKeRRrl27Ri4BSRDEqlWr5Nv3EEKvXr1asWIFFcOvWbNGIUpB\nCJWUlHz77bfUyx9//FFdlIIQKioqWrFihULllaMUhJBMJtOwJk9OTk5ERIT8gaRS6alTp/78\n808qRSFKIfPIRykIoefPn69cudLIun0CQ4FABXyOWJa9LGj49c177zx8+ujercNRP626XooQ\nevCCWy7VdAdDY7osC25T8ODXxVsP/h1/50Ls/rlLTpjYd5vfzcGsWZC0nLd/6YYzl/6+d/fW\nqf2btmdXuvUbVl/nBAAwZASiPeo2Xfs7uYsXL5Ibe/fu1fm4VEiwbt06nQtRRt22XrhwQctR\nSW/fviU39u/fry4P1SZ8/vx5lRmSk5PVDWOIjIystg6kp0+fksPDUlNTlSPA2rh+/XpRUdHL\nly+5XK7CZUkQRGZmJhV9PXjwQGUJVMPU7du3eTyehmMRBCGRSM6cOUOllJaWqvu/oKGR8/z5\n8xKJROEbxDDszJkzZNSal5enEKWoq09aWtrjx4+rzQlAtSBQAZ8jGstt66qZXpKkHZHrdx+L\nK3Xsu39HpK+z5amNq99UVdPc3C5k/YqwYFlK/O6tUUfj7nv1HrN5+yJzGkbneP++9vu21h9i\nD+zc9Ov2K08KhkxZvDFE0yoiAAD9ahSBiuZVL1Wi7h31Mn+RytYGnVFVSklJ0b56paWlSOOs\nwdRXqa4LEEEQSUlJmvetFkEQL168QAjdv39fy120LzklJSUlJUVdBipa0xDavXz5EiEk321M\nAy6XS21HRERoW1E5ycnJyokEQQiFQrLNJCEhQTmDOhrOHQDtwWB60Fi1nrPznJphgRreoth9\nMWDVlgHyKWt3/X/rdpdDsfLpNGZT+d7SCGGdg6Z0DpqiXKa1T9/lG9SOSKk30dHR0dHRhq5F\nzbRt6d3m83hsIhKJFi5caOhaGC0DDj6pHw3w7Kgq1ahuepnTSV0MU6PLgMxZFx+s5jK1aXoi\nPyVt6qaXNXA0rF5C1rZG3xp0/QJ6AYEKAMYmLCwsJCSk0Q2mR+mfxeM3JpO5efNmGExfR7QZ\nSW9w1tbWNd1FLw0pVCEuLi51cb15enqSrRPa1IQc3IzjuLrbWaq2KucGIPn6+qpMr9EtO1mI\nn59fTEyM9ntpw8vLS8MU7c2bNyc3NIRV5Pj4Dh06XL9+XfOxMAyjCkQIrVmzZvz48epyaqhS\namqqcmXodHqzZs0QQn5+fprnMJDn5eWlZU4ANPg8nmECAAD4DDSKld02b95Mbmhf2169epEb\nI0aM0Pm41OEWLVqkxw/KysqK3Bg6dCidTtdmqT4nJydqF3V5TE1NyY3AwECVGZo1a6ZuuUP5\nWeA18/HxIefDbd26tR4nhsIwrFu3bk5OTh06dPDw8FD4tHEcd3Bw6Nbt/yeKbNeuncpCqPoE\nBARQn4a6w+E4Ln9taAiGNXxBX3/9NY7jyhmCgoLIiMvV1dXFxUVDTahDuLi4+Pn5VZsTgGpB\noAIAAMBIXLlyhZpttgHCMGzAgAHUbfqVK1e0CRhcXFzCw8PJ7enTp1taqljlSd0yGvKoeWmd\nnZ2nTp1abX6FMICcjFg52/Hjx8kNJyenVatWUXELuYtyxSwsLKgx9DNnziSXflLAYDBOnTpF\nbs+dO1d5XQ4bG5udO3eqq/mECRO0abZyd3f/5ZdfqJfbtm2ztbWVz6BzOOfv779gwQKEEI7j\nq1atatnyk8GK7u7ua9euZTAY5MvIyEj5qYpJHA7n4MGD5DaO41FRUdQqscrMzc1/+uknT09P\n+USVDUQYhl26dEldOe7u7suXLzczM5PP379//++++45K2bJli739J/PI4ziu8Ll5eXmtWbOG\nOkEAasPIu/MC0JDBOioUWEcFun7p0ahRo8jrn1rr8K+//tq9ezefz6fT6V27dv3pp58eP358\n7dq19PR0JpPp4+PTqVOn1atXk38QMQz78ssvP3z48O7dO6lUiuO4vb39unXrZs+eLRQKCYIg\nH2CHhoYmJyenp6cLBAIrK6v/Y+8+w5rIugAA30kjIRB6RwQELICCIoqCoGBbxY6NandtKGuB\nde1dseC69gLiCjZQsTfEAmJHrCjSew0BEtLm+zF+2UgKIYTqfX/4hClnzsRA5szcYmxsXF1d\n/eHDB8Govr1793ZwcIiJicE6jmPX1sJXgZgJEyZgc0SiKIrH4wcPHvz58+fi4mIej0ej0f74\n4w8HB4d6u6SkpISEhGDZUiiUmJgYOp2elJSUl5eno6NjZ2dnYmIycuRIwfY4HE708pTJZO7c\nuRNr6kMikbS0tCgUSnFxcVVVlZqamoeHx8SJE1NSUq5fv47NKjhu3DgrK6vffvtN0Fhr+vTp\nos8umExmYmIiNuFjz549rays7t69+++//1ZWVtJoNC8vL9GnKJcuXTp+/LjgzR8zZoxgyGOB\n9+/fHz9+vLi4WFNTc/To0bK08UtPT1+yZAnWrQKbmKWgoCA6OjozM1NTU3Po0KGCZxrCbt68\nmZSUVF1dbWFhgU34mJubi6Koqqqqp6fn1KlTvb29KysrsY8BgiBz587FJnxEEKSoqEhZWdnG\nxqZHjx7CMVEUffXqVVpaGo/Hs7S0dHR0FH1q8ejRoxMnTlRVVVGpVE9PzylTpojmduHChTdv\n3rBYLGtraw8Pjw8fPhQWFnbq1MnJyUn0c4XBpqfEXnfr1m3v3r0Nvm81NTWJiYk5OTnq6up2\ndnb16h/MvXv3EhISqqurzczM/Pz8aDTaixcvsM+SpaVl3759ZXmwJgrOowKJgoUKBLUaWKgI\nHP57P//tKzt1WtNDJZVV3C0sHaqv7aTV6J4ALeBsQcn8P/+ChUo7RaFQqFQqn88vLy9v7VwU\nTF1dncViYWP1dhgkEolGowEAysvLO1jfbqwyUfg3SOuChQokqu0+Iocg6NdhY2efwuVJmR0T\nwSFKJFJdXV2Dt1ZqVSq7qqjXamm9EWqC0nZ0N7Go10wCgiAIgiCxYKECQVDrc3ZxcXZxkbIB\nHo/X0NAoKyuDD4EhCIIg6BcBO9NDEARBEARBENTmwEIFgiAIgiAIgqA2BxYqEARBEARBEAS1\nObBQgSAIgiAIgiCozYGFCgRBEARBEARBbQ4sVCAIgiAIgiAIanNgoQJBEARBEARBUJsD51GB\nIEgefD6fx+M1R2QCgYAgSHNEhiAIgiCoHYGFCgRB8giPOH3pymWEQJS0AcrjoTwegscjeLzs\nYfks5pZNm+zt7RWRIwRBEARB7RgsVCAIkgcPoJkjRhU7D5K0gV5CvHHc5VzPcUWug2UP2zvy\nlCKygyAIgiCo3YOFCgRB0A98Pj82NjYqKqqmpgZFUQqFMnr0aHd39/nz5wtvZmtru2vXLuEl\nr1+/3rNnT1lZGYqiJBJp8ODBrq6uZ8+e/fbtGwDA0tLSx8enoKDgypUrOTk5ysrKdnZ2Li4u\nO3fu5HA4WAQcDmdsbFxUVITD4aysrPz8/KytrT99+hQREZGWlsbn883MzKZPn963b1/pp1BR\nUREeHv7y5cuKigoDA4Phw4fb2dmdOXPmw4cP7yJFtQAAIABJREFUbDbb1NR0ypQpzs7O0oMw\nGIzIyMikpKTS0lJ9fX13d3cnJ6ezZ8++e/eOxWJ16tRp/PjxHh4eTW+h9+HDh9OnT6elpaEo\nam5u7u3t3adPnybGBAA8ffr03LlzmZmZRCLR2to6ICDA3Ny8iTHZbHZoaGhSUhKHw8HhcLq6\nuitWrLC2tm56ts2hsrLy9OnTz58/Ly8v19fXHzZs2MSJE4lEic8/IQiC2iYERdHWzgGCflEs\nFqu6ulqxMTU0NPB4PJPJrKmpUWzkeo6dOrWvjtscT1S2T50i2vQLj8draGhglYCcGTcERdGQ\nkJC3b9/KsjGNRjt//jz2+tKlS8eOHRPdBofD8fl8AACC/PhLK/pCLBwOh6LooEGDHj16hCCI\ncJBp06b5+/tL2jErKysoKKi2trZe8HqZeHp6Lly4UFKQoqKipUuXVlZWCgdBEKReJm5ubsHB\nwZKCAAC0tLTodDqXy5W0wdWrVw8dOiQIiyXp5+c3ffp0KWEbdPDgwatXrwpOGXszQ0JCBg2S\n+FltEJvN9vb2ZjAYwgsRBPnjjz88PDyakm1zyMvLW7p0qSBb7P/L0tIyNDRUSUlJ0l7q6uos\nFovFYrVUmi2BRCLRaDQAQHl5OfZ56DBUVFQAAAr/BmldOBxOU1MTAECn0wU3cRRCW1tbgdGg\nlgRH/YIgCAIAgCdPnshYpQAAqqqqsBdcLvfkyZNitxFcGAmu+EVfSNkxISFBNEh0dHRmZqak\nHQ8dOiRapYgGiYuL+/Dhg6Qgx48fp9Pp9YKgKFovyMOHD589eyblLKQrLy/HqjtBWOxFZGRk\nbm6u3GE/ffp09epV0bBhYWFMJlPusPv3769XpQAAUBTdv3+/3DGbz6FDh4TvU2D/X1+/fo2J\niWm9pCAIguQBCxUIgiAAAIiPj2/U9itWrAAAPH78uDlGP8MuLkVLDhRFk5KSxO7CYDBSUlJk\nfOL05MkTscu5XO6zZ89kufeMw+GePn0qy7HEevnyJYfDadQJyuLJkyeiDdJQFK2pqXn37p3c\nYZ8/fy52OZvNTk1NlTtsc2Ayma9evRL9H0QQ5NGjR62SEgRBkNxgHxUI6miOHj169OjR5j5K\nd1tb0MVK4WHZbHZISIjCwzaH9PR0AEBeXl4LH7esrEzs8nqNtaTA4XDl5eViV1VXV8vY4gJF\nUUmZyEJSAkDyCcqioqJCUrO6poSV0iAqKyvL1tZW7sgKJ/o0DNPE/y8IgqBWAQsVqL1CuRV3\nHrwdPuyn/g/0tIQjUbc+fU4n6pj2choxb+oQwq83IcfcuXN9fX1boI/KnTqJ3Q/kRiKRtm3b\n1ip9VDZu3JiYmCj79sbGxgAAAwODZspHEqwNtyh1dXXpXV8E+Hy+pCAqKipEIlGWWgVBEElB\nZKGhoSFpVVPCqqurS3oHmhKWQqGw2Wyxq4yMjOQO2xzU1NTEfgwQBNHS0mqVlCAIguQGm35B\n7VXp28OHDocLL6mjJy1atfdtCXWUzyyX7up3osOWH3ndStlB7Y+rq2ujtsf6J7i6uuIbM1FM\nEyEI4uTkJHaVqqqqjY2NjCNxDRgwQOxyAoHg6OgoSxA+ny8piCwcHBwIhPp3yrAu+/3795c7\n7MCBA8VeoysrK/fq1UvusJLGIiORSG1tzh8KhWJvb4/D1f9yR1F04MCBrZISBEGQ3GChArU/\nPBb98/M7G3fWbzX+PPRYNV5/c2jIpFHDfX//M3iYUcatbemsZpk9Hep4XFxcZG/Dgw25AwAg\nEAiShuESXO4LrhoFS6RXAtj2zs7OCIII9sVeeHl5mZmZSdpx4cKFFAqlXnDhINiqkSNHSjnT\nuXPnqqqqimZYL4izs7OkkkkWWlpas2fPFg6LDc81bdo0ExMTucNaW1v/9ttvQOStXrx4MYVC\nkTvskiVLqFSq6PLff/9d7pjNZ/78+cIfA+yFmZnZxIkTWzUvCIKgRsOvX7++tXOAoEZglkR7\n+W26++g5nYsiOMrUKeN/rEB5G/45Te62cMbwH1c5OhbgQmxyWY9hroZirjBkgfJ5AME1X9sx\nLpcrqT2J3CgUCg6H43K5ih3bUdTrt2+f8fg1Jp0lbaCSlUlL+1zVtVuNqcQLa1EG79562NiI\ntqfC4XAUCqUpAzc1CEEQDw8PEomUlpbG4XAQBFFSUhozZoyPj8+DBw+EL9y7dOkSEREh+NHa\n2trS0jIlJaWurg4AQCQS3dzcZs6cmZ+fT6fTCQSCpaVlUFBQ9+7d8/Pzq6urlZWVHRwcpk+f\nnpycLOj0jMPhDA0NmUwmkUjs2rXr8uXLJ0+ebGdnl5eXh40w1qVLl0WLFo0ZM0bKKairq7u7\nu1dVVZWWlnI4HF1d3UmTJvn5+RUVFVVWVgIATE1N582bN2XKFCmVkoqKyrBhw2pqakpLS+vq\n6nR0dMaMGTN37tzS0tKKigo+n29sbDxjxoyAgADR2/bClJWV6+rqpPTL79atW8+ePbETRBDE\nwsIiMDAQKzOawtHR0cTEJDc3t7q6mkQi2drahoSEODg4NCUmgUAYO3ZsdnZ2fn4+iqIIgujq\n6q5fv75tPqNQU1MbOnQog8EoLS1ls9m6urrjx49fvnw5mUyWsheZTOZyuVKGk26P8Hg8NiIz\nk8nsYJMxkEgkAIDCv0FaF4Ig2A0F6X865KCsrKzAaFBLgvOoQO0MyqPn5NEBAOlnNoa95FyO\n+XG9yKl5O3HaWpsVR7e66P9/W/7kceO1Bm8/FNhdXCD2g/Mnrj1Mzi6qBCTVzt3svWbP629M\nBQAc8J/81X3Lb+yo8OuvalGSjpHZiCkLJg0yFez6+kZE9PVHGfnlBBUda0c3/zlTOpHxAAA2\n/dOpw2defc4qqWRpGpoPmTDb211ad3M4j4qoVpxHRRh2uVavbVJaWpqVVQPjB7BYLOHLQcFU\nHsKRhcOqqqoyGAwajYZVI6Lbg/8PDdzYBmb1DiR2SbMGaXAeFQGxZ910cpxvgygUCh6PJ5FI\nUgYDaFNkfxPgPCrtC5xHpVHgPCrtF+xMD7UzCF7NxEQNAFBDJQLw3x8yHvM7AEDZQLh1B86Q\nhC/LFP93/P3JlWFXs13He4821+VU5cefu7hredH5qB14BAAAihJ3nOQa+C5crkvhxEefiNy9\nzMDu3EAaCQDwMWr1+qhUC5cxMyd2YRamXb54fnlK1vEjwao4zpZFaz7iLCdP9tenIh+fnD+/\nfwW5R9REg59u5AwbNkxw6ebp6bl06VJFvjv/b+ZBoVCk3z1tOhVlZbNr57s8kjikL5/LRSkU\n04QH5k8bMSgql8Gg0WiSev02pT900zWlpZMk2HMbAEDH6+iMIIiamlprZ6F42K9Yh/z/olKp\nYlu4dQBSBm9o16TM4NmuYeWlojT3bTuoWTWpUMn5+Dz5zaeSyhqymlY3u/5ONhIbgUBQc+Pz\nqwEANMpPd501ibiSulqx26fmUfu4/xUU0Bv70dH8s3/wq9w6XmcyHgDAKuaEnl1vQcYDAHpZ\ng6d++x4UMwfSSDx2wZbz73Udl+5ZMQQAAMBgdwdl3+UX9iUXr7L+8obO7rtjpVd3DQCAs3Pv\nmv3hdXm14OdCpaqqSlCosFgsGbs+y6H5ImPmzZkzMyCgUbsUFRXFXLgAGrqvmfTo0bPHj7HX\nJaWlBYWFBvr6Om3hfhgO5xsQ0EzFUnP/f7WKDnlSmA55ah3ypDAd+NQ6JPj/BQnIWaiUv4vx\nnxF47fVP8wcb9R59IOL0OJuOed8CauMQHBUAUFX3U9f5cg4fRxTfg3ba2i0AAIByK0pLigvz\nnsflAAAEO1P1/bAqBQBAULYCAKB8FADALLnE4KET5v93Z13Nytde5cq3mEyio60uCZ8auvvy\n1JG9bHqYGmgGBQWJHnfBggWCxktdunRR+J0erI8Kh8Npg22XS0tLn929M1m/ESVHbnllSnGZ\nZnGBgaZ68yUmozP5xR7Dhyv2FqaSkhKBQODxeB2syQ0AQFlZmcVidbD2NkQikUQioShaWyv+\nDkj7RaFQWqBvWwvD4/HYs+Xa2toO1tAd+0OE9YvrMLAB+gAALBZLgRPpdrCeV78aeQoVZslV\n+35Tcur4/TwDxrr366SjWlue9/ze5fCr1736OsTlfBih3bxtTiBIFIHSBQDALGIBc0FrE7SQ\nw1PvLL4lA/1z/MGI2Defs/hKNH1Dw04GP92/IVDFN1lhV5YCAKyUf/rFsaIQ0qqKEEK/sL2r\nz0Rfiwvfe5LBJqnpOzgN8ZvtZUj66SGPn5+f4HVz9FHBvpW5XG6z9juXT11dnbYyZayRnuy7\n1PJ48cVl1mqqjdqrmVyvqGKxWIp9YwkEAlaotMH/r8aqq6tLTk7Ozs6m0Wg9e/bs06fPx48f\nL126VFBQYGho6OnpaWFhERsbe//+fTqdrqqq2qtXLxMTk/3792Pd0wEAPj4+Tk5O5ubmTcyE\nyWTu3bv327dvJBKpb9++s2bNanCXt2/fJiUlFRYWqqqq2tvboyhaUFCgpaVlZ2dnaGiIbRMW\nFnbz5k0sVRKJdOXKFdE4jx49evz4MZ1Ot7CwmD59umB0OCmysrJiY2Pz8vL09PQ8PT27du0q\nvDYvLy8lJaWsrMzY2NjR0RFrmsXlcl+8eJGZmUkmk7t3796tWzfRsIsWLfr27Rs2p4qXl1eD\nb4KSkhKbzW6wYE5PT//w4QODwTA1NXV0dCQSiQ2eoCxWrlyZlpaGoqixsfGuXbsU1fWZRCJh\nfxJlr5m/fv368ePHmpoaExOT3r17v379Ojs7W1lZGRszAwCQkZGxfv36iooKEok0cODAZcuW\nKSTVxsI6rbWFvxuyfBoBAJWVlS9evCgsLNTV1e3Tp4/YTiM4HA77r6+rq+tgNTMkN3kKlbhp\nC3Pq0L+ufNnoaSFYOHfRypDr67t6bpzrfS379iTFZQhBMiEq2+iQ8IV3coDTjyvausr7tTy0\nm4uO6Ma8uqxFf4Yp9fHaemizhT4NAMDI2fb0cZHQJuKfOxPVNAEA32p5tsr/fT2ns7hEPW0A\nALWTw7wVDvMAWpqb/v7ts9Onzq3O1z612UNR5whBbdbr16/37NlTWlqK/YggiL6+fmFhIXYb\nOzU19fbt23g8XnCXtKSk5Pv374Ldsc0iIyMjIyOHDh26ePFibFAjOVy4cOHEiROCHzMzM2Nj\nY/ft22dhYSF2+5KSkm3btn38+FGw5N69e4LXeDx+woQJM2bM8PT0xK50sVTr6upGjBixevVq\nFxcXbMva2trFixfn5eVhP7579+7KlSszZ86UPijwzp07Hzx4gL1OTU29d+9e7969t27dCgDg\n8/knTpy4fPmy4E2j0WhLlizR09PbsWNHbu5/LRoGDBjwxx9/CLqX1NTUTJo0CcsT+/fChQuX\nLl26ceNGg++eFGw2Oyws7MGDB4JHE7q6uitWrJB9UG+xbty4gU1JhElPT584ceK4cePmzZvX\nlLByYDKZYWFhCQkJghMkEAjCN+NdXV1zc3PT09OxH9ls9u3bt+/evRsREaGjI+aL5lfw9evX\nnTt35uTkCJYMGDAgKCioXol+48aNo0ePCspgIpHo4+MzZcqUFs0Vap/kGWVle3KxuuU24SoF\n02XU+tBumkWJ2xSRGAQ1EkLw765R8eFMMefHbbO0q1cRHNnbVkyf1zp6Ap3Ld549HqtSAAB5\nT4pENxOlrDtRGY/cOJYsWEL/FvWSwe4y3rzyyx5/f/875SwAEG1jC7fRPt76ytVZb5p8YhDU\n1hUUFKxbt66srEywBHsiUa+xjYxtOe7evXvw4EH5MsnKyhKuUjBcLlfSqBV8Pn/dunXCVUo9\nPB7vwoULnp6ePB5PtO3Qli1bBK8DAwMFVYpg32PHjr1//15S8NOnTwuqFIHXr1/v3r0bABAd\nHX3p0iXhN43BYGzdujU4ODg/P194l6SkpF27dgl+nDhxomiqfD5//PjxoAkOHDhw//594cil\npaVr1qwRVKdy4HA4f//9d72FKIrGxsYWFBTIHVY++/fvf/jwofAJ1msylJCQIKhSBPh8fkAj\ne+t1GAwGY/Xq1fU+9vU+jQCAZ8+e7d+/X7iVGofDOXXq1J07d1ooUag9k6dQ+crk0ix7i11l\n112Ny/zatJQgSE79gmZTOZkr1h9+8Ox5XNTBtZeyuowKtiSLGdRVSc2VhsfdDz3++PnrF08f\nnt7z5/r7FQCApJTPVTxp7ZjxJKPVE3oUJe1euS/8bsLjuPMnl646p6w7IGiAnorJaF4V/WTI\n9pjrd58+eXjx5K4DudWdh0qb9QKCOoYrV65wuVwF9gG4ffs2nU6XY8edO3eKXc7lcmNjY0WX\nv3nzRvjBjlgIgkgpsXbs2AEAKCgoEL6pLOzIkSOS9hXbeAwA8ODBAy6Xe+nSpXrLURRFUbSm\npqZeKyYURZ89e4Y9YykuLpZ0uKY0E6qsrLx79269hXw+n8ViXbt2Te6wISEhkj42y5cvlzus\nHEpLSx8+fCjfvjweT0o52oHdvXu3qqpK9NOYnJws/Otw4cIFbDpX4c0QBDl37lwLJQq1Z/I0\n/eqjSnz9NhYAd9FVcS9LSap9m5wVBMlDSWPA39uW7D9+4fCuuwQV/cGTA3+fLr6ixit13rf+\n9wPhl//Z+UhFz8R24OiTC623Bi6/uGNjl4hI6Uex9d26ViMi+kbCkYQrBKqWjdvkgDlTVPEI\noFj9vXnRP5FXzp86xOLhtAxNRwWsnDGuq/RozeHo0aNHjx5t+ePKoqd2a44v3ER1deyWb47S\n1vj4+Pj4+NRbKHqbuYlQFP3+/bvodDoNKiwslLQqMTFR9JHC168N31mTXoA9fvx41apVycnJ\nkjaQ8mRA0lgaPB4vLS1N7FopyXz79s3Y2Fj0AYVCpKeniz00DoeT5T2UREqVWFFRIXdYOXz7\n9q0plXZ0dPTmzZsVmE+7kJ6ejsPhxHb++fbtW6dOnQSbiW6DomheXl69iacgSJQ8hcra8Z3d\nT/0zfuvQCyFjCf+15Odd2zF1T3ZV1xmrFZceBEnUPfDQ5cD6C9W7DVkbOkSW3bV7DV+/d7jw\nks2Hf5Qo/SPOCy/Hk4yvXr0qtABxGB3gMDpANKaGtcdf21u/R8rcuXN9fX3b4Mjxnz59+nfX\njtbOQn5KSqQjR4507qzIcdhVVVWxTszYhI+QQMuM0dT0UVDbzlhSbSeTX1AHG92u6eCnEVIU\neZp+DToQM1hX+fLqcbpW/f3mB4asDgmc7+dkqeMZfJGiM/jSAYkzVUMQBEEdj6R+6nJDEKRL\nly5y7GhgYCBp1cCBA0UXNj3zYcOGAQD69esnaQPBoGGiJM2uiMfju3btSqVSResoKZWVlZUV\nAGDx4sXSE5ZPly5dxB6az+djY2HJR8r738Kzu1pYWDSlap0+fboCk2kvLCwsJFVo2KcRY2lp\nicPVv9pEEMTIyAg+ToEaJE+hQlC2vvX1RYj/CDTrZeSR/du3bt9/JPJ5Fn+436oX325ZK8PZ\n7iEIgn4hY8eOJRKJotcichs5cqR8s9qvWLFC7HICgTBu3DjR5fb29tKvULFVkgbhRRAkMDAQ\nAGBgYCD2URuCIFKaC06YMEHscnd3dzwe7+XlVe+2NA6HQxBERUWl3luNIMiAAQOMjIwAALq6\nupJOpymzzqurq2MlWb3jksnk0aNHyx1WeDSCeup1yG5u2traQ4bI9DReFB6Pt7GxUWw+7YKH\nh4eamprop9HJycnY2FiwBPskC38ssVGzp06d2nK5Qu2WnN8rJFqPreE3y2vLP7x+nhCf8Pz1\n+4qa8lsR261pcg4oCUEQBLVT+vr6GzZsEJ4YAbtdWm8zAqHh21gIggwbNuz333+XL5POnTvP\nmTOn3pU6iUTat2+f2O1xONz69eutra0lBcTj8VOnTr1y5YrYq/8///xT8Hrv3r3CF2fYvvPm\nzZMS3Nvbe+jQofUiOzo6YnPFTp48efLkydh0GRhVVdXVq1dv37693oGcnZ2Fu55fvHhR9FgI\ngoj2zm+UhQsX1stWT09vy5YtYifEkBGRSBQ7D8nEiROlPBxrJosXL3Z3dxc+QeE3H0GQIUOG\n1JvlBgCAw+HCw8NbJsO2RlVVdevWrfU+jQMHDqw3EIKjo2NgYCCF8t/ky0Qicfbs2UOHDm2h\nRKH2DIHtCCGotTTHhI8aGhp4PJ7JZLbZPiph3RsxnV9Udv6Br5mLLE2nmUhsP9Ni5r7/umTj\nZthHRRI2m43N+6aurm5jY9O7d++3b9/GxMTk5eUZGRmNGTPGzMwsLi7u3r17FRUVampqPXv2\n7Ny58969e7HdcTgcNuGjqalp0zPZu3fvly9flJSUnJychGdZlSQ1NfXp06dFRUU0Gs3e3p7P\n5+fn52tra9vZ2enr62PbhIWF3bp1C0VRHA5HIBB+7rr2Q2Ji4qNHjyorK7EJH2WZuDAnJyc2\nNjY3N9fQ0PC3334TbjMDAMjPz8cmfOzUqVPfvn2xgDweD3urKRRK9+7d6+2CCQoK+vTpE4qi\neDx+8uTJ/v7+0tNQV1dnsVgNTviYkZHx/v17BoPRuXNnBU74GBwcnJaWxufzO3fuHBoaqqiw\nJBKJRqMBAMrLy2XsRoLNaFlTU2NqampnZ/f27dusrCxswkesOWJGRsamTZtKS0vJZPLAgQOx\nR2otD5uoROHfIHLg8XgvX77MyMiQ8mkEAFRWVr569aqgoEBPT8/e3l7ShI9Ykz86na7YCR+b\nUk5DrUvWQqVRg7rI17YYgn41v2Chsm/D+sn6jfjCeFFe+bC4zE1Xq6+mevMlJqMzeUXrQ3fD\nQkVGWlpadDq93kwU7R2FQqFSqXw+v7y8vLVzUTAZC5X2RY5Cpb1oO4WKAsFCBRIla3+SRvU4\nhE9pIAgSpaWl5ejunslvxN8HXFmZtVYJTkcnW0dbSUmJxWK14l8XZ2ucfB0nIAiCIAiSg6yF\nSr1pfb/fCr/6uZKoYuzm7tLFWKu6KPPds4fvcqutxob8Ob4VJo6AIKjt09XVnTVnrnz74vF4\nDQ2NsrIyeB8EgiAIgn4RshYqgmbEAIDiZ5uM99P7zg2L+3uRHun/3fHRuqi/PL237cr8Q/zs\nvBAEQRAEQRAEQTKSZ9SvfdN2EzUnPDm85L8qBQCAKE3bcstPV2mP906FZQdBEARBEARB0C9J\nnkLleF61mtUskpihGnHTrTVqCk83OSsIgiAIgiAIgn5p8hQqNAJSk5MgdtWjdAaOCIdWgCAI\ngiAIgiCoSeQpVIJ7alXl7Fh8NrXe8vdRS7dk0bV6rlREYhAEQRAEQRAE/bpk7UwvbNqlsDXm\n3v/49EqOnjF11KDOuirVxVmPb5w7GfcCT9Lfd3GKwrOEIAiCIAiCIOiXIk+hQjWakvqUN80/\n8F7cyRdxJwXLdW2G7zt1ZooRVXHpQRAEQRAEQRD0K5KnUAEAaDtMv/th2pcX8UlvPpdVsajq\nutZ9nFzs4YT0ENQx8Xi82tra5ohMJpOJRGJzRIYgCIIgqF2Ts1ABAACAdO07pGvfIQrLBYKg\nturNmzfrNm7CqarIuD2fwwFcLiAQcFKLED6LNWXcOD9fX0XkCEEQBEFQhyJPoWJmZiZ9g4yM\nDLmSgSCo7eLY2LyZ7ifjxnoJ8cZxl3M9xxW5Dpa+WRuZZ57NZjOZTDU1NdHlJBIJe52YmDhg\nwABJawEAKIpyuVzhB0RcLhdBEDweL+XQX758MTIykrIBn8/n8XhEIlGWaALl5eWampqybCk7\nPp/PYrGUlZUVGxaCIAiCxJKnUFFRqX9XlVNTlp5ZyEVRJXU7Tw8LRSQGQRDUEk6fPn3u3Dke\njwcAQBCke/fu27dvr66uDg8PT0pKYjAYFAqFyWQK72JiYmJtbf306dOqqip1dfXBgwe7uLic\nPXs2NTWVw+Ho6emNHz9eW1s7KioKu2tjZmbm5+fXt29f4SDx8fE7d+5E0f8qNVdX15UrVwrX\nIW/fvg0PD//27Rufz8fj8TweD4fDWVhY+Pv729vbiz2dJ0+e7Nq1q66uDvtRV1d39+7dOjo6\nTXyXHj16dODAAQaDgaIoHo93cXFZvnw5gdCUZ/IQBEEQ1ABE+GuyKdj0tNDlvn+deDV9z7Mz\nSx0UEhOCOjYWi1VdXa3YmBoaGng8nslk1tTUKDDsy5cv/4yJbY4nKitoVH8Zmn7h8XgNDY2y\nsjJF/cnCrFmz5sWLF/UWKikpkUik6urqRh0LQX78ORW8wOFwfD5f8CIgIGDq1KnYxnFxcQcP\nHhSNb2BgcOLECRwOBwC4cuXKoUOHBEEEsCXz588fN25cvd0vXLhw4sQJ0cTCw8P19PRkP5d6\nIiIioqKi6i3U0ND4999/sVTF0tLSotPpXC5X7uO2QRQKhUql8vn88vLy1s5FwdTV1VksFovF\nau1EFIlEItFoNABAeXl5vd+j9g67Zazwb5DWhcPhsOfAdDqdw+EoMLK2Npzir72SZx4VsUhq\nVn8eS1rYiRq1wiOrjqeosBAEQc2kpKREtEoBANTV1TW2SgEACLYXvBBcGPH5fARBIiMji4qK\nsCViqxQAQEFBwePHjwEAlZWVx48fRxBE9OoKi3b8+HHRa+Xw8HCxiQUHBzfqXISxWKxz586J\nLq+oqDh58qTocgiCIAhSFIUVKlg0/6mmfC79c22HuoUGQVCHFBkZKWmVYp/bYAF5PF5ycnKD\n8Z8+fQoAePnyJYfDkbQZ1hnm1atXwgvT0tKwBmyiCgsL5cwbgPj4eEm3op88eSJ3WAiCIAhq\nkIJbGOe/q8ThqR4aSooNC0GQ7I4ePXr06FGFh2Xb9FR4TABAaur7ESNGNEdk6Xx8fIqLi1v4\noNgzEDabLWWbvLw8AEBFRYWM0QS+ffvWtOzEy8/Pl7RKsc0LIQiCIKgeeQoVQTdNYXxudcqt\nE773cinavjINSQNBzSD1zr/n7iZnZOQjqnqOQ8bN8fag4JDWTqqlzZ0719fXtzn6qCgwoICt\nrU3ozh0NbtYcfVTCwsLevn2rqGiywNpvrHd6AAAgAElEQVRJCw8UJsrExAQAoKWlJWM0ge7d\nuzctO/GMjY0lrVJVVW2OI0IQBEEQRp6mX2RxlFW0nSatYvAQn3/WKzpJCJLJ5/NrVx84x9K3\n81u4wHOQ6aOLB4L23G/tpKC2KyAgQNIqBFFwfYsgCIFA6N+/P/ajlD7oLi4uAAAHBwcymSwp\nDQRByGSyg8NPw5aYmZlJGrlY+vDH0rm7u0sKO2QInEcLgiAIakbyPFGZNGmS2OXK2iauExbN\nHGrapIwgSC48du6GqBT9gUGhf7gBAAAY4tyZuyDs7/g5LoPVYFtESAw1NTVXV9eEhIR6y1VU\nVEgkkozDOmFjfGEVhdjBvrAXKIrOnTtX8Axk5cqVO3bsEH06ZGFh4eTkBACg0WgLFizYu3ev\n2FG/UBRdsGCB6Kwvixcv3rdvX72FOBxu9+7dspyLWAQCISAgQHQwMX19fR8fH7nDQhAEtXco\nv+Z82OYj0Vfffsqs5hL0DYydho3/PSTYzUTWyZGhBslTqFy4cEHheUBQEzFLYmp46OgZjoIl\nhoOXUf6eEne3YPAkU/lionwewOF/uaZjv5KQkJBevXodPnwY6zeCw+H69eu3bt266urqs2fP\nJiYmlpWV6evr5+bmCg893L9//06dOj158qS0tFRfX9/NzW3QoEFnz55NSUmprq42NTUdO3as\nrq7uv//++/XrVwBA165dfX19hZtmubm5GRgYBAUFCXd/nzp1qr+/v+ApyrBhw0xNTc+cOfPp\n06e6ujpswkcikdijRw8fHx8rKyvR0xkxYoSJicm6desYDAZ2Op07dw4NDaVSqU15l7y8vCws\nLPbu3VtaWsrn88lk8ogRI+bOnduUmBAEQe0ayq9d4tzlQFKRgf1I7zlj9dWIOV9fxZzYfulU\n+L7klEW9Gm6+C8lCnnlUXr16RbOwtVQT08y6JutDWiXJvpelInKDoEZgZO3wXvx0wrHoAL3/\nT5uN8nwnTMR1WR0R2lfMDij7wfkT1x4mZxdVApJq5272XrPn9TemAgAO+E/+6r7lN3ZU+PVX\ntShJx8hsxJQFkwaZCnZ9fSMi+vqjjPxygoqOtaOb/5wpnch4AACb/unU4TOvPmeVVLI0Dc2H\nTJjt7S7malIAzqPS6vOotDpVVVUlJSU2m11VVdXauSgYnEelfYHzqLQvcB6VRmmOeVQyLo4x\n94pzWnMtceMowcLa/Pi+lsMzKIOrSm4T4G1ORZCnUEEQZMjljPtjTUVXvf7L3nFXEbdO4igx\nENRMODUpXtPXGg5fd3BBb2xJ6cuDMzfeUjVc+O/h4aLbvz+xdPXVbNfx3nbmupyq/PhzF79y\nzM9H7cAj4ID/5CcUGso18J06TJfCiY8+kZhduzLy3EAaCQDwMWp1cFSqhcuYoX26MAvTLl+8\nWafZ7/iRYFUcZ53f9I84y8mTh+hTkY9Pzt94UeR3OGqigbLwcfv37y+4dJs4cWJISEgzvzGK\nkZiYuHTZMhyZLOP2KI+H8vkIDodI6N6A4XM4M/3958+bp4gcIQiCIKi+6upqrK5TrOsDDEcn\nFSRV1fVX/enG/bOF1k4HP0YV107VoSj8oL+gRjT9Cv/nbzr3xw2JnLhTYZma9bdAuU+jMwCA\n/QGgVkCk9gp0Ndx3e+N6xMu5u2FlTmrslUQNAo4DxJfiqXnUPu5/BQX8qGoczT/7B7/KreN1\nJuMBAKxiTujZ9RZkPACglzV46rfvQTFzII3EYxdsOf9e13HpnhVYN+LB7g7Kvssv7EsuXmX9\n5Q2d3XfHSq/uGgAAZ+feNfvD6/Jqwc+FSjs1YMCAZ0lJjd0rdMcOPkfaULwAgMqiwh2bNkpa\nW1ZeXlRSoqejo6Up8genadS1tOctWKDYmBAEQdAvgqxBAgBcfFve30VfeHnvzdfeL6jV//9E\nHdVZj/5atSXmfnJRLc7Mym7a/OVr5v2GA4CR9a9hFz+9yae/nfXGtix8tNrAdevwPa9vLbMH\nABQlnw9av/dOUiqdgzft0ddn4V9rA9xa9AzbhkYUKpuWB31n/bgT/PXExqUSNjP9TfETOECQ\nLNyWhXH1Dt9MfHj4ToVap66zth5JWD/ru5K62I2nrd0CAAAot6K0pLgw73lcDgBA0F2Aqu+H\nVSkAAIKyFQAA5aMAAGbJJQYPnTDfSRBHzcrXXuXKt5hMoqOtLgmfGrr78tSRvWx6mBpoBgUF\niR43ODhY0AKhU6dOCn9wr6ysjMPh2Gy29Mk6WsbVq1dXWpk2JUJSWcWHwlLDyrLuWhoKSgoA\nAGq5vH9LKr39ZG3J1nzIZDKBQODxeEwms7VzUTAqlcpkMjtYexsSiUQikVAU7XhzyCgrK3M4\nHMW2t2l1eDyeQqEAAGpqajpYq1ElJSUgYbqI9gtBEKxDHZPJlDR9rRya6VNts3oSuLF7n7tN\nztwFkzxHDnFz1FLCAwBIGmbW//++qsm/bNd9cjZi5D1jjoU2PuXhhfXzR11OPPUmIkC1s/ed\ndUcGrvPdGDh0bT9dXl3WhDG7tXoGXltqDwAoeRlq5byKqWQx3X+huSrz8ZXIdTMGP05/eHeT\na3OcS1vWiEIl8sZtJh8FAHh4eNhvOLNroL7oNgRlrX797BSWHQQ1BoKQhnovGer9/59R3nEm\nR9Na/J14+uf4gxGxbz5n8ZVo+oaGnQx+akxKoNYfTwnDriwFAFgp//SLY0UhpFUVIYR+YXtX\nn4m+Fhe+9ySDTVLTd3Aa4jfby5D0U9uncePGCV43Rx8V7FuZx+O1hbbmCIIM19dpSoRyNudu\nYWlXVZUmxqmHzuGcKa5oC28RkUjECpVmTebNmzdfvnypra01NzcfOHAgl8sNDw//+vUrgUCg\n0WgGBgZ8Pj8rK6uqqkpdXd3Dw2PQoEG5ubkvX74sLi42MjLq16+ftrb2uHHj6urqsCHOAgMD\nG5ymk0qlZmdnJyYmFhYW6uvr9+vXT09P7/Tp048fP2YwGBQKxdra2sDA4N9//0VRFAsbERGh\npqb25MmTzMxMKpVqY2NjY2OTlpYWGxubk5Ojp6c3cuTIeoMyi8XhcJ4+fZqRkUEmk7t162Zv\nb6+Qt/H69euHDh3Crp+MjIyOHz+ukLAlJSXJycn5+fl6enoODg5NGUtaWERExJ07d2pqatTV\n1WfPnu3s7Cx9ezKZzOFwWuWXgs/nnz179t27dzwer0ePHr6+vtLnGpIRk8mMjIz8+vUrmUy2\ntbWdPHly02MCAGpqap4+fZqTk0Oj0Xr27Nm1a1eFhG0sAoEAAGjw/ys5OfnWrVslJSUmJiaT\nJk0yNzdvkezkhMPhsEKFzWa3/ZpZb0Bo4gnygvX7z/+z6fw/m3B41V7Obh4eQ718/Pua0rBt\nQofNzkYsErJfO2lhDae3X/7DfvyeGVvWjV9trtZ/9W3/cINtI6fOLbz3aO6w50zNmw+2ExAA\nALpo1Domqev9by9d9JUBAPzNa1c6dt+zdcTjFXQXmgJ+O9oRefqojBw50m5t+DYnveZICILk\ng6J1T548p1n06fX/plY1BWenzYv22Bu5pEv9qoNXlxUwLVCpj1fwLE8LfRoAgJGzzXth0r7z\nseZk/AH/yS90V0Xs6vNjY3bu+EkLHEJPr7VSZ+Tu915wb8bJ8+O1/+utsdF70je9oNN7Bghy\nKc1Nf//22elTl9DuC09t9pCUczvqTC+f8WPG3HNp+LJSiqjs/ANfMxdZmk4zMVRUVgAAOocz\nM/VbeFSUAmPKp7k709Pp9G3btgnPa6mmpsZgMKQ/6KDRaDU1NYI7mgQCQbRPPJFIjIuLkxLk\nypUrx44dE+yIXVc1tm+9pqZmRUWF8PdUt27d9uzZI2Uims+fP2/fvr2wsFCwxM7OLjg4WF1d\n/MNVGY0dO1b07nVYWFgTr1NjY2NPnToleP6Jx+O9vLyEB3+TA4vFmjJlSr1sDQ0NT548KWWv\n1upM/+nTp5CQEOHjEonE4ODggQMHNiXsvXv39u7dK3xXnkqlhoaGmpmZNSVsUlLS3r17Bb+t\nCIK4ubktW7ZMIZVVozTYmZ7L5S5btgwbeFBgyJAhK1eubPbk5NW+OtP/H5r9/tkDTPyTvCo2\nghCGLT5yK2wmt/YDWcW2R1DyO6ERfdj0R0rqrrbLn7/b1RcAUJ173shsmtaYSVmxFyad+HRu\nRlcAALP0krLOJJvAZ6n7+gl2rPi8QrN76ODz6Q+82nS1qXDyTPh48+bNelUKqyT16rmohy+/\ncDvUk1WoPUEQpSv/7AvdceP/C9Dbh+/hlTr5///GhrA6egKdy3eePR6rUgAAeU+KZDmKsu5E\nZTxy41iyYAn9W9RLBrvLePPKL3v8/f3vlLMAQLSNLdxG+3jrK1dnvWnieUFQU2zbti0lJUV4\nCZ1Ob7A5VlVVlfAVntjqgsPhrF69WlKE+/fvCx4+YHg8nhwjgJWXl9e7m/b58+dNmzZJ2p7B\nYKxZs6a4uFh4YUpKyvbt2xt7aGFLly4V28YmMDCwKWGfPHly5MgR4QsyHo8XHR197dq1poT1\n8/MTzTY/P3/Dhg1NCdscuFxucHBwveqIw+Fs2bKlKaV7UVHRnj176rUdqqmpWb58eVPaImZn\nZ2/ZsgUb+xuDomh8fPzhw4fljtl8Nm7cWK9KAQA8ePAgOjq6VfLpuBATG6eAJatPX76fW1n1\n4vpxVz3S7f2zAm7nsspv8lA0dbcjIkRJ3RUAQE+lYzurGE++u9E5I+a8Vu810TN+3PVgVdwC\nAJj7/VRUq3TyAwAU3CkEvxh55lEBAL247ffQs3dn3X03R5/KyDpt021WNosLAOg0aHHK/TAN\nOCQb1BqWznJc8PfpkP11Q201v768ff1NqXvgITVx86AoqbnS8DH3Q4938XImc6o+Jd+58bEC\nAJCU8lnboYeUQ+BJRqsn9Fh9YffKfRlD7buwir7GnLuqrDsgaIAehT2aV/XoZMj26jED9dSI\nBWkv/s2t7jJxTHOdLQQ1JCMjQ/hZisK9evVK0qqLFy/Wm6pSgT0EkpOT+Xy+2Icq9+7dE76O\nFBz67du3379/l7vdy5cvXyStevz4sYuLi3xhY2JisJl5hBciCHLx4kVPT0/5YrJYLEmX+MnJ\nyWKXt6KrV6+KrQD5fP7JkyeXLpXUGbYBx48fF1uQ1NTUPHjwwMND4lNu6eLi4ng8nugn+fbt\n2zNnzmyOcaXkxuVyX7x4IXZVTEzM1KlTWzifjodXlz1paqCh25Z/AoWuGRAlh99mXUmsUTMP\nvLM+BVwiAQBsV57cNaR+iwAltf96SaR/LgQAMDKeFrH5+iTsz5qYv5YIQgAAoL/eAwF5CpUv\nx8Z6/RmHJ6kvwiEAgMOeQbkcpSVbdil9jtwV+bfnnjlPVtoqOk8Iapjx0FVr2Scj4+4fTKjW\nMO7qt3LfJGfxrb3xSp33rf/9QPjlf3Y+UtEzsR04+uRC662Byy/u2NglIlL6UWx9t67ViIi+\nkXAk4QqBqmXjNjlgzhRVPAIoVn9vXvRP5JXzpw6xeDgtQ9NRAStnjGuF5stHjx49erRNjGmh\nRJA2NnHrqqura7CXRbvm4+Ojry+mJ2EL4PP5mZmZzdd3mc/nFxQUiO3L8f3793oFkkB6errc\nhYqUcwkPD5e7UPn+/btoZBRFi4qKamtrlZXlGTDw8ePHkla1wYEN3r9/L2nVt2/f5A6bmZkp\nadWbN2/kLlTS09PFLufxeFlZWdbW1vKFbQ45OTmSPrSilTwkBzxJP/FGXN3bbv8Ebqu3iqRm\nDgAgaZLJmr/hkaXcyq7DhwtahgMu8/Olqyn6vX78dhck/OUd+XX0zrX3gze5L7764cg4AABZ\nYzgAJzL+zQS9dQU7VudGAgD03H+5bhfyFCrb1jwgUXsm576wUyfx6jLXf6wwHnYx7M/xAATm\n3Va5sncvWCmtISwENR+HUTMdRs2UZUvtXsPX7/1pfpXNh3+UKP0jzgsvx5OMr169KrQAcRgd\n4DA6QDSmhrXHX9vl/ApUoLlz5/r6+raRPiqtnYJESkpKt2JiWjuL5u2jcv/+fYXHFCalHwUO\nh1PgoD1i44tdLvqAQnhVc2SClzpTkNzkzraZTrOZSOlr1AaPKGXflj8R6dpaPh0QQjowymRy\n7HbvfUPPLB3y328dyj6+YCkAYPLmXgSy9voemhsi/e9vSHHX/1GZRC0c6x/+NaKwGgDAZX4Z\n47lLx+HPqys2xJdc8widtGt+0Qp7LYr2xAk6ynFHZiUFv3DSIQMAUG75Nu/jCE5p7ehOrXG2\nrUmej3JsGVO793Y7dRIAoCprTy2P7/gXNlorMqO3NrPsikIzhCAIguTRWuMR4XA4S0vL5rti\nJhAIBgYGYld17dpVUqFiZWXVHMnMnz9f7n27desmekGJw+E6deqEDd8nBzc3N0nvfBu8eO3T\np4+kVTY2NnKH7datm6RV/fr1k7SqQZI+QgQCwdTUVO6wzaFTp06SSugmjioBCUw4e3+6tcbZ\nZe4GtoNm/L5k5aqVi+b4OlrqLj6Xbjfj6E57bQDA0hsHDfmZI7vYTJm1dOf2jX7DrP1Opdn4\nn/bVVQYAHJ06/E2dVvTtNQgAblvvjtRWWjd0WjGHDwDuUNwaJdZHty595i77a9uaP0b2stj5\nsmRwyA139V9urkJ5/mwpIYig+Vz6iQQEQYJsf4wAy+OiAG10d0kIgiBI4YyNjeUeOkmWMmPo\n0KGSVmGN4JvpylhK050hQ4ZoaWmJHnfgwIEmJiZyH9HJyUnSqt69e8sddsqUKSiKCmeLIAif\nz58+fbrcMQkEgpaWlthVw4cPF7u8FY0cORIbjrYeIpHo7+8vd9g5c+aIvUzX0NBocJhmKcaO\nHaukpCT66ZowYYLchWUzweFwrq7iJ9zw9fVt4WQ6KjzZ7ExKZnToKnvVsuvRp/bsDjtzOYHY\nZfjeqKevT87BtlExmfzu3bWZw0wexZxYsynsRYnmumM3X5/0AQBkX12w8GrW6L/vDdZQAgDg\nCJqn725gl98bsuQaAEC3X3BaQuSE/ioxJ/esDT32jWy34VT8/c1DWvF8W4s8wxMvN1H7u9Iq\nreSZCaFmtK5+AtGrujACAMBn5ztqm31UGlVb0voNKiCo7YPDEzcIDk/cREwm88CBAw8ePBD8\nqTc2Ni4pKZE+T5yBgUF5eblgG2Vl5dra2nrbaGhoREl9A58+fbpnzx7B55BKpaIoKhpHGIIg\nZDJZMPclgiCmpqb1urs4OTmtW7dOSpCcnJzQ0FBB93cEQYYMGbJo0aImXkr6+vqWlJTUWxgd\nHd3E+9Px8fEHDx4UdBugUCgzZswY0+Q2k1OmTKHT6YIfEQTp0aPH7t27pezSWsMT5+XlrVy5\nsqysTLCESqVu2LChKU9UAACvX7/euHGj8Ono6uru3r1bR6dJMzJ9+PAhNDS0oKAA+xGPx48b\nN27mzJnN1AJQigaHJwYArF279vnz54IfEQSZNGnSrFmzmj05ebXP4Ymh5iVPoZIZ42c2MVLZ\noLs1reDFl8rB+94/CLTOvb5r3p87brwr673q+avtfRuOAkG/PFioNAgWKgqRmZn56dMnNptt\nZmZma2uLomhcXNz79++JRKK+vr6qqiqBQMjOzi4uLtbR0Rk6dGjXrl0rKyvfvXtXXFxsYGBg\nb2+vrKy8YMECrKs6iUQ6evSorq6u9INqaWnl5ua+evUKm/CxV69eqqqqCQkJ169fr6ysVFNT\ns7Oz69Sp0/79+7FZw1VVVS9cuMDn81NSUrAJH62trY2MjMrKyi5fvpyVlWVkZDRixIjOnTs3\neL4oiqampmZkZJBIpO7duyuqWc6XL1/++uuvmpoaAoHQr18/KaMzN0pNTc2bN28KCwv19PR6\n9uyppiZ+ttnGio+Pv3jxYllZmZGRUWBgYIMPlFqrUMHEx8e/ePGCy+X26tVr1KhRConJ5/Nv\n3Ljx6dMnJSUlBweHAQMGNLyPDDgcTkpKSnZ2No1Gs7W11dNrnc7NshQqAIDv37/fvn27oKDA\n3Nx8zJgxWBnQZsFCBRIlT6ECAHjw9+8LdkR/LeL0Hr/0ftQmGh55vsy23773PUYGJVzZpU1s\ncw1hIagN6vCFytjRo+eYGTclwpuKqqel5QO1Ne01xMyHIzcmj3e9ovrXKVRahZaWFp1Ol2Pu\nlLaMQqFQqVQ+n19eXt7auShY6xYqzYREItFoNABAeXl5Gxz0rClkLFTaF1ioQKLkm0cFDFl8\n6PPiQxwUEP/fjLnrnMMv51v06frLjZsGQZAkU6ZNq2za0E8qJSU9CwtV9PXpenoUMrmWyQQK\nGvR2PE2RlQ8EQRAEQQona6GSkpJCIJtad/3pkTRRqLOlWo+BfQB4H7o+oqhm165dCkwRgqB2\narq3t6JC4fF4DQ2NsrKy5pudA4IgCIKgNkXWNlp2dnau424KL7kzrLeZmVm9zb6d+ic0NFQx\nqUEQBEEQBEEQ9KuSs+kXAKA2Lyczs1SBqUAQBEEQBEEQBGFgr3cIgiAIgiAIgtocWKhAEARB\nEARBENTmwEIFgiAIgiAIgqA2BxYqEARBEARBEAS1OfJ3pocgCIIgCIKgX0ppaXMNJQUnphQF\nCxUIguRRW1tbW1urwIDYHO0KDAhBEARBULvWiEKlKnvT4MFHBD+WZtEBAIMHDxbeBlsIQVCH\nF33+/KUbN/FUqti1fDYbZdchJCUciSRLNF4VPXDevGHDhik0RwiCIAhqTXw+H4eD/Szk14hC\nhVP78eHDj/UWPnz4UJHpQBDUTvBQNHOIR7HzILFr9RLijeMu53q6F7kOFrtBPVZXYxWaXaO9\nevXqzZs3M2bMwOPx2JL8/HwqlaqmpibYZvTo0WvWrOnXr59gSVVVFY1GE/yYn59/9+5df39/\nKQfKyMjQ19enUCiCJf/888+cOXOamH9VVZWKiorg6zA3N/fcuXN//PGHlF2YTCaBQCASiYIl\nDAaDSqUKgqAoymAwhE+wqqoqPz+/W7duTcy2njdv3jAYjEGDxH+WBIdWVVVFEESxh5bD5cuX\n3dzcWjsLmbDZ7OzsbAsLi9ZOpAOqrq6mUCiCPxcQJNbr169v3Ljx119/tXYi7Zishcrnz5+b\nNQ8IgqBWMWbMGDabjb2+ePEiDoczMTHJyspCURQAgCAIkUgUbLBu3ToAAJFIdHZ2TkxMrKur\nU1ZWdnV1TUxMpNN/PE+OiopCEGTz5s19+vQRHIVOpy9btiw/Px/7EY/Hd+nSJS0tDfvx1KlT\nCIK4ubmtWrWqUckzGIwzZ87cu3evpqZGSUnJwcHh/fv3gkzu3r2LIIiXl9fMmTMFu/D5/Nu3\nb0dHRxcVFeFwODMzM29v7y9fvty8ebOqqopIJNrb20+YMOHmzZvJycksFotKpQ4ePJjBYDx6\n9Ah7TwAA6urqhw4d0tDQaFS2ooTf/K1bt+Lx+IsXLwpXcQwG4/Tp0w8ePKipqSGTyY6OjrNm\nzdLT02viceWQmpq6atUqPp8PANi8eTMAoGfPnjt37mz5TGTx4MGDffv2Cd5bdXX1bdu2mZmZ\ntW5WHQCbzb5w4cLVq1fpdDqBQLC1tZ0zZ465uXlr5wVBHRYi+OKBIKiFsVis6upqxcbU0NDA\n4/FMJrOmpkaxkes5durUvjpuQ09Uxsn+RGWdQ28pTb/weLyGhkZZWZli/2SNHDmy6QERRMwf\nUgRBIiIidHV1AQBMJnPSpEk8Hq/BUP369duwYYOMx2UwGIsXLy4sLGwwPeFaZffu3VgBI6jE\nJL2QfoI4HC4mJoZMJks6rpaWFp1O53K5kjYQ++YjCHLz5k3sNZ1OX7x4cUlJiWAzBEEoFMq+\nfftMTEykn7VipaenL1y4UHS5np5eRERES2YiiwsXLpw4cUJ0+aFDh6TUKurq6iwWi8ViNWdq\nLY1EImGPBMvLy7Eisyk4HM6KFSs+f/4s+I3A4XAIgmzatKl3794KSLcxVFRUAAAK/wZpXTgc\nTlNTEwBAp9M5HI4CIyu2k7rsnekb+0QFdqYXBZvNQRD0i4qJiVFI2SM2CIqiAQEB2Ou1a9fK\nUqUAAJ4/fy77cc+fP99glYJlcuHCBez1+/fv7969C4RylvJCOIJoWD6fHxQUJHu29WzatEnS\n+zZv3jzsdVRUlHCVgq1lsVjHjh2T+7jyCQwMFLu8qKiohTORxalTp8QuX7NmTQtn0sHcuXMH\na10i+Ezy+XwURcPCwuA9XwhqJnDULwiCflHNfb0ruIMraOLVIBRFmUymcNsnKRITE2UPi71I\nTk6WcRdZZGVlyb2vlOQFYZOSkkSv//h8/qtXrzgcjnDvmuYm5bnQli1bVq9e3WKZNCgrK0vS\no4OysrIWTqaDefbsGQ6Hq/f28vn8oqKi7Ozszp07t1ZiUCuaMGpU07eJuX5dQel0QLBQgaCO\n5ujRo0ePHm3uo3S3tQVdrBQVjcfj7tmzZ8+ePYoK2KZIucwVlZiY6O7uLsuWVVVVjc2ETqeL\nXmnJrSlxpNyBFvSYF3S2ET0ug8HAmoi0uoyMjNZO4SeZmZmSVsG7/k1Ep9MlfeYrKythofLL\nuuvWr+GNJBv6UJH3jzoeWKhAHcq3hIvhcQmZ2QUEdX0rO+fZsyfrkn659o1z58719fVtgT4q\nd+oacf0tHR5PCAoKauE+KqNHj25UCdFYggtuIpEoY9MvAMCAAQNk3FJbW7u6urpRb4iWlpai\nqhQAQFPG3MTj8Q2+Jzo6Orm5uaInSCQShcciawFie+lgevbs2ZKZNEjKmGxtYcy0dk1XV/fr\n169iPwk6Ojotnw/0q/HQoNyvZIV8Lt/a9aeBTO5OtRh2Lt1maXLqXsfmzkGTiB//sfSEpQYA\nAEGQP75XhpqpNbhXU/xy13BQB1by4nDQ7tMl1G7T5iwY69b9w93oZSuOw1uIkCSyd1uXj+A6\nvm/fvrLvJWO7LwCAq6trY8u2QYMGKfBq1c7OTu59vby8JK0SjJYm9gQRBHFxcSEQWvQuG0ny\ndEBLlixpyUwapKenJ6lRnJGRUSwfBZYAACAASURBVAsn08G4uLiIHVXCwsLC0NCwVVKCfjU4\nAi76z5+fwKDsFddziK1xG2L+/PlOqjJNldYUsFCBOo7LB+OV1AYeWL9w1NAh46cv3DHfmpFx\nLbaU2dp5QW1Unz59mnK9i13xS7nuv/7/ZserV6+WsfyYOnWq7AlMmDDB2tpaeg6YjRs3Yi+w\nwYiBUBGFIAi2O7ZE9KQkBScSiVu2bJE923oCAgIkzUGBDf4LAJg0aZLw8wEsE11d3dmzZ8t9\nXPlERkaKXW5vb9/CmchC7CDXeDx+9+7dLZ9MRzJo0CBXV1fw87NECoXSlFElIKhRzPwG595a\nxuT/VzBXft3wgWc8XVe55ZM5dOjQRO2fvtq4PMXfHJa/UOFzy5/cvHQwbPe2LZsBADWZWQpr\nTwBBcnlXw6YaDiX+/7JK28ERAPChki13QJTfDL9zUFty7dq1egO2IggyevRorIBBEIRMJo8e\nPVpwsY69oFAoPj4+ZmZmVCrVwsJizpw5jo6Owhf0OBzu1q1bwmFjY2P79+8vuL6hUqkLFiwQ\nFAlY5G3btgkGCpMFiUTauXPnggULLC0tqVSqmZnZ1KlTPTw86mV7/PhxR8f/2gP4+Pjs2rWr\nd+/eampqurq6rq6uR48eDQoK6tq1q4qKSqdOncaPHx8ZGTlt2jRzc3MqlWppaTl//vw//viD\nQCAIyhhra+u4uDjZUxXr+vXrws36EQTR0dERft/IZPLu3bvnz5+PnaCpqem0adOOHDnS8r1T\naDTalStXBGMxY+/D7Nmzt23b1sKZyMLZ2fn48eOampqCEtTKyio2NlZ49lJIDgiCBAcHh4SE\n9OjRQ1VV1djY2NPT88SJE3AeFajFaNlsMwfpqz+WC5Y8Xx1t6LZXFf/jzz6zOPH38YP01VUI\nSspmNi5bL/w3C2LmrcOj+vbQpCppG5mPnb+9iocCADjVH1ZOH2llpK6sruc+dXlqNQcAANA6\nBEG25DAE+xoqEWZ9raiXjDIetzyDjq3d+jFhdHddEhGvZdRl9qb/ZnDm1n4J9h1upKlCoqrZ\nuXmdSykHjSTnPCoF8QfHTl/xorAW+xFF0aczuo16qLrxyKUlw1p0eHsIEjgyY8p9vvO5iMXY\n72tR4qY521/4nDw3WVvczWyU/eD8iWsPk7OLKgFJtXM3e6/Z8/obUwEAB/wnf3Xf8hs7Kvz6\nq1qUpGNkNmLKgkmDTAW7vr4REX39UUZ+OUFFx9rRzX/OlE5kPACATf906vCZV5+zSipZmobm\nQybM9naX1t0czqMi0FrzqLQ6VVVVJSUlNpstR8/4Nq7BeVTaIwqFQqVS+Xx+eXmjv27bODiP\nSvsC51FplOabR2XCqFFN70wvGPVLep4eGpTq9S/XJXjOZ+3NujEWAADQOltVVfdnBbzhpg8n\n30/d6xhoqRGlOeXUrhlGFG7C2ZVBf6d+q64wI+PZVY+1Nd1cQg6vGedQm53kN22J6faUJ4GW\nAVa611R+O7ZjoT6heP/CmXdws8o+hAK0DsGRN2dXre6kih3aUIkw8n3JCUsN4T4qynjcgm8V\noWZqhkoEVE3Tf+sJ/8FWn69umRAUuSGTvrYzDQD+vO7aUcw+/4QFd1Wvi9kbtPtWzYPidBda\nIxqMydPsoTr3nP2IJSV81elLg6xxMav3fAQAGP02UfP8rmWjbFXTcmaYtWg3RwjCTP5jYvya\nf5fv1hjv0o1d8in61GsDRz8vsVUKAO9Prgy7mu063nu0uS6nKj/+3MVdy4vOR+3A7koUJe44\nyTXwXbhcl8KJjz4RuXuZgd25gTQSAOBj1Or1UakWLmNmTuzCLEy7fPH88pSs40eCVXGcLYvW\nfMRZTp7sr09FPj45f37/CnKPqIkGPz2Q7d+/v+DSbeLEiSEhIc3xVlAoFNm7OshHTZVmeiXS\n9Jb4QRVRPh8QCCa3b3S+e0vsBiI7oGrugxv8LtHS0mpsnu0CiUTqkPN8qaurt3YKzQKHw3XI\n/y8VFRXs8rfjaSNjxCmclBlX2zXFPv1r1nKOg6ItPGxX/21T8u2WMXhjVPFIRdq6L3yz5B6a\nguaepnNDTgQsHqVDAQB06/Ln0n2j39SwzcgUVvktBo8/b4F3fwNl0Mf+3iWDr8pa5Z9WnP7O\nflgePkiNBADoeb90tPfZAjbfoPFjv6uPi9o+2x0A0H3Z6V5rzyVlVYPOtKqMDUc/V0TkXvY1\nogIA+jq7PNLUWbLz/ZvNjZggVZ5C5fyUpSU8ckRqhk939ZzbyVihYuq1JcWhn4nV+D+nn5+R\n1NINiCEIAKDefeSkPrdPJ5zfmQAAAHiS7krfEZIa76fmUfu4/xUU8OO3xdH8s3/wq9w6Xmcy\nHgDAKuaEnl1vQcYDAHpZg6d++x4UMwfSSDx2wZbz73Udl+5ZMQQAAMBgdwdl3+UX9iUXr7L+\n8obO7rtjpVd3DQCAs3Pvmv3hdXm1wKAVWo62gAXz5y2YP69Ru7x48eJ6zCUg4YnIi8ePXzx+\n3GCQisrKkvJyHU1NjZa/CMbhFi5bBof3gSAIgjBEBGnh4Yk1rDbYEPasfFd6yF4n+c/zRkP/\nVsb9d6WzNOj3+KuXdr7/kpn5/e2T/+4kqhgv8+l7aoKpmevIYc4DBw4dOc7TRv/d9kSyxjCs\nSgEAUA3nxMfPAQBI+pqWostsG8FrbQIOi1D89CFRuZufERVbjuBV/7BQm3fpA2juQmXHmzJN\n60M+3etfJaiajTlgoz3j3W4AYKECtTw04q9FV9M1F64PGWDdmVuRcyNy145lC5YcPjJEV8yz\nhWlrtwAAAMqtKC0pLsx7HpcDABCMlkrV98OqFAAAQdkKAIDyUQAAs+QSg4dOmO8kiKNm5Wuv\ncuVbTCbR0VaXhE8N3X156sheNj1MDTTF9rDcunWroAWCrq4ug8H4H3v3HdfE+QYA/L1LSCBh\nbwFBEUHB1Yp7i1ZQXFXcgLaK1r0X1r1QHHVLFUXcW0TUOhAFt7hAERFFtrLCDCS5+/1x/V3T\nLEISZp/vp59+krv33ntyXOI9d++QLqMOLpeL43hFRUV5eblma1bf+/fvi96+/slMrVub0Tl5\nMZnfm5UVdSnX8KGr1IGvmVlZWZq9hamtra2lpSUUCsvKGtqoD7q6uqWlpQ2svQ2LxWKz2SRJ\nNrAmNwghDocjEAg0296m1jGZTOrZclUH8q77qB+iBtZUD8Mw6pleaWmp8kO6V6qBNUBFGCtw\niO3EhZH7bw1ZcCNt5PN/LkhE5alDWrZ6atDdz6t/D8+uv8wZ16GtJ7UKZ5qGPk1bHnPjr3sP\nYu4e27JsZu+F1zfpEBiu1L9ofKKSrw9bT0ZCQZIkQv+6XcxgYCRZtb+sKolKtkBkaNNE5qpG\nthxRXIYKdQKgprLvZy7G5/dat31AWxOEELK0H7dg24uxE0ICX/Td0l26PC8hcl/IpZcJKQRb\n39LKqnGjf32XmFzZz50rCnIQQo6cf31xHHWYiYXZGLPTHzv8j58Ov3p0R3BRBcvA0rVLX5/J\nXlasfw1t1LdvX/p1dfRR4XA4CCGRSFQHExWhUNiYo9PbXK3mW5n8coS+N9PlqlmPCk5+y9N4\nBkiNe0sQRB38e1VVRkbGkSNH0tLS9PT0unbt+uuvv86ePfvt27ckSWIY1rp164CAgMuXLz98\n+DA9Pb2wsBDDMBaLRX8FcBzX19c/ffq0RLXZ2dnR0dFZWVkmJiYdO3aU7rhMkuSjR48+fPhQ\nUVHRtGnT3r17Hz9+/Ny5c9QqDMPc3d319fVbtmzZqVMnBSOkhYaGRkZGlpSUGBoaenl59ezZ\n8/79+8nJyQwGw9HRsVu3boMHDyZJkkq9MAy7fv26dCUXLlx4/PhxcXFx48aNJ02a1KhRI4kC\nxcXFUVFRz549KyoqMjQ0dHV1vXnzZkJCAhWYlZXV4cOHq3bc5XB3d0f/H9WNy+VSB0QBHR0d\noVBYK+fh169fp02bRh/YhQsXKjnnqWJZWVn+/v45OTkMBsPOzm7r1q3KjPL34sWLuLi40tJS\nOzu7Tp06PXnyJCUlRUdHp1WrVq6urgihxYsXv3nzhgoVx/FrGppTnD7PTU1NO3ToUGkHfWoQ\n6kr/Xnv37r137155ebmuru748eMHKTGNujJevXr19u3boqIiW1vbXr166enpaaRaeriRhpcz\na5brOp9M5/lJ8U8/oubrnP6595efsOB6Cj+Tf9VCC0cIlX47Qa/Kjtm+6VLFzsClLbsNnIPQ\nuwNdf1i02PpeO/66C8+LBa66Wgih0uzQZu0WH3n3xd0QIYTyBH/fZir9di5fqMotJ/PuPQWl\nG05kloxvxEUIkaLi7YkFNn6tKt1QnCqJiruRdviLEBK5Sf3eE0effGcb9JW1EQDVq6IoCSHU\n0pZLL8FwThuu1o3cFIQkExVRecrM5X+w23tt3L/ewVIfIVSUuinmQbZYETlDshoYI4SSSkWt\nOf804fzEF2pZmCKEuI1dpy5ynYrInLRPca8eHztyxj/D9Mj6fhr6iADUXUFBQRcvXqTfvnnz\n5sCBA/RbkiRfv35NXTqLq6j4Z1A+giAKCgo8PT3Dw8PphefOnQsJCaFviIaEhAwePHjatGn0\nBU1OTs769esTEv4Z2Wb79u3iuyBJks4oWrRo8fvvv0v3dEpPT585cyb9UIvH4wUGBu7YsUPB\nPV2SJN3d3fX09OgEIDc3d8aMGQUFBdTbz58/P3jwYMSIEeKDKT9+/DgwMFD89kRMTAxdIRWJ\nu7v78ePH1ekDExsb6+/vT1dLkmRRUZGHh4fMzKrWTZgwQbxrMkmSW7du3blzp5rDygUEBERG\nRtJv379/7+npuXDhwn795P4gFxUVbdiw4dWrV/QSiYk+27VrJ76WJEmRSOTu7u7l5fXrr7+q\nE63EeX706FGJ81wFfD7fy8uLvtzPy8vbvXv3yZMnT5w4oXhDxUpLSzdv3vz06VN6SUhIyNy5\nc7t166ZOtaBKDJou68DeMGjc4cbup7XFzhG2SQeSOBd4+t7MPk3T4+9vXuCPEHr36dtQEzu2\nedEf21bnGVpOH9Qe433as/eDgdMC03azB1ucG9TP7/Cm36xYubumz+PrjnA3YiOEOuuzT0/Z\nOG7fdFbeuw1+03CV5mkxaLrmV8e907t7MfYsdTKoOL9t9iO++W3/1lWqRJXvwPL5P5Rkh/Zb\nElwi/iSIFFxa7RGaXeL4i78KdQKgJh3TPhiG3Y74RC+pKHp9K59v6CJj3uhyXhRPSHSfPJzK\nUhBC6dHZ0sWkccxHcBhYxJ//tCjlJZ16XlTRbLh9wYftvr6+f+XxEcJMbRx6e04Yb8kpTnmp\n3scCoB54+PCheJaiDqFQOGTIEOp1TEzM4cOHxZttkCQZFhZ24cIF+u369es/fPigZOWJiYkb\nN26UbgI0b9486aZ3yrQ8EU855s+fT2cpdHjnz59/9uwZ9TYjI2P9+vXKPESdMGFCpWUU8Pf3\nl/6MJEl6eHioU211SE9PF89SaAKB4OjRoypX++bNG/EshbZt2zYFrYACAwPF8xD0/+yRJrGW\ndv78eZXC/Ft0dLTi81w13t7e0g8lcnNzFy5cqE61u3btok9pSklJyaZNm1JTU9WpFlQNxtzi\n1SQxrmDMpn91j9GzWXRjy/Sw5aNbuHSdH3hr+oX4KR0ar+ne6lWxwLD5quvbZr4OXtKzw4+e\n4+d/bzf53r1FGEP3zNu7o6xT54zr33v41BSXyfee76aqCvtrd4tvZ3u42LfpOjCtw9rRZqoN\nz8PY/yJmamfBvLHuHd2GX81xOf7kVS8DdpWqUOWJSutF12Zecdqz5Vfz0ADXJvkIoSmTxsdF\nX3ucxDNo7hW+3lWFOgFQE0u/2+xeNrvOrliV/3O3Vo0r8lJvX7pSpmXrP62ldGG2QS99xsU7\ngYeaeXXXFhS+f/JXxLt8hNCj1wmmrs4K9sJgWfv/7Ox/btvinZ/7/9CMn/3x4pkwjnnX+V0t\ndCo8RYX3g5dtLh7SzcJAKzPx2Ym04mYjhlTXBwagzggJCdFgbfQV2+XLl3Ecl+jlgmHYxYsX\nR44ciWHYhw8fxJ+lVIogiPj4+KSkpObNm9MLY2NjVR4bmiTJYcOGXb58OSUlJTtb9s2O4ODg\nDh06IIQiIiKUbHZf6QyeCsTGxsrrjFEHO2n4+fnJW3X27NkqTSskLiAgQOZykiR37NixaNEi\n6VVZWVlPnqg4dhNJkmvWrFm1apVqm1+5ckXmeX7p0iXqPFehTj6fL68DZFxcnCpRIoQQys/P\nj4qKkjiRCIIgCCI8PPy3335TuWagjNv5/9xP6XEogTz0z6rd6X//uQcs2vth0V56ufvTr0H0\n6/m73efvlqiTbdxx94XbkksRMus05c7bKSRRlp1HWppyEJpBLc8T/PMjVir6+6TNKP9X/i8e\np5au85YTt7Yo9wFlUiVRwRgGu6KTXDct3RZ04v6jAoTQoaMntU2ajJu/cuumuVYsmO0e1A63\nebu07UMu3YoMulvANWlk385j6i8TWnJknOQMtt3O1b/tOXp575b7uha2rbt5Bs9w2Thn4fmA\ntc1CZE9BTWvtvXGlUcjpiKiDUVeYXJNWvUdNnDJaj4EhHcfd62fuDb1y9sh+vgg3sWoyaOLi\nScOcquezKhIUFBQUFFR5udowrolNbYeguvLyiqlTqzbQWYM3YcKECRMmfP/+XYN10pdBycnJ\n0n3xSZLMz88vLCw0MDD48uWLCvV//vxZPFF58eKFqpEi9P9OAs+fP5dX4Nu3b/R+layTehQz\ncuRIFeJZv369ClvVFgW5kzppFY/Hk7dK3mW68n8dmR4/fqzytvLO87y8vKKiImoemKoSb5ql\nQV++fJH5d8EwTM0DWK/V8PDENQnDdSxreyR2VRIVhBDG0PVdscd3xZ68jJTsvGK2vnET20aQ\noIBahjG6Dful27BflClr2nbA6h0DxJesP/B3itI55Kz4cgbLJiwsTHw3rp4TXT0nStdp5NJv\nxeba75Hi5+fn7e1d3RM+qiAsLKzwRnjl5eoqNpt18OBB8cnU1dcwJnxU5wmANPpKiMFgyCtD\ntd1XUEABia2oTslqUtBLm+5mUKVojYyMNB5JHVRNiYqCE1Le8VHtXFJmj5VS0BFF5T4q1TS/\niryjh2GYmgew/rqocDSF2NjYiIiIFStW1Fg8DY+6yYWxlV3LVi72kKUAAMB/la2trQZroy/O\nnJ2dpS/UMAyztramRhlyclLliWWLFi3E33bvLmNUQOU1a9ZMcSWNGzem96v8xbfKw17t3i3d\niKPuUpAlqtOP3MLCQt6qHj16yFzu6OioTrKhTrciFxcX6Q+L47iNjY3K82927NhR3ip1Dmyz\nZs20tLSkDxRBEBJfKwA0Rdnz9VNVVGvEAAAA6pQZM2Zo8KGKl5cX9WL06NHo39dV1ChM3t7e\n1FtbW1t5153y9OnTx9raWnyJg4ODjY2KLRIxDNuzZw9CyMTEROaFGoZhs2bNol57enrq6+sr\nc6DUeSpiYWEhbxd18GFLWFiYzGjpA6uazZs3y1yO47i8fi+Ghoaenp6q7Q7DsHHjxqm2LUJo\n1KhRSOo8JwiCPs9VI++slh58T3kcDmfYsGES+TaO47q6ukOHDlW5WgAUUDZRcaiKao0YAABA\nneLg4LBw4UJqThia9AWoMrdytbS0Jk2aRL1u2bLlqlWrjI3/mSWAw+HMmTOnd+/e9JIFCxa4\nu7uL70veTXoMwwYOHDh37lzpVbt27ZJ+KGRg8M9kStRsJNIbLlmyhH4dGBjo4uIivpbNZi9d\nurRp06bUW319/YCAAOoJjERgEm/FB2hWwfXr12XeoVez2mri5uYmfWxtbW0rnUhEAVNT0+nT\np0ssZDKZipMfPz+/4cOHizdhoiaLpDAYjOHDh+M4Lv332rt3L1KDs7PzqlWrxBv7cTicuXPn\n9urVS51qDx06ZG5uLr4Ew7B27drNnj1bnWonTZo0ZswY8aS3adOmAQEBhoaSk4ADoBGYkk+i\n582bJ/42+cbRsIQCLV2b3m49mtmYFGd/efP43pu0Ysehy5YPd/L19a2eaAFoUKpjwkcjIyMG\ng1FWVlZn+6j81lSt/vSnvmbs+fhlZvMmY22tNBWYkvziPs5eux76qMgjFAqvXbuWkJBgbGzc\np0+fTp06XbhwYc+ePSUlJVwud8aMGX369ElKSoqMjExPT8/IyCgtLbWwsIiPj6eGPJI3hWJ5\neXl8fHxaWpqFhYWzs7PMqeXS09MTExPLy8vt7e0dHR0RQp6enkKhEMdxNpvt5+eno6Pj5OQk\nPf2iuLi4uLCwsOzs7KZNm3p5eVlbWycnJyclJVETPjZu3PjAgQNhYWHUzCRsNvvKlSvSlSQm\nJkZFReXl5bVs2XLgwIHSDzEIgnj//v3bt295PJ6RkVGbNm3S09N3797N5/PZbPaYMWPGjh1b\nhYMu3+TJkzMyMqhe2r6+vpVWa2hoyOfza2um81GjRhUWFuI4rq2tramhrhFCu3fvfv36tba2\ndq9evegndYplZ2d/+PChuLi4adOmTk5OHz58+Pz5s66urpOTE9WiLDU1lZqeEsMwKyurQ4cO\nVVqnMujz3NLSsmXLlpVOoUi1Cqv0X5CXL18eP37827dvTZs2nT59uqWlpUaizcnJSUhIKCws\ntLW1ldlEUzU4jlM3Jng8nmYnfFRnYiJpMsfUlomaIlb5DjyajbNhUDZREfft8TqbbqvaTd55\ndfdMC3qML7L81IrB4zdFropKXdVDM98EABq2/2CiEnP6ZAcjg8qLypfNL08v41vraFtoV20s\ndvWFZees27YdEhUlmZiY8Hg8BdNW1Ec6OjpcLpcgiLy8vNqORcNqN1GpJiwWixo1Ky8vT3pk\nrXpNyUSlfml4iUpVQaIiTZUWqzvHbtMy/jn6wGyW+PNPjD12w42bh/W3j9+y6ut2uRsDAP6r\nWrVqVT58hGpD+eA4rqOjU1paak6SVGuGmp8SYrAaYzEBAAAAoKpUSVQOpRcbdPiVJaO9Lj7O\nxej4g2MIQaICAJBkb2+vcrtzBoNhZGSUm5tbByetAwAAAEB1UKVZoT4TK0mNkrnq/qciXAue\nWwEAAAAAAADUokqisrSNSWFqwKyTbyWWx52auyGFZ9JmsSYCAwAAAAAAoL4qLS1NT0+v7Sjq\nN1Wafo298Mfv9uP3Tmj75PSkMYN62pnrFn9LeRBxJvjqMwbLcuf50RqPEgAAAAAAgHokISEB\nZqZXkyqJCtd69NsY0VjfObevBj+7GkwvN281YOeR46OtuZoLDwAAAAAAAPBfpOI8taau427F\nj/3wLPLRy4TcQj7X0NylfZceP0jOYwUAAAAAAAAAKlAxUUEIIYQ5dejr1KGvxmIBAAAAAAAA\nAISQeokKAAAAAAAA/1H9hw6ttExUZWVuXbmioXAaIEhUAACV4/P51TQXr76+PjV1NAAAAFDv\nvNqwRZ3N2/nDYLmKQKICAKhcXFzcqk2bcDNzJcsTfD7i85G2Nq6tragYjzd6oIePt7cmYgQA\nAAAarOtdrAY+zpRYqGezqDBVrUwJIYRh2ILkgsCmBioXqD6QqAAAlCJwavFynI+ShS2iIm2u\nXk4bPCy7Vx/FxerIPPPv37//+vXrgAED6CU8Ho/BYOjq6lJvCwoKli5dOnLkyH79+lFLhEJh\nfn6+iYkJjsudkCojIwPDsEaNGtFLEhMTzc3NDQ0NqbdlZWVPnz51cXGpUrT5+fna2to6OjoK\nCjx//rxHjx7aChPFqiorKystLTUxMVF+E5FIlJeXZ2xszGAw5JXJzMwkCMLa2loTMQIA/kUg\nEBQUFCj+pQL1BdfC59qZX8SXMNm26lc7bdq0LnosdQpUH0hUAAD/aTNmzPj06RP1eseOHdra\n2iNHjgwPDy8oKEAINWrUyMzM7M2bN1SBwMDAwMBABoPRsWPHZ8+eCYVCLS2tHj16/PLLL6am\npnSdQqFw9+7dt2/fFolECCEGg9GrV6/MzMyEhASSJBFCbDa7f//+t27dKi8vpzZhs9nz58/v\n1auXglAFAsGFCxfOnz9fXFyMYViTJk0mT57cvn178TJ//vnnhQsXqNfbtm3T0tJau3btDz/8\noOZRevXq1Z9//pmcnEySJJfL/fnnn728vFgsRf9uZWZmbtu2LSYmRigUMpnMLl26TJ482cLC\ngi5AEMS+ffuuX79OHSUMw/r06TN//nwmE/5hAkADvn79GhQU9PLlS5FIpKWl1bdv30mTJtF3\nSUB9xGDbKf5nQg6RgGBoyU9U9+/fL7FEKCKZDExBAeky1UQz6TX/+9uwM6fuPf8grCN3RwEA\nQAmjR4+msxQKn88/fvw4j8ej3mZlZdFZCk0kEj169EgoFCKEBAJBZGTkjBkzxPvwzJ49++bN\nm9T1N1X+7t2779+/p7IUhFB5eXl4eDidpVBLNm3a9Ndff8kLlSTJ1atXHz16tKSkhHqbkpLi\n7+9/8+ZNuszWrVvpLIUiEAiWLVsWHx+v7BGR5c6dO8uWLfv8+TMVf0lJSWhoqL+/P0EQ8jbJ\nysqaMGHC/fv3qaMkFAqjo6NnzJiRmflPu4VFixaFh4fTR4kkybt37/7222/qhAoAoCQlJc2a\nNSs2Npb6igkEgps3b86aNYv+cQMNCVGRsWnGyLbNbbR1TVr38jr6MItabsVmrrgV/IOlHpup\nZenQKejp9+chi1o0MmLrmnYaPjdH8PdvOIeBL/zMo8pvfBfl2dKcpcUwsW42ed0liQIKyghL\nPyz1HmBtrMviGrTr7XXmdZ5GPppqiQp5ftO0zq2b/ZlVghAqSjnmZPvj0DHj+nRoYd97dj4k\nKwCA+uD9+/fy/s2mMwr6hQIkSRYWFh47dox6+/jx4+TkZNVC2rNnj7xVDx8+fPHihXhIBEFg\nGHbgwAE+n08tuXPnjsxtf//9d9XiQQgJBALqXppEWvL27dt79+7J2+ro0aPFxcXiR48kyZKS\nkqNHj1Jv4+PjZaZPqamp6EBPvgAAIABJREFUkZGRKkcLAKAcPHhQIBBIfG1zcnJOnz5dWyE1\nTCSpk52lzn9V2puo/GvMvwlIhBDy7/Xj1ihs8R+hD+9cnNYF/drT4dDHv/912z5827Tg24lx\nMSP1kqf3aP3zafLIzadRZ1a/v7p7zIXP0rvY3dur1YLD8R/fH1rY7fDKn9emFCpXhpjRvsu+\nB8TmI1eiI065G76d0Kntg8KKKh9PKao8Yf/w51Cv5VcZLMOZOIYQOjB4fpqAPXvDVnZC6NbQ\n3YO3T4le3Fr9yAAAoFrt3r1bU1WRJPnkyRPqdUREhMr1VFRUVFRUyGxS9eTJEwzDJBInkiTL\nysri4+Pbt2//6NEjedWWlZWpHFJCQkJxcbH0chzHnz592rev7Km0njx5Iv28RfwohYeHy9vj\nX3/91aePoq5NAADFysrK4uLiZN5nefz48dSpU2s+pIYKJwi7s6dqbHcl2SHdu4eIL8msEOl+\n+yPgyffIvOO9DNkIoR879RJcMVk7/cHkW54IoR93Xpw60AkhtGJfx33dbly7sLk1h4naNF/c\neMWpB9/RGMm52g2Hndo82Q0h1HLesbYrzzxKKUZ2kiNzSpcpJLYFJeSHpF32tuYihDp073Hf\n2Gz2lriX639U8yOrkqhs+v0ui9vmSdqzdoYsUfmX1e/ybX46/8fy4QjNSb+pe2XHDrQ4WM2w\nAAAqCwoKCgoK0ni1Fa3aaLxOhNDbt3Hu7u7VUbNiEyZM0GwTiKKiIuqFzMt65eXk5FhZWUkv\np/qlyLzyoD6Igsc4yjwXkof+XNJ1ylslEonkpUZ8Pl8gEGhpaSk4+IWFMm7gAQCUJ/E8k0Y9\n/q35eBowgsFImDVPnRqqNDyxvu3vvJS1EgvTEm6QJNHb6F9DpxhWfEDIEyFk0e3v/pNahtoM\ntm1rzt9X/iZMnCRknCTNJreiX5sycSTrXw/pMt9i7mlxWvhYc6mFGENvgYPB1AvxqFYSlUu5\nZaZdNrczZCGEClO2l4qIjiu6UIFN+tH09B2YtgbUAn7u5VGTZGTIDHbjS+f21nw8tcjPz8/b\n25vqyaApz58/X37xkgYrpLVu3SpwS0ClxRgMhpGRUW5urjrX3BLevHmTm5urqdrMzMyoFxYW\nFu/evVO5HplZClW/vD4hVA/1Tp06hYaGqrxfeejPJc3cXPZw1dQfq6CgQPqPZWBgoKWlhRAS\nHwlNgniHewCACgwNDZlMJtVDTByGYfD9ani0DHRwpiGvIE28YzuGyxzspPIeH2y9ylMD6TIk\nSSL0r471DAZGkqJKq6qUKn1U2BhGJ1ifDkdhGDa/tTH1ViQkESn5xQCgBjA5LcZKcdRhchp1\nrO3QQB21bNkyDdZGN4Ly8vJSuRIFc19SI71g2L/+JcBx3NzcvEWLFgghBwcHibU08RHJqqpZ\ns2bW1tbSA5uSJNm7d295W/Xt21dmSkkfpZEjR8rbVp0DCABACFGjEUr/IJAkCe0qGx4D+ymk\niHcwQ8D9G2fV0AF+x1XsKqka8+49BaXvT2T+fYeUFBVvTyywGdJK8VbKUCVR8bHk5rxemVIu\nIkWFqw595Jh7U4MrExUZ/k+y2YZu6ocFQFUxdSQTlYGueFKFzrx1Y2s7NFBHGRkZtWkjuz0b\nfV0u79KfRhVo2bLlmDFjqCX29vaqNWbDMCwgQO7DJWdn5zFjxpAkScWGYRiGYSwWa8mSJfQU\nJbNnz5YOGMfxAwcOqBAPvfnixYvF52OhAvj555/btm0rb6vx48dT6RMVD/V/BwcH7/9P7tmo\nUaPhw4dLb9i3b9+WLVuqHC0AgOLn52dpaYn+/R384Ycfhg0bVsuRAU3TNh60o7/1792HHDxz\n/c3Lx9tm9vgjJt13ZJOajMGg6ZpfHQ2nd/c6ff3+y4e3V4zq+IhvvstfA13WVWn6NXPn0G0j\nQp2btnbRz3yWV9Zn52KEUNq1rVOXB7woqvhxuiZvUgKgGpIo/WPNOccxG10NVJ+iiCRECK/+\nQcJB7dmyZculS5eCgoLo2/9t2rSZMmXKmTNnPn78yGKxWrZsOW7cuF9++YVudoVhmJubm52d\n3aNHj7KysqytrXv27Dlo0CDxZw5z587t3Lnzvn37qKZlZmZmv/32W1JS0pUrV0pKSphMZuPG\njRcuXBgYGEjNTILjuLW19bZt2/T09BREO3HixPbt21+4cCE5OZnL5bq4uIwbN87Y2Jgu4OHh\n4eLiMm/ePLrhn62t7b59+9ScmcTJySk4OPjkyZNxcXFFRUX29vbDhg1TPDcLh8M5cuRIaGjo\n/fv3MzIyrK2tu3btOnjwYPFIpk6d2qFDh127dlEt+oyMjKZMmdKzZ091QgUAUIyMjA4ePHjh\nwoWnT59mZ2fb2tr27du3X79+MO1jgzQr/EXpbL+N00dllbNb/NAn9P7l/kbsmg2Bsf9FjPHU\nOfPGuueUM1p2dD/+5GAvAw3EILtrZqXu7v5tesDpj9mCH4fPvXNqnT4Dezqvdaedcc4e86Ou\nbDVVMKkMADXi86XlC8+Qx05s5MpLNMiKu2cPh9978jW7ALH07Fr84DV5amcbLkJoj++oj24b\nBlacOnrtRSnJMrNu6j56+sieTehNYyNCTl+7/zkjj6lr5tKxt++U0Y21GQihCt77IweOv0hI\n+V7AN7ay7/vz5PFujhK7Fe/ISBAEPYmEphgaGjIYDGoGcQ1W++zZs2UXLr0eO0HJ8hb371mH\nX0n3HJrds7eCYuZRkYsM9Sf6eFdaIYPBMDQ0zMvL02AflbpAV1eXzWYLBIKG18PV2Ni4sLBQ\nupV8vaajo8PhcAiCyM/Pr+1YNMzAwKC8vJwe6rph0NLSoppT5ufnK5j2pz7S1dVFag/dUdfg\nOG5kZIQQKiwsFAgEGqzZxMREg7WJz5rVf+jQVxu2qFNbO//Ft6783btbnWa6DZWKiQpFQCKt\n/18E8t7FJDEc2jtBJy1Q+0QVGdPGzbCfu39Zd0t5ZeIOz/UP+9pr+Ph29uaCwozIM+c/CuzP\nngpgYGiP76hoHX1S2Mh7zE/mOoLI04cffi1dHHqmmz4LIfTulP/SU28degzp375ZWVbi5fPX\ny407HTq4VA8XrPIZ9w5vPmpUX0su9i76bMSzbJ8Dp0Y04ojvt3PnzvSl24gRIzTbTaL6PH36\ndP7iJYTM4T9kIUQiUiTCGAz8/62S5Jk66RdfXx+1AwQAAABkKC4upvI6TZFIVNSvEBIVBdRq\nD5D1/umTl++/F5RoG5i0aNe5izNkKaBO+Hw+MI/psLurohPybTq3vduK+RP/Hjivo32C79IX\naeUiO20GQoj/TRB4crWDNgMh1NYFxfjsvPutrJs+S1SRueFsnHnHudsXUX2C+7i5crwXntv5\n5NsSlw8veRUdAhZ7tTRCCHXv/mPJrqPl6aXo34lKPdWxY8foe1Wehm/54kWiym7QvnvxbMmL\nZ/LW8oqK8gp4xoYGBgrbRGlE+65dR42BHk0AAACURecYMsXGxkZERKxYsaLG4ml4VExU8t5c\n9J00Jzw2TXyh9Y+ee0KODWtlpInAAFARSZRtv/TZbuR2bVxR75KxKzcghBApzM/5/i0r/enV\nVIQQ3QyLa+lDZSkIISbHESFEDTde9v1CkYj8eVoXuh4DR+8fdK8kXfyi1bG1OYvxNnDb5TEe\nbVs5N2lkPH/+fOn9bty4kW6BYG5uLm8mCpVxuVwcxysqKsrLyzVbswoeRMdscHZQp4Z7ubnP\nM7JbiSp6M6q32UZ8YdGrp888BnlW616kaWtra2lpCYVCdeZkrJt0dXVLS0sbWHsbFovFZrNJ\nkmxgTW4QQhwORyAQaLa9Ta1jMpk6OjpI/rwi9Rc1vkUDa6qHYRj16KO0tFSD7aIbWAPU/xpV\nEpWy72E/dBqdWk50GjxxqFunxmZ6pXnpT29fPhp2zauD69XUeHdT7cprAaB68D7+mV5Bbhzc\nuJJiCZH7Qi69TEgh2PqWVlaNG/0rq2FyDWRuVVGQgxBy5Pzri+Oow0wszMaYnf7Y4X/8dPjV\nozuCiypYBpauXfr6TPayYv2r7ZP4TN58Pl/jlzscDgchJBKJ6kKighDqZGKozubJJaUIIVuu\njpr1VKqcIL4QtXDQqEnoCYKoI38vecrKyry8vIRCITV20OjRo8eNG3f79u2kpCQcxx0dHfv0\n6UNNkELT1dW9ffv25cuXc3JyTE1NPT09e/Xq9fTp07dv3xYUFFBdeyMjIw8dOkRNZInj+NCh\nQ6XnzH7y5MmlS5eys7ONjY379evn4eFRabQpKSkBAQHZ2dlMJtPBwWHVqlV5eXn37t1LS0sz\nMTFp3769vNHeFBs1alRRURFJklTAN27cUKESaV++fImOjs7KyjIzM+vSpYujo2THNtXExcU9\nf/48JyfHxsamR48e1tbW1HKBQBAZGZmYmEjdztDW1maz2U5OTsOGDRMKhbVyHhYWFs6fP//b\nt28kSRobG2/cuJGOVk0kSVKJSkVFhTI5M0mSMTEx8fHxJSUlTZo06devn4IRw2sX9XWr9O/1\n/v37J0+e5OTkWFtb9+jRw8bGpkaiUxHd0b/h5cxAZaokKlfHzkgtJ1dc+bB28D/3Sv1mLl52\nbbXT4LV+48O/3pQ7QD4A1e3RwWfaJp4uHEXntqg8ZebyP9jtvTbuX+9gqY8QKkrdFPMgW6yI\n7KcxWgbGCKGkUlFrzj/XZJ/4Qi0LU4QQt7Hr1EWuUxGZk/Yp7tXjY0fO+GeYHlnfTwOfCoDa\ns3///iv/b95A3ZY+ffr0mTNnqEt2hFB4ePipU6dWrVrVpEkTqhhBEBMmTPjw4QP1NjMz8+3b\nt3/88UdpaSm1CUmShw8fFq+TIIhLly5duXIlIiKC3vXixYvfvHlDVxIfH3/+/Pn9+/dTCZ5M\n27dv/+uvv+i3L168GDp0KI7jIpGISjDOnDnTo0ePxYsXS2RWinl4eNC35KkX7u7ubm5uixYt\nUr4SaUePHj179ixBEFRsp0+f9vDwmDlzpjpDMwkEgu3bt0dGRiKEqGqPHz/u4+MzatSoL1++\nrFmzJjMzk15FvQgLCzt37tz69etrvon8iRMnxCcqzc7O/vXXX9U/sCooKChYvXp1QkIC+v/B\nOXHixLx587p3717DkWiEUCjcsWPH3bt36dT6+PHj3t7e9EDqoAZoa2srmDMXKEOVn8LNT74Z\nNt8knqVQmg1aHdjCOPvhJk0EBoAqSFHRsc+Fjfr1VVysnBfFExLdJw+nshSEUHp0tuJNKBzz\nERwGFvHnE3oJL+nU86KKZsPtCz5s9/X1/SuPjxBmauPQ23PCeEtOccpLlT8LAHVEWFiY9ELq\nGpckSepFdnb26tWr6ZugmzdvprMUGjUSHb2JTARBrF27lnp94MABOkuhpaenr1y5Ut7mL1++\nFM9S6FCpZiT0fh88eBAcHCyvEmkDBw6UGfOdO3eUr0TarVu3Tp8+Td3pp49nRETE+fPn1ak2\nNDSUylLoaoVCYXBwcExMzOrVq7Ozs8VX0S9SUlJWrFhRw031CgsLxbMU2p07d6iEoSZt2bKF\nPmmpY1JaWrp58+aMjIwajkQjTpw4cefOHfq8QgiJRKKjR49GR0fXdmj/Ic7OztJPiUGVqJKo\nfCwT6jf/Ueaqdi0NhGUf1QsJANWVfb9UIiJ/6Ct3sC8K26CXPgO/E3jowdPYZzH3jm1fvvpO\nPkLo0euEQpGidswMlrX/z87Zj7Yt3nn0VtSDq2eD5y45wzHvOr+rha6tp6iQF7xs88Vrt2Ki\n750P3ronrdiu/xBNfjwAatyyZcuUadxPEERWVtaLFy+ot48ePVJ5jw8fPqReSKcclNevX8u7\nnt63b5+Se7l+/brybUsUXL7PmTNHyUqkhYWFSU/QiWHYFYXdcxUTiUTXrl2TXo7j+MmTJ7Oy\nsuR9FpIkv3z5Ip0ZVqvNmzersKo6pKenx8bGSpzqJEkKhcLr16/XZCQaQRBEeHi4zOlfZd53\nAKDOUqXpV3s9rdhXlxCSMQP91ec5LL0OakcFgIoy/nqBYdgA40p6STHYdjtX/7bn6OW9W+7r\nWti27uYZPMNl45yF5wPWNguRcXtPXGvvjSuNQk5HRB2MusLkmrTqPWrilNF6DAzpOO5eP3Nv\n6JWzR/bzRbiJVZNBExdPGuakuQ+nrKCgoKCgoJrfrzQ2s5KxieuUtLQ01WaUr6cmTJgwYULl\nE+PEx8crX+eXL1+oAbg10r5c3gADJEmmpqba2dlJrxIfNlQxPp+flZXVuHElndkodCspaYmJ\niUruUVpKSop0tSRJ5ubmqjygam5uLj3dpziCIJR5MpCSktKuXTsV9quaL1++yFuVl5dXY2Eg\nhL5+/SpzOY7jCoKss/Lz82WO1EIQxOfPn2s+HgBUpkqisnK4nduRvcM39j+3bCjzn3RdFB4w\nZvvXQqdJ/poLD4CqcfD544pyc3KYth2wescA8SXrD/ydonQOOSu+nMGy+fctKMzVc6Kr50Tp\nOo1c+q3YXPs9Uvz8/Ly9vWVerNSw4UPq0wMlGxubPw4crOGd6unpsdnsioqKOjvhI5PJrKio\nUL4wEusRqxrp28DSqEEjpFVp1wo6ukhQ8ExJmWjlUXBsq9R/RqJOeasYlU1qpHjz6qAgpBqe\nQF3BAVf5b1GLGtjHqWtgtpOapMoPQc89F/uYcy77DzN37Owzbc4y/2Vzpvl0aW42eOl5HbM+\nF/b01HiUAAAAasWIESOUL+zs7IwQwnGcy+Wqv2tjY2OZy5lMprz+qXRvfsVwHDc2Nla+k6uC\nbMTX11fJSqS5uLhIX47jOG5vb89ms1Wr09jY2MLCQrpaDMOcnCp/wOvi4qLaflXTuXNneauU\n/FNqiqOjo8zUiCAI6qyuX/T19a2srGQ2/WrVqlWthASAalRJVJgclxsfny3zdSdTnoce3LV5\n4+ZdB0OfphADfJY8S7qheLQlAAAA9cj48eOVKYZhmKurK31JN27cOHnFKq0nICCAev3LL7/I\nLDNs2DB5myvoZy++C4IgfHx8lL9nryd/vtHRo0crWYm0sWPHYhgmfkyoNmY+Pso9F5bDx8eH\nGkaMXoLjOJPJ9PPzc3V1VfAn6N27dw2nBzNmzJAXTw33UdHX1x8qNcU4juMmJibKjIhdB/n6\n+tLj8lFwHMdxHEb9AvWLio9WWfrOG49ezyvNi499GhUZ9TQ2Lr8k70bIZhd9ZZ+kAwAAqBdO\nnjwpvdDQ0JC+BsIw7Kefflq2bBm9dsSIEb/88ot4JoDjeNu2bcVbW8nsg2FqakpPcuLm5vbr\nr7+KN0bCMMzT03Py5MnyQjUwMFizZo1E+yVdXV3x6SM4HM6sWbOq1B/p7NmzTCZT+pJa5ohV\nynN2dl6zZo34gx0DA4OlS5cqeM6gDDc3t/nz54s/1LKystq4caOdnd3y5ct/+uknmT34R4wY\nsXTpUnX2q5q9e/dKNEbCcXzVqlXUhIY1afLkyWPGjBE/eVq1arVlyxaNPB6seb169VqwYIH4\nt8zS0nLjxo329va1GBUAVSW3gyAAoLpVx4SPRkZGDAajrKysjvRRud3DVZ0aTn3N2PPxy8zm\nTcbaWmkqKpnuf8+7rW+yaMXv1boXaXW/jwotKCgoIiJCIBBYW1tTozWkp6d/+vSJwWA4ODhY\nWFhIlDcxMUlPT7958+bnz5+bNm3q5uamq6tbWFiYmJhYUFBgZ2fn4OCAYdjgwYNFIhH1BEDm\n8EplZWV37979+PFj48aN3dzcDA2Vmvrz6tWrjx8/5nA4/fv379ixo0gkSkxMTEtLMzU1dXR0\nVO3S8927d4sXL6ZGOnZxcQkMDFShEmkCgSAxMTEjI8Pc3LxFixYqN/qSUFpa+uHDB2qmP0dH\nR/Hr7+zs7KSkJJFIxOVyi4uLmUymo6Nj8+bN+Xx+bc10fu3atVu3blVUVPTq1Uudh1QSWCwW\nNWNjXl6ekiMv5+fnJyYmUhM+1uVreioDqfRfkLKysoSEBGreTwcHhzreQYVqk4kQ4vF4mp3w\nEXqV1F+qJCqkqPjPpb/8cS4yOVv2N0TeUC0AAHENPlEZ4jnIy1atGaa/88uzyviWOtpm2mwF\nIy+pL620jNncaZH/imqqX556lKhUlYmJCY/HEwqFtR2IJuno6HC5XIIganhMqhpgaGhYi4lK\nNVEhUakvlExU6hdIVIA0VfqTRC/sMXXnKwbb/MeOXQzY9Wn4UQBATZr623Q1Lw4MEWqOEEII\nx3EOh1NSUlJNuYohQuKtgwAAAABQ61RJVJYEv2fptotJfuRqVtNNSAEA9cigQYM0VRWDwTAy\nMsrNzYXWqgAAAMB/RJU705NE2bOiCruhuyBLAQAAAAAAAFSTqicqohISIbJhtfUEAAAAAAAA\n1ClVTlRwLdO1Hc2/hs2OK9ZkPycAAAAAAAAAoKnSR2Xx3cjEfm6dW/ZduWZ2tzYtLY10JAo0\na9ZME7EBAAAAAAAA/qNUSVS0uNTcw5lLfo2WWQB6uwIAAAAAAADUoUqiMnPmTI3HAQAAAAAA\nAAA0VRKV3bt3azwOAAAAAAAAAKCpkqgolhJ72+7HfhqvFgBQi8rKyjIyMqqjZmNjYyMjo+qo\nGQAAAAD1msYSldyPT06dOnXq5MmHH75DHxUAGpj4+PjVAVuQpaWS5cmyMrKsFNPhYDqSg22I\nI/LzxgwY4OPtrYkYAQAAANCgqJuolGbGnzt16tSpUzefJ1NLtE0d1Y4KAFDnVDRv/nKcj5KF\nLaIiba5eThvcI7tXH8XF6shdjcePH6empg4ePFhbWxshRBDE+/fvtbS0HB3//kF7//79hg0b\n2rdvP2/ePOWrjY+Px3G8ZcuW8grk5OQ8evSoQ4cOXC5XzY8g7tWrVw8ePBgzZoyZmZnEqm/f\nvpEkaWFhocHdqen79+8EQZibm2MYVtuxNCi5ublJSUlt2rTRUXi/AAAA6iwVExVBYcrVM6dP\nnjoVdu+NgCQRQkxOI/eRY8aNG/fzT64ajRAAAKrR7NmzExMTqdeHDx/mcDgODg5v376lngzj\nOG5hYZGVlUW9vXnz5s2bN5lMZnh4uII6hULhli1bHjx4QFfSvXv3xYsXM5n//OTevXt3+/bt\nQqGQestkMqdNm+bp6anmx1m9evWTJ0+o/V67dg3DsFmzZg0cOJAgiIiIiNDQUB6PhxDS09Pz\n9vYeNGgQg8FQc48qIwjixo0bISEhVEhcLnfChAlDhgypxZAajDt37uzZs6esrIx6a2Fh4e/v\nT2fdAABQX1QtUSEqcu5cPHvy5MkLEY+KRARCiKlthvjfLTrueh8zw4hZ5ekjAQCgFo0bNy4v\nL098SWlp6Zs3b+i3BEFkZmZKbCUUCgcNGnTt2jV51U6fPv3r16/ildy/fz81NXX//v3Ukrt3\n727ZskWizj179pAkOXjwYJU/zsKFC+Pi4sSXkCS5a9cuPT29t2/fhoWF0Y8sSkpK9u3b9/nz\n5zlz5qi8OzUdOnTo4sWLdEilpaUHDx5MTk5esGBBbYXUMISHh+/du1e8DXZ2dvacOXMOHDhg\nZ2dXi4EBAEBVKZtaPLoWOnu8RyN9y5/Gzjh6NaZMy7T/6Gl/nr+bVZiFEGIbt4QsBQBQvyQk\nJEhkKcoTiURFRUUyV92/f188S6F9/vz58ePH1Otdu3bJ3DYoKEi1eCgSWQotICDg6tWrSGyS\nK4IgEEI3btz49OmTOntUWXp6+qVLl8RDol7cunXrw4cPtRJSg3Ho0CHpnqIkSW7durVW4gEA\nAJUpm1109fTZffJGHmby0+jf/rxwN7sw86/T+yeP6GOiBfkJAKBeOnTokDqbT58+Xeby27dv\ny9vk5s2b1As+ny+zgEAgqKioUC2eO3fuyFslFApljnFCkuTz589V252aYmNj5Q27UlshNQyZ\nmZnyzq6UlJQaDgYAANRUtaZftp17uw8c5OnR0xjyEwDqqqCgIDVvzMtU0aqNxutECL19G+fu\n7l4dNVc3eU9UiouL5W1SWFiIEBKJRAqqzcnJsbKyUiGepKQkFbZSEG21KikpkbeqtkJqGBQ8\nJKQ7RAEAQH2hbKLyx8qZJ06efHrv7Px7ZxdNNu4zfPT48eO9PLtycRikBdQhotLUE0FHIp/H\nF5Nch9bdp8zwttfTqu2gapqfn5+3t7eCC0EVPH/+fPnFSxqskNa6davALQGVFmMwGEZGRrm5\nuRoc/XzTpk1RUVEqb/7jjz/KXG5pafnu3TuZq2xsbBBCijuLq5alIIR69uxJNaaqEkulh5zW\nLAXDjtVWSA2Dgl4o1Ih2AABQjyj7YGT2mt1PPuZ+fByxetb4Zgalt8/unzS0u7Gx/ahp/tUa\nHwDKIwTf1v+24MqTgp6DfX716suLvbp8/m4+UUfGvwV1zqxZs9TZfOXKlTKXjx49Wt4wu6NG\njaJemJubyyxgYGCgcjwtW7aUt189PT0dHR2JtRiGaWtrd+3aVeU9qoMakVk6JC0trW7dutVK\nSA2Drq6uvEyvQ4cONRwMAACoqWotuBw6eazadfzDt4JnN07M9R5oXJ527uBGhFB6pLen74LT\nt15WwDUhqD1fLmyO5WHzd26YNHqQ+7AJG9cNLc2+ty+xoLbjAnWUrq6um5ubChtiGGZraytv\nrZ2d3dChQ6VzhhEjRlhbW1Ovd+7cKf1cBcfxHTt2qBAPTWbqhWFYSEjIwoULGQwGjuNUYBiG\nMRiMuXPnGhkZqbNHlenq6i5atEhLSwsTw2Aw5syZY2pqWishNRhr1qzR0pJ8kmxiYrJw4cJa\niQcAAFSmUlcTjO06YNyOY9fSeZl/ndrj69lFW/jt2rHtY3/60cjKZeKCTZoOEgClnLr6Vc/W\np5vF31ObGTpOmDt3bneW6rOakoQIUu+GbdGiRRs3btTW1qYu3xkMhoeHx6pVq6ysrFgslra2\ndtOmTXft2sVkMunEg5qZRHEvoGnTpm3evNnGxobFYrHZbFtb223btk2ZMoUuYGxsfOnSpdat\nW1MXlEwms0WLFpcyqin5AAAgAElEQVQvX1a53Rdl4MCBR44cEZ/dz8rK6vr16xwOp1u3bocP\nH3Z3d7e3t7e3tx8wYEBQUFDv3r3V2Z2aOnfufOjQoYEDBzZr1qxJkyb9+/c/ePBgv379ajGk\nhsHOzu7s2bOdOnXS09Oj2kyOGDHixIkTLBartkMDAICqwTTS4LuiIPnyqZMnTpwIf/iBIEkN\nNiIHQEmiivThI39zmXtgU1/lLvXIirtnD4ffe/I1uwCx9Oxa/OA1eWpnGy5CaI/vqI9uGwZW\nnDp67UUpyTKzbuo+evrInk3oTWMjQk5fu/85I4+pa+bSsbfvlNGNtRkIoQre+yMHjr9ISPle\nwDe2su/78+TxbpIzrFHdqSkEQSjuV60CQ0NDBoNRVlZWWlqqwWqfPXu2/PyFN15jlCxvHn3f\n6vq1DI9B37r3VFDMLPr+QmOjiT7elVbIYDAMDQ3z8vIa2M+Lrq4um80WCATiJ0bDYGxsXFhY\n2MA6cOvo6HA4HIIg8vPzazsWDTMwMCgvL5c3Ylg9paWlpa+vjxDKz8+nhuRuMHR1dVGDG3kC\nx3HqGW9hYaFAINBgzSYmJhqsDdQkzSQqtMKU2FMnTkxdvk2DdQKgDH7+9VG++7tsD7C+cvrO\n8/dlTH2H5m1+njLZtRFHZvm4w3P9w772Gj6+nb25oDAj8sz5jwL7s6cCGBja4zsqWkefFDby\nHvOTuY4g8vThh19LF4ee6abPQgi9O+W/9NRbhx5D+rdvVpaVePn89XLjTocOLtXDBat8xr3D\nm48a1deSi72LPhvxLNvnwKkR/w6gc+fO9KXbiBEjli1bVt1HRiOeP3++aMUKQumfC5FAQAiF\nOJPJkGqCIsHPx3f8+HFqBwgAAADIUFxcTOV1oD5SvVWMTPp2P05dLnskHACqFSHIQwi9Xvt7\nomWXYd5+LP63WxcubpgVv/7YXheOjPP8bTq3vduK+RP/Pl072if4Ln2RVi6y02YghPjfBIEn\nVztoMxBCbV1QjM/Ou9/KuumzRBWZG87GmXecu31RX4QQQn3cXDneC8/tfPJticuHl7yKDgGL\nvVoaIYS6d/+xZNfR8vRSJCdTql9cXV0jb9yo0ibBfwa9evas0mJPoiKfREXKW1tUXFJQVGSo\np6eny63S3iVgDOa6gADq3ioAAAAA6gUNJyoA1C6M2+9QwDQGhhBC/fo2He+7ee/hxH2znKVL\njl25ASGESGF+zvdvWelPr6YihOhmWFxLHypLQQgxOY4IIZIgEUJl3y8Uicifp3Wh6zFw9P5B\n90rSxS9aHVubsxhvA7ddHuPRtpVzk0bG8+fPl96v+JTkhoaGPB5PAx9bjJ6eHo7jdaEJR1xs\nrGtxQQs9tRKM26WFFzOzOjDIfnpqNa9fnfAxJyenDjYb43A4WlpaQqFQs8NJ1wX6+volJSUa\nb9xYu9hstra2NkEQ8mbRqb90dXUrKipUnm+0bmIymVwuFyFUWFhYB7/+6qC6opWVldV2IJqE\n47ienh5CqKSkRIOtRhvYr9B/DSQqoIHAtcwRQvY+wxn/H2yJbdilmwH7yetXCMlIVHgJkftC\nLr1MSCHY+pZWVo0b/WuMJiZX9iixFQU5CCHHfz+icdRhJhZmY8xOf+zwP346/OrRHcFFFSwD\nS9cufX0me1mx/jW4U8eOHenXfD5f4y2MqX+MCYLQbANf1SKx53LaGqr1EONdYTFCyEpHW816\nWAyGUCis9WMijWo3r87fKzk5OSoqKi0tzczMrEOHDu3bt/fw8KBOAwzDSJK8IfUoLCkpafPm\nzd+/f2cwGLa2titXrrx+/Xp0dHRxcbGZmdngwYP79OkjsUlGRsbkyZOpakmSdHJy2rx58/Xr\n1z99+iQUCvl8PovF4nK5zs7Obm5uqampkZGR379/z8/P//79e1lZmYmJyYABAzw8PA4dOvTi\nxYuSkhJLS8uJEyfGxcUdO3aMvoLs3bv3kiVLKv3Ijx8/jo2NzcvLs7Gx6devHzU7jbibN2/u\n3r1bKBRSQzD/+eefGhlJbOrUqfTk7jiOnz17ttL2JOXl5Tdu3EhISEhPT8cwzNLS0snJycPD\nQ3zAg2oyceLE7OxskiRxHO/cubO80bRpJEmKRCINfkdSUlIiIyPT0tKMjY1dXV3Ff/ok8Hi8\n5cuXZ2VliUQiMzOzFStWKJgNRnlFRUW3bt368uWLjo5OkyZN+vXrJz0YmgoePHjw559/8ng8\nFovl7Oy8cuVKxTMjqUzxec5msxFCtfibVlZWRv0C4DjevHnzAQMGUCGpA8f/HuGpbv5cg1qh\n4T4qANQWUpjvNWJi83kHNvVuRC/c6zsqmj3uVNAwicKi8pSJY+ew23st/XWwg6U+QqgoddP4\nGY92nr1kr83Y4zvqmfmSkK3t/y5ckTZ85HTXwGMrHQ2L0naNn357UvDZ4ab/TJ22dvzIJIv5\nx7bT81GQOWmf4l49PnbkAtlyxpH1ckcxqo5ExcjIiOpMX+t36Des8B8h4ncwVn1iEITQqa8Z\nez5+mdm8yVhbtYbDGv0ifsu+/cbGxupUUh309PTYbHZFRYVqnemPHj165swZ6mJUQV9h8Vwl\nMDDw9u3biqtt1qxZYGAgfTE9Z86cDx8+yCxJ5ULirw0MDIqKimQGI15YAenMilZWVrZ+/foX\nL15QwxkTBMFgMHx8fEaPHk2X8fb2/v79u8SGHh4ec+bMqXTXCtDpHw3DME9PzxkzZsjbJDEx\ncc2aNbm5uRLLDQ0NV6xY0apVK3XiUSA5OXn69OkSC3Ecj4iIULCVoaEhn8/X1JPYkydPnjhx\nQiQS4ThOkiRJkh06dFixYoX0tey5c+cOHz4ssdDT03PmzJnqBPDs2bOAgIDi4mLq2pcgiEaN\nGq1bt046ra2SmTNnJiUliS/BcXznzp2OjpLjpqijrKxs3bp1sbGx4ue5r68vPRETqu3O9HFx\ncevXry8oKKD/vqampqtWrWrevLk61eI4Tv1K83g8zSYqMOh5/aXS8MQA1D0Y02isrV7ysVMV\n/7+YKM26fbug3Kp/W+nC5bwonpDoPnk4laUghNKjs5XZC8d8BIeBRfz5hF7CSzr1vKii2XD7\ngg/bfX19/8rjI4SZ2jj09pww3pJTnPJS7U8GgGxRUVGnT5+mn6EpKDlw4EDqxevXryvNUhBC\nnz59Em+jKC9LQf9/gif+msfjyQtGyftiK1askLcqKCjoxYsXVFXUXkQi0ZEjR6iFCKETJ05I\nZykIoevXr6tzSTd06FDp4EmSvHr1qrxNysvLV69enZeXJ72Kx+OtW7eu+m4lSGcpCCGCIMaP\nH19Ne5Tw+PHjY8eOUe1tCIKgDt2zZ8+kE5KioiLphQih8PBwiXygSvLy8jZs2EAdYYIgqFMl\nKytr3bp16oz9FRwcLB0VQRAan6Dm4MGDsbGx6N/neXBwMH2e167S0tJ169ZR7Zbpv29eXt7a\ntWsbWNNBUBdAogIaDg9/Xyw/asri7VdvRl67cGz+7L1M/daLh8poQsA26KXPwO8EHnrwNPZZ\nzL1j25evvpOPEHr0OqFQ4dQpDJa1/8/O2Y+2Ld559FbUg6tng+cuOcMx7zq/q4WuraeokBe8\nbPPFa7diou+dD966J63Yrv+Q6vq04D8vPDxc3lT0EuiL7L179ypZeVRUFNX83cfHR7XwVCbv\naozP59+6dUt6OY7j4eHh1OuTJ0/Kq9bf31/lkBRcfolndOKePn0qbzRtkiR5PF5MTIzK8SiQ\nk5Mjb5XMrKk6XLt2jW7DI+7mzZsSt8n3798vr5Ldu3erHMDdu3f5fL7EwSdJMiUlJT4+XuVq\nr127JnN5RUXF27dvVa5WAp/Pl3k3AcdxeQHUsJiYGB6PJ3F4CYL4/v3706dPaysq0FBBHxXQ\ncHAs++9Zi/aHXjr+Z7S2kXXzrsMWTxlvwZLx7yWDbbdz9W97jl7eu+W+roVt626ewTNcNs5Z\neD5gbbOQUMV7ae29caVRyOmIqINRV5hck1a9R02cMlqPgSEdx93rZ+4NvXL2yH6+CDexajJo\n4uJJw5yq57MqEhQUpHg6wprR3MYGmanV7kuDBALBuHENZxDkCRMmTJgwISUlRclnFHQxBVex\nEgiCyMrKatq0qfKbaIq8D5WdnS2zfy1BEF++fKFeK+g1m5qaqvGQEEJ37tyZPXu29PKvX78q\nrrPSAqq5fPmyvFU11tI7JSVF5oOL8vLy7Oxs8cZXCh6bZGZmqhzA169f5bUz/Pr1a+vWrVWr\nVkHP9ejoaJWrlZCVlSXvPP/8+bNGdqEmBaeuOt8yAGSCRAU0KKat+/++pb9SJdsOWL1jgPiS\n9Qf+TlE6h5wVX85g2YSFhYktwFw9J7p6TpSu08il34rNtT+vtp+fn7e3d13oo4JEdWXyOC0t\nrZMnTzawPioqdF1lMqvwm19bE5nLe0wkLx4Mw+hDoaAbTDX1eJbXLb7So6eRjt3SLCwsqqPa\nKlFwZkp8agUHoUrnqnQA8k4Ddc5qBQ8wqbHFNELBea6trS1zVQ1TcAyr6awG/2XQ9AsAAOql\n1q1bK9n0i6Z8l18ul9uoUSOE0IABAyotXDMsLCyMjY1lfuQ2bdpQLxQMw1VNH2Tt2rUyl7u4\nuCjeUFM34CUMHjy4OqqtEplnJo7jZmZm5ubm4gv79u2roBKVA5A3UAGGYZX+XRRQMLv50KFD\nVa5WgqWlpZGRkXTbOZIkq+mcqSoF40DUkQhBQwKJCgAA1EujR49msVjK5Cr0wwR/f38lcxs/\nPz/qUqlKg2VRlVc1fZJw/PhxmctxHJ84cSJJkuL1YxjG4XBGjBhBvZXXYwTDsMmTJ6scUteu\nXWUuxzBMXu7n7Owsb0BeDMPatm37ww8/qByPYgYGsptc1ljO6eXlxWazxS+1qVHpJk2aJHFu\njBgxQubjFxzHFyxYoHIA3bt3t7e3lzhPEEI//fSTlZXq4wcuXbpU5vImTZrIO+YqwHF80qRJ\nBEGIx4/jOJfLHTlypKb2oo527dq1adNG+mvepUsXJ6daaO0MGjZIVAAAoF6ys7PbvHlzkyZN\n6CXSbduo4U3pPrg6OjpbtmyRuDRks9ni1xxaWlrTpk0Tv6g9dOiQ9EWJtra29EImk+nh4dG0\naVPpaJlMZpMmTSR2JF2sdevWCu5b//TTTwsWLKCmhKM4OTlt3bqVbu/UqFGjqVOnSgSG43ho\naCV9zxRbuXKlqampRLUYhl2/fl3BVsuWLRsyZIj0VgMGDPj999/VTOcUOHPmjPR1c6tWrebN\nm1dNe5TQqFGjwMDAZs2a0Uv09PQWLVok8/nJkSNHJKLlcDi7du1Sp40Wg8HYuHFjr1696IPM\nYDDGjBmj5pDHzs7Oc+fOlWhD6ODgcODAAXWqlfbTTz/Nnz9f/Dx3dHTcunWrxPOo2oJh2MqV\nK93d3enDi+P4kCFDFi9eXLuBgQYJ5lEBoNbAPCqVgnlUKkV1JU9PTzczM7O3t2exWLNmzUpO\nTqZ+25cuXdqzZ0/praKjo+/fv8/hcDw8PJycnPLz8x89epSVleXk5NS+fXuZTeH/+OOPmzdv\nEgRhampKPfTIyclJTk6mJpPOzc3V0dFxcHDQ09OjQiosLMRxPCMjIyUlxcHBoVu3btra2rm5\nudHR0Tk5Oa1aterUqRNCyM/Pj+r6bGFhcfToUWU+Mp/PT05OpibCs7Ozk3nFHxQURH3AUaNG\n9eunmZ5jxcXF06ZNy8/PZzKZ3t7eSt7ezs3N/fz5M4/HwzBMV1fX3t6+ZqZ0+PDhw759+759\n++bg4LBkyZJK56bU7DwqCCGCIFJSUtLT001MTOzt7RV3qYqLi7t582Z5ebmbmxt1YmhEXl5e\nZmamtra2ubm5+HW/msLDw2NjY83MzIYOHarOIxrFFJ/ntTuPCoX+BWjWrJmRkZH6FcI8KkAa\nJCoA1JoGnqj8vgKlfrXQUav3Zy6/PJvPt9DWNtFmIwxDqv5e3cjMDgo+0iATlTrLxMSEx+PJ\nHL+o/tLR0eFyuQRB1NhQvzVG44lKXcBisfT19RFCeXl56sygUgfVhURF4yBRAdJg1C8AQLUY\n7DUqO1upaTQVoCfBwTCMy+Wq/K/yVIXdrAEAAABQB0GiAgCoFvRATBrBYDCMjIxyc3PhITAA\nAADwHwGd6QEAAAAAAAB1DiQqAAAAAAAAgDoHEhUAAAAAAABAnQOJCgAAAAAAAKDOgUQFAAAA\nAAAAUOdAogIAAAAAAACocyBRAQAAAAAAANQ5MI8KAEASQRDv37+vmX2Zm5ubmZnVzL4AAAAA\nUI9AogIAkMTn8xctXUo6OqlcA1laipUUk1xdjMNRVC43Z6ybm4+3t8o7AgAAAEBDBYkKAEAG\nhq7e40lTVN7cIirS5urltMFds3v1UVysvswzf/DgwYiICH19/dDQUIlVeXl5+fn5VlZWd+/e\nTU1NHTZsmKWlpXgBgUDw6dMnHo9naWmZkpJiZmbWsmVLalVsbOy9e/d69erl6OioZCQCgSAt\nLY3D4Zibm2MYJrPMzZs3X758OXToUHpHdRZBEJmZmUKh0MbGhsFg1HY4lcjMzHz48KG9vX2L\nFi1qO5bKpaSkJCcnt2nTxsTEpLZjqa9kft3Ky8vT09P19PTgaTAA1Q0SFQAAUGTKlClpaWkk\nSSKEvn//7u7ujmHY9evXEUKvX7/eu3fv169fxctfvnxZS0trw4YNbdq04fP5wcHB4eHhBEGI\nl8Fx3NHRMSEhgXp74cIFDMOGDRs2depUBZGUlpaGhoaGhYWJRCKEkLGx8a+//urm5iZeZuHC\nhXFxcdTre/fuIYQmTpw4ZswY9Y5BtSAIIiws7NixY6WlpQghNps9duzYESNGaGlp1XZoMrx+\n/Xr16tVlZWX0kn79+i1cuLAWQ1Lg2rVrBw8erKiooN6amJgsX77cxcWldqOqX4qLi0NDQ8PD\nw+mvm5+fX7t27YKDg2/fvk19oy0tLX/77bdOnTrVdrAANFiM1atX13YMAPxHCYVC+kpCU3R0\ndHAcFwqFAoFA5UoEAsH5sLC0nr1VrkE35Yt+YkKhU4uSJk0VF+vGZrVr27bSCnEc19HREb9M\nrBmrV69+9+6d9PLjx487OTn5+/sXFRVROYw4giBu3749YMCAdevWPXjwQLoASZI5OTkSCxMS\nEkpKSlxdXWVGIhKJlixZEh0dTdfG5/NjYmJ0dHScnZ2pJbNmzaKTH9qrV68aNWpkb2+vxMfV\nJA6HU15eLpGhidu3b9/JkyeFQiH1ViQSvXr1KiMjo0ePHjUVo7LS0tLmzJkj8Z1KTk7++PFj\nnz6KnhnWiosXL+7fv5+6vKaUlZXdunWra9euRkZG8rbS1tYWCoX0n6NhYDAYbDYbIVRWVib9\nNVRAKBQuWrTo4cOH9Fbl5eUPHjy4devWu3fv6IUlJSX37t2ztrZu2lTRD111YLFYCCGN/wtS\nuzAM09HRQQgp/ulQAUdxI2RQh8GoXwAAINfjx4/lrdq7dy9CSN6/piRJzpgxg364oaQrV67I\nWxUVFSWRhFBXSyEhISUlJdSSjx8/ytx227ZtVQqjBqSmpoaHh6P/fwpaVFRUjQ3koLyVK1fK\nvMx9+vRpHbxSDAkJkV5IkuTWrVtrPph6KjIyUuLbRH3TeTye+ELqrDhw4IBmr6oBADRIVAAA\nQBVZWVmK79EWFRVVtU6CIPh8vsxVL1++xHEZv9gVFRXx8fEIoYiICAXVVjWS6vby5Ut5R+/F\nixc1HEylsrOz/8fefcc1cf4PAH/uskjC3nspOKgiglpHnXX7dVGxVhGtVlu1Vi11gZZvVdwb\ntdKqaG1R3CJSt1atW9yiKMreIyFAEpK73x/X333TLAIEAvHz/sNXcvfcc587knifu2eoXU6S\npJbTbhC5ubkSiUTtqqysrCYOpuV6+PChpg5gSkiSFAgE7969a+yQAPgwQR8VAIxNbGxsbGxs\nAyvBzMz0Ekytnj59NmTIkKbZV51MmjRp0qRJDamhTk1NaLm5uWqbaVVVVWm6cqKeqLSsy1Cq\nX4pa9AOi5kNLpqfahM+wysrKNK1SbAwGtKO+brp/hZvhhxYA4wCJCjAe4rI/Q8J2Ki1c8vvR\n7mZsg8RjKDNmzAgNDW3If5xVVVXjp03XY0hadOjw0YZ1a2stxmAwrKysSkpK6nf13xhqvY7B\ncbwejzI0dSZxdHTUVJuTkxNCqH///idOnKjr7gyFirmuqwyFxWJpauIVGBjYxMFop6WzhImJ\nSVNG0qI5OjrW6aemGX5oATAO0PQLGA9J2ROE0KjxExS5cZr7gKegherVq5f2xiFBQUFqG2tp\noeVSkhrdS2mPGIa5ublRQxv7+PhoikdLF2pD6dq1q7m5udL5wTDMxMSkGXam//jjj9UuZzKZ\nAQEBTRyMdjwez9nZWe2qHj16NHEwLZemr5tqSQzD/P39YZxiABoJJCrAeAieFzJYttMm/itR\ncWVDogLq788//1S73M7Obvbs2W5ubkjD5YupqelPP/00e/ZsHVu6U/VQHfTV8vb2njFjBvb/\nqEt8c3PzJUuW0Jf7CxcuVN0djuN79uzRMYYmw+VyFy1aRI1cRB8Uk8n8/vvvm2FatXTpUktL\nS6WFGIYtW7bMIPFot3LlSmqoK0WOjo7z5883SDwtka+v75dffokUPpwIIUtLy0GDBlHfPvo7\naG9vv2DBAgOHC4DxgqZfwHiUpZSzTLvosUKSkCOcoetlJjBSf/755/DhwwmCoJqC4DgeHh7e\nv39/hNDOnTuTkpIePnyYm5ubn59fU1ODYRiDwRg0aNDcuXMRQsOHD+/YseOePXtevHghkUio\nTgI8Hs/Hx2fRokVLlix59+4dQRAMBsPV1XXHjh1Mprbf5DFjxgQEBJw4cSI9Pd3U1NTPz2/s\n2LGKw27269cvMDBw6tSpVVVVVLQ+Pj7bt29v1PNTb4GBgfv27Tty5EhaWppcLm/dunVwcLCD\ng4Oh41Lv0KFDv/zyS3JyslgsxnHc2dl5/fr1FhYWho5LDWdn5yNHjmzatOnx48dVVVXm5ubD\nhg2bMGGCoeNqYcaNGxcYGHjy5Ml3796ZmZlRXzculztkyJCkpKTMzEwLCwt/f//Ro0c3z5l/\nADAOdegrBkAzd+yrCQnyvn280u68eE/wHXzaBX0xY1JrMw3/hZDSywl7zly9k1lQjthmHm0D\nxk2f+bErHyEUExaSNmDVMGl8XNKDKpJt5+I1ZPysz3p70ps+PLv/UNJf73JLmaZ2fl37hn01\n3s2EgRCSCl7u+/ngg9SMonKxtbN3/7HTJw5Qnm48NzeX/tIxmUzqjrIemZubMxgMsVjckClH\nqqqqPgsLezD3+3rXYHfrptOFP/MGDinq3lNbsdt/f29vOzVscq0V4jhuYWFRXl5uZD9ZfD6f\nzWbX1NSIRCJDx6JnlpaWFRUVRtaB28TEhMvlEgShNEytETA3N5dIJJpGDGuhWCyWqakpQsj4\nfjqoOxRaBqVoiajfeYSQSCRqyFRgSgiCsLGx0VdtoIlBogKMx9IJwc8qazoMCunn51iS8eLE\nqUsy04927l1hz1LTxPHZnnkRpzP7jJnYydu+Rph75fDRtBrvhPi1DAzFhIXc4JqTMqfQzwfZ\nc2uuHNrzd2bVwt8O9zRnI4RexEcsjn/a+pORAwNbVee/Pnk0WWLd7dfdi83wmh8nf/EC9wkJ\n6e/Ix17cSDh7r2Dyz/HBTv+aZ+rjjz+mp1QLDg5esmRJE5yZuqqurg6eMEFK1P/HQSaVyiQS\nJofDrC0T+2rixPHjQ+q9IwAAAEALkUhE5augJYKmX8BokJ69P23r2mvyfzoghBD6dEAA58tl\nSRvOZq8b5a5a+mkOP3BA5IIpnam3Xb1TwxY/yJbIPUwYCCFxYc2GP6JamzAQQv5+6ObkLZcL\nq3uas+XSvFUJz+y7ztv0Q3+EEEL9BgTxQsOPbLlTuMjvVYpA2mXtwnHtrBBCvXp1rtwWJ8mp\nQk4tb0JcLpd79uTJBlaye8eOB7dv1VrsVMLhg3F7zXh8Ux63gXv8Hwz7et78zp07661CAAAA\nADQ5SFSA0cBmfPON4ntb/5kf8c6/T36G1CUqE5avQgghUlZWXFSYn3M3MQshRDdS4TtOprIU\nhBCT54sQIgkSIVRddKxCTo79ujtdj4VvaIDpqTfH37O6drBnM55u2Hjy86H+H7X3dLJW28My\nLi6OfozJ5/PLy8sbdtTKzMzMqKZfmuYNbDKpz572J6TtLWqZj+VcpfBwUXFvd/ZgM+XOyvW2\nLzs/KytL0zi/zQqPx6OafhnfPAwWFhYikcj4mn6ZmJgQBCEUCg0di56ZmZlJJBJNozC3UCwW\ni8/nI4QEAoGRtR8x1qZf5ubmCCGRSEQ3PWi4ZjjjLdAdJCrAmPnxWelS9dOxCVKv7Nx/IiU1\ng+CYOzo7uzn9q888k6++j6y0vBgh5Mv71xfHl8t8LSzAmN22bo44eOhMYtzmvRVStoVjUPf+\nk6ePc/73sGNt27alX4vF4kbqmUCSpB5/5esdhCuP28aMr73UwzIBQsiOw661pO7MWSyCIAx/\nBnRAXTxRfy+pVLp8+fK0tDSJRMJms11dXS0sLGpqaqgRnMRisYmJSU5OTk5ODrUVk8nctWtX\nZWXllStXcnNzbW1tu3TpIhQKt27dShWgRis6e/YsQRCXL19+9OhRWloaQRB8Pr+0tFQqlbLZ\nbB8fn/nz5xcWFl64cCE7O9va2jogIKCmpubSpUu5ubk4jrdr127kyJHZ2dkbN26kxj4iSZLF\nYv3xxx9nzpx58+YNjuO+vr4jRozgcv95Jnbx4sVjx47l5+fL5XKSJBkMhp2d3aBBg4KDgy9d\nuvTkyZO0tLTy8nJqLf0VwDDMxsbm4MGDSqfo5cuXV65cycvLs7Oz69atW7du3TSdTJFIRIWU\nnZ2dkZFBnQQOh7N9+3Z3dzV3KxTV1NScO3fuxYsXVVVVnp6ew4YNs7e3VypDz0xKndi1a9d2\n6NBBsYBMJm7E/2kAACAASURBVNu+ffuTJ0/EYrG9vX1YWJjax3pCofD06dPv37/HcbxNmzZe\nXl63b9+mDrBHjx5BQUHaQ0UIFRcXnzlzJiMjg8PhtG/ffujQoar9uUeNGiWVSqmT4O7uXusk\nsCRJ1vqtkcvlFy5cePr0qUgk8vDwGDZsmKOjY63R1io9PX3p0qUVFRUIIS6Xu3TpUn09DqUH\nxJPL5fq6Wr1///6BAwcKCwt5PF7Hjh3nzJmjfQyMRkIdTov4ldOd4t/LyA4N1Bv0UQFGQlx8\nYf+x9B6hX3bg/e8/7J8mfvbG4bsDm5SnZZBLMqZM+I4TOG7xtP+0djRHCFVkrZ44+9aWhBPe\nJoyYsJB79ov2r/9nHje5NHvMZ7OCNhxY7mtZkb1t4qyLU/cmjLE1+fdeFhzYRM9RQBZnv332\n6PaBfcfIdrP3rfxUY8yNkKhYWVkxGIzq6mqD36FfFRkRLBd3sa5lWKT4zNyYtPdzfDwnuKuf\n/KEeot9kdpoU1gyn41BlZmbG4XCkUum9e/fmz5+v/VpK7RSTVPJArdL0e+7j45OWlqalWsUX\ndbqeoy4sCIKwtLRcvnx5+/bt586d+/r1a7WFWSxWrR1kcRw/e/Ys9ZokyZ07d545cwYpHGC3\nbt0iIyNVr8ufPHmyYsUK6mJXVZ8+fbT0B8vLy4uIiKASM+pw2Gz2t99+O3DgQLrM0KFDVU+v\nq6vrr7/+Sr1+8+bN/PnzlQ7wk08+iYiIUFxy9+7dtWvXVlZW0vtC/5/5UAfYo0ePJUuWaBlI\n6sqVK1u2bJFIJDiOU5s4OjquWrXKxcWFKnD79u2oqCjVDTWNtU2xtLTU/iS2uLh46dKlmZmZ\nVORUCvrNN98MHz5cS7W12rp1659//ql0bjt16rRmzZqGVEths9nUHfrS0lK9JCo//vjjnTt3\nkMKXkcPhbNu2zcPDo+GV1wnV6cLIBuHAcdza2hohJBAI9NiZHiFka2urx9pAU4J5VICRwE2s\nz549u/v3p/SS8le/3a+Q+n3eRrWwRHBNICN6TR9DZSkIoZwbBbrshWcfzGNgZ3+5Qy8RvIm/\nXyFtNca7/NWmsLCw86VihDBb19Z9R0ya6MgTZaQ07LDAh2LhwoW1XkipzUOoS1V69GS1tGQp\ndA1UJXW9mKM3EQqFK1eujImJ0ZSlIIR0ufIgCGLSpEnU63PnziUmJiod4J07dw4cOKC0VVVV\n1cqVK7Uk59euXdNySbd69er8/HzFw6mpqdmyZUtWVhZVQG2WghDKzs6mX0dERKge4PXr18+f\nP0+/LS8vj46OpprrKJ5txQP8+++///jjD02h5uXlbdy4kWqgRW9SUFCwatUqurb//ve/arcd\nNWqUpmp1sX79euqEUJGTJCmXy2NiYt6+fVvvOouLi5OTk1XP7aNHj+7evduQaBvDmTNnqCwF\nKXwZJRLJ4sWLDRcUAEYOEhVgJNimgbO6O2adWbHi5/hLV68c/33Xt4uPmXsPnd9FzYTBHIs+\n5gz80oZfr999eO/m1QOblkZdKkMI3XqcKpRre8bIYLtEjG1fcGvjwi1xF65dT0zYO2/RYZ59\njwU9HEzdR8iFgr1L1hxPunDzxtWje9fHZIs8Bo5srAMGRiQ1NbWlDwtLEERpaenFixcbXlVx\n8T/NNc+ePas0dT0lOTlZKaH6+++/hUKh9ixL0xOV9PT0169fK21LXYXTOYaWJDAsLAwh9PLl\nS00DFickJNCv//rrL7FYXGtDhqSkJE2rLly4IJPJlGogSTI9PZ1KR9+9e6ep/oZ8xvLy8h4/\nfqy6X5IktT+o0W716tWaVm3btq3e1TaSY8eOqV1eVlaWnp7exMEA8IGAPirAeAxatJVzZN/p\nS+d+Pi+ydPYIGDFlatgotrp5wRkcjy1R38TEndyx7i9TB/cOPUfsne0X/V340bU/tdr/m/a9\ndAiNXm61/9DZa7uvnWLybT7qGzLlq/FmDAxxfbevnLPjt1MJ+3aJ5biNs+fwKQunjlbzPKex\nxcbG1toevQn4uLoiO8NMh1cjk61atcogu/7A6XcIh+zsbLW5h0gkEgqFilPFKz7Z0FJbnZbj\nOK5LtVRa9ezZM00FysrKFPeltv2eEqFQWFFRYWamZiCKnJwcHMfVnpasrKw2bdpoeRrTEA08\nS5rk5ORoWtUMhyvQMvbJ06dPW8ToHQC0OJCoAOOBYSZ9Q77pG/JN7UURsvUfHLV5sOKSlT//\nk6J8vD9BcTmD7Xr69GnF/QSNmBI0YopqnVZ+n0au0dgjpcnMmDEjNDS0OfRRQXLDjDzGYjIj\nIiJaUB+VAwcONMP7x/Wg6Rq6fjgcjqZBjagBBmgmJiZqiynSNLmqUlU6rqJRw5ppmaWBwfjf\ncBocDkeXfqEYhmk6Ii01UIMZODvrra+X0n7rsapWWrriqH2YZlhaOs1TY4sBAPSu2f0QAADA\nh2bs2LGYukd/LY7qSFkN4e/vr3pacBxv3bo1PcIYpWPHjrXWNnKk+naY7dq1U3sBShCELtVG\nR0cjhPr06aOpgI+PT53ixDCsTZs2mq7gO3TooDZRwXG8ffv2CKGpU6c2xmfJ19dXbUKi41nS\n5NNPNd7ZURwgsZnQ9MwEw7CePXs2cTAAfCAgUQEAAANjs9mNfVmm/eK1gZe21OZ9+vT54Ycf\nGr6jHTt2UC+++OILDoejeGedGufqyy+/VNqkffv21LDFmurHcXzixIlqV5mbm48bN05pWwzD\n3Nzc6FG/XF1dNUVLDaTL4/F69OihupbBYCjOpxQUFNShQwctJwHHcQzDVA+Q1rdvXy8vL6VQ\nEULBwcFWVlbUEqUsjtarVy9N1dbKxMSEOoGKu8Zx3NHRcejQofWuNiwsTPGJEw3DsJUrV9a7\n2kYyb948tX+7Tz75RNM5BwA0ECQqAABgeJs3b+7UqVNdt2IwGK1ataLfOjg4KBXAMIzJZH7/\n/fdqOzxQ2rVr99FHH9Fv+Xy+UispDw8PpXY4VLX0QgaD8fnnn4eHh/v5+UVERKi9aGOxWP36\n9dMSBqV169b0Ebm7u69fv17pAFesWKF2ko0lS5aMHTtWbXshJpOp2KNd1eTJk2fOnEm3tsIw\nrG/fvuvWraMfa/z6669sNlvpIhXDMMV+5MuXLx8wYIBiGSsrq3Xr1tnY2ChuEhUVNWLECLoY\nk8mkEwyEkJOT06pVq7Q8o2CxWKtXr+7fvz9dA4fDmTZt2tSpU+kyx48f5/P5StH6+vpGRkZq\nOQm1CgkJmTNnDjXPIKV79+4bNmxo4DX6/v37FetECLHZ7O3btxtkchLtnJycNmzYoNg5Csfx\nQYMGLV261IBRAWDcYB4VAAwG5lFBMI/K/8+jQnUdFggEycnJ2dnZnTt3dnZ2rqysdHBwKC8v\nl8lk9vb2hYWFTCbzzp07V65cMTc3nz59eufOnUmSzMvLy87Otre3d3NzYzAYixYtev78OUEQ\nDAYjMTGR2lFNTc379+8LCwsRQlwul8VipaammpqaduvWjZq4ID8/Pysry9rampobMT09/c2b\nNywWy8/Pz8nJCcfxzZs3X7p0SS6X8/n8o0ePIoQqKirS09NxHPfy8lLspEEQxNOnT1NTU6kp\nHcVicceOHQMCAphMJhVGaWlpZWVlbm6ut7f39u3by8rKNM32SNWWl5eXk5NDH6CW81lRUfHu\n3TsMw169enXu3Dkejzd16lQdM0CxWPz+/fvKykovLy/qnKgaPXp0TU0NSZITJkwIDQ1VLSAS\niW7fvl1YWBgYGNimjcaxNIRC4du3b9lstqenJ5fLpQ7QwcHB1dVV+wHSysrK3r17x+VyqRpU\nC+Tm5q5ZsyY3N7dDhw6LFi2qtRtPrfOoUCQSSUZGhlAo9PT01OPcFKmpqceOHZNKpaNHjw4I\nCNBXtXqfR4Xy8uXLlJQUBweH7t27K2VZTQbmUakTmEel5YJEBQCDMe5EZeWyyJqsTFuO+h7M\ntDKJpFgssTXhWGnvkkvNiKfbpcaTMsHkb+e2xETFmNjY2AgEAiObXprL5fL5fGosZkPHomc6\nJiotSyMlKs0BJCp1AolKy9XsHq0CAIzD2AlflJSU6Ks2HMf5fL6meceVdEKoXbt2+to1AAAA\nAAwCEhUAQKOgxiDSFwaDYWVlVVJSAg+BAQAAgA8EdKYHAAAAAAAANDuQqAAAAAAAAACaHUhU\nAAAAAAAAAM0OJCoAAAAAAACAZgcSFQAAAAAAAECzA4kKAAAAAAAAoNmBRAUAAAAAAADQ7MA8\nKgAA9PLly6qqqibYkbm5uY+PTxPsCAAAAAAtHSQqAAAUvXlLgZkZYrP1VmOlCKuoIM3MEN+U\nXoZVVfmacLavXau3vQAAAADAeEGiAgBAckQ+HzVWam2jrwodrl1xTTyZE9StoE8/eiE/4733\nX5f1tYtGVV1dnZWVxWQy3dzcWCwWQmju3LlpaWlMJnPVqlUdO3ZECBUUFBQVFTk6Otra2iKE\npFJpSkpKcXFx586dnZycEEJCofDevXsIoW7dupmamqrd0ZEjR27cuBEYGDhmzBiEEEEQeXl5\nZWVl7u7u5ubm9QteJBLFxcW9fPlyyJAh//nPfxRXSaXSzMxMgiA8PDw4HI7iwTIYDHd3d+pg\n1ZLJZDk5OVVVVW5ubpoOpx6Ki4sPHz4sk8nGjBnj7u6utkxJSUleXp6dnZ29vT2GYfradT0I\nhcLXr19bWVnxeDwcb9Ztp0mSLCgoKC4udnFxsbKyMnQ4AABQH5CoAADA/1RXV//+++8nT56U\nyWQIIRMTE4SQRCIhSRIhVFNTs3DhQoSQm5tbVlYWtUm7du1sbGxu3rxJlUEIOTg4WFhYvH79\nmq62Y8eOUVFRPB6PXrJmzZpr165Rm9y/f3/37t2tWrUSCoVFRUVUgZ49e86cOdPe3r5O8U+Z\nMiU/P596vWPHjh07dgwePHj+/Pk1NTUJCQmHDx+WSqUIISaTGRISMmbMmISEhBMnTtAH+8UX\nXwQHBzMYDKVqz58//+uvvwqFQoQQhmEDBw6cNm2ahYVFnWJTIhQKp02bVlFRQb1NTk7m8Xg7\nd+50dHSky7x//37Hjh1Pnz6l3np4eMyZM6dDhw4N2W/9FBUV7d69+8aNG9RbOzu7r7/+umfP\nnk0fiS5SUlJiYmJycnKotwEBAbNnz3Z1dTVsVAAAUFcY/T8rAKCJicVikUik3zqtrKwYDEZ1\ndXVlZaXuW30xY8a1SVP0/kQl+z+jlZ6oDP3r8q56Nf1iMBhWVlYlJSWN+pNFkuTSpUtTUlLo\nJRhW+4+kLmUQQo6OjnFxcdTrzZs3nzt3Tnt5HMetra137dplZmZWa+WU0NBQOs9RNGXKlMzM\nzMuX//c4i4rZysqqrKxMaeGIESPmzJmjuPmxY8d++eUXpcP08PCIiYnR8gTGxsZGIBBQKZBa\nw4cPl8vlSgsxDEtOTqZe5+bmzp49WywW0/vFcRzDsDVr1jRxrlJRUTFr1qzi4mI6Eups/PDD\nDwMGDGjKSHRx//79ZcuWYRhGEAS1BMdxPp+/c+dOOzs7TVtZWlqKxWKxWNxUYTYFNptNPZks\nLS2lz4ZxoJ5q6v1/EMOifvQQQgKBoKamRo81U8+9QUvUrJ9cAwBAU3rw4IFiloIQ0iUD0TF3\nys/Pv3TpEvX6/PnztZYnCKK4uPjUqVO6VE5Rm6UghPbv36+YpaD/j1kxS6EXJiUl0XfiEULV\n1dUHDhxAKoeZkZGhy1FosnfvXtUshdrLypUrqde///47/SyLQhAEQRB79uyp937r59SpU0VF\nRYqRkCSJYVhsbGwzvPz99ddfFbMUhBBBECKR6NChQwaMCgAA6gESFQAA+Mfjx48btf6rV69S\nL3TMbXAcV0qctNDXZShJkornITU1VSKRNDA2VUqJkyK62pSUFNU0gCTJV69eNfGN/8ePH6v2\njSFJUiAQZGZmNmUktRIKhe/fv1d73h4+fGiQkAAAoN6gjwoAxiY2NjY2NrZOm3Bs9NboS7vS\nkpIhQ4Y0zb7qatKkSdXV1Y26C6p+3Zs0EASh+7DRio9BlNS1vZxiu0EtKUFDTpfa5IdCnx9N\n9ZMkWV1dTXUfahpVVVWazmHTjOutOy1/lOYWKgAA1AoSFWCciJqi85cefDxwsCXDkGMEGcSM\nGTNCQ0Pr2kel8eJRZG1jc/jXX+uxYdP0UTl+/HjjVY4Q8vDwQAhp6dehBMdxFxcXHQuPGDHi\nwoUL9Yzs3xR7XTs7O6stQxCE7rGpcnR0pLvRK7G0tKReuLi4vH37VvUvzuPxGtiPv65cXFzS\n09NVI8EwTNP5MRRra2sOh6OaB+I4Dp3pAQAtDjT9Asbp4qaInTt35kvVNIIHQJPevXuz2exG\nGgAXw7DPP/+ces3lcnXZhCAI3R9AtWnTRtMqPp9vZmamdFxUx3TVhdbW1oGBgfQSDw8PX19f\npWLUhgMHDtQxNlXz58/XtOqbb76hXgwePFhtXjpo0KAmHhp40KBBarOULl260GlVM8Fisfr3\n76/6Ga7TZwkAAJoJSFSAESq8vSvmZr6howAtj62t7Q8//MBmsxFCGIZpvxqmLvSpMtR1odoM\nh141depUesylvXv3aq+W8vnnnwcFBeke/6JFi9RWGB8fv3TpUh6PRwVMVc7hcCZMmEDNpkIf\nCJ/Pj4yMZP976s9FixZRkdPb4jg+c+ZMHx8f3WNT4u3trXZsXz8/v+7du1Ovhw8fTo2pRZ8Q\nhJC/v/+UKVPqvd/6CQoKmjBhAh0Gda7c3NzmzZvXxJHoYvr06W3btkX//ogOGzbs008/NXRo\nAABQNzA8MTA2NZUvZoVF2Pe2e3oxf93h42259W/fSBJyhDdi0zEYnlh3TdP0i1JcXHzy5Mm3\nb98yGIx27dqNGjVq/PjxBEHQu541a5aVldXff/9dUFDg4uLSu3dvPz+/9evXv379WiwW29nZ\nTZkyxcnJaevWrVlZWRiGubq6zp8/383NTWlHM2fOzMzMJEkSx3EnJ6fY2Njk5ORHjx6VlZV5\neHgMGTLE19e3rsGLRKLJkydXV1dTw1J5e3vv2LGDWiUUCo8fP56WlkaSpK+v7+jRoy0tLamB\nxd68ecNgMNq2bTtq1Ci1oyFLpdLExMTnz59XVFR4eXmNGDFC0+SMtFqHJ0YIpaSkrFy5kuoB\nYmJismDBgt69eyuVefDgwdWrV3Nycuzt7bt37967d29DzfmYlpZ24cKFzMxMa2vr9u3bDxky\nhMlsps2nCYK4fPnyvXv3ioqK3NzcBgwYQM1SqgUMT9yywPDEdQLDE7dckKgA40LK984Pu2ER\nvG5UypdRj7QlKqT0csKeM1fvZBaUI7aZR9uAcdNnfuzKRwjFhIWkDVg1TBofl/SgimTbuXgN\nGT/rs96e9KYPz+4/lPTXu9xSpqmdX9e+YV+NdzNhIISkgpf7fj74IDWjqFxs7ezdf+z0iQOU\nLzRTU1PpLx2fz6/37OOamJmZMRiMul5wjP9y2q0Ro6T6C8b27m3Hyxfz+39a3PVjeiEvN+fT\nxymxGzfUo0Icx83NzQUCgZH9ZPF4PDabXVNTU6fEskWwsLAQiURqxyBuuUxMTExMTAiCoOa+\nNCZmZmYSiYSaD9RosFgsPp+PEDLKnw5kdAMkUL/zCCGRSKT9HkedEARB5T+gJWqmd4MAqJ/X\nJ6LO5NpuWTsSPa9l4NRnexduPZ3ZZ8zEEd72NcLcK4ePrg8vSIhfSz1AKfh77V6ZU+jscHtu\nzZVDe37bON+p0+Ge5myE0Iv4iKj4p60/GfllcKvq/NcnjyaEP874dfdiM7xm1ZxlL3CfkJAw\nRz724kZCwrYfTNrHBzvxFPc7ZcoU+vc3ODh4yZIljXEeqMsp3cu38/VhnkvSYwBSsbjG2rrd\nq5fsjHeKy9t36tSQNv1N3IW6ybBYrObW1UEvdJ+qsmXBcdwo/148Ho+6/DU+xvrTodRK02hQ\nz4v0xcieO31oIFEBxqMq71LkgSdjVsS5cxjFtRV+msMPHBC5YEpn6m1X79SwxQ+yJXIPEwZC\nSFxYs+GPqNYmDISQvx+6OXnL5cLqnuZsuTRvVcIz+67zNv3QHyGEUL8BQbzQ8CNb7hQu8nuV\nIpB2WbtwXDsrhFCvXp0rt8VJcqqQUwv4j3/LmjV6rO37ud8W5eUhNgshhIh/3VBPf/hg8rjP\n6LdVYnGlWMw3MeHpd6hZDJ8THt61a1d91gkAAACApgWJCjASpFywafFu237hoR2sdCk/Yfkq\nhBAiZWXFRYX5OXcTsxBC9DU133EylaUghJg8X4QQSZAIoeqiYxVycuzX3el6LHxDA0xPvTn+\nntW1gz2b8XTDxpOfD/X/qL2nk/WCBQtU9xsXF6fY9Ku8vLx+x6tJ/Zp+6der1NQVrVxNdWi+\nn5RbeDCvfLCHy3BHnf5qOvo5My8vL0/v57YxQNOvlgWafrUs0PSrZWm8pl/6qgo0PUhUgJHI\nTFx5T8iY3pG8fv06QqjiXRlC6PHfN0q4Zj17BKqWF6Re2bn/REpqBsExd3R2dnP6V/dcJl99\nOwFpeTFCyJf3ry+OL5f5WliAMbtt3Rxx8NCZxLjNeyukbAvHoO79J08f58xmKBamRuOhNEZn\negpJknr8la/77pEL18RCh9lCLNks6l93nk7D9erIlMkkCMKQZ0Bn1MWTpr/XjRs3oqOjqf9l\ncRwfOnRoUtK/WujZ2tqSJFlWVkZ1naeuXSorK6m3VM3t27cvKiqSSCQkSdrb28+aNevOnTtH\njx4lCALDMCaTGRUVxePxLly4kJWVZWFhQZKkXC7Pz8+Xy+VcLtfT07Nv375JSUl///03HTCD\nwYiOjl6/fj2VDVpbWy9fvhzH8bNnz2ZmZlJzDpqammZkZAgEAoIgcBxv06ZNVFTU7NmzS0pK\nqCXW1tZisZiKFiGEYRibzd6xY8epU6dSUlLEYrFMJpPJZARB8Hg8Pz+/+fPn69ig8eDBg/Hx\n8dT4BxiGderUaeDAgf369dPSC18qlZ4+ffrly5eVlZUeHh4jR45UnSVm2LBh9BUPhmEzZ84c\nPXq0LvFot379+tu3b4vFYjab7e/vHxUV1fA6c3Nzv/zyS4QQhmEkSbLZ7NOnT2vfhCTJenxr\nysvLT548+ebNG4SQj4/PmDFjVPvd3b179/r163l5eQ4ODj169FAd7S05OXnbtm30x2DcuHFU\n8A308uXLn3/+OS8vj8VieXp6fv/993XtqEANNfH27VsWi9WmTZtRo0bx+fzw8PBnz55RBZhM\n5p49exwcHBoe7cOHD69evZqbm2tvb9+tW7daB42gPora/14kSV69evXu3btFRUUuLi79+/f3\n9/dveKiNhx5oUS6Xt4gfcNAEoDM9MBKvf/02/HSG6nIGx+3EkR1KC+WSjCkTvuMEjls87T+t\nHc0RQhVZqyfOvrUl4YS3CSMmLOSe/aL96/9Jb+TS7DGfzQracGC5r2VF9raJsy5O3ZswxvZ/\nF0w/TfzsjcOCA5t6/P8Csjj77bNHtw/sO0a2m71vpcYhQZvPqF/6NWXChL0dWuuSqMRn5sak\nvZ/j4znBXZ+z5kW/yew0KeyTTz7RY52NxMzMjMPhSKVS1Tv033333atXr5osEjqxUV2u+38T\nOI433s1LJpO5ceNGLdPFUCZOnFhSUqK63M/Pb8WKFWr7YGRlZS1durSoqIi6TiJJksFgfPPN\nN8OHD6fLqJ2EhMPhnDp1qm6HoaC6unrChAlKDz+ZTOaBAwca0vf3l19+OXbsmOryI0eOaOk1\nVI9Rv+7fvx8dHV1dXU1/eHg8XmRkZEBAAFVAJpOtXbv2+vXrOI5TSSNBEF27dl22bBk97emM\nGTMyMzOVajYzMzty5IjukajasWNHYmKi4hIMw8LDw6kBr3Vx48aN9evXSyQSakxqgiDMzc1F\nIpHSJxzDsDFjxsxowJy5BEFs3Ljx0qVLimepU6dOUVFRWjLzWkf9qq6uXrZs2bNnz+gR0qm5\ndObOndvE0xDpDkb9Aqqa6YcVgLrynb79tIK9UZ0QQusOH1fNUhBCEsE1gYzoNX0MlaUghHJu\nFOiyF559MI+Bnf3lDr1E8Cb+foW01Rjv8lebwsLCzpeKEcJsXVv3HTFpoiNPlFFLn34A1EpP\nT2/KLAUhRJKk2oSkTjezGrWJhUwmi4yM1L6LuLg4tVkKQuj58+dqp68hSXL16tXUVgRBUM9h\n5HJ5TEzM+/fvqTJDhw5VW6fqBPB1Mn/+fNXEQCaTzZkzpyHVHj9+XO3ykJCQhlSrpKKiYvXq\n1WKxmHoUQ523qqqq1atX0+2RTpw4QT3iptZSf7u7d+/Gx8dTBV69epWVlaW28j/++KPesT17\n9kwpS0EIkSS5adMmHTOxkpKS9evXUw3h6MgrKipUP34kSWo64TpKSkq6dOkS+vdZevTo0f79\n+xtS7b59+6gnP9RXm6r2zz//PH/+fEOqBaCJQaICPkQciz7mDPzShl+v33147+bVA5uWRl0q\nQwjdepwqlGu7LGOwXSLGti+4tXHhlrgL164nJuydt+gwz77Hgh4Opu4j5ELB3iVrjidduHnj\n6tG962OyRR4DRzbVMQGjsnz5ckOH0BxVVFS8ePFCSwG1TxJoFy9eVL1N+/bt2/T0dKULUCo9\nu3jxYq0hjRkzptYymmRkqHkIjBAqLS2td9+emzdvNk1DiVu3blVWVqqeN6FQeOvWLeptcnKy\navslDMP+/PNP6nVkZKSmaBuSqGjaVi6XqyYwal27do1qLam4UMuJjY2NrVOEis6dO6e2ldf5\n8+frnfnLZDK1CYniyQegRYA+KuBDxOB4bIn6Jibu5I51f5k6uHfoOWLvbL/o78KPrv2p1f7f\ntG/bITR6udX+Q2ev7b52ism3+ahvyJSvxpsxMMT13b5yzo7fTiXs2yWW4zbOnsOnLJw6upZm\nKo0hNja2If9rNpyVoUc4rZHJVq1aZdgYGmLSpEkCgcDQUTRTr1+//uijjzSt1X59LxaLS0tL\nlXoUJ1BI5gAAIABJREFU5Obmqi2MYVh2djb1WssVakN6n2up9t27d61bt65HnVpuw+s3gdF0\n3uhVJEnm5+er7pQkydLSUrFYbGJioqUveEO6KBQUaHxC/vbtW11q0HJ0at26daverb+ys7PV\n/mkqKyuFQmH9BsIuLy9X++yIJEn6Uw1AiwCJCjBOtp1/0t531NZ/cNTmwYpLVv78T4ry8f4E\nxeUMtuu/+6FiQSOmBI2Yolqnld+nkWs09khpMjNmzAgNDTVsHxVD7ZrCYjIjIiJadB+VY8eO\n6beJttFo4BypXK7ysA2qSyhUjwvqtZaOOo3U2s3Ozq5+G3p7e6t2+aBo75xdV1q6T1CrqNER\n1F4uMxgMagIQHMc15ZYNiVbL7CLUIGC10vSp0KQh835wuVy1ZwnDsDpNh6VIy4bGOlUOMFbQ\n9AsAAJqdXr16GTqE5gjDMO3T42gZfwnDMC8vL9U8p127dkx1Q2mTJNmpUyf6taZqV6xYoS1i\nrTgcjtrlDAaj3hMULl68WNMq/T5R0TJ+FN2ZvnPnzqr9tnEc79ChA7U8MFDNkIyUeqdqCKEu\nXbpoWvXppzrdS6rr6FiRkZF1Kq9I7VnCMKxNmzb1TlRMTU1btWqltlr6Uw1AiwCJCgAANDvf\nf/+9oUNojvr166f9icqOHWoGz6BNnz5ddaGpqenEiRORwtCoCCEMw7y9vfv160e91ZRRYBgW\nFBRUa9iaTJs2Te3yhvR7QQipzbsQQvVrS6ZJu3btqHRa6dFH//796R2FhoayWCzFAjiO4zhO\njz4cFRWl6cnJgQMH6h3b5MmT1T458fHxadeunS41BAYGKl3Qa3nCw+FwGjJC8RdffMHhcFTP\nkqaPh46oT7vSp5rH41GfdgBaCkhUAACgOTp06JDSFademu44OTkp1cNisRTvQKvu5aOPPlK6\nNUsN2Kq4xN7evnv37kgrXVptWVlZqT1MHMdHjhz5ww8/aN+cx+OtXLmSwWAoLXdwcIiOjtZ0\n//7zzz+fO3cufWmL4/jgwYPXrFlDD6F76tQpJpOpFBiO48nJybUekRYjR46cNm2a4rnFcTw4\nOFhtQqW7M2fOqOYqtra2MTExDalW1aJFiyZMmECfbRaLNWnSpPnz59MFvLy8NmzYoDiitJeX\n17p163x9feklcXFxqic2Ojq6IYExmczY2Fhvb2/FhT169Ni8ebOONWAY9uOPPwYHB9NHx+Fw\npk2bpppDcrnchgxRjRBycXHZvHmzn58fvcTNzW3NmjUdOnRoSLUBAQHR0dHOzv8b+b1jx46b\nNm3Sy6wvADQZmEcFAIOBeVRgHhUt86hQ0tPTd+/eLZPJQkNDO3XqVF5evnTp0oyMDIIg5s2b\n5+zsbGlp+fLly7t377Zv375bt26lpaX//e9/q6qqqMkct23bVlFRYW9vn5qaKhKJunTpQrWo\nefDgwW+//WZqajpjxgx3d3eEUHl5eVZWlrW1ta2tbU5Ojlgs5nK5IpHIycmJmoJg9+7diYmJ\nBEEwmUyq11Zubu7FixdxHB82bBg1+4FQKMzIyDA3N6c6dVhbW1+5cuXJkycBAQHUnCQikej4\n8eMZGRk9evSwt7d3dnaOiYm5ffs2juNeXl7UlXRFRUVGRkZlZSWHw2Gz2enp6fb29p06ddLS\n8UDVo0ePjhw5wuVy+/bt26pVKwcHh1rnjqipqcnOzq6urnZ3d9fU5WD48OFyuZzBYPz3v/9t\nyLMUJXfu3Hn48OFHH33Uo0cP1SyrfnJzc5csWVJWVta+ffs1a9bUWr4e86hQxGIx1SvGw8ND\n06OngoKCwsJCe3t7TVfJr169iomJkcvlYWFh3bp1q2sMmgiFwidPnnC53Pbt29e12wmluro6\nIyODyWR6eHjQievJkydPnTrl6uo6f/78hsx4o6S4uDgvL8/Ozs7BwaHWuxK1zqNCIQiioKCg\nuLjY2dnZxsZGX6E2EphHBaiCRAUAgzHaROWLL3x5Jiwd5hQTSCSlYom1CcdCw/XN/2D/36FZ\nh1+sl2WCqXPnGkei0nLZ2NgIBAIjm16ay+Xy+XyCIEpLSw0di57VO1FpzthsNvUcr7S0tFEn\n+Wl6OiYqLQskKkAVjPoFANCzBYsXN3AiPFU4jpuamlZUVOhyb6WvvpvjAwAAAKDpQaICANCz\njh076r1OBoNhZWVVUlICD4EBAACADwR0pgcAAAAAAAA0O5CoAAAAAAAAAJodSFQAAAAAAAAA\nzQ4kKgAAAAAAAIBmBxIVAAAAAAAAQLMDiQoAAAAAAACg2YFEBQAAAAAAANDswDwqAHxw0tPT\n8/LymmBHfn5+lpaWTbAjAAAAABgfSFQA+OAcSUy8+DpNbmOj+yaYqAIXCAkLc9LUTMdNuG/f\n/Hf+/KCgoHrFCAAAAIAPHSQqAHxwCBJldute2rkOKYTDtSuuiSfzOo8u6NNPx00Cfj9Qr+gM\noLq6OjMzs7Ky0svLy8rKCiEkFArT09PZbLanpyePx9OlEqlU+v79+4qKCg8PD1tbW4RQXl7e\n3bt3EUJdu3Z1cnJq1ENoAhKJJCMjQyQSeXh42NQlywUAAADqBxIVAMCHiyCI48ePHzx4UCwW\nI4QwDOvduzebzb548SJJkgghFos1fvz48ePHs1gsLfUkJSXt27dPJBJRb7t27VpUVPTu3Tvq\n7a5du9q0abNixQpzc/NGPqBGQZJkYmLi/v37KysrqSW9e/eeOXMmpCsAAAAaFSQqAIAP1/79\n+w8fPoxhGPWWJMm//vqLSlEoMpns4MGDxcXF8+bN01TJkSNH9uzZQ1eCELp3755iJQihV69e\nff3113/88Ye+j6ApHDp0aP/+/Tj+v8FXrl+//ubNm127dnE4HAMGBgAAwLjBqF8AgA9UeXn5\n0aNHEUKKSYVSgkG9PXfuXHZ2ttpKxGLxwYMHtVdCKS0tPXfunD4Cb1JVVVVUfkUQBL2QJMnc\n3NyWeDgAAABaEEhUAAAfqOfPn8vlcl1KkiT55MkTtavS0tIkEomOe7x+/bquwTUbqampNTU1\nqstxHH/8+HHTxwMAAODDAU2/gBEhZVcTYk9cup1TVMEys/Pr1m/6VyGObIahw2pqsbGxsbGx\nWgq4t2mLrG0bOwxpjTQyMrKx96KjSZMmTZo0SWmh7gmGlsJ1qoTqCdOyaDnAlng4AAAAWhBI\nVIDxeB63aPPJtwGDx43ycxHmPDty5ND3r0UHt36F1b6pUZkxY0ZoaCjd71nV6i1brzV+GGwW\ne+XKlfoanpjBYFhZWZWUlKhtVVU/rq6uuhd2c3NTu9zFxUX3Sry8vHQv3ExoOksEQWg6JwAA\nAIBeQNMvYCRIUrz+zFuHXouiZk3s36fv6C/mrJriU/Eu8VJ5HW54gw+Kj4+Pt7e3Yid4tXAc\nd3Bw8Pf3V7vWycnJ39+/1koQQhiGTZgwoT6BGpSbm1v79u2VDhDDMAzDBg8ebKioAAAAfAgg\nUQFGoqbiYWkN4Ta6Hb3Evlt7hFBatazedZKEXG9370Hzg2FYRESEg4MDQgjHcWpUKyaTyWaz\nFZdYWlouW7ZMy/DEP/zwA/VsgdoEwzAGg0Hvgn7xzTffWFtbN/IxNYpFixZRD44UD3Du3Lkt\n8QERAACAFgSafgEjwTbreujQIQaXSy8pvP8awxg9zNnqNyCllxP2nLl6J7OgHLHNPNoGjJs+\n82NXPkIoJiwkbcCqYdL4uKQHVSTbzsVryPhZn/X2pDd9eHb/oaS/3uWWMk3t/Lr2DftqvJsJ\nAyEkFbzc9/PBB6kZReVia2fv/mOnTxzg26hHDRrIxcXll19+SU5Ofv78uVgs9vLyGjFiBJPJ\nTExMTE9PZzKZbdu2HT58uImJiZZKbG1td+3adf78+adPn1ZUVHh6eg4dOhTDsO3bt2dmZiKE\n3N3dv/vuOyojaokcHBx+/vnnc+fOPXv2rLKy0tPTc/jw4S33cAAAALQUmB4bfAPQHMiqXx05\nfqcoJ+2vWy+7TVj2Q4j6FjvP9syLOJ3ZZ8zETt72NcLcK4ePptV4J8SvZWAoJizkBteclDmF\nfj7Inltz5dCevzOrFv52uKc5GyH0Ij5icfzT1p+MHBjYqjr/9cmjyRLrbr/uXmyG1/w4+YsX\nuE9ISH9HPvbiRsLZewWTf44PdvrXvOapqan0l47P5+t9BkAzMzMGgyEWi7V0dF61adNBxBC0\na697tTb37zpcu1LQp19JUFcdN2l7NnHt5NAuXbrovhctcBw3NzcXCARG9pPF4/HYbHZNTY2W\nPkUtlIWFhUgk0nFctZbCxMTExMSEIAihUGjoWPTMzMxMIpFIpVJDB6JPLBaLz+cjhIzypwMh\nVFVVZehA9In6nUcIiUQimaz+rSGUEATRQp9mAwRPVIDxkUvz7t1/UFaUK2dYWrIJTcWe5vAD\nB0QumNKZetvVOzVs8YNsidzDhIEQEhfWbPgjqrUJAyHk74duTt5yubC6pzlbLs1blfDMvuu8\nTT/0Rwgh1G9AEC80/MiWO4WL/F6lCKRd1i4c184KIdSrV+fKbXGSnCr070RlypQp9O9vcHDw\nkiVLGuMkUJdTmtb6+fh0v3gRZaTrXqGkqkpsb++Q+Z5TXKjjJgwG7uTkZGlpqfteamVhYaHH\n2poPFoul3xPVTJiZmRk6hEaB47hR/r14PB51+Wt8jPWng2qnanxMTU31WJtIJNJjbaCJQaIC\njA3Hou+mzX0RKb97fMXKvT/KfPd/095KtdiE5asQQoiUlRUXFebn3E3MQgjR9375jpOpLAUh\nxOT5IoRIgkQIVRcdq5CTY7/uTtdj4RsaYHrqzfH3rK4d7NmMpxs2nvx8qP9H7T2drBcsWNCY\nB1p/U0JDp4SG1mmTR48eRf/4I5KIkUTXEWnFUun8b7/lctgm+v6vtJWv7+oNG/VbJwAAAACa\nG0hUgJEg5VJJDfG/xwgYo+vYZVa/B98/kol+VJOoCFKv7Nx/IiU1g+CYOzo7uzn9a1AjJl/9\n7TdpeTFCyJf3ry+OL5f5WliAMbtt3Rxx8NCZxLjNeyukbAvHoO79J08f5/zviVyOHz9Ot0Bg\nMpllZWX1PGANzM3NqaZf1dXVeqy2sLDQCRHh3nUYivdUTkFccckoW7dRLvrszJBbVb01PV3v\n581Q+Hw+1fTL+O75WVpaVlRUGF/TLy6XSxCEQCAwdCx6Zm5uLpFI6jQvUPPHYrGoe/Pl5eXQ\n9Kv5w3GcevYlEonUzjNbPwRB6PcRDWhKkKgAI1H6PHpq5MPlvx8NMvv/+/cYw5aFl1SpuU6S\nSzLmLN3KCRwXvWtla0dzhFBF1uqb1wsUiqgfbZZlYY0QelMl78D73xhQb8UyloMtQojvFjTz\nh6CZiCzOfvvs0e0D+w5H5NruW/mpYg3Ozs70a7FY3EiXpyRJ6vcCkSAIDoNhz6nDsxFTJoP6\nt05b1UoiJxCJjObyl7p4ov5eAoFg0aJF2dnZcrncxMRk2LBh48aNO3bs2OvXr6uqqmQyWXV1\ndUlJCf3/N4ZhwcHB06ZNUxw7+MaNGytXrqTWkiSJYVhycrLSTnNyco4fP56ens7hcNq2bTt2\n7FhNfaVqamrOnDmTkpLy7t274uJi+lLP1dU1Ojr66NGjb9++xXHcx8dn3LhxVlbKdwQIgtD+\nlwoPD3/27Bn91snJad++fUplbt26deXKldzcXAcHh65duw4cOJAajU2LnTt3JiYmUq8ZDEZk\nZOTHH39Mvf3rr7+uX7+el5fn4ODQo0eP/v376zK0NGXYsGEE8U9rUmoYt5EjR2opLxQKjx49\n+vr1a4lE0qpVq7Fjxyp+/RuVSCSaPXt2YWEhFaq/v//q1au1b0KSZK1/r0ZSXl5+9OjRtLS0\nmpqa1q1bBwcH62uoBnr8PYIg6L9dA7148SIpKSkrK8vc3Nzf33/06NFahgRsPNSX0Wh+CSn0\nL4xcLjeyQwP1BokKMBKmHn0Qenj8Sm7QSE9qiSjrdFq1rMMgNf/hSQTXBDJi7PQxrR3+aZCd\nc6NAtZgqnn0wj3Hp7C93xizpQy0RvIm/XyEN/Nq7/NWm76IfT9y8e5C1ia1r676ureXJyT9n\npCD0qfY6AUAI3blz58cff6TfVldXHzt27NixY9RltNqbwSRJHj169Ny5cwcPHuRwOAihkJCQ\niooKei3179ChQ1etWtW58z/dsc6dO7d9+3aCIKg05vHjx4mJiStXrmzXrp1S/SUlJVTihP4/\n7aFXZWdnT548mYoNw7CnT5+ePXt22bJlgYGBuh/y0KFDlY4rLy9v6NChdGYll8tXr15948YN\nau/p6ek3b95MTk6Ojo7W0pUiJCREsae7TCaLior6+OOPIyIiVqxYcffuXRzHCYJ4+/btzZs3\nz507t2LFCursaTdkyBDFtyRJ7tq169ixY/v371db/tmzZz/++GNVVRUVfGpq6p9//vndd98N\nHDiw1n01UEpKytKlS+lzS5JkSkrK8OHDjx07pn38OoNISUn56aef6ME/Xr58efbs2fDw8L59\n+xo0LvX27t175MgR+utw//79M2fOrFu3DgbBA6CRwDwqwEhwLPpN7mjzfO/C9XEJl65dPZ2w\nZ8GCfRyrTgv6OKkr3MecgV/a8Ov1uw/v3bx6YNPSqEtlCKFbj1OFWqdOYbBdIsa2L7i1ceGW\nuAvXricm7J236DDPvseCHg6m7iPkQsHeJWuOJ124eePq0b3rY7JFHgO13XAFgPbTTz+pXU6S\npPYmKxUVFXFxcdRroVCoWpgkyYiICOp1fn7+9u3b5XI5lahQ/1ZXV0dHR6s2tNi2bVtubi5d\niabYqBvVUql07dq1ujdEiYuL01RneHg49ToxMfHGjRv03qkdpaam0seravfu3WrH47p9+/Zv\nv/129+5duh6qzidPnvz++++1Rjt06FC1oVKPLFTV1NRER0dXVVXRJ5l6aLZ169aCAp3uiTTE\nsmXLVM+tXC7/5ptvGnvXdSUWi9esWSORSEgFcrl806ZNxcXFho5O2YMHDxISEhT/pgihwsLC\nzZs3Gzo0AIwWJCrAeAT/d8u0ER+//ytx5+at8Yl33D8J3rBruQ1TzYecwfHYEvVNK9nLHeui\nd/9xuszx07071nV0tji69qcXVbW0i+0QGr18xlji9bXdWzb9fvrvVn1DNsT8YMbAmFzf7Svn\nfGRVkrBv1/qNMckPCoZPWbg2tE3jHCswKo8fP25IOweqmdPSpUs1FaAvW69evSqTyZSuYgmC\nKCoqevLkieJCoVB49+5d3VvLUCP2UpmALg4dOqRpFd0Y7Pz582pbeV24cEFTYElJSZqqPXHi\nhOpCDMP+/PPPWmLVkKdRy9Ve/aekpJSWliptRZKkTCa7evVqrbtriOLiYk3juubl5TXqruvh\n/v37AoFA6a9JkqRUKr1+/bqhotLkwoULqg0FSZJ89OhRUVGRQUICwOhB0y9gPDCGxcjpC0ZO\n16mwrf/gqM2DFZes/Pk36sXH+xMUlzPYrqdPn1bcT9CIKUEjpqjWaeX3aeQawzf0io2NjY2N\n1Xu1vRzt9V5n/VSIKpTa4bRoM2bMaODIBzKZTCwWK2UaauXm5io14qLl5OQoNtwqKCioR+dj\n+glMQ9DXgnl5eWoTkurqaoFAoNolBiGkZe4FtX1zSZIUCoXV1dVchbli64Sa01NJfn6+2sIY\nhunlFGlx69atRq1fv7TkTs0wrcrLy9P0pcjLy7Ozs2vieAD4EECiAoCxmTFjRmhoqH4nELx/\n//7l2J/1WGFDmJma7YvXeD++ZTEzM+NwOH/88UdDKsEwjM1mczicWqdIoya/02VV/ebT0FK/\nEqqjiPYyPB5PbQqH47imvEL3nvE0BoOhSx8VTZhMNf+NagqPJEndT1H9uLq6Nmr9+qXlbDTD\nGV34fL6mz21j/1kB+GBB0y8AADAw7YNH1crLywvH8WPHjmkqQF++BwQEqL0ljOO4v7+/4hJn\nZ2d7e/tax9dS2kunTp10LKxltFD60j8wMFA18cBxvG3btpo6hWvp09y2bVvV2jAMCwgIqPUw\nNeU/GIZt3KhmSh9/f39NddKjGjSSgIAATaua4eSAnTp10nRuG/tE1UNAQIBqloJhmIWFhaen\npyEiAsD4QaICAAAGxmazu3TponaVLqkC3ftc0zUfPUN8ly5dlK7/qPpDQkJsbW0Vl2MYNnPm\nTJIkdQmA2u+wYcM8PDxqLUxJSEhQuxzDMHpk4YkTJ/L5fMWDwnEcx/Hp0zW274yJiVG7nMVi\nff/99xwOR/FwcBxnsVhTp06tNdpPP1XfpJMkydatW6sut7e3Dw4ORgp/EepFly5d6jQwWv10\n69ZN7fL58+c39q7rytnZmcrS6b8LdaJ69OjRsWNHQ0amzogRI5yc/jU6CxXtzJkz6XGQAQD6\nxYiKijJ0DAB8oGQymVQq1W+dXC4Xx3GZTKbH2bIQQrm5ue8e3O9vo34eTLWeCSrulpZ3tbHs\nYGGmx0iENbIrwqqhDXsE0XxwOBwmkymXy3v27Jmfn5+enk6voqZSycrK0vKnZDKZMTEx3t7e\n1NtJkybFx8crPTNhMBgnT56kXmMY1qtXL4TQq1evqHvDpqamX3/99Weffaaa5Li7u7dr1y41\nNZUe8piGYVjnzp1LS0upMQC4XO6XX34ZGhqqmAbweDyJRKKlfVePHj2Sk5MVo8UwLDw8nD4c\nU1PTnj175uTk0P06WrduHRkZqTqSMo3FYgUGBl68eFGxWgsLi8OHD1tZWXXv3j0zM5Med6tt\n27bLly9v1aqVptoUQ71582Z5ebniQhzHVeeooXXq1MnKyurFixfUd5zJZIaEhMyePVttUzH9\n6tevX1ZWVkZGhmKos2bNGjx4sJatTExMZDJZra0H9S4wMNDc3PzFixfU55zNZk+YMOHrr7/W\ny6U/3a6vurq64RM+slisvn37CgSC9+/fU7U5OjqGh4d/8sknDQ+1rqjnY3r/H8SwMAyjmk1q\n/+moh2bYkhDoSH2vSgBAE2iMCR+trKwYDEZ1dXVj9FFZ4eOu+ybxmbkxae/n+HhOcNfnJHdZ\nVeLl2UXbfvlFj3UaENVHRSqV0oPq/v333+/evevXrx81OSBBELm5uTKZzNHRMT8/XyKR5OXl\nJSUlWVtbf/XVV0qPQWijR4+WyWQ+Pj6aBk6tqanJysricDhOTk61PjMpKioqKyuztbXdunVr\nVlbWt99+S7Uvkslk2dnZOI67uLioXlba2NgIBIJaL3zT09MXL14sl8uXL1+u1PyMVlFRQU34\naGlpqb02Wl5e3v79++3s7CZMmKB0jULV5uTkpGmaSy127Nhx9uxZOzs7LUMkKyIIIi8vTyKR\nuLm5Nf20gH/99VdKSsrgwYPbtm1ba2FLS0uxWEzPZ9LE6M+5q6urHnM5NptN/ZVLS0v1eOEr\nFouzsrIsLCzs7Q02xAjVeLKRpgw2FBzHra2tEUICgUC/99o0/VSC5g8SFQAMpmUlKlvWrG5j\nWYcnKkKJVCCRWHA45nqamR7DcZIgxDJZBYe7bfduvdRpcKqJitHQMVFpWbhcLp/PJwiitLTU\n0LHomWETlUbSSIlKcwCJSp1AotJywahfAIDatWnTZuHyH2sv12hwHDczM6MmNKz3SLIAAAAA\naEEgUQEA1M7MzMywfVsZDIaVlVVJSQk8BAYAAAA+EDDqFwAAAAAAAKDZgUQFAAAAAAAA0OxA\nogIAAAAAAABodiBRAQAAAAAAADQ7kKgAAAAAAAAAmh1IVAAAAAAAAADNDiQqAAAAAAAAgGYH\n5lEBwMgVFBQ8e/bMILvu3LmzlZWVQXYNAAAAgJYOEhUAjNzz58/XH/y9qlWremyLC4WM8nK5\npSVhbl7XbU1TU1daWUGiAgAAAID6gUQFAONX5d3q5ejP6rGhw7Urrk9OFvgHFPTpV9dtOx/c\nX489NhNFRUXv379nMpne3t4WFhYEQdy5c+fly5dOTk7du3e3tLRU3aSqqurt27cikcjd3d3F\nxUWXvcjl8tevXxcXF9vY2NjZ2bFYLL0EL5FI3r17V1JS4uLi4u7ujuPNuolvRkbGrVu3CIII\nCgry9fU1dDgAAACaEUhUAADgf4RC4S+//HLx4kWSJBFCTCazW7duDx8+rK6upgps27ZtwIAB\n4eHh9CYkSR4/fvy3334Ti8XUkqCgoDlz5jg6OmrZ0ePHj7dt25aTk0O9dXBw+Pbbb4OCghoY\n/+XLl3fv3i0QCKi3Pj4+3333XevWrRtYbWMoLy+PjIx88+YN9fbAgQOurq6rVq1ycHAwbGAA\nAACaiWZ9pw0AAJoSQRDLly+/cOEClaUghGQy2c2bN+ksBSFEkuTFixfXrVtHL4mPj//ll18k\nEgm95MGDB+Hh4VVVVZp29OrVq4iIiNzcXHpJYWHh8uXLnzx50pD4r1y5sm7dOqFQSC95+/Zt\neHh4fn5+Q6ptJLNnz6azFEp2dvasWbMIgjBUSAAAAJoVSFQAAOAft2/fTk1N1aXklStXZDIZ\nQqi6ujo+Ph4hROc21Ovi4uKkpCRNmx88eJAgCKVNSJKMi4urd/AkSe7btw/HccVqCYKQSCSH\nDx+ud7WN5NKlSyUlJarLKysrExISmj4eAAAAzRAkKgAA8A/dh0cjSfL+/fsIobS0tJqaGtUC\nGIY9ffpU0+ZPnz5VfW5AkuTLly/lcrnO8f5LcXFxYWGh2mofP35cvzobz40bNzStunv3blNG\nAgAAoNmCPirAqLy5cezgiQupmYVyBr9Vx0/Cvprczs7E0EE1tdjY2NjYWMUlsq4fN30Y0hrp\n0qVLm36/ak2aNGnSpEm1FlObcmgiEokQQlKpVO1aDMM0rSJJUtOOqFUMBkP3MGiadqd9laG0\nrGgBAAAYBCQqwHgU3ty1YF2yjV/Pz6aMM6nOTjpyaumslOj929vxPqzP+YwZM0JDQysrK6m3\nly9fjrp5q+nDYLPY0dHRnTt31kttDAbDysqqpKREsV2T3rm5ueleuEOHDlo2IUnS3d1d7SqM\nSp0kAAAgAElEQVQMw1xdXTMzM1WPxc7OzsSknqm1vb09h8NR7CpDwXHc09OzfnU2Hh8fnwcP\nHqhd5eXl1cTBAAAAaJ6g6RcwHvt/vmxiM2B39KLPhg8Y8VnYpu1zMGluzIE3tW8JAEIIob59\n+/J4PF3G83V0dKQGp3JwcAgKCsIwTHEt9Xbo0KGaNh8xYoTajGvEiBF1Dvr/sViswYMHqy4n\nCGL48OH1rraRhISEqH1whGGYLs++AAAAfAggUQFGgpSXXRdI3P4zmv3/V4xc+/69LTilD1/V\nv05C3oh370HzY25uHhkZyefzEUIYhlH5BofDUSrG5/PXr19Pv/3++++p8X8xDKOSHDabvWDB\nAi1PBoYPH/6f//yH2gWdFw0cOPCzz+oz3Q1t2rRpXbt2VYwEx/HQ0NDu3bs3pNrGwOPxwsPD\nlXIVDMO+/vprGJ4YAAAA5cNqEgOMGEnUTJo0ybGnveKybKmcaWOnYQPp5YQ9Z67eySwoR2wz\nj7YB46bP/NiVjxCKCQtJG7BqmDQ+LulBFcm2c/EaMn7WZ7096U0fnt1/KOmvd7mlTFM7v659\nw74a72bCQAhJBS/3/XzwQWpGUbnY2tm7/9jpEwfABHYtTOfOnfft25ecnPzmzRs2m92mTZvB\ngwc/ffr04MGDBQUFZmZmXbp0mTZtmuImVlZWW7duvXr16rNnz4RCoaen55AhQ2xtbbXsBcfx\n2bNn9+/f/969e7m5uY6OjoGBgVRbsobgcDg//fTT3bt379+/X1pa6urq2q9fPw8PjwZW20j6\n9evXpUuXrVu3vnnzhiAIb2/vOXPm2NjYGDouAAAAzQXWqA2+ATCgrMubZm+52n/Fvnn+ai59\nnu2ZF3E6s8+YiZ287WuEuVcOH02r8U6IX8vAUExYyA2uOSlzCv18kD235sqhPX9nVi387XBP\nczZC6EV8xOL4p60/GTkwsFV1/uuTR5Ml1t1+3b3YDK/5cfIXL3CfkJD+jnzsxY2Es/cKJv8c\nH+zEU9yv4ohGlpaWer95bGZmhuO4RCKhJx+8ePFiVFLyu95961GbdcoD+5vXC3t+UhoQWNdt\n25w7u/6r6YGBdd5QLQaDYWpqKhQKjewni8fjsVgsmUxG9ykyGubm5pWVlfUexKx54nA4JiYm\nBEFUVFQYOhY9MzU1lUqlRjaSAZPJpB6QGt9PB5fLRQgpTvFkBHAcNzMzQwhVVlZS47/rhVwu\nt7a21ldtoInBExVghEi56GL8zp1Hbtp3DZurLktBCD3N4QcOiFww5Z+u3l29U8MWP8iWyD1M\nGAghcWHNhj+iWpswEEL+fujm5C2XC6t7mrPl0rxVCc/su87b9EN/hBBC/QYE8ULDj2y5U7jI\n71WKQNpl7cJx7awQQr16da7cFifJqUL/TlTmzp1L//4GBwcvWbKkMc4Ah8OhGyx5eHh0YjM7\n3NY4GqwW1SJRlbOzW0kRt+6bMy0sXFxcLCws6rFfTczNzfVYW/PBZDL1e6KaCVNTU0OH0Cj+\nr737jmvifAMA/l72AEIAWQIuVNwLt3XgqFocdeBEHIij/qxatbhx71UnVnHLcKOtqy4cVRx1\niyCICLJXgpB59/vjbBpDEkJISAjP9w8/yeXy5rn3TfCeu3dQKBSLbC82m02e/loeS/3TwWAw\nTB2CUZDppaGQMzSCKgoSFWBpsl5e27p9/5tseadhP88e66NpGNaopasRQoiQ5edkZ2WkxV74\nhBBSXPvlOo8jsxSEEI3TACFE4ARCqCT7tFBODJn6X49/XgP/Vlbn359Jprdr5sigvty0+dzI\nfi2aNq7tYjdnzhwjHWO5eHt7H/X2LtdbiouLRwwdiuRyhBADIZlIJMzKKlcJEplMIpXOnDaN\nQavQHxlHZ+cDR45UpAQAAAAAVFGQqACL8jB8/dqI+3yvbkuWTvb2sNayZ2Hczd2Hz/4T9xFn\n2ji7urq7fDNrE42r/nKppCAHIdTg2/mOG7Bp8YJMjNZ++9ZFxyIuXji0NUwoYfCcvTv6jAsc\n7sr4ZrjwmTNnFD0QaDRafn6+HoephY2NDZVKFYlEFekSUFxcLC0pOdqmsd4lnE7N2J+YEuha\nY6ibs96FFEllM95+IKuIvIZdUFBgYf03uFwug8GQSqWWd83P1tZWKBRaWNcvFovFZrNxHC8s\nLDR1LAZmY2MjFotLT29dpdHpdPK2nuX96eBwOAih4uJiUwdiSIp7lUVFReVa1Uo7HMct9e5u\ndQCJCrAcny6tXR3+d9sR8xaO/o6KadtTLv44Y+F2Zpvha/as8nS2QQgJP629dydTaRf176fz\n7BBC74vlzTh0xcZEkYzu5IAQ4rp7T5nnPQUROamJr549OHIwctFnh4OreimX4OrqqngsEomM\ndHpKEERFThDlcjmGIZsK3AxhUSjkvxUpBCGE0DcHIpfLq+LZxuPHjy9fvpycnOzg4NCyZcsh\nQ4YwGIyCgoJRo0aRh4NhGEEQO3bsCAsLS0hIEIvFNjY2AwYM6NWrV1RUVFxcnEwm8/T0HD58\n+O3bt0+dOiUWizEMs7W1DQkJadDgmwkbzp49GxoaqniKYdilS5dU4klOTj516lRiYiKTyWzU\nqJGfnx+fz1feQS6X//HHHw8fPszMzKxZs2b37t1r1aq1dOnS/Px8HMcZDMbAgQMVMwq8f//+\nzJkzHz58wHGcbCA7O7sWLVpMnjyZ3FK6QoqKik6dOvXq1avU1NTCwkJFJQwZMmTy5MmGqHKj\niIqKio6OFggETCazXr16wcHBtra2FSyTIIgbN27ExMSkpaU5OTl16tTJx8fn/Pnzz549y8nJ\nISdm8C7nHVG9I9HUXsaWk5Oj/D338/Nzc3MzSMmKaeVwHMdx3CBlmgnyV6O9vWQy2cWLF2Nj\nY7Oystzc3Hx8fLp27VpZAepD8eddLpdb2DUOoDcYTA8sBIEXT/MbI20+/cDS3mXuXJx1ZGTg\nqSG/R4x3+jqAJC581vzwpG1RZ+uyqDsD/B45/np449dR4HJJ6o/DpntvOrK0ga1ckjZmxHTr\ndnN+X9CNfLXwfbj/nPA28/b97Hji5zXPx2wN7WP3dcG+6z+N2StoefLoPE1hGCNR4fP5VCq1\npKSkIoOzi4uLpwSMO9euud4lhKd83pmQPKN+7VEermXvrYFAJhv/Iv5weASqrAUfDY4giK1b\nt169epVCoeA4Tv7r6OjYt2/fIzp0aSPnR1ZOZkrvM3bsWMXCIxMnTvz8+XPpQvbu3auY+ys6\nOnrv3r0EQRAEoZh/efny5S1atCB3EAqFwcHBiYmJ5CeSMZf+XEdHxyNHjpw8eTIsLIzcUxEe\n+dTBwWHTpk3Ozqq31D58+BAcHKzpjoSDg8OxY8fKrJnKFxQUlJKSoryFSqWuW7euInO1SaXS\nZcuWPX36VPnrQaPRZDKZ8pY+ffrMnj1bZa0eg7O1tRWJRIpJOCrNo0ePVq1aJZFIFN9zCoXy\n888/9+nTp+KFMxgMcnRKXl6ehSUq5C0CLf+DCASC+fPnJycnK3+XOnTosHjxYlpFrx8ZC4VC\nIUe9FxYWGvCOCkJI+zSMwJzBOirAQojy/vwskbMcM09/6+I11fM2hBCT182GSrm+af+d2KeP\n7t06smVhyPV8hNDfz+MEWpdOoTJqLhrSOPPvzfO3Hbp2+86FqLBZv0ZyHDvN6eRk5eErFxSG\nLVh35o9r9+7eOhW2cWdqUa3eA411wKAqiImJuXr1KkKIPEki/83OztYlS0EIKZ/9a8rQjh07\nppipqXSWQr5x6tSp5OO0tLTQ0FBFseQDiUSyfv16xWnBwYMHk5KSFJ+o6fQuKytr8+bNYWFh\n5D7K4ZGP8/LylFebUby0YcMGgUCg6ZBzcnLOnj2r6VVTOXDggEqWghCSy+UrVqyoSLGnT59+\n+vQp+vbrQU62obzl6tWrMTExFfkgs1VSUrJx40apVKr8Pcdx/Lfffssq57g4oOL3339PTk5G\n336XHjx48Mcff5g2MADKBRIVYCFEOW8RQp/+jDr8rYhzqqcXCCEqs9a2kGn1ZG93bVgTeiI6\n37lX2K4NzV15p9aveFNcxlWcZv5rlgYNweNvh27bcjz6fr3ufpt2zrOmYjR2gx2rZjTl50Yd\n3LNx885LTzJ/GD9/vX9DoxwtqCKuX79e+kK4wW8KHT16FCG0efPmMve8detW6e5zOI7n5eU9\ne/aMfHzjxg0dI7x9+zbSfDg4jr9+/TozU7lHJUpOTv7w4YP28s3wjsrNmzfVbhcKhe/fv9e7\n2GvXrulynwTDsOvXr+v9Kebs8ePHAoFAJRkmCEImk929q89EhYAklUrJn6cKDMP++uuvyo8H\nAL2Z6e0/AMqL77UkOroc+zu0+D5k6/fKW1btPUo+6HA4Snk7leEW/U3RmLfveG/f8WpiaNJr\n8bpepbdXsn379u3bt6+ChfDZLIMEU0FisaRv376mjkJ/PB6vEvqqJSYmIoTu3bunaQdFDJmZ\nmZq6kKWnpyOEhEKh7p1/pFKpptKUi1VeLEglb1Gr8nsflUnLLaB37955enrqV2xmZqYuXw+C\nINTeK7MAGRkZerwEylRYWKh2SRwL/i4BSwWJCgCWJigoyN/fv+JjVAwYkt6YTMblM2dQlR2j\nMmfOHKFQaOzO8WSvbhcXFzJj0ULL6gTkOmscDqfM3ENB0/AVZSqT7eiyPIJiALT5YDAYmlZC\ntLdXv1KTLrhcri6zhylWwbM8WuZiMuxKGtUNl8tV+0PGMAzmvwJVC3T9AgAAY/H29i59Kk+h\nGPgP7+jRoxFCu3bt0rSDon+Rt7e32iSERqORg+npdHrz5s11jLBmzZpaUhoKhcLn8+vWrau8\n0cvLizyF0lJsq1atdPn0ytS4sfqpuqlUakWm5GrXrp0uXb9wHG/btq3en2LOWrdurakGKmeu\nM0vFZrO9vLxK/5AJgmjfvr1JQgJAP5CoAACAsQwaNMjFxUX5VIxCoRAEofsFcsV7NZ3PeXp6\nKua81rSPYgrjNm3aqJymkG8ZPXo0eVsGIRQYGEij0ZSLUlsshULZunVry5Yt1X4ieZgzZsxQ\nOVWi0+lTpkwhJxNT+0YMw5YvX672JROaNWsWnU4vvX348OEVmUBp7NixVlZWpatauXIwDHNx\ncRk8eLDen2LOnJychg0bhkp9z3v06NGkSRNTRlb1BQUFUSgUle8Sn88fOXKkCaMCoLwgUQEA\nAGPhcrnbtm37/vvvFd2Z6tatu2nTppMnT/L5fJUEgMFgMBgMxVMPD4+JEyeSy58hhDgczogR\nI5Qn2cQwrGPHjjt37lRsuXTpEpVKVSnW1dV1+/btiqeLFy8eP348m80mn9rZ2c2bN2/UqFGK\nHerXr799+/ZmzZqR5WAY1qlTp3bt2imXaWdnt3//fi6Xu3z58tGjRzOZTEVI5AN3d/edO3d2\n69atdJ306dNn+fLlpactJqsrMjKy9HaTs7OzCw0N9fDwUGxhMBhTp04dP358RYp1cnLauXNn\nhw4dFFXdokWLuXPnKm5DUanUvn37btu2jVzdzyJNnDhx9uzZyt/zwMDAX375xbRRWYBGjRpt\n375dcTOQQqF07dp1x44diksSAFQJsI4KACYD66hoZwHrqChIpdLPnz/b2dmp3Es5d+7c8ePH\n+/fvP2HCBHJLenp6SkpKixYtWKyv8xlkZ2fL5XInJyfydFYikdy6dcvV1bVp06aaPm7x4sXP\nnj37+eefe/dWv6wQjuOZmZl0Ol3L8gIlJSVZWVmurq6KmwkvX75MS0vz8fFRTqjI0tLT0zkc\njrW19efPn21tbW1sbOzt7QsLC8nJdtUqLCwUCoUuLi6nT5+WyWTDhw9Xe9fCrGAY9ubNm9q1\naysyPYOQSCTp6emOjo6KYoVCYV5eXs2aNSttyQtTraOioPI9N4jqvI6KQnFxcXZ2tvIP2WzB\nOiqgNEhUADAZc05URvr5NXXU/y97kUQiFEusmQyrb89oywXHiXSJ9PCJE6jqJyqaWFtbM5lM\niUSiZV6pKqrMRKUqYrPZXC6XnNDZ1LEYmMkTFWOARKVqgUQFlAazfgEAVLFYrE1btpg6CoQQ\nMv9LgAAAAAAwEkhUAACqKBSKYvg1AAAAAIBJwGB6AAAAAAAAgNmBRAUAAAAAAABgdiBRAQAA\nAAAAAJgdSFQAAAAAAAAAZgcSFQAAAAAAAIDZgUQFAAAAAAAAYHYgUQEAAAAAAACYHVhHBYDq\nIikpKS4urjI/sV27drAeMAAAAAD0A4kKANVFbGzs3pi7olq1y9yTWlhAz8+T8u3kPFu9P87u\n9ctVzs6QqAAAAABAP5CoAFCN5Db0yujZu8zdnG7fdHv6OKdp88xuPfT+LF5+nt7vNTcSiSQq\nKurVq1fOzs6+vr6enp6mjggAAACwfJCoAACANhEREUeOHMFxnHx6+fLlOnXq7Nmzx7RRAQAA\nABYPBtMDAIBG9+/fP3TokCJLIX348GH69OmmCgkAAACoJiBRAQAAjbZv3652e1JS0pcvXyo5\nGAAAAKBagUQFAAA0EggEml66evVqZUYCAAAAVDcwRgVUL4Qs/+qNZ9/30X+MuPnbt2/fvn37\n1L/Wz7fSwpBIJQsXLqy0jyuvsWPHjh07tiIlwB0VAAAAwKggUQHVS86zvXv2xll2ohIUFOTv\n71/6NDoiImJ1Zk6lhcGgM9asWdO6dWuDlEalUvl8fm5uLkEQBilQR0wmUyQSqX2pe/fulRkJ\nAAAAUN1A1y9QXchFhXGxV1dsiDV1IKAq+eGHH9Ru53A4bm5ulRwMAAAAUK3AHRVQLZRkR4wM\nDCcvxlMM8a0ncDmiUDEDlATM2uTJk1++fBkfH6+8kU6n79y501QhAQAAANUEJCqgWmDZ9dux\noxNCKPHYiu2Ppdp2JSQ3og5cvPUwJbMAMaxrebUaHjilgxuXfHFngF9Cz9X9JeGH/nhSTDBq\n1KzTd8T0YV1rk68+/fNwxB8xHz7n0axqNGnXPWDyCHcW1bgHBozvt99+u3///v79+/Pz89ls\ndps2bX755RdTBwUAAABYPkhUQLWAUXkeHjyE0BcuHSFticqrsPnbo1O6/TjGt66jVPD5ZuSp\njXMzo8LXK+6eZN5fHyZz8f9priNbejPiwNHNs11aRna2YbwJXxQS/tLzu4ETh9YryYg/dypq\n7vOP+0ODrb+973Ljxg3FohyOjo516tQx8JFiGEKISqUymUyVl2g0GjM3xyYhXt37vsHKySb/\n1WVnjYQCBoNROgz9UCgUhBCDwTBIaeXVo0ePHj2MMq6JPC4KhWKoijIrdDqdSrWoXJ1GoyGE\nMAyzvPbCMIxGo1nYcZHthRBiMBiVPLzN2MhfloW1F/n/F0KITqeTfxsNQiaTGaooUPkgUQHg\nGy/TuG16Lp4z/usQ8HZ14wKCn6SK5bX+vTciypJuOhHiyaIihFo0QffGbbuRVdKBlbs66pVj\nu1lb5vkghBDq0dOb4z/35LaHWUs6OSmXv3DhQsUfzaFDhy5YsMAYR8FgMEqf0zdo0KDXu3fo\nzYsy3/6luEhYq1b94iKuDjtrQqvpWrNmTWtra71LKM2wpZkPGo1mkYfG5XJNHYJRYBhmke1F\npVJZLJapozAKKysrU4dgFHQ63dQhGAWHwzFgaUVFRQYsDVQySFQA+MaopasRQoiQ5edkZ2Wk\nxV74hBCSK+3AdR7n+W/SQuM0QAgROFGSfVooJ4ZM7ajYjdfAv5XV+fdnktG3iYoJ+fj4+Pj4\nqH0paMKEpKQklY2inJxsfT9LJpfLcHxybCxN7wvqFMqR48ddXV31DQEAAAAAVRskKgB8ozDu\n5u7DZ/+J+4gzbZxdXd1dVAfM07i80u+SFOQghBpwvvlBNWDT4gWZKnsqrxKI43hubq5h4v6X\nra0tlUotKSkpLi7W/V0FOTl7mzd0YhmsY1XUp/Q97z9O86zl5+6iXwlBLxNycnIUHRuoVKqt\nrW1eXp6F9d+wsrJiMplSqVTLypJVlJ2dnUAgsLBOF2w2m8Ph4Dien59v6lgMjMfjicViTZNx\nV1F0Ot3GxgYhlJ+fr+hzaxnIe0QWdq+AQqHw+XyEkEAgkEq1jiYtJ0u9pVYdQKICwH/k4o8z\nFm5nthm+Zs8qT2cbhJDw09p7d1SSDTVzfdF5dgih98XyZpz/bsQnimR0JweVPcn/NUkikch4\n/82U64SeQIiGIYbh+gRTyaEyGKZ3mRiGCIJQHAX5QHlLVZeamhoYGEg+Jntmh4SEREREJCUl\nyWQyLpf7/fffT5o0SeVdL1++PHPmTGJiopWVVZMmTUaNGmVnZ6e8w6tXr+bPn684J7O2tj5+\n/LhKP8C//vrr4MGDBQUFVCrV0dFx9uzZubm5V65cSUlJsbOza926tZ+fH5vNVvncVatWCQQC\ngiAYDEbPnj1//vnnMo+xzPZKS0sLDw9/9+6dTCZr2LDhiBEjDD5qy4Du379/5cqVjx8/8vn8\n5s2b+/n5mW3fNrFYfPr06UePHmVnZ7u7u/fs2bNnz56KAQCamOr3lZ6efuLEibi4OJlM1qBB\ngxEjRtStW9ewH2FJfzpIij+Jpg7EkJT/4FvYoQG9QaICwH/EhbcLZfiQwB89nb52kE27q3pL\nRC2O41AO9fqfvz/8cUE3ckvh+/DHQkmbqQb+7xZYhlOnTh04cEDxlPwvedmyZYotAoHg5MmT\nd+/ePXDggGJQ6aFDhyIjIzEMw3E8Kyvrw4cP165dW7NmTePGjckdjh49evz4ceUPEgqFgwYN\nCg8Pt7W1JbcsWbLk0aNH5GO5XJ6amkpOYoZhGEEQOTk57969u3r16pYtW5ycvvZaPHLkyIkT\nJxRlSiSSS5cuPXjwIDw8vCKVcOfOnfXr18vlcvLwMzIyYmJiZsyY0b9//4oUawwEQWzatOn6\n9esUCgXH8YyMjLdv316+fHnz5s1muJxObm7uL7/8kpGRQbZpXl7eP//8c+vWrZCQEMXgcvNx\n7969tWvXKr4GmZmZMTEx06dPHzBggKlDAwCYHiz4CMB/mLxuNlTK9U3778Q+fXTv1pEtC0Ou\n5yOE/n4eJ5Bru7pDZdRcNKRx5t+b5287dO32nQtRYbN+jeQ4dppjNgNUgFk5cOCALtcL09PT\n9+3bRz5++/ZtZGQkQkhxt4QgCIlEQp7rk1tUshTFbgEBAeTjv//+W5GllN5N8W9eXt6OHTvI\n7XK5XG1Ckp+fv3v37jIPQROhULhlyxbF6anio3fv3p2VlaV3sUZy586d69evI6XKRwgJBIKt\nW7eaLiiNQkNDMzMz0b9VSsb8+PHjixcvmjiyUr58+bJlyxYcxxVfAzJaxSEAAKo5SFQA+A+V\nWWtbyLR6sre7NqwJPRGd79wrbNeG5q68U+tXvCkuo79sM/81S4OG4PG3Q7dtOR59v153v007\n51nDmpCgYm7fvk0+uHXrVunuEDiOZ2Zmvnv3DiH05MkTTYWIxWLywdmzZ3X5UIIgnjx5Qg6b\nOXnypKac6saNG7qUplZsbGxJSUnpw5HJZPfu3dO7WCO5efNm6clSCYJ4/fp1drbeU04YhVgs\nvn//fukmwzCsIu1lJI8fP/7y5YvK6BGCIGQyWUxMjKmiAgCYD7O7CwyAUTX6ec85rV3rHVp8\nH7L1e+Utq/YeVTyecThK+SUqwy06OvrfZ5i373hv3/GGCbQC9u3bp7gMryMnnk3ZO1UuiURa\neoSGBRg7duzgwYN173795csX8kF2djbZ76j0PhkZGY0bNyYv+Wun++QNBEFkZ2fb2NgkJCRo\n2qciA6+1nN+b4R2VzMxMTUOxs7KyatSoUcnxaJGfn692AgOCIDIyMio/Hu20tLW5ZYAAAJOA\nRAUASxMUFOTv7684wdXFtAkTjBePfhgM+oEDB2rWrEk+pVKpfD4/Nze3uo2wVIyDt7Ky0nTs\n5AwNXl5emi6ZK0ZRl2t1AnKpEAcH1QkhFCqymKOWdUjMcIkSHo+nKUs0t2itrKzIoSkq2zEM\n4/HUzFhoWsqTi6gwt4oFAJgEdP0CAADzpRgo3759e7VnnywWq0mTJgihgQMHaprWSdFtqXv3\n7rp8KIVC8fDwcHR0RAiNHj1a025eXl66lKZWmzZtNEXbtm1bvYs1krZt25bOUigUipOTk7u7\nu0lC0sTKyqphw4ZqO6q1b9/eJCFp0apVK00LkHt7e1dyMAAAMwSJCgAAVLYGDRroshuDwZg7\ndy75uGPHjq1bt0ZKt0coFApBEFOnTlVMJaypWEUhQ4cO1XKHRFEshUKZMWMG+ZTH47Vs2VLt\nbitXrtTlKNRydnYeMWIEUjoc8kH//v3r16+vd7FG4uvrqzJvMnl6/b///a/MOX8r39SpU6lU\nqnICgGGYo6Ojn5+fCaNSy9HRcdSoUUgplybrs0+fPo0aNTJlZAAA80ANCQkxdQwAVFMymUwi\nkRi2TDabTaFQZDJZuVbL+uP8+T58a2u6wfqCvioUxuYVtLO3bcbTs//G+czcLr16K3qGUCgU\nNptdUlJiqAhNq1+/fs+fP1fuoE+eSsrlcnKAAYZhnp6eW7ZsUSyTgmFY165dmUxmQkIC2bi1\natWaO3du165dlYt9//59amqq8mfNnj27V69eiqf9+/dPSUlJS0sj78/QaDRfX9+GDRt++PBB\nLpdjGNakSZPFixcrnyb26tUrNzc3MTFRscXJyWnfvn3a11DjcDhisVjLKnstWrRwdXVNSEgg\nuyna2dlNnjx59OjRZnjqT6VSfXx8pFLphw8fZDIZhUJp0KDBokWLmjdvburQ1HBwcOjUqVNq\nampWVhZBEHQ6vXfv3gsWLNDe9YvFYslksspfoLN58+bu7u7x8fHk14DP50+aNGncuHEG+RpQ\nqVRy0djSMzdUdWSnUIP/D2JaGIaRl120/+nQQ7l6vQKzoqYnKwCgchhjwUc+n0+uTF/eMSob\n67i4sFmGCiM85fPOhOQZ9WuP8nDVr4QJL979um6DxY9RycnJWbFixa+//qo4UoFAkOTnA0YA\nACAASURBVJaWprb3jvK7OByOlv96U1JSrl69OnLkSC25RFJSEpvNdnFxIZ/iOJ6dnc3n81VW\nh1T2+fPn1NTUdu3alX1gCNnb2xcWFupy4isQCHAcV6z0Ys5YLFZRUZGNjU1xcbGpYymbVCrN\ny8urUaOGlu+Sgq2trUgkMuHK9EKhUC6XG/ZrwGAwyIsdeXl5sDK9+aNQKOSlmcLCQsOuTF/m\nnWRgtiBRAcBkzChRCZxELSlhVGBstIpiqfSLRMpl0Dl0un4lJBUU7tqzx+ITFWtrayaTKZFI\nyLmALYnuiUoVwmazuVwujuN5eXmmjsXATJ6oGAMkKlULJCqgNJj1CwCAlq1arVhqw3yQg7kB\nAAAAUD1BogIAQM7OzqYOAQAAAADgGzDrFwAAAAAAAMDsQKICAAAAAAAAMDuQqAAAAAAAAADM\nDiQqAAAAAAAAALMDiQoAAAAAAADA7ECiAgAAAAAAADA7kKgAAAAAAAAAzA6sowKAxYqNjU1L\nSzNhAJ07d4ZFGwEAAACgH0hUALBYp69cuS0SS+wddH8LvaCAkZsjsXeQ2tpW8NOdXjyvVasW\nJCoAAAAA0A8kKgBYLAKh7FbeAq9Gur/F6fZNfuyD/MZNM7v1qOCn18jKqmAJJpSYmJiYmEin\n0+vXr+/m5vbq1avg4GAcx3Ecb9u27cqVK0u/JTs7+927d0KhkMPhEAQhFovr1q1bv359LZ/y\n9u3bvXv3fv782cXFZeLEiS1btqxg2GKx+M2bN1euXHn27JlIJHJ0dFy8eLGHh0cFizU4Ms60\ntDRHR8fi4uIXL17gOO7t7d2lSxdTh6aNXC5//vx5RkYGj8fz8PDg8/mmjkgbgUDw5s2b3Nxc\nV1fXpk2b0ul0U0ekzadPnxISEmQymaenZ926dU0dDgDAXECiAgAA/8nJydm2bdvjx4/JpxiG\nUSgUHMcJgiC3PHr0qG/fvlFRUTY2NuQWuVx++PDhM2fOyGQyldJatmw5e/ZsJyen0h80adIk\nRcc8oVAYHBxsb29//PhxvSOPjY397bffcnJyFFtSUlKmTJni7u6+b98+vYs1uNJxki5fvmxr\na7tmzRrzPE+Ni4vbunXrx48fyad0On3kyJGjR4/GMMy0gakVHR198ODBkpIS8qmjo+OsWbNa\nt25t2qjUKioq2rNnz40bNxQ/sXbt2s2cOdPBoRy3ggEAlgoG0wMAwFcymWzBggVPnjxRbCEI\nQi6XK06hFEaMGKF4HBYWFhUVVTpLQQg9f/48ODhYKpWqbJ89e3bp4UO5ublBQUH6RR4XF7d8\n+fLc3FyV7QRBpKSkrFmzRr9iDY6MMy8vT+2rBQUFs2fPVluTppWZmRkcHJySkqLYIpVKjx49\nGhkZacKoNLly5cru3btFIpFiS05OztKlS5OSkkwYlSbr1q1TzlIQQo8fP16yZIlcLjdhVAAA\nMwGJCgAAfHXv3r1Pnz6VTktKIwgiNjYWISQUCs+fP69lt/T09Fu3bqlsf/v2rdr9P336VI5w\nlURGRhIEoSnymJgY/Yo1ODJOHMc17SAWiytyW8lIzp07JxaLVaoXw7CIiIjSWahpEQRx7Ngx\nDMOUo8VxXC6Xm2Fa9e7du8ePH6tULI7jHz58ePDggamiAgCYD0hUAADgq7i4ON13XrduHUIo\nMTFR+x0ADMM0pSWlEQSRnZ2tewwKr1+/1nL2bz7dk7THSXr27FnlBKM7tV8MgiBEIlFycnKl\nh6NNXl5ednZ26ZSVIAjdv4eV5t27d5peevPmTWVGAgAwTyYboyLKeRtx4vTDZ3HZ+V+Y1nxX\nz6Y9fUf1be1i1A9dMmpYToeVe34ux9jiSvPxj63BBx969Rw6uGer++sXM1bsn1TTytRBmaOg\nYT9ajdq6ZWht/d5OyPKv3nj2fZ+KjhQ3Z/v27SPHJDjWrYsaNTNVGBKpZOHChab6dD2MHTu2\nXL1NyJ11eYtKJqP9Grxyjx3dlXn2byZ0idMMu37JZDJNd6vMLVotX0hzCxVpDgnDMDOMFgBQ\n+UyTqEgET2dNXZnNcOntO9jTxa4kP+fto2t7lk+L+9+uWb1qGu9znWvXZtVgVqSEvH+uxaSy\nBg/4zlAhKVx6kDV++QpO0r3QlQsZXoM2u0KWYhQ5z/bu2Rtn2YlKUFCQv7//ly9f5qubnKrS\nMOiMNWvWGGr8LpVK5fP5ubm5uvTL0tuff/6p+85Dhw5FCNWqVUulm40KgiBURodrmX8JwzB3\nd3fdY1CoU6eOlpsVRq20ctEeJ8nT07PS4tFRnTp13r9/X7oaaTSauU2qZm9vb2Vl9eXLF5Vo\nKRSKGc5SULt2bbXbS/9qAADVk2m6fr3YvjtdzlkZum3q6GG9evgMGOI3f+2+Cc35t/YsypcZ\n8T/Un9ZuWjS6Qn/7sh6cO3biqqHiUTZ15drvmzT4bsCE3Uejti0aQzWXnhqWQy4qjIu9umJD\nrKkDAearW7duPB6PQin7DyOGYePGjUMIOTg4dO7cWVPfKgzDuFyuj4+PynZ7e3u1+1tZ6XmF\nYvDgwVrO/t3c3PQr1uC0x4kQwjAsICCg0uLR0YABA5C6HnS9e/fmcrmmiEgjKpU6cODA0jkV\njuODBw82SUhatGzZ0sPDQ+UXR6FQbG1tu3btaqqoAADmw0SJygchw6plY2uG0jasZ1AHJwfm\nqy/lGJiISwxwa5jA5QbJjYRFVfI+tUHqEBmuGo2kJDtiyIhx81ft/CgyzEwyZn68QD9cLnf5\n8uWKeVHJE9PSp6cYhs2ePVvxVO3Er+S77O3tV6xYoZjIWOH48eMMBkNlI41GO3HihH6Rd+7c\nedKkSTSampvkTCZz//79+hVrcMpxlq5YKpUaHBxsW+HFRg2ufv368+bNY7PZSCnszp07T506\n1aRxqTdmzJi+ffsqf3sZDMa0adO8vb1NHZoqCoUSEhJSq1YtpFSxjo6OK1asIGsbAFDNmabr\nl6cdS5Lw4NTDj8Pa11JstHafEhr6zW6fHl44cPLPuORMKteuUdseYyeOqM2hIYR2BvjF91je\nqyDs4M14gsZ092r/v4UzrV+f37g/+mOOyN6tod//5vWqr3pmgBBaMWZYeruvY1R2Bvgl9Fzd\nXxJ+6I8nxQSjRs06fUdMH9a1NrmnpPDtwb3HnsR9zC4Q2bnW9RkSOKZng+OTRkZmFyP0aeDA\ngd6bjixtYLvF3+9T/3Vz3B7ujrgk6hKydVTdX0cOLe61dkdgg6/lCP8eNmbt4N8jJjpxEEJP\n/jgYfjEmOUPAdXDv0OfHoGHdvt45ISQ3og5cvPUwJbMAMaxrebUaHjilg9vXC3VP/zwc8UfM\nh895NKsaTdp1D5g8wp1F1VS3mipNRbnqUEuZ2qtRS+Rqa7h0nARefOnI3gs3H2cUyZzrNh0+\naaZ+x8uy67djRyeEUOKxFdsfa02GtbaF3scLqgovL68DBw7cvHkzMTGRwWA0bNiwU6dOCxcu\nJEd4YxhGpVIvXryo/BYrK6vVq1c/ffr0xYsXRUVFcrmcwWAQBOHp6dmtWzcmU3130+jo6NDQ\n0CtXrojFYjqd7uPjM3Om6te7XIYPH961a9eYmJjTp08LBAIcx5lMpp+f35gxYypSrMEp4kxP\nT7e3t09NTU1LS5PL5V5eXoGBgWZ7eurj49O6dev79++npaXx+fyGDRs2a2ayAWDaUanUWbNm\n9e/f/8mTJ9nZ2W5ubl26dHF0dDR1XOq5urru2rXr7t27CQkJEonE09Oze/fuZr48JQCg0mjr\nWm08Jdm3Zk3fni6W8929vFu3atmiRfNmDXnMb07psv4ODVr3p3vbfv06eBGFKX+ePJ/F9Nqz\nf6UDnbIzwO+mDPHrdh/bv608+8WeA9GUGp5UgjV2jC8fy4rYcziN0vBUxNrSXTFUEpW7bBtC\n5uI/so8jW3oz4sD9lOL5RyM72zAQIVk2bvQbSn0/Px9nLvbmbtSfjzLH7Q3vhec9O77it6c2\nWzfMZDu71WBQtvj7vWnaRZpePHJwtzpeLb2c2VoSlTfhi4PDX7TqN7xLo5r5CQ9PXHxQd8Cq\nLYHNEEKvDsxaFJ3S7ccxLes6SgWfb0aeSpDWjQpfT8XQm/BFweEvPb8b2LtNvZKM+HOnLont\n2u8PDbZW1zlMS6Wp7Kl7HWovU0s1aotcQw0PdeGoxHluReDBJ9nNev3YuZFLdsKDs9cS6Xih\nm/92cjC97ser8Hb7tAW3i8+dOaxpBy1tof/xKrlx44ai64ujo2OdOnU0RaIfLpdLoVAkEolY\nLJ69ZOkljlVxebr92L56YR/7MLdd+4KmzSsYSb1bNzZNn9amTZsKlkOiUChcLlcoFBqkNPPB\nYrHodLpMJlOszWcxrKysiouLq8oofx0xGAwmk0kQRFFRkaljMTAOhyOVSs1ttuUKotFoZOpb\nVFRkPiO1DILFYiF9594wWxiGkd1fi4uLDbiQjkwm4/P5hioNVDLT3FFh1+i+Y3+dG1euP3zy\nT8yFiGvnwzEKs2Hb7n4TJni7chBCBCFZt+2KXavJOxb7km/p2cPTf+L6dRc+bRpSCyGEEY12\nLJ/GpmAItaVcv7UtOXHJkShvHgMh5FZ0Z8bvrzMkchdGGRezRVnSTSdCPFlUhFCLJujeuG03\nsko62zAkggf/FErarp8/vBEfIdSlS+svvx0SpxXzvN2crOkYxlYePZn76MWeE/ucGWV0opOL\nP62IeunWd+nyad4IIdTdp1bhlHWXtxOB+zGEXqZx2/RcPGf8194j7erGBQQ/SRXL3ShZq6Ne\nObabtWUe2ce9R09vjv/ck9seZi3ppLrWdZmVpkKXOnSmy8ssU201dmDlaolcUw2jbxMVUc6F\nsMdZniPWrBrTFCGEen3fynrWoqgC/Y5XR5raota/90b0OF7l8hcuXKiYzWbo0KELFizQO1Qt\nGAwGg8Ho0bED59kz9ClZ9zcKCbygXr1mBG5dnnepRfWs5+7ubm1tXcFylBm2NPNBo9Es8tDM\nbfyGoWAYZpHtRaVSydNfy6P36C8zZ6m3njgc1auWFWF5lxWqFZNNT8zg1errN7GvH5KLC9+9\nfP744d2L166uevo4OCy0A48hzr/yvkTW6YcGSos31+pgzXh6LQ4NqYUQ4jj/wKZ8vVDt4MSi\nZbqRZ9gIIas6VgghXTJxrvM4z3/PPmmcBgghAicQQnRuM0cG9eWmzedG9mvRtHFtF7s5c+Zo\nKoTjOLLMLAUhJPwYXiwnZoz97yq194zlW4aW4ASiYmjU0tUIIUTI8nOyszLSYi98Ig+hJPu0\nUE4MmdpR8S5eA/9WVuffn0lGpRKVMitNNXId6lCXMtVWo/bIdazhzLu3MYzyy/D/ppNuPGwG\nipqj3/HqSFNbKOhxvHoHU0FjRowYo7SAusLmDRvOnz+PkMbri7mp5V52UI7jOEFQMIyqNC52\nwu1bZb0PmzBp0oSJE8v7cQAAAACweCZIVHBp1r0H7+zbdGzMoSGEqExeY++ujb27Dup9zn9u\n2OHDiR1mNpKWJCCE7q+ce//b93IYWeQDjPrN3RKMqk+3ZhqXp3Y7RuNv37roWMTFC4e2hgkl\nDJ6zd0efcYHDXdXdomHw7HT5rC8fcxFCLbn/XfygspwVvX4K427uPnz2n7iPONPG2dXV3eVr\n/iApyEEINfh20EUDNi1ekFn6I8qsNNXD1KEOdSlTbTVqj1zHGhall2BUXk2ljVSWpy2Not/x\n6khTWyjocbzKlJdbFolEOTk5FYm2ND6fT6VSS0pKvnz5omkfQX7+XE+P751rGPBzw1M+70xI\nnlG/9igP13K9q6CgQJdKqJzpiSuftbU1k8mUSCQCgcDUsRiYvb19YWGhha2GwWazuVwujuN5\neXmmjsXAbG1tRSKRhXUlYjAY5FQWeXl5FtYLkbxHZGH3CigUip2dHUKosLDQsL0QLfWWWnVg\nkkQlb+PGjY1n7ln37ZIpvAaD2JSD4mwxQohKd0QIjQ2L9HMw6sBKjXMAc929p8zznoKInNTE\nV88eHDkYueizw8FVvdTsqvVuCi772k+JbstACBXIcStFekBIiktkTDYHST7OWLid2Wb4mj2r\nPJ1tEELCT2vv3clECNF5dgih98XyZpz/MpxEkYzu5FD6s4xRabqVqaYay4xclxrmeHAIeVq6\nUi8+Ql5YJCccyhFb+cjFGttCiT7HC6qJtLS0Y8eOvXnzJisrS3tORafTpVKpYg0WDMM6d+4c\nGxsrkUjQvwuqdOzY8eTJk+QJFoZhPj4+ycnJiYmJZAkUCmXcuHEjR45ULnbgwIFSqVRRJkEQ\nVlZWy5YtUx75ff78+RMnTgiFQgzD7O3tS89aJhKJoqKiHjx4kJWV5erq6uPj8/jx48ePHysH\nf+HCBe1VIZFIwsPDyUHzzs7OXbp0GTp0qEpPlf79++M4TsaJYRiFQlmyZMm5c+c+fPjA4XCa\nN28+duzYGjXKnVGfPn06MjKyqKgIwzBHR8eZM2e2atWqvIWoEAqFw4cPJx+TAXfu3HnJkiVa\n3vL06dPTp08nJSUxGIymTZv6+/s7Ozur7COTyaKjo2/evJmenu7k5NSxY8fhw4drmoBBd69e\nvQoODpbL5eQ3wdra+vDhw4btTmNAFy5c2L9/v1gsRgjR6fTBgwc3b9789OnT5NegWbNmY8aM\ncXKqjFvT2dnZR48effnyZXFxcZ06dQYPHtyhQwflHeRyeUhIyNOnT+VyOdkDcMmSJWY7rQIA\nFsAE0xPTOF7f8Vnvw3YlFX9zpS37ye8lOFF/YE2EENv+B3s65WbEM8WrspL3M6cErbmWplqc\nERS82xIQEHA1T4QQ5uDm2d137BhnTtHHf3R5LwWh4tRCxdOEc5fIBzaenRFCJ/7JVbyUdmPZ\nqFGjksVyceHtQhneJfBH8swYIZR29+uZMcdxKIeK/fn7Q8W7Ct+HPxZK6v2oZjUYY1Sa3mVq\nj1zHGq7RsQdB4JtOv1NsSbmyWfbvyZ8xjldLW2hXrpYClurBgwdTpky5detWZmZmmXd+yOuF\nit0Igrh79y6ZpZBPU1JSIiMjFZeBCYK4fv26IktBCOE4fujQIeWJkgcMGCCRSJTLRAgVFRXN\nnz8/PDyc3Pjrr7/u2bOnsLAQx3G5XJ6VlbVw4cJDhw4pCsnLy5syZcqJEyeSkpKKiori4+P3\n7t2rnKWQwfft21fL0QmFQn9//wMHDiQkJBQVFSUmJh46dOinn35Sng6hX79+5NGRcRIEQZ4F\nvnjxorCwMD09/erVq4GBga9fv9ZekyrmzJnz+++/k/OeyeXy9PT0BQsWHD9+vFyFqPj8+bMi\nS1EEfO/ePZUsUVlYWNjChQv/+eef/Pz8zMzMGzduBAYGPnnyRHmfkpKS2bNn79u37/3792Qt\nHTt2bOrUqQUFBRWJNiIiYu7cuTKZTPFNEAqFQ4YMSU9Pr0ixRrJo0aJdu3aRWQpCSCqVnjx5\ncsmSJYqvwbVr1wIDA58/f27sSF69ehUYGHjt2rX09PTCwsIXL16EhITs3LlTsYNcLh86dOij\nR4/Icd4EQQgEgnnz5p08edLYsQFQbZlmjMrU5ZNfzdk1b9L/uvXsUtuZTyXE6R9eX73xiOfZ\n7xfvGgghjMpf7N9mdtjaBZIBXVp4saVZ16Mi04rd5nVVvRxlDFYevnJBTNiCdUUDOzvx6Onx\nj46nFtUbOhAhRKFTZOKUB8+eO9Rv7MlVM4itixt337NNYeentHTnfHxx81j0125ILH7fYXWP\nndu86triWZ0buQk+PNoY+s7KY3g9FlWOdbOhnrm+aX+94V1YUsHbh1f/fJOPEPr7eZyDd+NF\nQxovOrl5/rYPvVvVE2UmnImM5jh2mqNu2IMxKk3vMqmMmloi11LDylh2/Sd5nwmLWBBSMKxz\no5q5SY9O/5nuyaYZ73iZPG1tYaN5GU7txwuqA5FItGXLFsU17Erz9u3b/Px8ck4bTZ0lCII4\ncuRIx44dU1NT1Z7wRUZGDhw4kOx0ceDAgawsnfpPDho06Pz582pfOnbsWFJSknIACKGUlJSj\nR49Onz4dITR+/HhNFaWcm0ml0g0bNhw8eFCXVTgRQtevX3/z5o3aeAYNGqR394+JGoZRacoo\n3r17R568Kh8LjuObNm06cuSI4rZSZGRkQkICUspXEULp6elhYWFaBkaW6fBh9bMaTp8+/ezZ\ns3oXawzv379XSd4UlKtOLpdv2rTp0KFDVKqxJnzHcXzjxo2Ku5GKAC5evNi5c2fyjtyyZcvU\ndo07ePCgch4LADAg0yz4aF27d+je1QM6esTdv3w0bF/Y0cgnSUW9R/9v18apjH9PBesNXrJ2\n5iiU/PDQri0HIq/Qmw9YG7rOnVkZq1LQ2A12rJrRlJ8bdXDPxs07Lz3J/GH8/PX+DRFCNfv5\nethI1y1fcT6jWO17v1+x1Ldj7duRu0NC1hy58G7I3I2Kl8asW9u1TtGOxbNGDh0WNHd9vmu7\nZetGIISozFrbQqbVk73dtWFN6InofOdeYbs2NHflnVq/4k2xtJn/mqVBQ/D426HbthyPvl+v\nu9+mnfPUzk2MjFNpepepJXItNaxi4OLfgn7smvng0u7tu/968eXnrduaK+WHBj9e7W2h9/GC\n6uDZs2cCgcAkQ2hWr16NEBo6dKiWfcg7NprOUwmCILtyyeXyO3fu6HgUiqvgpd26dUvt9tu3\nb5MPMjN1uleJ43hmZmZ8fLwuOyOEoqOj1W5XHKB+Sq9NqTBt2rTSGxWHqQzH8fz8/JcvXyq2\n3Lx5U22ZMTExeg+oSEhI0NR8Zjj+JCwsTJfdcBzPzs5++/at8SKJj4/PzMwsXe0YhilaU7nt\nVML766+/jBcbANWZadZRqQ5Eghyca89RPU8l3t/buOmR+/RBPs3qOME5bDUnEokMPhSSz+cf\nOHBg3759WvZp7Ok5jImZyWD6O2yb5y9eGDCSasjBweHYsWM//PCDlpUHMAzr3bv369evlWbJ\n+0bXrl0XLlxYUFCgpTtTaZcvXy69US6X//DDD5recuHCBTqdrr3nmIrFixd36dJFlz3Hjx+f\nkZGh9iUfH5/58+fr/qHKtESrdrjO2rVr79y5ozbZmDNnTp8+fcjHAwYM0HQTLCoqihwFXl5H\njx7V0s9NbXuRTDKYPjAwMDU1Vcedf/311x49epSrfN0H09+7d2/lypWlt1MolFatWpHXAvr1\n66fplMnX13fGjBnliq2CYDB9uTg4wHjRqspk0xNbPJaN2l8FZiWu2w7dDVlwL+z4Dlu43A6M\nICgoyN/fX8usXzs2b0afkysxIm2aNW26fsOGMncz/1m/7t69u2rVKpN8NNnvi0qlaklUCILg\n8Xha+j6RhXC5XO3lKNN0n4FKpXI4nOJiNbedyQUudSlcGY+nfobG0rSs3GJvb1/ez9UFeV6l\ngsfjafqiKqcf1tbWamcPo9Foei9BU7UGdvN4PN0TFd2/BnrQlBYSBGFra0s+plKpmmaxcyvP\nuroAAN2ZputXdUVcvBBDaTfQt2cTuThHbqanWwAAfbRo0aLikzXphxzPEB0draWHEkKoQ4cO\nPj4+ml4dOHAgQohOp7dp00bHASFadOzYsXQwGIZ16tSJfMxgMHQph0Kh2NjYeHl56fi53bt3\nV7sdwzBfX18dC1H7dk0vqR0Q0q5du9KJCoZhLBarefP/VtPq2LEjKgXDMG9vb70HY7Rs2VLT\nS2a4OOAIdQs9lYZhGJfLbdq0qfEi8fLysrGxKd3QBEG0b9+efFyvXj1Nbx8wYIDxYgOgOoNE\npRIRUkdWTvjezQcuf5m+5Dd7GtxOAcByWFtbT5o0CWk9qTUGe3v7Ov8uyaTl7LZPnz5NmjQZ\nNGiQi4tL6Ve7du1as+bX+eIDAwNZLJYuR6Fp0DZCKCAgwNbWVrkQci7XgIAA8qmWtEqxnUKh\nEAQxY8YM3c+whw8frnY64x49elRkftvFixer3a6pwr29vcm+airHMm3aNOU5gseMGWNvb69S\nSxwOZ/LkyXqHijRna8uWLatIscbQrl07xRdPhXLVIYR++uknHZNb/dDp9J9++knxcYoAFE2J\nEFq1apXaHL5Pnz7GG+UPQDVHDQkJMXUM1QZGrVmvUYdO333XuYOni5639YElkclkiuloDYXN\nZlMoFJlMpqWDb+zff7sKCzytDPklfFUojM0raGdv24xnXa53iWq6N2/Rosw9KRQKm80uKSmp\nQIxG17Bhw0aNGiUnJ+sxvSyGYTQaTfkyPIfDqV27tqJrEIZhLi4uOI4rt2zTpk1DQ0MVT0eP\nHh0VFaXSF5/FYs2YMWPMmDHkiZevr29GRsbHjx/Jz2IwGP7+/sojwnk8Xvfu3XNzczMyMuRy\nOYfD6dOnT2pqqqLTC1nOxo0b69bVOPs2l8sdOnRoVlZWamqqXC5nMpndu3dfsmSJchYxduzY\nY8eOqbzRz8/v8+fPIpGISqU2bNhw4cKF3t7eOtYhaeDAgZ8/f/706RN5gCwWKyAgICgoqFyF\nqPDw8LCzs3v48KHyRmtr63Pnzml6S+fOnW1tbT98+FBcXEyhUOrVqzd//nyVkTZsNrtXr15F\nRUVpaWkymYzFYnXu3Hnp0qWll1sply5duojFYuWh51QqdeXKldprksViyWSyyl+gc9CgQSkp\nKSkpKeRTDMOaNWs2cODA5OTkkpISCoXSoEGD4OBgxW2NcqFSqeR9zpKSkjJ7jdauXbtNmzbJ\nycn5+fkEQdjZ2Y0ZM2bKlCk02tdO8kwms1+/fnfv3lV0a6TRaOPHjw8MDNQjtgoi0zaD/w9i\n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\nAAAAAIDZ+T8QoUFFBgrFhwAAAABJRU5ErkJggg=="
     },
     "metadata": {
      "image/png": {
       "height": 360,
       "width": 540
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "ggplot(data = dados[dados$Renda < 10000,], aes(x = Cat.Anos.de.Estudo, y= Renda, fill = Cat.Sexo))+\n",
    "    geom_boxplot(size=0.2)+\n",
    "    coord_flip()+\n",
    "    ylab(\"R$\")+\n",
    "    xlab(\"Anos de Estudo\")+\n",
    "    guides(fill = guide_legend(title = 'Sexo'))+\n",
    "    ggtitle('Box-plot da Renda por Sexo e Anos de Estudo')+\n",
    "    formatos"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "75ccf6cd",
   "metadata": {
    "id": "LrEECOmNTg2w",
    "papermill": {
     "duration": 0.036431,
     "end_time": "2024-05-04T17:16:53.322624",
     "exception": false,
     "start_time": "2024-05-04T17:16:53.286193",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "> ### Conclusões\n",
    "\n",
    "Escreva suas conclusões aqui..."
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
   "duration": 59.942473,
   "end_time": "2024-05-04T17:16:53.483941",
   "environment_variables": {},
   "exception": null,
   "input_path": "__notebook__.ipynb",
   "output_path": "__notebook__.ipynb",
   "parameters": {},
   "start_time": "2024-05-04T17:15:53.541468",
   "version": "2.5.0"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
