{
 "cells": [
  {
   "cell_type": "markdown",
   "id": "f4133003",
   "metadata": {
    "id": "WvMflodMjQKe",
    "papermill": {
     "duration": 0.038408,
     "end_time": "2024-05-06T18:58:52.981063",
     "exception": false,
     "start_time": "2024-05-06T18:58:52.942655",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# <font color=green size=10>CURSO DE ESTATÍSTICA - PARTE 4</font>\n",
    "***"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "6f019c8e",
   "metadata": {
    "id": "cVgsZ_E3jQKg",
    "papermill": {
     "duration": 0.035273,
     "end_time": "2024-05-06T18:58:53.052729",
     "exception": false,
     "start_time": "2024-05-06T18:58:53.017456",
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
   "id": "604e3ff2",
   "metadata": {
    "id": "TDjqYYNojQKh",
    "papermill": {
     "duration": 0.033662,
     "end_time": "2024-05-06T18:58:53.120581",
     "exception": false,
     "start_time": "2024-05-06T18:58:53.086919",
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
   "id": "a2522ed2",
   "metadata": {
    "id": "iN1gIbaKjQKh",
    "papermill": {
     "duration": 0.033392,
     "end_time": "2024-05-06T18:58:53.187809",
     "exception": false,
     "start_time": "2024-05-06T18:58:53.154417",
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
   "id": "169e44d2",
   "metadata": {
    "id": "U6V7br1RjQKi",
    "papermill": {
     "duration": 0.034684,
     "end_time": "2024-05-06T18:58:53.256612",
     "exception": false,
     "start_time": "2024-05-06T18:58:53.221928",
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
   "id": "51061cde",
   "metadata": {
    "id": "r0Fe_qnzjQKj",
    "papermill": {
     "duration": 0.033966,
     "end_time": "2024-05-06T18:58:53.358485",
     "exception": false,
     "start_time": "2024-05-06T18:58:53.324519",
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
   "id": "452fc2ed",
   "metadata": {
    "id": "OK1IQH5cX7Gb",
    "papermill": {
     "duration": 0.034213,
     "end_time": "2024-05-06T18:58:53.428535",
     "exception": false,
     "start_time": "2024-05-06T18:58:53.394322",
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
   "id": "564edddd",
   "metadata": {
    "id": "MAO1aY6GcajB",
    "papermill": {
     "duration": 0.034716,
     "end_time": "2024-05-06T18:58:53.497748",
     "exception": false,
     "start_time": "2024-05-06T18:58:53.463032",
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
   "id": "38d07191",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:58:53.570663Z",
     "iopub.status.busy": "2024-05-06T18:58:53.568471Z",
     "iopub.status.idle": "2024-05-06T18:58:53.911161Z",
     "shell.execute_reply": "2024-05-06T18:58:53.909393Z"
    },
    "id": "8QgOpE-wjQKl",
    "papermill": {
     "duration": 0.38166,
     "end_time": "2024-05-06T18:58:53.913929",
     "exception": false,
     "start_time": "2024-05-06T18:58:53.532269",
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
    "library(ggplot2)\n",
    "library(dplyr)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 2,
   "id": "808bd493",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:58:54.164398Z",
     "iopub.status.busy": "2024-05-06T18:58:53.986498Z",
     "iopub.status.idle": "2024-05-06T18:58:54.176333Z",
     "shell.execute_reply": "2024-05-06T18:58:54.174722Z"
    },
    "papermill": {
     "duration": 0.229962,
     "end_time": "2024-05-06T18:58:54.179297",
     "exception": false,
     "start_time": "2024-05-06T18:58:53.949335",
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
   "id": "e47f408b",
   "metadata": {
    "id": "8Rw70V6ojQKk",
    "papermill": {
     "duration": 0.034706,
     "end_time": "2024-05-06T18:58:54.248340",
     "exception": false,
     "start_time": "2024-05-06T18:58:54.213634",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Lendo o dataset do projeto"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 3,
   "id": "5ca627df",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:58:54.323244Z",
     "iopub.status.busy": "2024-05-06T18:58:54.321698Z",
     "iopub.status.idle": "2024-05-06T18:58:54.570051Z",
     "shell.execute_reply": "2024-05-06T18:58:54.568302Z"
    },
    "id": "ufRZ7TLwjQKo",
    "papermill": {
     "duration": 0.288267,
     "end_time": "2024-05-06T18:58:54.573140",
     "exception": false,
     "start_time": "2024-05-06T18:58:54.284873",
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
   "id": "4ec3b7a9",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:58:54.646044Z",
     "iopub.status.busy": "2024-05-06T18:58:54.644203Z",
     "iopub.status.idle": "2024-05-06T18:58:54.678937Z",
     "shell.execute_reply": "2024-05-06T18:58:54.677301Z"
    },
    "id": "GsC_WhLFjQKq",
    "outputId": "864c083b-7233-49f5-a7bf-94c31169f30f",
    "papermill": {
     "duration": 0.073402,
     "end_time": "2024-05-06T18:58:54.681274",
     "exception": false,
     "start_time": "2024-05-06T18:58:54.607872",
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
   "id": "58388d7d",
   "metadata": {
    "id": "I8SZvx_GcajO",
    "papermill": {
     "duration": 0.03442,
     "end_time": "2024-05-06T18:58:54.750808",
     "exception": false,
     "start_time": "2024-05-06T18:58:54.716388",
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
   "id": "1519fbb8",
   "metadata": {
    "id": "dPTT675fcajP",
    "papermill": {
     "duration": 0.034697,
     "end_time": "2024-05-06T18:58:54.820418",
     "exception": false,
     "start_time": "2024-05-06T18:58:54.785721",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# <font color=green>2 RODANDO UMA REGRESSÃO LINEAR</font>\n",
    "***"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "12fcef7f",
   "metadata": {
    "id": "yRxm2BrFcajQ",
    "papermill": {
     "duration": 0.034351,
     "end_time": "2024-05-06T18:58:54.889578",
     "exception": false,
     "start_time": "2024-05-06T18:58:54.855227",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## Dataset de exemplo\n",
    "> ### $Y$ = Gasto das famílias\n",
    "> ### $X$ = Renda das Famílias"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 5,
   "id": "c17c8a59",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:58:54.962466Z",
     "iopub.status.busy": "2024-05-06T18:58:54.960614Z",
     "iopub.status.idle": "2024-05-06T18:58:54.979274Z",
     "shell.execute_reply": "2024-05-06T18:58:54.977226Z"
    },
    "id": "TvENegfwcajQ",
    "papermill": {
     "duration": 0.057721,
     "end_time": "2024-05-06T18:58:54.981938",
     "exception": false,
     "start_time": "2024-05-06T18:58:54.924217",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "dataset = data.frame(\n",
    "    Y = c(3011, 1305, 1879, 2654, 2849, 1068, 2892, 2543, 3074, 849, 2184, 2943, 1357, 2755, 2163, 3099, 1600, 353, 1778, 740, 2129, 3302, 2412, 2683, 2515, 2395, 2292, 1000, 600, 1864, 3027, 1978, 2791, 1982, 900, 1964, 1247, 3067, 700, 1500, 3110, 2644, 1378, 2601, 501, 1292, 2125, 1431, 2260, 1770),\n",
    "    X = c(9714, 3728, 6062, 8845, 8378, 3338, 8507, 7947, 9915, 1632, 6825, 8918, 4100, 9184, 6180, 9997, 4500, 1069, 5925, 2466, 6083, 9712, 7780, 8383, 7185, 7483, 7640, 2100, 2000, 6012, 8902, 5345, 8210, 5662, 2700, 6546, 2900, 9894, 1500, 5000, 8885, 8813, 3446, 7881, 1164, 3401, 6641, 3329, 6648, 4800)\n",
    ")"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 6,
   "id": "69ddada9",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:58:55.055943Z",
     "iopub.status.busy": "2024-05-06T18:58:55.053984Z",
     "iopub.status.idle": "2024-05-06T18:58:55.084419Z",
     "shell.execute_reply": "2024-05-06T18:58:55.082412Z"
    },
    "id": "HfeWvtFWcajT",
    "outputId": "74959df4-b6bb-488a-a98e-fe77f9393415",
    "papermill": {
     "duration": 0.070575,
     "end_time": "2024-05-06T18:58:55.087282",
     "exception": false,
     "start_time": "2024-05-06T18:58:55.016707",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 6 × 2</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>Y</th><th scope=col>X</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>1</th><td>3011</td><td>9714</td></tr>\n",
       "\t<tr><th scope=row>2</th><td>1305</td><td>3728</td></tr>\n",
       "\t<tr><th scope=row>3</th><td>1879</td><td>6062</td></tr>\n",
       "\t<tr><th scope=row>4</th><td>2654</td><td>8845</td></tr>\n",
       "\t<tr><th scope=row>5</th><td>2849</td><td>8378</td></tr>\n",
       "\t<tr><th scope=row>6</th><td>1068</td><td>3338</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 6 × 2\n",
       "\\begin{tabular}{r|ll}\n",
       "  & Y & X\\\\\n",
       "  & <dbl> & <dbl>\\\\\n",
       "\\hline\n",
       "\t1 & 3011 & 9714\\\\\n",
       "\t2 & 1305 & 3728\\\\\n",
       "\t3 & 1879 & 6062\\\\\n",
       "\t4 & 2654 & 8845\\\\\n",
       "\t5 & 2849 & 8378\\\\\n",
       "\t6 & 1068 & 3338\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 6 × 2\n",
       "\n",
       "| <!--/--> | Y &lt;dbl&gt; | X &lt;dbl&gt; |\n",
       "|---|---|---|\n",
       "| 1 | 3011 | 9714 |\n",
       "| 2 | 1305 | 3728 |\n",
       "| 3 | 1879 | 6062 |\n",
       "| 4 | 2654 | 8845 |\n",
       "| 5 | 2849 | 8378 |\n",
       "| 6 | 1068 | 3338 |\n",
       "\n"
      ],
      "text/plain": [
       "  Y    X   \n",
       "1 3011 9714\n",
       "2 1305 3728\n",
       "3 1879 6062\n",
       "4 2654 8845\n",
       "5 2849 8378\n",
       "6 1068 3338"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "head(dataset)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 7,
   "id": "6506553c",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:58:55.161762Z",
     "iopub.status.busy": "2024-05-06T18:58:55.159740Z",
     "iopub.status.idle": "2024-05-06T18:58:55.181689Z",
     "shell.execute_reply": "2024-05-06T18:58:55.179664Z"
    },
    "id": "NGPOPV1VcajX",
    "outputId": "801add58-89f8-4a20-8218-fa7108f5ac7a",
    "papermill": {
     "duration": 0.062018,
     "end_time": "2024-05-06T18:58:55.184363",
     "exception": false,
     "start_time": "2024-05-06T18:58:55.122345",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "50"
      ],
      "text/latex": [
       "50"
      ],
      "text/markdown": [
       "50"
      ],
      "text/plain": [
       "[1] 50"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "nrow(dataset)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "cefc310b",
   "metadata": {
    "id": "y0Lt1C-Ccaja",
    "papermill": {
     "duration": 0.035485,
     "end_time": "2024-05-06T18:58:55.255907",
     "exception": false,
     "start_time": "2024-05-06T18:58:55.220422",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Estatísticas descritivas\n",
    "\n",
    "#### <font color=red>Documentações:\n",
    "\n",
    "- [**summary**](https://www.rdocumentation.org/packages/base/versions/3.6.1/topics/summary)\n",
    "- [**apply**](https://www.rdocumentation.org/packages/base/versions/3.6.1/topics/apply)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 8,
   "id": "b4e39af9",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:58:55.330539Z",
     "iopub.status.busy": "2024-05-06T18:58:55.327963Z",
     "iopub.status.idle": "2024-05-06T18:58:55.353173Z",
     "shell.execute_reply": "2024-05-06T18:58:55.351242Z"
    },
    "id": "POZusgEccajb",
    "outputId": "43d3c550-b52f-48bd-d4a5-32f0b634abed",
    "papermill": {
     "duration": 0.064856,
     "end_time": "2024-05-06T18:58:55.355770",
     "exception": false,
     "start_time": "2024-05-06T18:58:55.290914",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "       Y              X       \n",
       " Min.   : 353   Min.   :1069  \n",
       " 1st Qu.:1362   1st Qu.:3516  \n",
       " Median :2127   Median :6363  \n",
       " Mean   :2011   Mean   :6066  \n",
       " 3rd Qu.:2676   3rd Qu.:8382  \n",
       " Max.   :3302   Max.   :9997  "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "summary(dataset)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 9,
   "id": "a97ca961",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:58:55.431955Z",
     "iopub.status.busy": "2024-05-06T18:58:55.429935Z",
     "iopub.status.idle": "2024-05-06T18:58:55.452816Z",
     "shell.execute_reply": "2024-05-06T18:58:55.450819Z"
    },
    "papermill": {
     "duration": 0.064104,
     "end_time": "2024-05-06T18:58:55.456062",
     "exception": false,
     "start_time": "2024-05-06T18:58:55.391958",
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
       "</style><dl class=dl-inline><dt>Y</dt><dd>817.214648195007</dd><dt>X</dt><dd>2707.18781153779</dd></dl>\n"
      ],
      "text/latex": [
       "\\begin{description*}\n",
       "\\item[Y] 817.214648195007\n",
       "\\item[X] 2707.18781153779\n",
       "\\end{description*}\n"
      ],
      "text/markdown": [
       "Y\n",
       ":   817.214648195007X\n",
       ":   2707.18781153779\n",
       "\n"
      ],
      "text/plain": [
       "        Y         X \n",
       " 817.2146 2707.1878 "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "apply(dataset, 2, sd)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "94773cae",
   "metadata": {
    "id": "tVozByhrcajd",
    "papermill": {
     "duration": 0.035489,
     "end_time": "2024-05-06T18:58:55.527446",
     "exception": false,
     "start_time": "2024-05-06T18:58:55.491957",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Análise gráfica\n",
    "\n",
    "#### <font color=red>Documentações:\n",
    "\n",
    "- [***package* ggplot2**](https://www.rdocumentation.org/packages/ggplot2)\n",
    "- [**stack**](https://www.rdocumentation.org/packages/utils/versions/3.6.1/topics/stack)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 10,
   "id": "7fb59956",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:58:55.602852Z",
     "iopub.status.busy": "2024-05-06T18:58:55.600663Z",
     "iopub.status.idle": "2024-05-06T18:58:55.677948Z",
     "shell.execute_reply": "2024-05-06T18:58:55.675559Z"
    },
    "papermill": {
     "duration": 0.117707,
     "end_time": "2024-05-06T18:58:55.680720",
     "exception": false,
     "start_time": "2024-05-06T18:58:55.563013",
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
       "<caption>A data.frame: 100 × 2</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>values</th><th scope=col>ind</th></tr>\n",
       "\t<tr><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;fct&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>3011</td><td>Y</td></tr>\n",
       "\t<tr><td>1305</td><td>Y</td></tr>\n",
       "\t<tr><td>1879</td><td>Y</td></tr>\n",
       "\t<tr><td>2654</td><td>Y</td></tr>\n",
       "\t<tr><td>2849</td><td>Y</td></tr>\n",
       "\t<tr><td>1068</td><td>Y</td></tr>\n",
       "\t<tr><td>2892</td><td>Y</td></tr>\n",
       "\t<tr><td>2543</td><td>Y</td></tr>\n",
       "\t<tr><td>3074</td><td>Y</td></tr>\n",
       "\t<tr><td> 849</td><td>Y</td></tr>\n",
       "\t<tr><td>2184</td><td>Y</td></tr>\n",
       "\t<tr><td>2943</td><td>Y</td></tr>\n",
       "\t<tr><td>1357</td><td>Y</td></tr>\n",
       "\t<tr><td>2755</td><td>Y</td></tr>\n",
       "\t<tr><td>2163</td><td>Y</td></tr>\n",
       "\t<tr><td>3099</td><td>Y</td></tr>\n",
       "\t<tr><td>1600</td><td>Y</td></tr>\n",
       "\t<tr><td> 353</td><td>Y</td></tr>\n",
       "\t<tr><td>1778</td><td>Y</td></tr>\n",
       "\t<tr><td> 740</td><td>Y</td></tr>\n",
       "\t<tr><td>2129</td><td>Y</td></tr>\n",
       "\t<tr><td>3302</td><td>Y</td></tr>\n",
       "\t<tr><td>2412</td><td>Y</td></tr>\n",
       "\t<tr><td>2683</td><td>Y</td></tr>\n",
       "\t<tr><td>2515</td><td>Y</td></tr>\n",
       "\t<tr><td>2395</td><td>Y</td></tr>\n",
       "\t<tr><td>2292</td><td>Y</td></tr>\n",
       "\t<tr><td>1000</td><td>Y</td></tr>\n",
       "\t<tr><td> 600</td><td>Y</td></tr>\n",
       "\t<tr><td>1864</td><td>Y</td></tr>\n",
       "\t<tr><td>⋮</td><td>⋮</td></tr>\n",
       "\t<tr><td>6083</td><td>X</td></tr>\n",
       "\t<tr><td>9712</td><td>X</td></tr>\n",
       "\t<tr><td>7780</td><td>X</td></tr>\n",
       "\t<tr><td>8383</td><td>X</td></tr>\n",
       "\t<tr><td>7185</td><td>X</td></tr>\n",
       "\t<tr><td>7483</td><td>X</td></tr>\n",
       "\t<tr><td>7640</td><td>X</td></tr>\n",
       "\t<tr><td>2100</td><td>X</td></tr>\n",
       "\t<tr><td>2000</td><td>X</td></tr>\n",
       "\t<tr><td>6012</td><td>X</td></tr>\n",
       "\t<tr><td>8902</td><td>X</td></tr>\n",
       "\t<tr><td>5345</td><td>X</td></tr>\n",
       "\t<tr><td>8210</td><td>X</td></tr>\n",
       "\t<tr><td>5662</td><td>X</td></tr>\n",
       "\t<tr><td>2700</td><td>X</td></tr>\n",
       "\t<tr><td>6546</td><td>X</td></tr>\n",
       "\t<tr><td>2900</td><td>X</td></tr>\n",
       "\t<tr><td>9894</td><td>X</td></tr>\n",
       "\t<tr><td>1500</td><td>X</td></tr>\n",
       "\t<tr><td>5000</td><td>X</td></tr>\n",
       "\t<tr><td>8885</td><td>X</td></tr>\n",
       "\t<tr><td>8813</td><td>X</td></tr>\n",
       "\t<tr><td>3446</td><td>X</td></tr>\n",
       "\t<tr><td>7881</td><td>X</td></tr>\n",
       "\t<tr><td>1164</td><td>X</td></tr>\n",
       "\t<tr><td>3401</td><td>X</td></tr>\n",
       "\t<tr><td>6641</td><td>X</td></tr>\n",
       "\t<tr><td>3329</td><td>X</td></tr>\n",
       "\t<tr><td>6648</td><td>X</td></tr>\n",
       "\t<tr><td>4800</td><td>X</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 100 × 2\n",
       "\\begin{tabular}{ll}\n",
       " values & ind\\\\\n",
       " <dbl> & <fct>\\\\\n",
       "\\hline\n",
       "\t 3011 & Y\\\\\n",
       "\t 1305 & Y\\\\\n",
       "\t 1879 & Y\\\\\n",
       "\t 2654 & Y\\\\\n",
       "\t 2849 & Y\\\\\n",
       "\t 1068 & Y\\\\\n",
       "\t 2892 & Y\\\\\n",
       "\t 2543 & Y\\\\\n",
       "\t 3074 & Y\\\\\n",
       "\t  849 & Y\\\\\n",
       "\t 2184 & Y\\\\\n",
       "\t 2943 & Y\\\\\n",
       "\t 1357 & Y\\\\\n",
       "\t 2755 & Y\\\\\n",
       "\t 2163 & Y\\\\\n",
       "\t 3099 & Y\\\\\n",
       "\t 1600 & Y\\\\\n",
       "\t  353 & Y\\\\\n",
       "\t 1778 & Y\\\\\n",
       "\t  740 & Y\\\\\n",
       "\t 2129 & Y\\\\\n",
       "\t 3302 & Y\\\\\n",
       "\t 2412 & Y\\\\\n",
       "\t 2683 & Y\\\\\n",
       "\t 2515 & Y\\\\\n",
       "\t 2395 & Y\\\\\n",
       "\t 2292 & Y\\\\\n",
       "\t 1000 & Y\\\\\n",
       "\t  600 & Y\\\\\n",
       "\t 1864 & Y\\\\\n",
       "\t ⋮ & ⋮\\\\\n",
       "\t 6083 & X\\\\\n",
       "\t 9712 & X\\\\\n",
       "\t 7780 & X\\\\\n",
       "\t 8383 & X\\\\\n",
       "\t 7185 & X\\\\\n",
       "\t 7483 & X\\\\\n",
       "\t 7640 & X\\\\\n",
       "\t 2100 & X\\\\\n",
       "\t 2000 & X\\\\\n",
       "\t 6012 & X\\\\\n",
       "\t 8902 & X\\\\\n",
       "\t 5345 & X\\\\\n",
       "\t 8210 & X\\\\\n",
       "\t 5662 & X\\\\\n",
       "\t 2700 & X\\\\\n",
       "\t 6546 & X\\\\\n",
       "\t 2900 & X\\\\\n",
       "\t 9894 & X\\\\\n",
       "\t 1500 & X\\\\\n",
       "\t 5000 & X\\\\\n",
       "\t 8885 & X\\\\\n",
       "\t 8813 & X\\\\\n",
       "\t 3446 & X\\\\\n",
       "\t 7881 & X\\\\\n",
       "\t 1164 & X\\\\\n",
       "\t 3401 & X\\\\\n",
       "\t 6641 & X\\\\\n",
       "\t 3329 & X\\\\\n",
       "\t 6648 & X\\\\\n",
       "\t 4800 & X\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 100 × 2\n",
       "\n",
       "| values &lt;dbl&gt; | ind &lt;fct&gt; |\n",
       "|---|---|\n",
       "| 3011 | Y |\n",
       "| 1305 | Y |\n",
       "| 1879 | Y |\n",
       "| 2654 | Y |\n",
       "| 2849 | Y |\n",
       "| 1068 | Y |\n",
       "| 2892 | Y |\n",
       "| 2543 | Y |\n",
       "| 3074 | Y |\n",
       "|  849 | Y |\n",
       "| 2184 | Y |\n",
       "| 2943 | Y |\n",
       "| 1357 | Y |\n",
       "| 2755 | Y |\n",
       "| 2163 | Y |\n",
       "| 3099 | Y |\n",
       "| 1600 | Y |\n",
       "|  353 | Y |\n",
       "| 1778 | Y |\n",
       "|  740 | Y |\n",
       "| 2129 | Y |\n",
       "| 3302 | Y |\n",
       "| 2412 | Y |\n",
       "| 2683 | Y |\n",
       "| 2515 | Y |\n",
       "| 2395 | Y |\n",
       "| 2292 | Y |\n",
       "| 1000 | Y |\n",
       "|  600 | Y |\n",
       "| 1864 | Y |\n",
       "| ⋮ | ⋮ |\n",
       "| 6083 | X |\n",
       "| 9712 | X |\n",
       "| 7780 | X |\n",
       "| 8383 | X |\n",
       "| 7185 | X |\n",
       "| 7483 | X |\n",
       "| 7640 | X |\n",
       "| 2100 | X |\n",
       "| 2000 | X |\n",
       "| 6012 | X |\n",
       "| 8902 | X |\n",
       "| 5345 | X |\n",
       "| 8210 | X |\n",
       "| 5662 | X |\n",
       "| 2700 | X |\n",
       "| 6546 | X |\n",
       "| 2900 | X |\n",
       "| 9894 | X |\n",
       "| 1500 | X |\n",
       "| 5000 | X |\n",
       "| 8885 | X |\n",
       "| 8813 | X |\n",
       "| 3446 | X |\n",
       "| 7881 | X |\n",
       "| 1164 | X |\n",
       "| 3401 | X |\n",
       "| 6641 | X |\n",
       "| 3329 | X |\n",
       "| 6648 | X |\n",
       "| 4800 | X |\n",
       "\n"
      ],
      "text/plain": [
       "    values ind\n",
       "1   3011   Y  \n",
       "2   1305   Y  \n",
       "3   1879   Y  \n",
       "4   2654   Y  \n",
       "5   2849   Y  \n",
       "6   1068   Y  \n",
       "7   2892   Y  \n",
       "8   2543   Y  \n",
       "9   3074   Y  \n",
       "10   849   Y  \n",
       "11  2184   Y  \n",
       "12  2943   Y  \n",
       "13  1357   Y  \n",
       "14  2755   Y  \n",
       "15  2163   Y  \n",
       "16  3099   Y  \n",
       "17  1600   Y  \n",
       "18   353   Y  \n",
       "19  1778   Y  \n",
       "20   740   Y  \n",
       "21  2129   Y  \n",
       "22  3302   Y  \n",
       "23  2412   Y  \n",
       "24  2683   Y  \n",
       "25  2515   Y  \n",
       "26  2395   Y  \n",
       "27  2292   Y  \n",
       "28  1000   Y  \n",
       "29   600   Y  \n",
       "30  1864   Y  \n",
       "⋮   ⋮      ⋮  \n",
       "71  6083   X  \n",
       "72  9712   X  \n",
       "73  7780   X  \n",
       "74  8383   X  \n",
       "75  7185   X  \n",
       "76  7483   X  \n",
       "77  7640   X  \n",
       "78  2100   X  \n",
       "79  2000   X  \n",
       "80  6012   X  \n",
       "81  8902   X  \n",
       "82  5345   X  \n",
       "83  8210   X  \n",
       "84  5662   X  \n",
       "85  2700   X  \n",
       "86  6546   X  \n",
       "87  2900   X  \n",
       "88  9894   X  \n",
       "89  1500   X  \n",
       "90  5000   X  \n",
       "91  8885   X  \n",
       "92  8813   X  \n",
       "93  3446   X  \n",
       "94  7881   X  \n",
       "95  1164   X  \n",
       "96  3401   X  \n",
       "97  6641   X  \n",
       "98  3329   X  \n",
       "99  6648   X  \n",
       "100 4800   X  "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "stack(dataset)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 11,
   "id": "e0e33793",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:58:55.755314Z",
     "iopub.status.busy": "2024-05-06T18:58:55.753787Z",
     "iopub.status.idle": "2024-05-06T18:58:56.387168Z",
     "shell.execute_reply": "2024-05-06T18:58:56.384346Z"
    },
    "id": "xPtAowUacajf",
    "outputId": "999d7778-2e6f-4889-c6ae-230c3f3118ea",
    "papermill": {
     "duration": 0.674099,
     "end_time": "2024-05-06T18:58:56.390246",
     "exception": false,
     "start_time": "2024-05-06T18:58:55.716147",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "iVBORw0KGgoAAAANSUhEUgAAA0gAAAHgCAIAAAAQVdomAAAABmJLR0QA/wD/AP+gvaeTAAAg\nAElEQVR4nO3dd3wT5QPH8eeSNE2aljYtZUkpeyOCLBFFAZEhQ2aFyhBUEFBAHAwFBBQHgkxF\nBAQR/CFDRcGBiCgCgiIbZMqm0NLdzPv9EayllNKmGe3D5/2Hr+TucvdNeLx8m8tdFFVVBQAA\nAIo+jb8DAAAAwDModgAAAJKg2AEAAEiCYgcAACAJih0AAIAkKHYAAACSoNgBAABIgmIHAAAg\nCYodgCLDkrhJyUmgqViF2k2eGjfrjMXh74zZnf62taIo0W1/8HcQALcFih2AokdvyEKvs6Yl\nn9y//cMpz9ao2v5Amt3f6Tzmg7lz58yZ4+8UAIoSih2Aomfb5aT0TBabNenCNwvGmnWalH++\n7TRwvb/TecyIYUOHDh3q7xQAihKKHYAiLyCkZNsBkze/3VgIcXLtCH/HAQC/odgBkESlxwYI\nIezpx85aff5NO9VmsRW6r/cBuA1R7ABIQlWdQgiNNqS0Xpt1+oVda5/u+XD5MpEGvTGyTPk2\nMYPW7rqQOdeWsqtyUIBGEzDrQELWRx1e1EVRFHPVJy1qzpubVyVcUZSticmfjI+tWDzEoNcF\nBodXbdh63NxvbDd5SN5Tra0VqShKulMVQrhOELlgc+b9pQBw+1IBoIjIuPqja8f1R4r1xrl/\nvtVYCBFR+83rJs4fFKBRhBBafVj5SuXD9FohhKIEPP3+rsxljn3aWwgRXKZbst3pmmJJ2h5t\n0Gl0oSvPpNwszNzKZiHE84/XckUyRpQxahTX7YodJqQ7ri32z4aHhBDl2nyfr1S7xg7r16+f\nVlGEEP369evXr9/Vf7MBQC4odgCKjJsUO0dy3Kk1c0YV02k0AeGLDl3NnJF8ZqlJqxFCPPrq\nkjiLQ1VVhyVu6fhHhRAabdDSLKVtfJOSQoh7X9vmujvjobJCiAen/p5LGFexE0JE3NVn84Ez\nTlW1p13etGR8eIBGCNFq2h7XYjcWu7yncjVF918vALcfdhkAiozMYpcjnSF6ye8Xsy6//KEo\nIUT5Rz/Otp7FncoLIcq1/fy/NSdsKq3XanShay+knvl+uBAirMrAjFw/I3MVO52x8v5UW9bp\nfy/rIYTQB9dPc6hqTsUu76kodgDyi+/YASh6rruOncEQqNcIIewZp57p+uiCXzK/qeac8OsF\nIcTzs7pke3jX2c8JIS5smZw5JTDsgY2zHnHaE59o+WK3rvM0utAPN80IVG6dpELXD2oG6bJO\nqRyzuI4pwJryx/wLKTk9Ih+pACC/KHYAip7rrmOXnp5hsZ4/vve951ql/LN1UIvaK86mCiFs\nqXsPp9kUrfHJMsHZHm4q87RBo1hTdh/N+O9U1hpPrRpeJyJ+/5xtSZbmk3/odofJNX14j0c7\nZNHziWVZV1V1cM3s4TTG4WVDhBDrjyTemDy/qQAgX3S3XgQACjttqQq1n53xfermEmN2x700\ncFPM+kcc1rNCCG1A6Rs/eFM0xtJ67YkM+2mLvbIh8xRa7fPTWsxovVJRNCMH1MpceMv6b/5I\nsWbeLVauXtZVlYwMvDHNHaWM4rBI+yftxln5TwUA+cAndgDk0f2FGkKI+L++EkJo9XcIIRy2\n89YbLz6iWi/anEKIrBdGcVjPPt7zKyGEqjoHtH8jc/quZEvW768knnot65ouXbHcGONyXIYQ\nwlDScOOs/KYCgHyh2AGQh+K64IiiF0IEmOpUNupUR/qC86nZFku9sDDN4QwIqlHV+N9Ri9WD\nWv6UkFH/+bUdSwZd2jGpz/+O52WLR94/nH2SanvvdLIQolmN0BuXz28qAMgXih0AeayddlAI\nEV63jRBCCM2Ee0oKIaYN/yLbYl8897YQouS9r2buAS/tmBKz+EhQZLvvp3ZcuGG8RlFW9Gv7\nV6rtlls8sfLpI+n266asHvh7sjUgqNpzd4Tk9Ih8pAKA/GIHAkAC6pWzRz54sf2onZcURfv8\nrGauqR0XvmbUKCc+j+055bOrdlUIYU+LWzG5R++VxzXaoCkLH3Et5rCc7tFmsiqUV779OFyn\nRNz14tKeFW3pRzrGfHTLDdvSDjdrPui3Y5eEEE5b0q8rXm/Sa5kQovHoZaHanM+qzWOqTGet\n/OYEgDzz13VWACC/Mq9jFxR8HVOWY5dtx32X9SE75z4ZoChCCF1QZJUq5Vy/96BoAgZ98Gfm\nMiv6VhNCVO69PHOKLe1QbVOAEOKln87dLIzrOnYPjI1x/T5EcKlywbprfypHtxmd6rh2Ebwc\nf3kiL6lUVb2nWKAQonjNRi0eaBpnc6gAcCt8Ygeg6ElLuU5ahtMUGlGveYcZn+/8ZtJDWZe8\ne/D8k9tWDuzWqkyw49TxCyGRUa17PLVq+6l5T93lWuDSttd6LTmiD663fkH3zEfpjNW+Wtpb\nCDGjU/cz1twuPlKr/7xjmz7q0eruwLTLFn1IpXotXp75xeFvXg/S5HYRvFumclm+5JX65Usl\nHf5j5/5/RB5+fxYAFFVlbwEA+TavSvgzRxOGHE2YXSnM31kA4Bo+sQMAAJAExQ4AAEASFDsA\nAABJcBlMAHBH5Ue6xFxIvTtY7+8gAPAfTp4AAACQBIdiAQAAJEGxAwAAkATFDgAAQBIUOwAA\nAElQ7AAAACRBsQMAAJAExQ4AAEASFDsAAABJUOwAAAAkUdh/UowfxgAAAMhKUZSbzSrUxc7p\ndMbHx+c4KywsTKfTpaenp6am+jhVoWUymTQaTXJysr+DFBZGo9FkMuUyim5DOp0uLCzs8uXL\n/g5SWGi1WrPZLIRITEy02Wz+jlNYmM3m1NRUq9Xq7yCFhesdJyMjIyUlxd9ZCgvecbLx8TtO\n8eLFbzaLQ7EAAACSoNgBAABIgmIHAAAgCYodAACAJCh2AAAAkqDYAQAASIJiBwAAIAmKHQAA\ngCQodgAAAJKg2AEAAEiCYgcAACAJih0AAIAkKHYAAACSoNgBAABIgmIHAAAgCYodAACAJCh2\nAAAAkqDYAQAASIJiBwAAIAmKHQAAgCQodgAAAJKg2AEAAEiCYgcAACAJih0AAIAkKHYAAACS\noNgBAABIgmIHAAAgCYodAACAJCh2AAAAkqDYAQAASIJiBwAAIAmKHQAAgCQodgAAAJKg2AEA\nAEiCYgcAACAJih0AAIAkdP4OAMBNK1euTE9Pz9dDNBqNwWBIS0vzUqQix/WCCCEsFovD4fB3\nnMLCaDRarVZekEwGg0Gj0djtdqvV6u8sBdKmTZsSJUr4OwW8i2IHFFWff/55YmKiv1MAKDLq\n169PsZMexQ4o2kIN9hADn6zA6y4kBdqd127rNKJUMYtf4yAfHE7lfJLe3yngIxQ7oGjr1+jC\n4w0u+jsF5NfxozrnEq+VgxIh1rVP7PNvHuTduaTAjgtq+zsFfISTJwAAACRBsQMAAJAExQ4A\nAEASFDsAAABJUOwAAAAkQbEDAACQBMUOAABAEhQ7AAAASVDsAAAAJEGxAwAAkATFDgAAQBIU\nOwAAAElQ7AAAACRBsQMAAJAExQ4AAEASFDsAAABJUOwAAAAkQbEDAACQBMUOAABAEhQ7AAAA\nSVDsAAAAJEGxAwAAkATFDgAAQBIUOwAAAElQ7AAAACRBsQMAAJAExQ4AAEASOn8HwC3Ex8ef\nPn1ao9HUqVPH31kAAEAOTpw4YbFYihUrZjab/ZuET+wKu3Xr1rVq1apt27b+DgIAAHI2bty4\nBg0ajBo1yt9BKHYAAACyoNgBAABIgmIHAAAgCYodAACAJCh2AAAAkqDYAQAASIJiBwAAIAmK\nHQAAgCQodgAAAJKg2AEAAEiCYgcAACAJih0AAIAkKHYAAACSoNgBAABIgmIHAAAgCYodAACA\nJCh2AAAAkqDYAQAASIJiBwAAIAmKHQAAgCQodgAAAJKg2AEAAEiCYgcAACAJih0AAIAkKHYA\nAACSoNgBAABIgmIHAAAgCR8VO0fG0ae6PdotdmKyQ806PWH/xx07dhwy6zffxAAAAJCYj4qd\n1lD5tefutybtGr/sQOZE1Z7w1uSv9CF1Jg1u4psYAAAAEvPdodhS943oVd18bPXEX+IzXFP+\nXPjqgTR7zMQXw3WKz2IAAADIyqffses6/sVwrXXuK0ucQqRd+GHK1/+UaflCt8qhvswAAAAg\nK58WuwBTrUmDGqecXjf1+xMLXlmgmGpNfqapLwMAAABITOfj7ZV96OUuXz++ZvZIIZy9334p\n4oaDsFOmTNm4caPrdlhY2KpVq3Jcj6IoQgij0WgwGLwa2O9MJpPZbDabzffdd5+/s6BwCQoK\ncv2PAAB5MWTIEKfT6e8UcrLb7WazWVGUiIgIb2/L4XDkMtfXxU4IpV2v6qsn79AH39WlSg4H\nYdPT05OSkly3tVrtLd+3pH9jUxTFaDSazWZ/BwEAFG1Go9HfEWSWlpYmfFJLct+Er4udw3p+\n6rQ/As3RloTdE9YcndylcrYFOnXqVL9+fddtvV6fkpKS43qCgoI0Go3NZrNYLN5N7G8WiyU9\nPT0xMbFu3bq5L+n6l1ZVNffFbh+KorheE1n/Qj19+nTuf7cBQFalSpXy1GEu3nGyOXHiRHp6\nuhDiZr3Fg1RVDQkJudlcXxe7n6aPP2bRjpzzdvz0QYuXvvLbg4vuMV83yBo2bNiwYUPXbafT\nGR8fn+N6DAaDRqOx2+0ZGRleD+1XNpstISEhLS3tt99ucbU/k8mk0WiSk5N9E6zwMxqNJpMp\nl1FU1PXs2TMxMdHfKQAUGaNGjapdu7ZHVsU7TjYDBw78448/VFX1TS3Jpdj59OSJhH1L3vv1\nQqXOrzYvbugw9uUITcasMQvt1H0AAABP8F2xc1ovTJm0Vl+s/sTHawshdEHVJz55d8rZDRO/\nOOazDAAAABLzXbH76b1X/85w9JgwIkR77Ut/UQ+PbnuHac/Hr2xPkPx7cgAAAD7go2KXsP+T\nGVsulGw6vEfWyxEr2v6TBuvV1PfGLnJwQBYAAKBgfHTyhLlW7Jdfxt443VD8/pVr7/dNBgAA\nALn59OQJAAAAeA/FDgAAQBIUOwAAAElQ7AAAACRBsQMAAJAExQ4AAEASFDsAAABJUOwAAAAk\nQbEDAACQBMUOAABAEhQ7AAAASVDsAAAAJEGxAwAAkATFDgAAQBIUOwAAAElQ7AAAACRBsQMA\nAJAExQ4AAEASFDsAAABJUOwAAAAkQbEDAACQBMUOAABAEhQ7AAAASVDsAAAAJEGxAwAAkATF\nDgAAQBI6fwfALURHR3fs2DEgIMDfQQAAQM4aN26s1+vvvvtufweh2BV6zZs3b968ub9TAACA\nm3r22WdNJpPT6YyPj/dvEg7FAgAASIJiBwAAIAmKHQAAgCQodgAAAJKg2AEAAEiCYgcAACAJ\nih0AAIAkKHYAAACSoNgBAABIwjPFLiNu75efLf9p52G76pH1AQAAIN/cK3bq528MalKn0ocX\nUoUQyaeWVCtXv1NMrwcbVq/4wLMJlDsAAAB/cKfYHf6wU/cxH+w8Em/UKEKI9zuMPGMLfHbK\n9Bcer3/651kd3t3n6ZAAAAC4NXeK3Ruv/Kg33bnz4sXYEkEOy8kJBxLKtl763pjhby3Z2atE\n0O7p0z2eEgAAALfkTrFbcyW9eP2pd4XphRBJp95NczgbjbtHCCGE0r9+8fQrX3g0IQAAAPLE\nnWIXqCji3+/RHftos6IoI+uEu+467KpQ7Z4KBwAAgLxzp9j1KWW6/NerpywO1ZE0fsHfQSUe\nvydEL4RwWs+N3X4xMKylp0MCAADg1twpdkNndLIm76xZoU7jWtHfxKc3Gv2iEOLM1293aHjn\nrmRrjQGjPR0SAAAAt+ZOsSvfZcnGmYOiNOd3HbM16D527dCaQohzPyz5Zs+Vmm1Hfjvpbk+H\nBAAAwK3p3HtYi2HzDg2bZ1NFgHJtSrUn3985qPLd1Up6LBoAAADyw81i55LZ6oQQoTXv5ZM6\nAAAAP8prsUtMTBRCmIqF6pRrt3MRGhpa0FwAAADIp7wWu7CwMCHEqstpXSKMrtu5UFV+VQwA\nAMDX8lrsYmJihBBl9TohRGxsrBcTAQAAwC15LXbLly/PvL106VLvhAEAAID73D95wmmP3/r9\npj1HTiampI8eOy715Clj+Wh3rp4CAAAAT3CziZ3fNLdJVNR97boNGT5qzLhXhBC7Jz4cXqHh\nzO/+8Wg8AAAA5JU7xS7lzGf12jy767K+1/BxU0bWdE28o13X8Et/jWhfZ9GJJI8mBAAAQJ64\ncyj2fz2HxzkMH+89EVsj7PS328e+e0AIUb77lL8aNC5X9dExvf7X/7eBns4JIGcHLwZ9fSDC\n3ykgv3SrJuttRl0RcjW9QNesRdHizj/2m39eCa81L7ZG9ouehFToOLt28f57pglBsQN85LvD\n4d8dDvd3CtxeEtJ14zeU93cKADlw51DsRZvDVLZ8jrNKlwtyWM8VKBEAAADc4s4ndm3MhnW7\nPlZFSyX7HOfi7XGBoS08kAvArXz22Wf5fYhOpwsLC7t8+bI38hRFWq3WbDYLIRITE202m7/j\nFBZmszk1NdVqtfo7SGERFham0+kyMjJSUlL8nQW4BXc+sRszsl7qxaWtXlqY6szyCxOqbc2E\ntksvplZ9YqzH0gEAACDP3PnErs4LXw/9otrstwaUWPpmg/IJQogn+/fe98vX244mhlbpvm5y\nA0+HBAAAwK2584mdog2d+cvRxZOGVNJd+vm3OCHEgsWf7k4w9xo57cC+FWX1Wk+HBAAAwK25\neQq0og3uO25233Gz48+duhifElgsvHy50vzsBAAAgB+5U8Zq3t/l7YVfXkh3CCHCy0TXqF2r\nIq0OAADA39zpY4d+WfvigE5lzaXb9xm58sc9Do+HAgAAQP65U+yu/L1j3pRR91UzfLN0eo+W\ndc3Rdw95debvx696PBwAAADyzp1iZ67UYNCYtzf99c/Fg1tnTnjuzuBzcyc917hyRK0sh2gB\nAADgYwX6alyJ6vcMGz/jl/3nz+79edrYwSEXt7gO0XoqHAAAAPLOI+c8OFPT0q02m6oKIYTD\nEueJdQIAACB/3LzciRBCqNY9P69fvXrV6tVr955JFkKERNV9YtTImJ49PZYOAAAAeeZOsdu+\nYcXq1atWr1l39HKGEMJYsnrssJ49Y2LaNa3ORU8AAAD8xZ1i16TtY0KIQHOF7k/17BkT0/GB\nugGKp3MBAAAgn9wpdh37jugZE/No64ZGDYUOAACgsHCn2H2x+N2bzTr0foum45PjL/5egEgA\nAABwh5snT5z6fvHsNZtOxqVdP9m5/9tfkyxhBY8FAACA/Mprsfs5LuP+SIPr9rlNL1dr85bF\nqd64WEBwqc4vLPFYOgAAAORZXk9jbVun3fYEi+v2/AHv27TmJduPpiXHja0TcceDKzIyMpLj\nTk7rU9NY4sEPJrT0WloAAADcVF6LnTH+55Z1Ov2ZZBVCLDqfGl5t2uONKhmDi/d7qdaVvxYH\nBgYGF48esXBbw/g1Hd7c683AAAAAyFlei92JQ992LLvngXp9hRBxNocpOso1PaJRNcvVTalO\nVQihaEPGPxK1e8ZEL2UFAABALvJa7EIqtvz0t5MfD60ohLjLpE86vMc13WBupTotn1y8dhaF\nsbTRkvCDF3ICAADgFvLzUxGKvvOIKUKI55uWvHr8pTFLN8bbnIbw9qX12plTtgghhGpfseYf\nnbGKd6ICAAAgN+78Bli7JXOj9eobfVr13npB0Zimt406OLddk4e7tG5SftrRq9GdJ3k8JQAA\nAG7JnevYGSPb7z+25c23FxoijUKIrsvX927d/pPv1igaff1uo9cueNjTIQEAAHBrbl6gOKhM\nk4nTm1xbhbH60i3H5sSdsQeXDjdqPZcNAAAA+eBmsbtRsciynloVAAAA3JDXYpeYmCiEMBUL\n1SnXbuciNDS0oLkAAACQT3ktdmFhYUKIVZfTukQYXbdzoao5/NoYAAAAvCqvxS4mJkYIUVav\nE0LExsZ6MREAAADcktdit3z5ctcNpy2uePHipZoNf6lrtNdSAQAAIN/yfR07TUDk+vlzZs87\n4I00AAAAcJs7Fyhe/MJ9F38bcSDN7vE0AAAAcJs7lztpMmHjp5rYFnUefuHVoQ/eXSM8xKhc\nv0B0NEdpAQAAfM2dYhcQECCEUB2OUf1+zHEBzooFAADwPXeK3cCBAz2eAwAAAAXkTrGbN2+e\nx3MAAACggNw5eQIAAACFkIeL3aH3W4SXbOjZdQIAACAv3DkUK4Q49f3i2Ws2nYxLu36yc/+3\nvyZZbvGDYwAAAPAGd4rduU0vV2vzlsWZw6mvAcGlOr+wpMCp4Ek7d+7MyMjwdwo/CAwMDAwM\nVFU1OTn5lguHhITUrVvXB6kAAPAed4rd/AHv27TmJb/t6FYzdErT6ouLzzm2vrMt+cL859tN\n/KXuBxNaejwlCmL69OlXrlzxd4rCrkqVKrNmzfJ3CgAACsSd79gtOp8aXm3a440qGYOL93up\n1pW/FgcGBgYXjx6xcFvD+DUd3tzr8ZQAAAC4JXc+sYuzOUpER7luRzSqZrm6JNWpmjSKog0Z\n/0jUwzMmirGrPRoSHqCWbyzK1fN3iptSdiwTGf8eMDWEqI16+27bR39VzvHXCABABu4Uu7tM\n+kOH9wjRUghhMLdSnR9+cjHt6dImIYSxtNGS8IOHM8IjNFqh1fs7xM0pynW3fRlVw0V/AACS\ncOct7fmmJa8ef2nM0o3xNqchvH1pvXbmlC1CCKHaV6z5R2es4uGMAAAAyAN3il27JXOj9eob\nfVr13npB0Zimt406OLddk4e7tG5SftrRq9GdJ3k8JQAAAG4pr4diz6Xay5iuLWyMbL//2JY3\n315oiDQKIbouX9+7dftPvlujaPT1u41eu+Bhb4UFAADAzeW12EWFRd7XoWtMTEz3zi0i9Jqg\nMk0mTm9ybRXG6ku3HJsTd8YeXDrcqPVaVAAAAOQmr4diSwWmbl7z0eCeD5UKLdO297CPv/o1\nxXHdBYqLRZal1QEAAPhRXovdmauXf/ny4xF9O5bRJ2z4dHa/js0iwst3Gfji/374w5rDL1AA\nAADA1/Ja7BRdsXs79Hl38RcnExJ2bFj+4pPdygVcWvPR2z0fujusZLXeQ1/96teDTq8mBQAA\nQK7yfVasoglq+HDMm/NX/h2X+OePq8Y981h57ZlP50zq2KxmWLm7Brzwxg9/nPRCTgAAANxC\nAS7NqujverDLpDmfHjiXuH/Ll68N71tePbrwnTEP3V3Bc/EAAACQV5645r5qS01NSUiIj0+w\nemBtAAAAcIs7Pyl2jWrft2XdihUrVvzvi2NXMoQQxshqsQN79+7tw1/5BAAAwL/cKXbHd363\nfPnyFStW7juXKoTQGUq2jX06Nja2a+sGgcotHw0AAACvyEexO79/y4oVK5YvX/H7sXghhKI1\nNm73eO/evR/r9lBxPT+jDgAA4Gd5LXbN69zx875zQghFUSo3bhcbG9vrsS5VIgK9mQ0AAAD5\nkNdi9/O+cxFVmvTq3Tu2d69GlcO9mgkAAABuyGuxW7/9aJtGlbwaBQAAAAWR1+/G0eoAAAAK\nOU56AAAAkATFDgAAQBIUOwAAAElQ7AAAACRBsQMAAJAExQ4AAEASFDsAAABJUOwAAAAkQbED\nAACQBMUOAABAEhQ7IYSoVatWZGTkrFmz/B0Et7XBgwdHRkb26NHD30EAAEUVxQ4AAEASFDsA\nAABJUOwAAAAkQbEDAACQBMUOAABAEhQ7AAAASVDsAAAAJEGxAwAAkATFDgAAQBIUOwAAAElQ\n7AAAACRBsQMAAJAExQ4AAEASFDsAAABJUOwAAAAkQbEDAACQBMUOAABAEhQ7AAAASVDsAAAA\nJEGxAwAAkATFDgAAQBIUOwAAAElQ7AAAACRBsQMAAJAExQ4AAEASFDsAAABJUOwAAAAk4aNi\nd3TV6I4dO45edTz7DNU6tU+PR7sNPJHh8E0SAAAAWfmo2FV6dHyTMMPBZROPpF9X4M5unLr1\nakbdAeMrGLS+SQIAACArHxU7RWMYOqGb6rj61owtmROdtktvzP/TEHHfmDZRvokBAAAgMd99\nx65YxR5DG0bGbZux/nyaa8r+JZNPW5wxEwbpFZ+lAAAAkJZPT55oMerl4gHKkgkfq0LYUv6a\nsu5UZIOhXaJDfJkBAABAVjpfbkxrqDxhwF1D5q2f/lvXWuvfy9CYXxv1YLZlFi1a9Pvvv7tu\nm0ym119/PedVabVCiMDAQJ3OA09Bo9GYzea1a9d+9913BV9bYWO32/0doQg4evRohw4d/Jsh\nKSnJbDYHBASEhoZ6aROKogghvLf+Isf1ggghTCaTqqr+DVN4aDSaoKAgo9Ho7yCFhesdR6/X\n8/9OJtdrwguSSaPRuP7rg9fE6XTmMtenxU4IEdVmbItVsZunjdtsu1K7/4yqxuwBjh07tmPH\nDtdt15tcLmvTaDSul7LgjEZjQECAzWbzyNpQ5Kiq6vd/faPRaDQaFUXJfdgXnLfXXxR55E9E\nmfCC3MiD7zjS4AW5kQ92sA5HbhcS8fn/uoruyYmPb3pmvr5Y41c6lb9xfsOGDYOCgly3jUZj\nRkZGjqvR6/UajcbhcHjkzVhV1fT0dEVRivofH4qi3PipQ1JSUu7tHkIIrVYbEuLnbwXExcWl\np6c7nc6bDfuC02g0er3ee+svchRFCQwMFEJYrVb+N8kUGBhos9l4QTJ59h1HDjqdTlEUXpBM\nOp1Op9OpqmqxWLy9LafTmdmUckji7c3fyHRHe5NmfmC5NgYlh5MmOnXq1KlTJ9dtp9MZHx+f\n40rCwsI0Go3Vak1NTS14JFVVExIS2rVrN2zYsIKvzV9MJpNGo0lOTs42vXfv3leuXPFLpCKk\nYsWKs2bN8m+GwYMH79mzx263p6SkeGkTOp1Or9d7b/1FjlardRW79PR03qIyBQQEZGRkWK1W\nfwcpLFzvODabjf93MrnecXhBMhmNRlex881rkkux40NUAAAASVDsAAAAJE5aWsMAABN+SURB\nVEGxAwAAkATFDgAAQBL+OaH90zVf+GW7AAAAEuMTOwAAAElQ7AAAACRBsQMAAJAExQ4AAEAS\nFDsAAABJUOwAAAAkQbEDAACQBMUOAABAEhQ7AAAASVDsAAAAJEGxAwAAkATFDgAAQBIUOwAA\nAElQ7AAAACRBsQMAAJAExQ4AAEASFDsAAABJUOwAAAAkQbEDAACQBMUOAABAEhQ7AAAASVDs\nAAAAJEGxAwAAkATFDgAAQBIUOwAAAElQ7AAAACSh83eAQiEqKspoNIaGhvo7CG5rxYsXj46O\nLlmypL+DAACKKoqdEEJs2LDB3xEAMWnSpEmTJvk7BQCgCONQLAAAgCQodgAAAJKg2AEAAEiC\nYgcAACAJih0AAIAkKHYAAACSoNgBAABIgmIHAAAgCYodAACAJCh2AAAAkqDYAQAASIJiBwAA\nIAmKHQAAgCQodgAAAJKg2AEAAEiCYgcAACAJih0AAIAkKHYAAACSoNgBAABIgmIHAAAgCYod\nAACAJCh2AAAAkqDYAQAASIJiBwAAIAmKHQAAgCQodgAAAJKg2AEAAEhC5+8A8BHFmqamXvF3\niptzOq+77cOoii3DZ9sCAMCrKHa3jTO7lTO7/R0ibywpyo5l/g4BAEDRw6FYAAAASfCJnfxe\nf/11u93u7xR+EBgYaDQanU5nUlJSXhb2QSQAALyKYie/6Ohof0fwD6PRaDKZnE5nfHy8v7MA\nAOALHIoFAACQBMUOAABAEhQ7AAAASVDsAAAAJEGxAwAAkATFDgAAQBIUOwAAAElQ7AAAACRB\nsQMAAJAExQ4AAEASFDsAAABJUOwAAAAkQbEDAACQBMUOAABAEhQ7AAAASVDsAAAAJEGxAwAA\nkATFDgAAQBIUOwAAAElQ7AAAACRBsQMAAJAExQ4AAEASFDsAAABJUOwAAAAkQbEDAACQBMUO\nAABAEhQ7AAAASVDsAAAAJEGxAwAAkATFDgAAQBIUOwAAAElQ7AAAACRBsQMAAJAExQ4AAEAS\nFDsAAABJ6PwdwE179+5NT083m82RkZH+zlJYOBwOVVX9naIQOX/+/KVLl7RabaVKlfydpbBQ\nVdVms/k7RSFisVi2bt0qhChXrpzBYPB3nMLCbrezM8mKd5wb8Y6TTeF5x1GK6D9Mnz59Dhw4\n0LNnzxdeeMHfWVBILVmyZObMmeHh4d99952/s6CQOnfuXMeOHYUQ8+fPr1+/vr/joJDq27fv\n/v37e/To8eKLL/o7CwqpwvOOw6FYAAAASVDsAAAAJEGxAwAAkERRPXli6NChSUlJUVFR/g6C\nwqt58+ZlypTR6/X+DoLCy2w2T506VQhRoUIFf2dB4TVkyBDecZC7wvOOU1RPngAAAEA2HIoF\nAACQBMUOAABAEkXvO3ZXD/30wYr1Bw8dsxtLNm7ddXBMC53i70zwiaO/fL509feHT19yaIMr\n3Xlf3yf71Ii8dkXZjIQNPfrOzbb86GWf3xOiF7caM4womXhpJDBIpJFxZW2P/gtvnK4zVFr9\nv+mCnQmEUB1XN/60r1XLZlknemnv4Y0xU8SKXUb8z0NGTxdlGz3a58m0k79/vnzG8STz9Kfr\n+TsXvO7Sr3NHvrUhota93fr1MKSf+XrlF2Oe2T11ycxqRp0QwpKwRwjRqedjQVk+g44K1Ipb\njRlGlGS8MRIYJDLRBVV/7LHHsk3csWbl5Tsaum6zM8GV3R/MmXcsa7Hz0t7DW2NGLVJ+Gt2v\nc7dnTqbbXXd/eW9Qx07dj/97FxJ7K7Zb934zLM5rd9Mubny0Y8ehHx523T315fOduz6R4wNz\nHzOMKMl4YyQwSOSWcPCTTp1jdyVaXHfZmdzOHBlJh37/fmj3zp27Ppl1upf2Hl4aM0XqO3aq\nY/HhBHONvtEGrWvC3b0fVp0ZnxxM8G8ueJvqSNiSaInq0Fn/72fUxhIt7g8NvPL7MdfdhD+v\n6kMa5/jI3MYMI0o6nh8JDBKpqc60GZPWVHtsfP1i165Swc7ktpV26ZMuPWJfeG3mqQzHdTO8\ntPfw2pgpSsXOlrrnis1Zpn35zCmG8A4BinJ+62X/hYIvqE5bbGxsp3tLZJnmPGOxBxSLcN05\nejpV0YrZr43qE9OtR69+499ZdDTZJm41ZhhR8vH4SGCQyO3E2kl7HVXHd/vvV9vZmdy2jBHt\nZ86aNXv27BFNsr7XeGvv4b0xU5SKnSPjhBDCVMrw3yRFW1KvST2Z6rdM8AlNQIkePXrcX9KY\nOeXUD9OPpNsb9K3sursrxZp2ad35iHp9nh7UtXX9w7+uffmZCZdsztzHDCNKPh4fCQwSiTms\nZ1//9FDDYc8Faf77vjo7k9uWojWXK1euXLlypUwBWad7ae/hvTFTlE6ecDpThBBmvTbrxHCd\nNinN4qdE8APVkfzdsrnvr9paqkn/obXDXdPK39+qelSzPo/UEUII0aplvcAnXvn6nW/OTLgn\ntzHDiJKO50cCg0RiJ1a+k6CrMrxp1o9n2Jkgu9z/cd3ee3hvzBSlYqdogoUQV63XHfyOtzu0\nBv//ggd849Le76fP+PDAZWfT7s+N6N3i37+ylacGD866WPG6T9cO+u7k+n3KvbmNGUaUdDw/\nEhgkslKdadPWnozu/q5ByXp5CXYmyC73f1y39x7eGzNF6VCszlhRCJF6KSPLNPWS1RkUbfJX\nJPjS9uVvPjVu9sXIJq/MWvRSbAt9rhf7qWUKcFov5z5mGFG3gwKOBAaJrK4eWXDOqg545NY/\n/8rO5Dbnpb2H98ZMUSp2AUF1IvXa89+eyZySkfCtVVVLN4v0Yyr4xun1b0xZ/mvDmBc/fGNk\ng3IhWWdlXP7+gw8+2JtmyzrxWIZdH1Yh9zHDiJKMN0YCg0RW2+b/bojoUCvousNW7ExwIy/t\nPbw3ZopSsROKtm8Nc/zeT+JsTteEw198rWiMsTXN/s0Fb1OdaVM+2lGi8fCxj92rveGDOo0h\n/Jtvvvlg2d7MKVcPL92ZbK0VU+0WY4YRJRevjAQGiYxUR/KSE0mlH3ow23R2JsiBl/YeXhsz\n2gkTJhRwFb5Uqn6JDavX/XAgoZhJe3Lnl28u31mp4ysxjcr4Oxe8K+PKF4tW7y5eLzr95N8H\nszh+NqxqpRCtvkz4qZ82/rj+aKJqT7m8+9cN7878KrBCm6lPNNcqSu5jhhElEy+NBAaJfNIv\nfbb8ywMtnu13V/B15z+yM4EQ4vL2rzf+o8b06JA5xUt7Dy+NGUVV1QKuwscSDm2ctWDlvhMX\nA0JKNW7d45nHHuTH+KSXcGhS3xd/v3F6sagxn8xpIoRQ1YzNKxd9uXH76biUsDLRNerd179v\nJ/O/IyP3McOIkomXRgKDRDJHlzz3/KqTH6xcU0qf/bAVOxMcfG/wmC2ONZ/PzzrRS3sPb4yZ\nolfsAAAAkKMi9R07AAAA3BzFDgAAQBIUOwAAAElQ7AAAACRBsQMAAJAExQ4AAEASFDsAAABJ\nUOwAAAAkQbEDAACQBMUOAABAEhQ7AAAASVDsAAAAJEGxA4DC5Zk2LcadTPJ3CgBFEsUOQCFl\nTf5NuYFGozGFRtx5T5vJH/2oenRz6+qVVBTlpMVRwPXsmHJfmftmuW7n9ykc/mn1+FHPrPzx\n56XDh02Ysfh4ii1zlsN6tnaI6f0jVwsYD4DcFFX17L4RADzDmvxbYLGmOkPFR9rc+d9Upz3+\n3N+/7jriUNV7nv926zutPbW5dfVKdth96USGvXyg1u2VpF9aV6Zs17mn4h8rbRL5eQqqM21C\njyavrdobYCqlz7ikrRSVcfQf1Vjlg23b+tc2ux53YE6rJm+WuHByWZBGKdBTBSAvih2AQsrV\nioLLDE0+OyvbrH82Tq340BinxvBXUlKdIJ1HNpd66tiZDHulqtV0BWhN05uUeksz+fzWga67\neX8Ke6Y2qzv619avLlsz/rHWZmPJbWcXOH9p0rD76aCWV+PW6xUhhFDtV+uElSg7c9+GJ6q6\nHxGA1DgUC6DoKdfy5ZejQlRH+gfnUzy1TlN0pWrVCtTq0i4tH7XjUueZHfOycLan8N57uw1h\nLdZP7JX5aZy5VqcVL9dJv7Jh0YVU1xRFF/Z+bOWfnn/Kxt/jAG6CYgegSKoXrM82RXUkLnvj\n2aY1o4sZA0tEVX4o9vnvDiVmXSDl1E+jHu9Q7Y5IQ0BAcGiJ+s07v7dmX+bc9feUyfYduy1L\nX2/bpLY5xKg3Bleue9/o2V/nXqh2jX1Na6z6Tv1IN57CvlRbgKlutj1yjaFvL168+K7ggMwp\ndccNtFzd/PL+K3ncBIDbDcUOQFGkLr+UpmgCY0sEXbvvTH32geqxY2YdFne0j3m8aY2SW5ZP\nb1e32rTNF1wLpMd9Vaf6Q+8u+7bYnffHDniiQ8s7T279akTXuqN/u5jjBna83ub+PmM3nxAP\nP9q7b/dHdGd+nzrskdZT/8wl0/jPT0bUGW/K6xfgrnsKrSKMqRc+XHk8OesShvAWffv2bRzy\nX/8LuePZikbdmvG78rYJALcfFQAKJUvSViFEcJmh10112uPPHJwz4kEhRL2nPs+c/NfUZkKI\nu0cssTivTbmw/ZMygVp9cL0rNqeqqtufqy2EiFl2OPMhl3e/I4S4o/kG191vmpQWQpzIsLs2\nU9Gg04c0+PeuaknaGR6gMZhb3SxtRvx6IUTT+Qfdewqn1w8TQugCyz499t3qQQEddly42Ybe\nrRRmjOh4s7kAbnMUOwCFlKsV3UzXyZ/bsyzcPCwwsNi9SXZn1jX8MqSmEOKFowmqqp5Z99ni\nxYsv2xyZc+0Zp4QQxWuucd3NWuycjhSdohjD2ydmWeHR3X/s2vXXzdLG7e4phHjqSLzbT2H7\ngperhQe6ZimawLrNH319wdcZzmzbUTf3qqwomnMWR/YZAKCqnjmbDAC8JPu1QoQz6eKxTdsO\nfPXWuCWPtuhf0yyEsKXs2nzVEly6xv8WL8z62KsmjRBix84rolLYHe179BVCdaSdOHjk+MmT\nJ48f2/LV3JttVNGYpj5YZtSPX0dVu69fr07N723a5J5GlerWyyXn5W2nhRANQ7J/8y+PT0EI\n0WjAGwf7jd264Yve3fql1qlyeMvaMZvXzP540IFNc0O1/x3eDW8Qrn56dFOipVekMZc8AG5T\n/m6WAJCznI9jqqqqqvtXDxJChFd7y3U37dKnuezlGr27V1VVW+rBsX0eMuu1QghFE1C6Qo22\nPZ4QN/nETlVVp+3KwsnDGlUp6VqJotHf2aLnip2Xbpb2j1frCSHWXk537ylkdW+xwC4HLqee\n3TXy4SghRLPZB7LOPbLkPiHEW6eTc3npANy2OHkCQNFT89F5dUwByf986Lqr1d8hhCjV6Msc\nd3PbR9QWQoy9p9mUJd8/OPydX/46mmKxnDt+4OtP381lE4ouvP/YmduPXLh6+uC65R8O79P6\n2OaVvZvW3pJkzXH5gNAAIUSKw+nGU3DaLmzevHn3+fSsCwSVqf/W2k1aRTkw+/es0+2pdiFE\nWEGuywJAXhQ7AEVSvWC93XLKVaP0oc1qBgUkHV+crVUdXTplxIgRvyZZ7Wn739pzJazS26ve\nHH7vnZWCdIoQwmmLu9nKM658MXr06HdXnRJChJat3j5m4LuLvvp5Yj2H9dLU/fE5PiS8QYQQ\nYl+aLce5uT8Fy9XNDzzwQN/39mdbQGuoFBmgUcR1V1lJOpAkhGiU0zFfAKDYASiSbKqqOq2X\nrK4up5n3RLW0y6vbTPwys9sln1jX9ukJ8xZuvys4QCg6jaLY0/62/9uRnLa42UO6CCGEyPHH\nYdWpU6e+OmzcFXvm+tQdf8YLIeqUzPmbbaFVHhFC7NyfmOPc3J+CwfxQmE5zauVn2Ra4euTd\nC1ZHuR5Zv58njv8SF2CqVdcUIADgBhQ7AEVSFaNOCLEqLs11t9m0b7tWC/t+QqdS1Rr0eGJw\nnx5ty1XtdNxqGPfFKpNG0RmrTbm3ZMr5+VXv7/7yKxOee+rxhlHlp+6rFRWoSzw1/o335mdb\nuSGi8+sPlkk9/0l0+bu79R4w5Kn+LeqUHrzqRMmmIydXCM0xT1DJ/mUDdccWHnXjKSi68CWx\nVROPv9N8yPTdJ68KIVTVceTnpY80HaczRM9+vlbWRy08mWSu/nzetwLg9uLTb/QBQJ7lcuaB\nqqq/PlldCBHZYGTmFLvl9KyX+terWNoYEFCiXNUHOw1cteu/cx3sGacmPd2pQolieqP5ziYt\nn33rc4tT3Ti2S5gxIKRUffWGkycc1rg5owfUq1o2SK/VGUwV69wzbNIi1yXxbuaTe0sbIzq4\n9xQctrhXujdUFEVRFK2iaPVaIYSx5J3vbzmf9SEZCT8IITp8dSqXGABuZ4qq8qODAOABl3cP\nj6z33tyzyYPLBLu3houHftvw885XnxsZOuy1sfc3e6Rds2y/Y3F4wf21hhw+kXQuKlDricgA\nZEOxAwAPUe3dSobue+TrQwsfKMhqmoUaSm47u6pGxI2z+pUO3tZu9aGPWhdk/QAkxnfsAMBD\nFN3MzwYfW97/73R7QVbTacCTrc2GG6fH7Ry97GrJZe89WJCVA5Abn9gBgCfNbB310Z3L/3qn\nmadX7BwQHZY8edf/Hq/i6TUDkAfFDgA8yZ528Idfktq0buzZ1TptFzb8sKdN29YcZwGQC4od\nAACAJPjbDwAAQBIUOwAAAEn8H986WmpiIkc5AAAAAElFTkSuQmCC"
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
    "ggplot(stack(dataset), aes(x = ind, y = values)) + \n",
    "    stat_boxplot(geom ='errorbar', width = 0.4) + \n",
    "    geom_boxplot(fill = c('#3274A1', \"orange\")) + \n",
    "    coord_flip() +\n",
    "    xlab(\"Variáveis\") + \n",
    "    ylab(\"Reais (R$)\") + \n",
    "    ggtitle('Box-plot') +\n",
    "    theme(\n",
    "        plot.title=element_text(size = 14, hjust = 0.5),\n",
    "        axis.title.y=element_text(size = 12, vjust = +0.2),\n",
    "        axis.title.x=element_text(size = 12, vjust = -0.2),\n",
    "        axis.text.y=element_text(size = 10),\n",
    "        axis.text.x=element_text(size = 10),\n",
    "    )"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 12,
   "id": "a3de7ea5",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:58:56.466401Z",
     "iopub.status.busy": "2024-05-06T18:58:56.464820Z",
     "iopub.status.idle": "2024-05-06T18:58:58.094858Z",
     "shell.execute_reply": "2024-05-06T18:58:58.091788Z"
    },
    "papermill": {
     "duration": 1.671807,
     "end_time": "2024-05-06T18:58:58.098253",
     "exception": false,
     "start_time": "2024-05-06T18:58:56.426446",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "\u001b[1m\u001b[22m`geom_smooth()` using formula = 'y ~ x'\n"
     ]
    },
    {
     "data": {
      "image/png": "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\nKn+dnZycvEJrIYTXpc/g2Q+9/GI6rcvfTpqi8f1suVb4OADQ+nBTHQDaniRJ4jpSYvQwSqFm\n3SvXDVp807X2RbdMHB5jO7Pi1VdKzf2+vS2N+wzylIVvTF76+POjr9c+NWNEjwu/b/jnh6cH\nKy7N5JMmzIoTLv309kcHPHVLjKN675qPlu3VEkK+376/y/Wj4gW8xpyH+yTqfg+5a79aNHpm\n1aKZaQmS0t/WP3e8bvCSB5v0PTS+ny3XCh8HANpAm6RsAEDHxGbFfqy1BLSfWDGaEJL76qUM\n1t2fPD86q6tMJIzrlD7pzqcPVNp8e96tkScP3+h76bIWE0JuPFLFMIzXVffWY7N6atRCoSxt\nUN63x/WPd1b4smLLt36YN6AXLZF26zv4zuf+pzeXjuuRIBArfqixMVfiOA/3SS7u/mTqqExa\nKuILJakZwx7512p3sC+BzV3dobcH/Yq43yLg4++Y3l0WP9P38sKuyYSQM/bGZsWG5eMAQLtC\nMUxHXrwdAAAAIHpgjh0AAABAlEBgBwAAABAlENgBAAAARAkEdgAAAABRAoEdAAAAQJRAYAcA\nAAAQJRDYAQAAAESJ/wfdl6eozxRQzAAAAABJRU5ErkJggg=="
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
    "ggplot(data = dataset, aes(x = X, y = Y)) + \n",
    "    geom_point(size = 1.5, stroke = 0) + \n",
    "    geom_smooth(method = lm) +\n",
    "    xlab(\"Renda das Famílias\") + \n",
    "    ylab(\"Gasto das Famílias\") + \n",
    "    ggtitle('Reta de Regressão - Gasto X Renda') +\n",
    "    theme(\n",
    "        plot.title=element_text(size = 12, hjust = 0.5),\n",
    "        axis.title.y=element_text(size = 10, vjust = +0.2),\n",
    "        axis.title.x=element_text(size = 10, vjust = -0.2),\n",
    "        axis.text.y=element_text(size = 10),\n",
    "        axis.text.x=element_text(size = 10),\n",
    "    )"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "eb5d57c6",
   "metadata": {
    "id": "c2OpdF85cajl",
    "papermill": {
     "duration": 0.037233,
     "end_time": "2024-05-06T18:58:58.173826",
     "exception": false,
     "start_time": "2024-05-06T18:58:58.136593",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Análise da correlação\n",
    "\n",
    "#### <font color=red>Documentações:\n",
    "\n",
    "- [**cor**](https://www.rdocumentation.org/packages/stats/versions/3.6.1/topics/cor)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 13,
   "id": "48695f58",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:58:58.253014Z",
     "iopub.status.busy": "2024-05-06T18:58:58.251497Z",
     "iopub.status.idle": "2024-05-06T18:58:58.275378Z",
     "shell.execute_reply": "2024-05-06T18:58:58.273093Z"
    },
    "id": "eQEiUOdccajm",
    "outputId": "020089c6-ebe5-4afc-d887-2fb96d1dd90e",
    "papermill": {
     "duration": 0.067031,
     "end_time": "2024-05-06T18:58:58.278390",
     "exception": false,
     "start_time": "2024-05-06T18:58:58.211359",
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
       "<caption>A matrix: 2 × 2 of type dbl</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>Y</th><th scope=col>X</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>Y</th><td>1.0000000</td><td>0.9848352</td></tr>\n",
       "\t<tr><th scope=row>X</th><td>0.9848352</td><td>1.0000000</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A matrix: 2 × 2 of type dbl\n",
       "\\begin{tabular}{r|ll}\n",
       "  & Y & X\\\\\n",
       "\\hline\n",
       "\tY & 1.0000000 & 0.9848352\\\\\n",
       "\tX & 0.9848352 & 1.0000000\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A matrix: 2 × 2 of type dbl\n",
       "\n",
       "| <!--/--> | Y | X |\n",
       "|---|---|---|\n",
       "| Y | 1.0000000 | 0.9848352 |\n",
       "| X | 0.9848352 | 1.0000000 |\n",
       "\n"
      ],
      "text/plain": [
       "  Y         X        \n",
       "Y 1.0000000 0.9848352\n",
       "X 0.9848352 1.0000000"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "cor(dataset)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "3a84abc7",
   "metadata": {
    "id": "cPOlHTg2cajo",
    "papermill": {
     "duration": 0.037309,
     "end_time": "2024-05-06T18:58:58.353550",
     "exception": false,
     "start_time": "2024-05-06T18:58:58.316241",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Modelo de regressão linear simples\n",
    "\n",
    "#### <font color=red>Documentações:\n",
    "\n",
    "- [**lm**](https://www.rdocumentation.org/packages/stats/versions/3.6.1/topics/lm)\n",
    "- [**summary.lm**](https://www.rdocumentation.org/packages/stats/versions/3.6.1/topics/summary.lm)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "3a19e4e6",
   "metadata": {
    "id": "Dkg9S5tWcajy",
    "papermill": {
     "duration": 0.037828,
     "end_time": "2024-05-06T18:58:58.429971",
     "exception": false,
     "start_time": "2024-05-06T18:58:58.392143",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Estimando o modelo"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 14,
   "id": "b32f9ab8",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:58:58.509047Z",
     "iopub.status.busy": "2024-05-06T18:58:58.507545Z",
     "iopub.status.idle": "2024-05-06T18:58:58.528308Z",
     "shell.execute_reply": "2024-05-06T18:58:58.526583Z"
    },
    "id": "9O0dhVTfcajz",
    "papermill": {
     "duration": 0.062931,
     "end_time": "2024-05-06T18:58:58.530601",
     "exception": false,
     "start_time": "2024-05-06T18:58:58.467670",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "\n",
       "Call:\n",
       "lm(formula = Y ~ X, data = dataset)\n",
       "\n",
       "Coefficients:\n",
       "(Intercept)            X  \n",
       "   207.9033       0.2973  \n"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "resultado_regressao <- lm(formula = Y ~ X, data = dataset)\n",
    "resultado_regressao"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 15,
   "id": "627de933",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:58:58.609175Z",
     "iopub.status.busy": "2024-05-06T18:58:58.607384Z",
     "iopub.status.idle": "2024-05-06T18:58:58.639498Z",
     "shell.execute_reply": "2024-05-06T18:58:58.637248Z"
    },
    "id": "8W1oGgNecaj0",
    "outputId": "aa4b6d35-1512-4cc2-e502-368cc81a21b2",
    "papermill": {
     "duration": 0.074384,
     "end_time": "2024-05-06T18:58:58.642418",
     "exception": false,
     "start_time": "2024-05-06T18:58:58.568034",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "\n",
       "Call:\n",
       "lm(formula = Y ~ X, data = dataset)\n",
       "\n",
       "Residuals:\n",
       "    Min      1Q  Median      3Q     Max \n",
       "-202.49 -125.96  -22.28  140.53  260.67 \n",
       "\n",
       "Coefficients:\n",
       "             Estimate Std. Error t value Pr(>|t|)    \n",
       "(Intercept) 2.079e+02  5.013e+01   4.148 0.000136 ***\n",
       "X           2.973e-01  7.559e-03  39.328  < 2e-16 ***\n",
       "---\n",
       "Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1\n",
       "\n",
       "Residual standard error: 143.2 on 48 degrees of freedom\n",
       "Multiple R-squared:  0.9699,\tAdjusted R-squared:  0.9693 \n",
       "F-statistic:  1547 on 1 and 48 DF,  p-value: < 2.2e-16\n"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "summary(resultado_regressao)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "c06968c0",
   "metadata": {
    "id": "eP2wm9fBcaj2",
    "papermill": {
     "duration": 0.037667,
     "end_time": "2024-05-06T18:58:58.717726",
     "exception": false,
     "start_time": "2024-05-06T18:58:58.680059",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Obtendo as previsões dentro da amostra"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 16,
   "id": "d0aa86c5",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:58:58.796970Z",
     "iopub.status.busy": "2024-05-06T18:58:58.795074Z",
     "iopub.status.idle": "2024-05-06T18:58:58.845711Z",
     "shell.execute_reply": "2024-05-06T18:58:58.843176Z"
    },
    "papermill": {
     "duration": 0.093305,
     "end_time": "2024-05-06T18:58:58.848705",
     "exception": false,
     "start_time": "2024-05-06T18:58:58.755400",
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
       "<caption>A data.frame: 50 × 3</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>Y</th><th scope=col>X</th><th scope=col>Y_previsto</th></tr>\n",
       "\t<tr><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>3011</td><td>9714</td><td>3095.7851</td></tr>\n",
       "\t<tr><td>1305</td><td>3728</td><td>1316.2030</td></tr>\n",
       "\t<tr><td>1879</td><td>6062</td><td>2010.0795</td></tr>\n",
       "\t<tr><td>2654</td><td>8845</td><td>2837.4395</td></tr>\n",
       "\t<tr><td>2849</td><td>8378</td><td>2698.6047</td></tr>\n",
       "\t<tr><td>1068</td><td>3338</td><td>1200.2596</td></tr>\n",
       "\t<tr><td>2892</td><td>8507</td><td>2736.9552</td></tr>\n",
       "\t<tr><td>2543</td><td>7947</td><td>2570.4724</td></tr>\n",
       "\t<tr><td>3074</td><td>9915</td><td>3155.5405</td></tr>\n",
       "\t<tr><td> 849</td><td>1632</td><td> 693.0817</td></tr>\n",
       "\t<tr><td>2184</td><td>6825</td><td>2236.9123</td></tr>\n",
       "\t<tr><td>2943</td><td>8918</td><td>2859.1417</td></tr>\n",
       "\t<tr><td>1357</td><td>4100</td><td>1426.7951</td></tr>\n",
       "\t<tr><td>2755</td><td>9184</td><td>2938.2210</td></tr>\n",
       "\t<tr><td>2163</td><td>6180</td><td>2045.1598</td></tr>\n",
       "\t<tr><td>3099</td><td>9997</td><td>3179.9184</td></tr>\n",
       "\t<tr><td>1600</td><td>4500</td><td>1545.7114</td></tr>\n",
       "\t<tr><td> 353</td><td>1069</td><td> 525.7071</td></tr>\n",
       "\t<tr><td>1778</td><td>5925</td><td>1969.3507</td></tr>\n",
       "\t<tr><td> 740</td><td>2466</td><td> 941.0222</td></tr>\n",
       "\t<tr><td>2129</td><td>6083</td><td>2016.3226</td></tr>\n",
       "\t<tr><td>3302</td><td>9712</td><td>3095.1905</td></tr>\n",
       "\t<tr><td>2412</td><td>7780</td><td>2520.8249</td></tr>\n",
       "\t<tr><td>2683</td><td>8383</td><td>2700.0912</td></tr>\n",
       "\t<tr><td>2515</td><td>7185</td><td>2343.9369</td></tr>\n",
       "\t<tr><td>2395</td><td>7483</td><td>2432.5296</td></tr>\n",
       "\t<tr><td>2292</td><td>7640</td><td>2479.2042</td></tr>\n",
       "\t<tr><td>1000</td><td>2100</td><td> 832.2138</td></tr>\n",
       "\t<tr><td> 600</td><td>2000</td><td> 802.4847</td></tr>\n",
       "\t<tr><td>1864</td><td>6012</td><td>1995.2149</td></tr>\n",
       "\t<tr><td>3027</td><td>8902</td><td>2854.3850</td></tr>\n",
       "\t<tr><td>1978</td><td>5345</td><td>1796.9221</td></tr>\n",
       "\t<tr><td>2791</td><td>8210</td><td>2648.6599</td></tr>\n",
       "\t<tr><td>1982</td><td>5662</td><td>1891.1632</td></tr>\n",
       "\t<tr><td> 900</td><td>2700</td><td>1010.5882</td></tr>\n",
       "\t<tr><td>1964</td><td>6546</td><td>2153.9682</td></tr>\n",
       "\t<tr><td>1247</td><td>2900</td><td>1070.0463</td></tr>\n",
       "\t<tr><td>3067</td><td>9894</td><td>3149.2974</td></tr>\n",
       "\t<tr><td> 700</td><td>1500</td><td> 653.8394</td></tr>\n",
       "\t<tr><td>1500</td><td>5000</td><td>1694.3568</td></tr>\n",
       "\t<tr><td>3110</td><td>8885</td><td>2849.3311</td></tr>\n",
       "\t<tr><td>2644</td><td>8813</td><td>2827.9262</td></tr>\n",
       "\t<tr><td>1378</td><td>3446</td><td>1232.3670</td></tr>\n",
       "\t<tr><td>2601</td><td>7881</td><td>2550.8512</td></tr>\n",
       "\t<tr><td> 501</td><td>1164</td><td> 553.9497</td></tr>\n",
       "\t<tr><td>1292</td><td>3401</td><td>1218.9890</td></tr>\n",
       "\t<tr><td>2125</td><td>6641</td><td>2182.2108</td></tr>\n",
       "\t<tr><td>1431</td><td>3329</td><td>1197.5840</td></tr>\n",
       "\t<tr><td>2260</td><td>6648</td><td>2184.2918</td></tr>\n",
       "\t<tr><td>1770</td><td>4800</td><td>1634.8986</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 50 × 3\n",
       "\\begin{tabular}{lll}\n",
       " Y & X & Y\\_previsto\\\\\n",
       " <dbl> & <dbl> & <dbl>\\\\\n",
       "\\hline\n",
       "\t 3011 & 9714 & 3095.7851\\\\\n",
       "\t 1305 & 3728 & 1316.2030\\\\\n",
       "\t 1879 & 6062 & 2010.0795\\\\\n",
       "\t 2654 & 8845 & 2837.4395\\\\\n",
       "\t 2849 & 8378 & 2698.6047\\\\\n",
       "\t 1068 & 3338 & 1200.2596\\\\\n",
       "\t 2892 & 8507 & 2736.9552\\\\\n",
       "\t 2543 & 7947 & 2570.4724\\\\\n",
       "\t 3074 & 9915 & 3155.5405\\\\\n",
       "\t  849 & 1632 &  693.0817\\\\\n",
       "\t 2184 & 6825 & 2236.9123\\\\\n",
       "\t 2943 & 8918 & 2859.1417\\\\\n",
       "\t 1357 & 4100 & 1426.7951\\\\\n",
       "\t 2755 & 9184 & 2938.2210\\\\\n",
       "\t 2163 & 6180 & 2045.1598\\\\\n",
       "\t 3099 & 9997 & 3179.9184\\\\\n",
       "\t 1600 & 4500 & 1545.7114\\\\\n",
       "\t  353 & 1069 &  525.7071\\\\\n",
       "\t 1778 & 5925 & 1969.3507\\\\\n",
       "\t  740 & 2466 &  941.0222\\\\\n",
       "\t 2129 & 6083 & 2016.3226\\\\\n",
       "\t 3302 & 9712 & 3095.1905\\\\\n",
       "\t 2412 & 7780 & 2520.8249\\\\\n",
       "\t 2683 & 8383 & 2700.0912\\\\\n",
       "\t 2515 & 7185 & 2343.9369\\\\\n",
       "\t 2395 & 7483 & 2432.5296\\\\\n",
       "\t 2292 & 7640 & 2479.2042\\\\\n",
       "\t 1000 & 2100 &  832.2138\\\\\n",
       "\t  600 & 2000 &  802.4847\\\\\n",
       "\t 1864 & 6012 & 1995.2149\\\\\n",
       "\t 3027 & 8902 & 2854.3850\\\\\n",
       "\t 1978 & 5345 & 1796.9221\\\\\n",
       "\t 2791 & 8210 & 2648.6599\\\\\n",
       "\t 1982 & 5662 & 1891.1632\\\\\n",
       "\t  900 & 2700 & 1010.5882\\\\\n",
       "\t 1964 & 6546 & 2153.9682\\\\\n",
       "\t 1247 & 2900 & 1070.0463\\\\\n",
       "\t 3067 & 9894 & 3149.2974\\\\\n",
       "\t  700 & 1500 &  653.8394\\\\\n",
       "\t 1500 & 5000 & 1694.3568\\\\\n",
       "\t 3110 & 8885 & 2849.3311\\\\\n",
       "\t 2644 & 8813 & 2827.9262\\\\\n",
       "\t 1378 & 3446 & 1232.3670\\\\\n",
       "\t 2601 & 7881 & 2550.8512\\\\\n",
       "\t  501 & 1164 &  553.9497\\\\\n",
       "\t 1292 & 3401 & 1218.9890\\\\\n",
       "\t 2125 & 6641 & 2182.2108\\\\\n",
       "\t 1431 & 3329 & 1197.5840\\\\\n",
       "\t 2260 & 6648 & 2184.2918\\\\\n",
       "\t 1770 & 4800 & 1634.8986\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 50 × 3\n",
       "\n",
       "| Y &lt;dbl&gt; | X &lt;dbl&gt; | Y_previsto &lt;dbl&gt; |\n",
       "|---|---|---|\n",
       "| 3011 | 9714 | 3095.7851 |\n",
       "| 1305 | 3728 | 1316.2030 |\n",
       "| 1879 | 6062 | 2010.0795 |\n",
       "| 2654 | 8845 | 2837.4395 |\n",
       "| 2849 | 8378 | 2698.6047 |\n",
       "| 1068 | 3338 | 1200.2596 |\n",
       "| 2892 | 8507 | 2736.9552 |\n",
       "| 2543 | 7947 | 2570.4724 |\n",
       "| 3074 | 9915 | 3155.5405 |\n",
       "|  849 | 1632 |  693.0817 |\n",
       "| 2184 | 6825 | 2236.9123 |\n",
       "| 2943 | 8918 | 2859.1417 |\n",
       "| 1357 | 4100 | 1426.7951 |\n",
       "| 2755 | 9184 | 2938.2210 |\n",
       "| 2163 | 6180 | 2045.1598 |\n",
       "| 3099 | 9997 | 3179.9184 |\n",
       "| 1600 | 4500 | 1545.7114 |\n",
       "|  353 | 1069 |  525.7071 |\n",
       "| 1778 | 5925 | 1969.3507 |\n",
       "|  740 | 2466 |  941.0222 |\n",
       "| 2129 | 6083 | 2016.3226 |\n",
       "| 3302 | 9712 | 3095.1905 |\n",
       "| 2412 | 7780 | 2520.8249 |\n",
       "| 2683 | 8383 | 2700.0912 |\n",
       "| 2515 | 7185 | 2343.9369 |\n",
       "| 2395 | 7483 | 2432.5296 |\n",
       "| 2292 | 7640 | 2479.2042 |\n",
       "| 1000 | 2100 |  832.2138 |\n",
       "|  600 | 2000 |  802.4847 |\n",
       "| 1864 | 6012 | 1995.2149 |\n",
       "| 3027 | 8902 | 2854.3850 |\n",
       "| 1978 | 5345 | 1796.9221 |\n",
       "| 2791 | 8210 | 2648.6599 |\n",
       "| 1982 | 5662 | 1891.1632 |\n",
       "|  900 | 2700 | 1010.5882 |\n",
       "| 1964 | 6546 | 2153.9682 |\n",
       "| 1247 | 2900 | 1070.0463 |\n",
       "| 3067 | 9894 | 3149.2974 |\n",
       "|  700 | 1500 |  653.8394 |\n",
       "| 1500 | 5000 | 1694.3568 |\n",
       "| 3110 | 8885 | 2849.3311 |\n",
       "| 2644 | 8813 | 2827.9262 |\n",
       "| 1378 | 3446 | 1232.3670 |\n",
       "| 2601 | 7881 | 2550.8512 |\n",
       "|  501 | 1164 |  553.9497 |\n",
       "| 1292 | 3401 | 1218.9890 |\n",
       "| 2125 | 6641 | 2182.2108 |\n",
       "| 1431 | 3329 | 1197.5840 |\n",
       "| 2260 | 6648 | 2184.2918 |\n",
       "| 1770 | 4800 | 1634.8986 |\n",
       "\n"
      ],
      "text/plain": [
       "   Y    X    Y_previsto\n",
       "1  3011 9714 3095.7851 \n",
       "2  1305 3728 1316.2030 \n",
       "3  1879 6062 2010.0795 \n",
       "4  2654 8845 2837.4395 \n",
       "5  2849 8378 2698.6047 \n",
       "6  1068 3338 1200.2596 \n",
       "7  2892 8507 2736.9552 \n",
       "8  2543 7947 2570.4724 \n",
       "9  3074 9915 3155.5405 \n",
       "10  849 1632  693.0817 \n",
       "11 2184 6825 2236.9123 \n",
       "12 2943 8918 2859.1417 \n",
       "13 1357 4100 1426.7951 \n",
       "14 2755 9184 2938.2210 \n",
       "15 2163 6180 2045.1598 \n",
       "16 3099 9997 3179.9184 \n",
       "17 1600 4500 1545.7114 \n",
       "18  353 1069  525.7071 \n",
       "19 1778 5925 1969.3507 \n",
       "20  740 2466  941.0222 \n",
       "21 2129 6083 2016.3226 \n",
       "22 3302 9712 3095.1905 \n",
       "23 2412 7780 2520.8249 \n",
       "24 2683 8383 2700.0912 \n",
       "25 2515 7185 2343.9369 \n",
       "26 2395 7483 2432.5296 \n",
       "27 2292 7640 2479.2042 \n",
       "28 1000 2100  832.2138 \n",
       "29  600 2000  802.4847 \n",
       "30 1864 6012 1995.2149 \n",
       "31 3027 8902 2854.3850 \n",
       "32 1978 5345 1796.9221 \n",
       "33 2791 8210 2648.6599 \n",
       "34 1982 5662 1891.1632 \n",
       "35  900 2700 1010.5882 \n",
       "36 1964 6546 2153.9682 \n",
       "37 1247 2900 1070.0463 \n",
       "38 3067 9894 3149.2974 \n",
       "39  700 1500  653.8394 \n",
       "40 1500 5000 1694.3568 \n",
       "41 3110 8885 2849.3311 \n",
       "42 2644 8813 2827.9262 \n",
       "43 1378 3446 1232.3670 \n",
       "44 2601 7881 2550.8512 \n",
       "45  501 1164  553.9497 \n",
       "46 1292 3401 1218.9890 \n",
       "47 2125 6641 2182.2108 \n",
       "48 1431 3329 1197.5840 \n",
       "49 2260 6648 2184.2918 \n",
       "50 1770 4800 1634.8986 "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "dataset['Y_previsto'] <- resultado_regressao$fitted.values\n",
    "dataset"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "96a30357",
   "metadata": {
    "id": "QTCRxEClcaj-",
    "papermill": {
     "duration": 0.03787,
     "end_time": "2024-05-06T18:58:58.925013",
     "exception": false,
     "start_time": "2024-05-06T18:58:58.887143",
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
   "id": "8fa89cff",
   "metadata": {
    "id": "DU3ADw3fdeS1",
    "papermill": {
     "duration": 0.037832,
     "end_time": "2024-05-06T18:58:59.000751",
     "exception": false,
     "start_time": "2024-05-06T18:58:58.962919",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# <font color=green>3 CORRELAÇÃO</font>\n",
    "***"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "c1e45781",
   "metadata": {
    "id": "_8zdNQvrcakA",
    "papermill": {
     "duration": 0.037684,
     "end_time": "2024-05-06T18:58:59.076316",
     "exception": false,
     "start_time": "2024-05-06T18:58:59.038632",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## <font color=green>3.1 Covariância</font>\n",
    "***"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "58bb3c34",
   "metadata": {
    "id": "E5xyRLiYcakB",
    "papermill": {
     "duration": 0.037921,
     "end_time": "2024-05-06T18:58:59.152082",
     "exception": false,
     "start_time": "2024-05-06T18:58:59.114161",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "A covariância, ou variância conjunta, é a medida do grau de interdependência (ou inter-relação) numérica entre duas variáveis. É definida da seguinte maneira:"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "77c3c01e",
   "metadata": {
    "id": "z66qdhEPcakB",
    "papermill": {
     "duration": 0.039038,
     "end_time": "2024-05-06T18:58:59.229887",
     "exception": false,
     "start_time": "2024-05-06T18:58:59.190849",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Covariância populacional\n",
    "\n",
    "# $$\\sigma_{xy} = \\frac 1n\\sum_{i=1}^{n}(X_i-\\mu_x)(Y_i-\\mu_y)$$"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "54be74fa",
   "metadata": {
    "id": "Q5Z7pL4ncakB",
    "papermill": {
     "duration": 0.041026,
     "end_time": "2024-05-06T18:58:59.320958",
     "exception": false,
     "start_time": "2024-05-06T18:58:59.279932",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Covariância amostral\n",
    "\n",
    "# $$S_{xy} = \\frac 1{n-1}\\sum_{i=1}^{n}(X_i-\\bar{X})(Y_i-\\bar{Y})$$"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "d091bf69",
   "metadata": {
    "papermill": {
     "duration": 0.057559,
     "end_time": "2024-05-06T18:58:59.419911",
     "exception": false,
     "start_time": "2024-05-06T18:58:59.362352",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "#### <font color=red>Documentações:\n",
    "\n",
    "- [**cov**](https://www.rdocumentation.org/packages/stats/versions/3.6.1/topics/cor)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "a71129de",
   "metadata": {
    "id": "jL1SrReTcakC",
    "papermill": {
     "duration": 0.038264,
     "end_time": "2024-05-06T18:58:59.497807",
     "exception": false,
     "start_time": "2024-05-06T18:58:59.459543",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Gerando uma amostra aleatória para facilitar o entendimento"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 17,
   "id": "651f574d",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:58:59.577321Z",
     "iopub.status.busy": "2024-05-06T18:58:59.575754Z",
     "iopub.status.idle": "2024-05-06T18:58:59.591107Z",
     "shell.execute_reply": "2024-05-06T18:58:59.589450Z"
    },
    "papermill": {
     "duration": 0.058233,
     "end_time": "2024-05-06T18:58:59.594026",
     "exception": false,
     "start_time": "2024-05-06T18:58:59.535793",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "amostra <- data.frame(\n",
    "    Idade = c(39, 29, 21, 49, 29, 34, 32, 32, 24, 53, 28, 28, 46, 58, 41, 43, 31, 55, 52, 54),\n",
    "    Renda = c(1500, 1000, 3500, 1570, 600, 1200, 2000, 500, 1300, 600, 1500, 3000, 0, 550, 1500, 1600, 746, 1000, 0, 1400),\n",
    "    Anos.de.Estudo = c(6, 7, 12, 13, 9, 12, 12, 6, 7, 5, 7, 16, 12, 3, 12, 9, 1, 6, 1, 6),\n",
    "    Altura = c(1.6162, 1.7525, 1.6940, 1.8041, 1.7854, 1.7468, 1.6633, 1.6937, 1.6569, 1.6671, 1.6786, 1.6730, 1.7853, 1.6090, 1.7833, 1.6709, 1.6392, 1.6861, 1.7107, 1.7288)\n",
    ")"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "86ae026b",
   "metadata": {
    "id": "ZssTPkXGcakD",
    "papermill": {
     "duration": 0.045152,
     "end_time": "2024-05-06T18:58:59.677391",
     "exception": false,
     "start_time": "2024-05-06T18:58:59.632239",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Obtendo a matriz de covariância"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 18,
   "id": "73bf3481",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:58:59.760554Z",
     "iopub.status.busy": "2024-05-06T18:58:59.758847Z",
     "iopub.status.idle": "2024-05-06T18:58:59.785868Z",
     "shell.execute_reply": "2024-05-06T18:58:59.783349Z"
    },
    "papermill": {
     "duration": 0.07021,
     "end_time": "2024-05-06T18:58:59.788823",
     "exception": false,
     "start_time": "2024-05-06T18:58:59.718613",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A matrix: 4 × 4 of type dbl</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>Idade</th><th scope=col>Renda</th><th scope=col>Anos.de.Estudo</th><th scope=col>Altura</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>Idade</th><td> 1.344105e+02</td><td> -4947.96842</td><td> -16.4105263</td><td> 0.016483684</td></tr>\n",
       "\t<tr><th scope=row>Renda</th><td>-4.947968e+03</td><td>764668.32632</td><td>2209.0210526</td><td>-7.139630000</td></tr>\n",
       "\t<tr><th scope=row>Anos.de.Estudo</th><td>-1.641053e+01</td><td>  2209.02105</td><td>  16.9368421</td><td> 0.111258421</td></tr>\n",
       "\t<tr><th scope=row>Altura</th><td> 1.648368e-02</td><td>    -7.13963</td><td>   0.1112584</td><td> 0.003353907</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A matrix: 4 × 4 of type dbl\n",
       "\\begin{tabular}{r|llll}\n",
       "  & Idade & Renda & Anos.de.Estudo & Altura\\\\\n",
       "\\hline\n",
       "\tIdade &  1.344105e+02 &  -4947.96842 &  -16.4105263 &  0.016483684\\\\\n",
       "\tRenda & -4.947968e+03 & 764668.32632 & 2209.0210526 & -7.139630000\\\\\n",
       "\tAnos.de.Estudo & -1.641053e+01 &   2209.02105 &   16.9368421 &  0.111258421\\\\\n",
       "\tAltura &  1.648368e-02 &     -7.13963 &    0.1112584 &  0.003353907\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A matrix: 4 × 4 of type dbl\n",
       "\n",
       "| <!--/--> | Idade | Renda | Anos.de.Estudo | Altura |\n",
       "|---|---|---|---|---|\n",
       "| Idade |  1.344105e+02 |  -4947.96842 |  -16.4105263 |  0.016483684 |\n",
       "| Renda | -4.947968e+03 | 764668.32632 | 2209.0210526 | -7.139630000 |\n",
       "| Anos.de.Estudo | -1.641053e+01 |   2209.02105 |   16.9368421 |  0.111258421 |\n",
       "| Altura |  1.648368e-02 |     -7.13963 |    0.1112584 |  0.003353907 |\n",
       "\n"
      ],
      "text/plain": [
       "               Idade         Renda        Anos.de.Estudo Altura      \n",
       "Idade           1.344105e+02  -4947.96842  -16.4105263    0.016483684\n",
       "Renda          -4.947968e+03 764668.32632 2209.0210526   -7.139630000\n",
       "Anos.de.Estudo -1.641053e+01   2209.02105   16.9368421    0.111258421\n",
       "Altura          1.648368e-02     -7.13963    0.1112584    0.003353907"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "matriz_cov <- cov(amostra)\n",
    "matriz_cov"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "79296c87",
   "metadata": {
    "id": "dodkzGyBcakG",
    "papermill": {
     "duration": 0.038253,
     "end_time": "2024-05-06T18:58:59.865604",
     "exception": false,
     "start_time": "2024-05-06T18:58:59.827351",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Identificando as variâncias na diagonal principal da matriz"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 19,
   "id": "fa473a63",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:58:59.945399Z",
     "iopub.status.busy": "2024-05-06T18:58:59.943802Z",
     "iopub.status.idle": "2024-05-06T18:58:59.962714Z",
     "shell.execute_reply": "2024-05-06T18:58:59.960548Z"
    },
    "id": "iG3mpmBfcakH",
    "outputId": "cf9885ba-996a-4254-85b3-e190a31556f3",
    "papermill": {
     "duration": 0.061843,
     "end_time": "2024-05-06T18:58:59.965617",
     "exception": false,
     "start_time": "2024-05-06T18:58:59.903774",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "134.410526315789"
      ],
      "text/latex": [
       "134.410526315789"
      ],
      "text/markdown": [
       "134.410526315789"
      ],
      "text/plain": [
       "[1] 134.4105"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "var(amostra$Idade)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "06f44d8e",
   "metadata": {
    "id": "9I8MVJAscakK",
    "papermill": {
     "duration": 0.03958,
     "end_time": "2024-05-06T18:59:00.043695",
     "exception": false,
     "start_time": "2024-05-06T18:59:00.004115",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## <font color=green>3.2 Interpretação da Covariância</font>\n",
    "***"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "a04c2ea4",
   "metadata": {
    "id": "_H2Y3PVZcakK",
    "papermill": {
     "duration": 0.038928,
     "end_time": "2024-05-06T18:59:00.128808",
     "exception": false,
     "start_time": "2024-05-06T18:59:00.089880",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Valor de $S_{xy}$ positivo indica uma associação linear positiva entre x e y, ou seja, à medida que o valor de x aumenta, o valor de y também aumenta. Neste caso, podemos ver na figura abaixo que os pontos que têm a maior influência sobre $S_{xy}$ devem estar nos quadrantes I e III.\n",
    "\n",
    "Se o valor de $S_{xy}$ for negativo temos um indicativo de associação linear negativa entre x e y, ou seja, à medida que x aumenta, o valor de y diminui. Neste caso, podemos ver na figura abaixo que os pontos que têm a maior influência sobre $S_{xy}$ devem estar nos quadrantes II e IV.\n",
    "\n",
    "Finalmente, se os pontos estiverem uniformemente distribuídos pelos quadrantes, o valor de $S_{xy}$ se aproximará de zero, indicando que não existe nenhuma associação linear entre x e y.\n",
    "\n",
    "<img src=\"https://caelum-online-public.s3.amazonaws.com/1273-estatistica-parte4/01/img026.png\" width=50%>"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "250da6c3",
   "metadata": {
    "id": "frhw7Uc8cakL",
    "papermill": {
     "duration": 0.038881,
     "end_time": "2024-05-06T18:59:00.207011",
     "exception": false,
     "start_time": "2024-05-06T18:59:00.168130",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Verificando a existência de uma associação linear negativa"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 20,
   "id": "da6db823",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:00.287929Z",
     "iopub.status.busy": "2024-05-06T18:59:00.286370Z",
     "iopub.status.idle": "2024-05-06T18:59:00.506278Z",
     "shell.execute_reply": "2024-05-06T18:59:00.503638Z"
    },
    "papermill": {
     "duration": 0.263732,
     "end_time": "2024-05-06T18:59:00.509287",
     "exception": false,
     "start_time": "2024-05-06T18:59:00.245555",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "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\nAAAAJEGxAwAAkATFDgAAQBIUOwAAAElQ7AD5RebFvAAA3VHsAJmtWLHiqquuysjIaNas2Zw5\nc/SOAwAIr1i63AmACtm5c+fAgQMDFwk6duzY2LFja9So0b17d71zAQDChSN2gLSWLFly1qUf\nFy5cqFcYAEAEUOwAaf3+pXVclBUA5EaxA6TVsWPHwK0egzp16qRXGABABFDsAGm1bdv28ccf\n1zRNCKEoyu23337XXXfpHQoAEEa8eQKQ2ciRI++4447du3fXqVOnVq1aescBAIQXxQ6QXEpK\nSuvWrfVOAQCIBE7FAgAASIJiBwAAIAmKHQAAgCQodgAAAJKg2AEAAEiCYgcAACAJih0AAIAk\nKHYAAACSoNgBAABIgmIHAAAgCYodAACAJCh2AAAAkjDpHQAxbPXq1WvWrDEajV26dOE284Au\njhw5Mn369OPHjzdv3rx3796qquqdCICeKHaopBdffPHpp58OPH7ppZdefPHFfv366RsJqGp2\n797duXPnwsLCwOKCBQsWLVpkNBr1TQVAR5yKRWWcPn168uTJwUW/3//YY4+53W4dIwFV0KRJ\nk4KtTgixbt26pUuX6pgHgO4odqiMgwcPnlXj8vPz8/Ly9MoDVE379u07a2TPnj16BAEQLSh2\nqIzatWufdbonISGhWrVqeuUBqqZ69eqdNXLJJZfoEQRAtKDYoTJSU1NHjRpVdmTChAm8ahuI\nsHHjxsXFxQUXW7du3aNHDx3zANAdb55AJY0bN6558+arV682GAzdu3dv166d3omAKqdx48br\n1q2bP3/+0aNHW7Zsefvtt5tM/FQHqjR+BKDyunfvftttt/l8vuLiYr2zAFVU/fr1J0+ebDQa\n7Xa73W7XOw4AnXEqFgAAQBIUOwAAAElwKhZS8Xq9a9euPXLkSJMmTS677DK94wAAEFEUO8ij\nuLi4d+/e3377bWBxwIAB//jHP/SNBABAJHEqFvJ44YUXgq1OCPHmm28uW7ZMxzwAAEQYxQ7y\n+Oabb84a2bhxoy5JAADQBcUO8khJSTlrhJthAACqFIod5DFs2DCDoXRKV69evW/fvjrmAQAg\nwih2kMdVV101f/78q6++OjMzs2fPnkuWLElLS9M7FAAAkcO7YiGVjh07duzYUe8UAADoI0LF\nzlWw89WXXtvwv73FPlP9hq1uvWd423rxQgghfKsXzPxo7eYDhcbGzdoMepWtnisAABiKSURB\n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"
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
    "grafico <- amostra[, c('Renda', 'Idade')]\n",
    "\n",
    "ggplot(data = grafico, aes(x = Renda, y = Idade)) + \n",
    "    geom_point(size = 1.5, stroke = 0) + \n",
    "    geom_hline(yintercept = mean(amostra$Idade), color = 'black') + \n",
    "    geom_vline(xintercept = mean(amostra$Renda), color = 'black')"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "9f3bdca1",
   "metadata": {
    "id": "es2CobcCcakQ",
    "papermill": {
     "duration": 0.038729,
     "end_time": "2024-05-06T18:59:00.587216",
     "exception": false,
     "start_time": "2024-05-06T18:59:00.548487",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Verificando a existência de uma associação linear positiva"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 21,
   "id": "75e3f6b0",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:00.667987Z",
     "iopub.status.busy": "2024-05-06T18:59:00.666427Z",
     "iopub.status.idle": "2024-05-06T18:59:00.870532Z",
     "shell.execute_reply": "2024-05-06T18:59:00.867807Z"
    },
    "id": "eLc5JmYCcakQ",
    "outputId": "0b7b1dd4-82aa-4a50-9635-ad16f88371c6",
    "papermill": {
     "duration": 0.247815,
     "end_time": "2024-05-06T18:59:00.873464",
     "exception": false,
     "start_time": "2024-05-06T18:59:00.625649",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "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\ngg=="
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
    "grafico <- amostra[, c('Renda', 'Anos.de.Estudo')]\n",
    "\n",
    "ggplot(data = grafico, aes(x = Renda, y = Anos.de.Estudo)) + \n",
    "    geom_point(size = 1.5, stroke = 0) + \n",
    "    geom_hline(yintercept = mean(amostra$'Anos.de.Estudo'), color = 'black') + \n",
    "    geom_vline(xintercept = mean(amostra$Renda), color = 'black')"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "9968327b",
   "metadata": {
    "id": "mYYlKQeHcakS",
    "papermill": {
     "duration": 0.03949,
     "end_time": "2024-05-06T18:59:00.952301",
     "exception": false,
     "start_time": "2024-05-06T18:59:00.912811",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Verificando a inexistência de uma associação linear entre as variáveis"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 22,
   "id": "f538765a",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:01.035474Z",
     "iopub.status.busy": "2024-05-06T18:59:01.033710Z",
     "iopub.status.idle": "2024-05-06T18:59:01.244608Z",
     "shell.execute_reply": "2024-05-06T18:59:01.241687Z"
    },
    "id": "R0S1AiBlcakS",
    "outputId": "c6897cb3-a3d5-44a3-8a5c-ec58dd257aad",
    "papermill": {
     "duration": 0.256298,
     "end_time": "2024-05-06T18:59:01.247682",
     "exception": false,
     "start_time": "2024-05-06T18:59:00.991384",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "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\nRK5CYII="
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
    "grafico <- amostra[, c('Idade', 'Altura')]\n",
    "\n",
    "ggplot(data = grafico, aes(x = Idade, y = Altura)) + \n",
    "    geom_point(size = 1.5, stroke = 0) + \n",
    "    geom_hline(yintercept = mean(amostra$Altura), color = 'black') + \n",
    "    geom_vline(xintercept = mean(amostra$Idade), color = 'black')"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "b39e352a",
   "metadata": {
    "id": "zgSmQYrHcakb",
    "papermill": {
     "duration": 0.039892,
     "end_time": "2024-05-06T18:59:01.327765",
     "exception": false,
     "start_time": "2024-05-06T18:59:01.287873",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### <font color='red'>Observação Importante:</font>\n",
    "> Pelo que foi apresentado pode parecer que valores elevados, tanto positivos quanto negativos, para a covariância indicam relações lineares fortes entre as variáveis envolvidas. No entanto, um problema quando se usa a covariância como uma medida da intensidade da relação linear é que o valor da covariância depende das unidades de medida para x e y.\n",
    "> \n",
    "> Uma medida da relação entre duas variáveis que não é afetada pelas unidades de medida para x e y é o coeficiente de correlação que veremos no próximo tópico."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "fe0505aa",
   "metadata": {
    "id": "oPAxUkyQcakb",
    "papermill": {
     "duration": 0.040794,
     "end_time": "2024-05-06T18:59:01.408172",
     "exception": false,
     "start_time": "2024-05-06T18:59:01.367378",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## <font color=green>3.3 Coeficiente de correlação de Pearson</font>\n",
    "***"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "7766dcc9",
   "metadata": {
    "id": "6TYCLh0Hcakf",
    "papermill": {
     "duration": 0.039961,
     "end_time": "2024-05-06T18:59:01.488306",
     "exception": false,
     "start_time": "2024-05-06T18:59:01.448345",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "É obtido dividindo-se a covariância da população ou amostra pelo produto do desvio padrão populacional ou amostral de x pelo desvio padrão populacional ou amostral de y.\n",
    "\n",
    "O coeficiente de correlação varia de -1 a +1. Valores que se aproximam de -1 ou +1 indicam uma relação linear forte. Quanto mais próxima a correlação estiver de zero, mais fraca será a relação.\n",
    "\n",
    "Um ponto importante é que o coeficiente de correlação é uma medida de associação linear e não necessariamente de causação. Uma correlação alta entre duas variáveis não significa, necessariamente, que variações em uma delas provocará alterações na outra."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "13a14e42",
   "metadata": {
    "id": "OgecrWGdcakf",
    "papermill": {
     "duration": 0.039747,
     "end_time": "2024-05-06T18:59:01.567898",
     "exception": false,
     "start_time": "2024-05-06T18:59:01.528151",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Coeficiente de correlação de Pearson - dados populacionais\n",
    "\n",
    "# $$\\rho_{xy} = \\frac{\\sigma_{xy}}{\\sigma_{x}\\sigma_{y}}$$\n",
    "\n",
    "### Coeficiente de correlação de Pearson - dados amostrais\n",
    "\n",
    "# $$r_{xy} = \\frac{s_{xy}}{s_{x}s_{y}}$$\n",
    "\n",
    "Onde\n",
    "\n",
    "$\\sigma_{xy}$ = covariância populacional entre x e y\n",
    "\n",
    "$s_{xy}$ = covariância amostral entre x e y\n",
    "\n",
    "$\\sigma_{x}$ e $\\sigma_{y}$ = desvios padrão populacionais de x e y, respectivamente\n",
    "\n",
    "$s_{x}$ e $s_{y}$ = desvios padrão amostrais de x e y, respectivamente"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "51de49b3",
   "metadata": {
    "id": "jPk2i26acakg",
    "papermill": {
     "duration": 0.040266,
     "end_time": "2024-05-06T18:59:01.648197",
     "exception": false,
     "start_time": "2024-05-06T18:59:01.607931",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Obtendo $s_{xy}$"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 23,
   "id": "a6e9e5ff",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:01.730929Z",
     "iopub.status.busy": "2024-05-06T18:59:01.729404Z",
     "iopub.status.idle": "2024-05-06T18:59:01.754031Z",
     "shell.execute_reply": "2024-05-06T18:59:01.751752Z"
    },
    "id": "lc6MNkgQcakg",
    "outputId": "02da9ed9-ebf3-4e90-b546-c300d7503b65",
    "papermill": {
     "duration": 0.06911,
     "end_time": "2024-05-06T18:59:01.756844",
     "exception": false,
     "start_time": "2024-05-06T18:59:01.687734",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A matrix: 2 × 2 of type dbl</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>Altura</th><th scope=col>Renda</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>Altura</th><td> 0.003353907</td><td>    -7.13963</td></tr>\n",
       "\t<tr><th scope=row>Renda</th><td>-7.139630000</td><td>764668.32632</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A matrix: 2 × 2 of type dbl\n",
       "\\begin{tabular}{r|ll}\n",
       "  & Altura & Renda\\\\\n",
       "\\hline\n",
       "\tAltura &  0.003353907 &     -7.13963\\\\\n",
       "\tRenda & -7.139630000 & 764668.32632\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A matrix: 2 × 2 of type dbl\n",
       "\n",
       "| <!--/--> | Altura | Renda |\n",
       "|---|---|---|\n",
       "| Altura |  0.003353907 |     -7.13963 |\n",
       "| Renda | -7.139630000 | 764668.32632 |\n",
       "\n"
      ],
      "text/plain": [
       "       Altura       Renda       \n",
       "Altura  0.003353907     -7.13963\n",
       "Renda  -7.139630000 764668.32632"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "s_xy <- cov(amostra[c('Altura', 'Renda')])\n",
    "s_xy"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 24,
   "id": "37e49fa6",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:01.840149Z",
     "iopub.status.busy": "2024-05-06T18:59:01.838574Z",
     "iopub.status.idle": "2024-05-06T18:59:01.859288Z",
     "shell.execute_reply": "2024-05-06T18:59:01.857006Z"
    },
    "id": "_8KNoxdhcakj",
    "outputId": "57108a7a-db55-49a3-e554-2b51c94f58b7",
    "papermill": {
     "duration": 0.06528,
     "end_time": "2024-05-06T18:59:01.862091",
     "exception": false,
     "start_time": "2024-05-06T18:59:01.796811",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "-7.13963000000001"
      ],
      "text/latex": [
       "-7.13963000000001"
      ],
      "text/markdown": [
       "-7.13963000000001"
      ],
      "text/plain": [
       "[1] -7.13963"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "s_xy <- s_xy['Altura', 'Renda']\n",
    "s_xy"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "35f1a45f",
   "metadata": {
    "id": "sDybJtCMcakl",
    "papermill": {
     "duration": 0.039884,
     "end_time": "2024-05-06T18:59:01.941833",
     "exception": false,
     "start_time": "2024-05-06T18:59:01.901949",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Obtendo $s_x$ e $s_y$"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 25,
   "id": "c9ccb689",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:02.024862Z",
     "iopub.status.busy": "2024-05-06T18:59:02.023363Z",
     "iopub.status.idle": "2024-05-06T18:59:02.039683Z",
     "shell.execute_reply": "2024-05-06T18:59:02.037995Z"
    },
    "id": "LTEEbMIzcakl",
    "papermill": {
     "duration": 0.06128,
     "end_time": "2024-05-06T18:59:02.042761",
     "exception": false,
     "start_time": "2024-05-06T18:59:01.981481",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "s_x <- sd(amostra$Altura)\n",
    "s_y <- sd(amostra$Renda)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "1c84bc7d",
   "metadata": {
    "id": "VVpQ5QcCcakm",
    "papermill": {
     "duration": 0.040086,
     "end_time": "2024-05-06T18:59:02.122710",
     "exception": false,
     "start_time": "2024-05-06T18:59:02.082624",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Obtendo o coeficiente de correlação $r_{xy}$"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 26,
   "id": "57d7f2bf",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:02.207375Z",
     "iopub.status.busy": "2024-05-06T18:59:02.205812Z",
     "iopub.status.idle": "2024-05-06T18:59:02.225023Z",
     "shell.execute_reply": "2024-05-06T18:59:02.223361Z"
    },
    "id": "TuPWxVgccakq",
    "outputId": "76d8e637-5a9c-4362-f069-fd7ce8a5fe03",
    "papermill": {
     "duration": 0.064805,
     "end_time": "2024-05-06T18:59:02.227376",
     "exception": false,
     "start_time": "2024-05-06T18:59:02.162571",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "-0.140981997305062"
      ],
      "text/latex": [
       "-0.140981997305062"
      ],
      "text/markdown": [
       "-0.140981997305062"
      ],
      "text/plain": [
       "[1] -0.140982"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "r_xy <- s_xy / (s_x * s_y)\n",
    "r_xy"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "a126fb8d",
   "metadata": {
    "id": "miyTUNqpcakr",
    "papermill": {
     "duration": 0.040404,
     "end_time": "2024-05-06T18:59:02.344733",
     "exception": false,
     "start_time": "2024-05-06T18:59:02.304329",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Obtendo uma matriz de correlação"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 27,
   "id": "9cc7a285",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:02.431379Z",
     "iopub.status.busy": "2024-05-06T18:59:02.429347Z",
     "iopub.status.idle": "2024-05-06T18:59:02.453796Z",
     "shell.execute_reply": "2024-05-06T18:59:02.451422Z"
    },
    "id": "SjQUE6wVcakt",
    "outputId": "4ccd6e52-c99a-4d79-d582-17ce1dc07b53",
    "papermill": {
     "duration": 0.071054,
     "end_time": "2024-05-06T18:59:02.456674",
     "exception": false,
     "start_time": "2024-05-06T18:59:02.385620",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A matrix: 2 × 2 of type dbl</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>Altura</th><th scope=col>Renda</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>Altura</th><td> 1.000000</td><td>-0.140982</td></tr>\n",
       "\t<tr><th scope=row>Renda</th><td>-0.140982</td><td> 1.000000</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A matrix: 2 × 2 of type dbl\n",
       "\\begin{tabular}{r|ll}\n",
       "  & Altura & Renda\\\\\n",
       "\\hline\n",
       "\tAltura &  1.000000 & -0.140982\\\\\n",
       "\tRenda & -0.140982 &  1.000000\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A matrix: 2 × 2 of type dbl\n",
       "\n",
       "| <!--/--> | Altura | Renda |\n",
       "|---|---|---|\n",
       "| Altura |  1.000000 | -0.140982 |\n",
       "| Renda | -0.140982 |  1.000000 |\n",
       "\n"
      ],
      "text/plain": [
       "       Altura    Renda    \n",
       "Altura  1.000000 -0.140982\n",
       "Renda  -0.140982  1.000000"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "cor(amostra[c('Altura', 'Renda')])"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 28,
   "id": "2fa9ea2b",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:02.541399Z",
     "iopub.status.busy": "2024-05-06T18:59:02.539692Z",
     "iopub.status.idle": "2024-05-06T18:59:02.560858Z",
     "shell.execute_reply": "2024-05-06T18:59:02.559057Z"
    },
    "id": "r-Iasce4cakv",
    "outputId": "83ae245a-9895-4fec-f37c-627c77250369",
    "papermill": {
     "duration": 0.065946,
     "end_time": "2024-05-06T18:59:02.563063",
     "exception": false,
     "start_time": "2024-05-06T18:59:02.497117",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A matrix: 2 × 2 of type dbl</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>Y</th><th scope=col>X</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>Y</th><td>1.0000000</td><td>0.9848352</td></tr>\n",
       "\t<tr><th scope=row>X</th><td>0.9848352</td><td>1.0000000</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A matrix: 2 × 2 of type dbl\n",
       "\\begin{tabular}{r|ll}\n",
       "  & Y & X\\\\\n",
       "\\hline\n",
       "\tY & 1.0000000 & 0.9848352\\\\\n",
       "\tX & 0.9848352 & 1.0000000\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A matrix: 2 × 2 of type dbl\n",
       "\n",
       "| <!--/--> | Y | X |\n",
       "|---|---|---|\n",
       "| Y | 1.0000000 | 0.9848352 |\n",
       "| X | 0.9848352 | 1.0000000 |\n",
       "\n"
      ],
      "text/plain": [
       "  Y         X        \n",
       "Y 1.0000000 0.9848352\n",
       "X 0.9848352 1.0000000"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "cor(dataset[c('Y', 'X')])"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 29,
   "id": "0519557b",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:02.648081Z",
     "iopub.status.busy": "2024-05-06T18:59:02.646479Z",
     "iopub.status.idle": "2024-05-06T18:59:02.855120Z",
     "shell.execute_reply": "2024-05-06T18:59:02.853342Z"
    },
    "papermill": {
     "duration": 0.25372,
     "end_time": "2024-05-06T18:59:02.857425",
     "exception": false,
     "start_time": "2024-05-06T18:59:02.603705",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "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\nfvWWnQd2f//yuCmuOl361WYKJwAAwJ8EO2M34/UPhBCt+455fORtnVrWr4rd71/94YqjKYP6\np+uLa9Ycim048K9XS7tx0rCSaW9OGZddLKU27zBx5JCzfa4QAAAg4gUrdinRtn0Fnq8WPj50\n1//69Olzw429mv2982SKlnLSR9i3n/lG+3KLt81bfNspf1JSugwY2WXA39k5AACAxQV7Kfb3\nY0c+f3vO7T07Zm39ZOKIgRenxF10WbdJMxf9nG2i+d0AAADQBSt2khrXocfgWUtWHcndt2L+\n1JuuavXLF8vG3XVT1zFbhBDjpr2+4wgNDwAAwCyCFbtSSlTNa/sPf+PDTccO71z4wsSu/2qs\nSNKk/+vXuGZC62v6P78wpC+owDnou+++W758+d69e40OAgBAFVq8eHHHjh0bNmx4++23//77\n7wYmCanYlbInpfUZNvb99duP/bZ1zlOjOl5U7asPF9zT98oqCofI5Xa7b7zxxg4dOnTt2vXS\nSy994oknjE4EAECVWLp06d13371ly5Zff/313Xff7dmzp4Eft1m5Ylcqpm7zwQ8+ueqb3w9u\nXz91bJi+wgsRZPr06atXr9Yv+3y+KVOmrFu3zthIAABUhZdeeqn84p49ez7++GOjwpxhsStV\no/G/hk984axEgZWsX7++wjUAAFjAX79t4tixY4YkEX+/2AGnpH/1U/A1AABYwD//+c/yi7Is\nn7QmnCh2qBIDBgyQpLKPkY6Li+vRo4eBeQAAqCKPPvpoo0aN9MuKoowePfqiiy4yKkwF3xUL\nnJkrr7zyhRdemDFjxv79+5s1a5aRkVGnTh2jQwEAcPYlJSWtXr1606ZNeXl5jRo1atCggYFh\nKHaoKr17977pppvi4+OzsrKMzgIAQBWy2WydOnVyuVwGzq7T8VIsAACARVDsAAAALIJiBwAA\nYBEUOwAAAIug2AEAAFgExQ4AAMAiKHYAAAAWwefYAQb75Zdfpk+fnpeX17p16y5dupT/xg4A\nACqFYgcYaePGjT179nS73friLbfcMnXqVGMjAQAiFy/FAkYaO3ZsaasTQrz++uvff/+9gXkA\nABGNYgcYaffu3Set+eWXXwxJAgCwAIodYKSUlJST1tStW9eQJAAAC6DYAUZ65JFHZLnsbpie\nnt6qVSsD8wAAIhpvngCM1Llz548++uidd97Jzc1t27Zt7969jU4EAIhgFD03kFgAAB3FSURB\n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\nsIj/Bwz5ct95GAznAAAAAElFTkSuQmCC"
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
    "grafico <- amostra[, c('Renda', 'Altura')]\n",
    "\n",
    "ggplot(data = grafico, aes(x = Renda, y = Altura)) + \n",
    "    geom_point(size = 1.5, stroke = 0) + \n",
    "    geom_hline(yintercept = mean(amostra$Altura), color = 'black') + \n",
    "    geom_vline(xintercept = mean(amostra$Renda), color = 'black')"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 30,
   "id": "768abb34",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:02.942754Z",
     "iopub.status.busy": "2024-05-06T18:59:02.941218Z",
     "iopub.status.idle": "2024-05-06T18:59:03.153712Z",
     "shell.execute_reply": "2024-05-06T18:59:03.151819Z"
    },
    "papermill": {
     "duration": 0.257359,
     "end_time": "2024-05-06T18:59:03.156020",
     "exception": false,
     "start_time": "2024-05-06T18:59:02.898661",
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
    "ggplot(data = dataset, aes(x = X, y = Y)) + \n",
    "    geom_point(size = 1.5, stroke = 0) + \n",
    "    geom_hline(yintercept = mean(dataset$Y), color = 'black') + \n",
    "    geom_vline(xintercept = mean(dataset$X), color = 'black')"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "2a1e0044",
   "metadata": {
    "id": "HSF3lXxzcak3",
    "papermill": {
     "duration": 0.041592,
     "end_time": "2024-05-06T18:59:03.240141",
     "exception": false,
     "start_time": "2024-05-06T18:59:03.198549",
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
   "id": "5265d81d",
   "metadata": {
    "id": "glWc43l2hLnL",
    "papermill": {
     "duration": 0.042489,
     "end_time": "2024-05-06T18:59:03.323965",
     "exception": false,
     "start_time": "2024-05-06T18:59:03.281476",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# <font color=green>4 REGRESSÃO LINEAR</font>\n",
    "***"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "f95d1993",
   "metadata": {
    "id": "T0nLJKtLcak8",
    "papermill": {
     "duration": 0.041384,
     "end_time": "2024-05-06T18:59:03.406539",
     "exception": false,
     "start_time": "2024-05-06T18:59:03.365155",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "A análise de regressão diz respeito ao estudo da dependência de uma variável (a variável dependente) em relação a uma ou mais variáveis, as variáveis explicativas ou independentes, visando estimar e/ou prever o valor médio da primeira em termos dos valores conhecidos ou fixados das segundas.\n",
    "\n",
    "#### Terminologia\n",
    "\n",
    "> A variável que é prevista é conhecida como variável dependente (*Y*).\n",
    "\n",
    "> A variável utilizada para prever o valor da variável dependente é conhecida como variável independente (*X*).\n",
    "\n",
    "Em nosso treinamento vamos abordar o tipo mais simples de análise de regressão que considera uma variável dependente e apenas uma variável independente onde a relação entre as variáveis se aproxima de uma linha reta."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "61ff7d5b",
   "metadata": {
    "id": "jIXc6LA7cak9",
    "papermill": {
     "duration": 0.041175,
     "end_time": "2024-05-06T18:59:03.489519",
     "exception": false,
     "start_time": "2024-05-06T18:59:03.448344",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## <font color=green>4.1 Regressão linear simples</font>\n",
    "***"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "684bc775",
   "metadata": {
    "id": "bIhWKDuK75k2",
    "papermill": {
     "duration": 0.040981,
     "end_time": "2024-05-06T18:59:03.571600",
     "exception": false,
     "start_time": "2024-05-06T18:59:03.530619",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Função consumo\n",
    "\n",
    "Um economista famoso do passado concluiu em um de seus estudos que os indivíduos tendem a aumentar o seu consumo conforme sua renda aumenta. Logicamente esta teoria ganhou um pouco mais de complexidade, mas vamos utilizar sua forma mais simples para entender o procedimento de análise de regressão com a seguninte formulação:\n",
    "\n",
    "# $$Y_i = \\beta_1 + \\beta_2X_i$$\n",
    "\n",
    "Onde\n",
    "\n",
    "- $Y_i$ é o gasto das famílias ou consumo das famílias\n",
    "\n",
    "- $X_i$ é a renda disponível\n",
    "\n",
    "- $\\beta_1$ é conhecido como intercepto (no modelo teórico acima é conhecido como consumo autônomo, ou seja, o consumo quando o rendimento é zero)\n",
    "\n",
    "- $\\beta_2$ é o coefiente angular (no modelo teórico é a propensão marginal a consumir)\n",
    "\n",
    "Em uma análise de regressão linear simples, o interesse está em estimar a função de regressão populacional como a apresentada acima, ou seja, estimar os valores dos parâmetros $\\beta_1$ e $\\beta_2$ com base nas observações de $Y$ e $X$."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "844710bb",
   "metadata": {
    "id": "1kkZ2NxPcak-",
    "papermill": {
     "duration": 0.041125,
     "end_time": "2024-05-06T18:59:03.653861",
     "exception": false,
     "start_time": "2024-05-06T18:59:03.612736",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Carregando o dataset"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 31,
   "id": "74531e9d",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:03.739514Z",
     "iopub.status.busy": "2024-05-06T18:59:03.737921Z",
     "iopub.status.idle": "2024-05-06T18:59:03.751988Z",
     "shell.execute_reply": "2024-05-06T18:59:03.750322Z"
    },
    "id": "-um71iXqcak-",
    "papermill": {
     "duration": 0.059461,
     "end_time": "2024-05-06T18:59:03.754381",
     "exception": false,
     "start_time": "2024-05-06T18:59:03.694920",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "dataset <- data.frame(\n",
    "    Y = c(3011, 1305, 1879, 2654, 2849, 1068, 2892, 2543, 3074, 849, 2184, 2943, 1357, 2755, 2163, 3099, 1600, 353, 1778, 740, 2129, 3302, 2412, 2683, 2515, 2395, 2292, 1000, 600, 1864, 3027, 1978, 2791, 1982, 900, 1964, 1247, 3067, 700, 1500, 3110, 2644, 1378, 2601, 501, 1292, 2125, 1431, 2260, 1770),\n",
    "    X = c(9714, 3728, 6062, 8845, 8378, 3338, 8507, 7947, 9915, 1632, 6825, 8918, 4100, 9184, 6180, 9997, 4500, 1069, 5925, 2466, 6083, 9712, 7780, 8383, 7185, 7483, 7640, 2100, 2000, 6012, 8902, 5345, 8210, 5662, 2700, 6546, 2900, 9894, 1500, 5000, 8885, 8813, 3446, 7881, 1164, 3401, 6641, 3329, 6648, 4800)\n",
    ")"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 32,
   "id": "ed7e5b26",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:03.843913Z",
     "iopub.status.busy": "2024-05-06T18:59:03.842174Z",
     "iopub.status.idle": "2024-05-06T18:59:03.866269Z",
     "shell.execute_reply": "2024-05-06T18:59:03.864460Z"
    },
    "id": "eVisdrGdcak_",
    "outputId": "4987998b-7679-42f3-dc9b-28b3b1fa7e24",
    "papermill": {
     "duration": 0.071764,
     "end_time": "2024-05-06T18:59:03.868559",
     "exception": false,
     "start_time": "2024-05-06T18:59:03.796795",
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
       "\t<tr><th></th><th scope=col>Y</th><th scope=col>X</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>1</th><td>3011</td><td>9714</td></tr>\n",
       "\t<tr><th scope=row>2</th><td>1305</td><td>3728</td></tr>\n",
       "\t<tr><th scope=row>3</th><td>1879</td><td>6062</td></tr>\n",
       "\t<tr><th scope=row>4</th><td>2654</td><td>8845</td></tr>\n",
       "\t<tr><th scope=row>5</th><td>2849</td><td>8378</td></tr>\n",
       "\t<tr><th scope=row>6</th><td>1068</td><td>3338</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 6 × 2\n",
       "\\begin{tabular}{r|ll}\n",
       "  & Y & X\\\\\n",
       "  & <dbl> & <dbl>\\\\\n",
       "\\hline\n",
       "\t1 & 3011 & 9714\\\\\n",
       "\t2 & 1305 & 3728\\\\\n",
       "\t3 & 1879 & 6062\\\\\n",
       "\t4 & 2654 & 8845\\\\\n",
       "\t5 & 2849 & 8378\\\\\n",
       "\t6 & 1068 & 3338\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 6 × 2\n",
       "\n",
       "| <!--/--> | Y &lt;dbl&gt; | X &lt;dbl&gt; |\n",
       "|---|---|---|\n",
       "| 1 | 3011 | 9714 |\n",
       "| 2 | 1305 | 3728 |\n",
       "| 3 | 1879 | 6062 |\n",
       "| 4 | 2654 | 8845 |\n",
       "| 5 | 2849 | 8378 |\n",
       "| 6 | 1068 | 3338 |\n",
       "\n"
      ],
      "text/plain": [
       "  Y    X   \n",
       "1 3011 9714\n",
       "2 1305 3728\n",
       "3 1879 6062\n",
       "4 2654 8845\n",
       "5 2849 8378\n",
       "6 1068 3338"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "head(dataset)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "0d6d0200",
   "metadata": {
    "id": "FnwGB3f1calB",
    "papermill": {
     "duration": 0.042576,
     "end_time": "2024-05-06T18:59:03.953376",
     "exception": false,
     "start_time": "2024-05-06T18:59:03.910800",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Identificando a relação entre as variáveis\n",
    "\n",
    "Plota a reta de regressão entre duas variáveis juntamente com a dispersão entre elas."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 33,
   "id": "533c3e43",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:04.041217Z",
     "iopub.status.busy": "2024-05-06T18:59:04.039465Z",
     "iopub.status.idle": "2024-05-06T18:59:04.343307Z",
     "shell.execute_reply": "2024-05-06T18:59:04.341438Z"
    },
    "id": "DI16LyC7calB",
    "outputId": "5576d35b-6e22-4c05-d754-6285edeb9436",
    "papermill": {
     "duration": 0.350476,
     "end_time": "2024-05-06T18:59:04.345606",
     "exception": false,
     "start_time": "2024-05-06T18:59:03.995130",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "\u001b[1m\u001b[22m`geom_smooth()` using formula = 'y ~ x'\n"
     ]
    },
    {
     "data": {
      "image/png": "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\nKn+dnZycvEJrIYTXpc/g2Q+9/GI6rcvfTpqi8f1suVb4OADQ+nBTHQDaniRJ4jpSYvQwSqFm\n3SvXDVp807X2RbdMHB5jO7Pi1VdKzf2+vS2N+wzylIVvTF76+POjr9c+NWNEjwu/b/jnh6cH\nKy7N5JMmzIoTLv309kcHPHVLjKN675qPlu3VEkK+376/y/Wj4gW8xpyH+yTqfg+5a79aNHpm\n1aKZaQmS0t/WP3e8bvCSB5v0PTS+ny3XCh8HANpAm6RsAEDHxGbFfqy1BLSfWDGaEJL76qUM\n1t2fPD86q6tMJIzrlD7pzqcPVNp8e96tkScP3+h76bIWE0JuPFLFMIzXVffWY7N6atRCoSxt\nUN63x/WPd1b4smLLt36YN6AXLZF26zv4zuf+pzeXjuuRIBArfqixMVfiOA/3SS7u/mTqqExa\nKuILJakZwx7512p3sC+BzV3dobcH/Yq43yLg4++Y3l0WP9P38sKuyYSQM/bGZsWG5eMAQLtC\nMUxHXrwdAAAAIHpgjh0AAABAlEBgBwAAABAlENgBAAAARAkEdgAAAABRAoEdAAAAQJRAYAcA\nAAAQJRDYAQAAAESJ/wfdl6eozxRQzAAAAABJRU5ErkJggg=="
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
    "ggplot(data = dataset, aes(x = X, y = Y)) + \n",
    "    geom_point(size = 1.5, stroke = 0) + \n",
    "    geom_smooth(method = lm) +\n",
    "    xlab(\"Renda das Famílias\") + \n",
    "    ylab(\"Gasto das Famílias\") + \n",
    "    ggtitle('Reta de Regressão - Gasto X Renda') +\n",
    "    theme(\n",
    "        plot.title=element_text(size = 12, hjust = 0.5),\n",
    "        axis.title.y=element_text(size = 10, vjust = +0.2),\n",
    "        axis.title.x=element_text(size = 10, vjust = -0.2),\n",
    "        axis.text.y=element_text(size = 10),\n",
    "        axis.text.x=element_text(size = 10),\n",
    "    )"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "8741b0eb",
   "metadata": {
    "id": "5_PIOCAv75k9",
    "papermill": {
     "duration": 0.043887,
     "end_time": "2024-05-06T18:59:04.433692",
     "exception": false,
     "start_time": "2024-05-06T18:59:04.389805",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Matriz de correlação"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 34,
   "id": "2689fb43",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:04.526251Z",
     "iopub.status.busy": "2024-05-06T18:59:04.524581Z",
     "iopub.status.idle": "2024-05-06T18:59:04.545526Z",
     "shell.execute_reply": "2024-05-06T18:59:04.543807Z"
    },
    "id": "R7Zr6nuy75k-",
    "outputId": "4fa8db39-0b93-42c4-8c61-315102699102",
    "papermill": {
     "duration": 0.070515,
     "end_time": "2024-05-06T18:59:04.547801",
     "exception": false,
     "start_time": "2024-05-06T18:59:04.477286",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A matrix: 2 × 2 of type dbl</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>Y</th><th scope=col>X</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>Y</th><td>1.0000000</td><td>0.9848352</td></tr>\n",
       "\t<tr><th scope=row>X</th><td>0.9848352</td><td>1.0000000</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A matrix: 2 × 2 of type dbl\n",
       "\\begin{tabular}{r|ll}\n",
       "  & Y & X\\\\\n",
       "\\hline\n",
       "\tY & 1.0000000 & 0.9848352\\\\\n",
       "\tX & 0.9848352 & 1.0000000\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A matrix: 2 × 2 of type dbl\n",
       "\n",
       "| <!--/--> | Y | X |\n",
       "|---|---|---|\n",
       "| Y | 1.0000000 | 0.9848352 |\n",
       "| X | 0.9848352 | 1.0000000 |\n",
       "\n"
      ],
      "text/plain": [
       "  Y         X        \n",
       "Y 1.0000000 0.9848352\n",
       "X 0.9848352 1.0000000"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "cor(dataset)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "42fa08e5",
   "metadata": {
    "id": "lzD2VpXccak9",
    "papermill": {
     "duration": 0.043128,
     "end_time": "2024-05-06T18:59:04.633733",
     "exception": false,
     "start_time": "2024-05-06T18:59:04.590605",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Função de regressão populacional\n",
    "\n",
    "A equação formulada acima é conhecida como **função de regressão populacional (FRP)** e em alguns livros é também representada da seguinte forma:\n",
    "\n",
    "# $$E(Y|X_i) = \\beta_1 + \\beta_2X_i$$\n",
    "\n",
    "Ela afirma que o valor esperado da distribuição de $Y$, dado $X_i$, tem uma relação funcional com $X_i$, isto é, a resposta média de $Y$ varia com $X$. Os coeficientes $\\beta_1$ e $\\beta_2$ são conhecidos como coeficientes de regressão e também como intercepto e coeficiente angular, respectivamente.\n",
    "\n",
    "<img src=\"https://caelum-online-public.s3.amazonaws.com/1273-estatistica-parte4/01/img027.png\" width=50%>\n",
    "\n",
    "O gráfico de dispersão mais abaixo deixa claro que com o aumento da renda familiar, em média, as despesas de consumo das famílias aumentam, mas não no mesmo nível. O que podemos dizer é que para um nível de renda $X_i$ as despesas médias de consumo de uma\n",
    "família agrupam-se em torno do consumo médio de todas as famílias deste nível $X_i$, isto é, em torno de sua esperança condicional $E(Y|X_i)$. Portanto, podemos expressar o desvio individual de $Y_i$ em torno de seu valor esperado da seguinte forma:\n",
    "\n",
    "# $$u_i = Y_i - E(Y|X_i)$$\n",
    "\n",
    "ou\n",
    "\n",
    "# $$Y_i = E(Y|X_i) + u_i$$\n",
    "\n",
    "onde o desvio $u_i$ é uma variável aleatória não-observável que assume valores positivos ou negativos. Esta variável é também conhecida como termo de erro estocástico.\n",
    "\n",
    "Observe que a partir da elaboração acima podemos representar a FRP em sua forma estocástica da seguinte maneira:\n",
    "\n",
    "# $$Y_i = \\beta_1 + \\beta_2X_i + u_i$$"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "9092183d",
   "metadata": {
    "id": "yOR8pKHkcak9",
    "papermill": {
     "duration": 0.042877,
     "end_time": "2024-05-06T18:59:04.719365",
     "exception": false,
     "start_time": "2024-05-06T18:59:04.676488",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## <font color=green>4.2 O método de mínimos quadrados</font>\n",
    "***"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "6f223a39",
   "metadata": {
    "id": "M-iKUvPlcak-",
    "papermill": {
     "duration": 0.044112,
     "end_time": "2024-05-06T18:59:04.807143",
     "exception": false,
     "start_time": "2024-05-06T18:59:04.763031",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Considere a seguinte **função de regressão da população (FRP)** para duas variáveis:\n",
    "\n",
    "# $$Y_i = \\beta_1 + \\beta_2X_i + u_i$$\n",
    "\n",
    "Como a **FRP** não pode ser obtida de forma direta, precisamos estimá-la através da **função de regressão amostral (FRA)**.\n",
    "\n",
    "# $$Y_i = \\hat{\\beta}_1 + \\hat{\\beta}_2X_i + \\hat{u}_i$$\n",
    "# $$Y_i = \\hat{Y}_i + \\hat{u}_i$$\n",
    "\n",
    "onde $\\hat{Y}_i$ é o valor estimado de $Y_i$.\n",
    "\n",
    "A partir da equação acima podemos expressar o erro da seguinte maneira:\n",
    "\n",
    "# $$\\hat{u}_i = Y_i - \\hat{Y}_i$$\n",
    "# $$\\hat{u}_i = Y_i - \\hat{\\beta}_1 - \\hat{\\beta}_2X_i$$\n",
    "\n",
    "A ideia é determinar **FRA** de forma que fique o mais próximo possível do valor observado de $Y$. Intuitivamente uma forma interessante de fazer isso seria determinar **FRA** de maneira que a soma dos resíduos seja a menor possível.\n",
    "\n",
    "# $$\\sum\\hat{u}_i = \\sum{(Y_i - \\hat{Y}_i)}$$\n",
    "\n",
    "Avaliando a figura abaixo se pode verificar que talvez o critério de minimizar a soma dos resíduos não seja a melhor abordagem para solucionar o problema.\n",
    "\n",
    "<img src=\"https://caelum-online-public.s3.amazonaws.com/1273-estatistica-parte4/01/img015.png\" width=50%>\n",
    "\n",
    "O critério de minimização da soma dos resíduos assume que todos os resíduos têm o mesmo peso no somatório, o que nem sempre se comprova. Em nosso exemplo os resíduos $\\hat{u}_1$ e $\\hat{u}_4$ encontram-se bem mais afastados da **FRA** que $\\hat{u}_2$ e $\\hat{u}_3$. Isso acarreta na possibilidade de que a soma dos $\\hat{u}_i$'s seja bastante pequena e até mesmo nula, mesmo que os resíduos estejam muito dispersos em relação a reta de regressão.\n",
    "\n",
    "Para evitar tal problema adotou-se o critério de minimização da soma dos quadrados dos resíduos que é conhecido como **Método de Mínimos Quadrados**.\n",
    "\n",
    "# $$\\sum\\hat{u}_i^2 = \\sum{(Y_i - \\hat{Y}_i)^2}$$\n",
    "# $$\\sum\\hat{u}_i^2 = \\sum{(Y_i - \\hat{\\beta}_1 - \\hat{\\beta}_2X_i)^2}$$\n",
    "\n",
    "Após um procedimento de diferenciação, algumas simplificações e manipulações algébricas obtemos os **estimadores de mínimos quadrados**.\n",
    "\n",
    "# $$\n",
    "\\begin{equation}\n",
    "\\boxed{\\hat{\\beta}_2 = \\frac{n\\sum{X_iY_i} - \\sum{X_i}\\sum{Y_i}}{n\\sum{X_i^2} - (\\sum{X_i})^2}}\n",
    "\\end{equation}\n",
    "$$\n",
    "\n",
    "# $$\n",
    "\\begin{equation}\n",
    "\\boxed{\n",
    "\\begin{eqnarray}\n",
    "\\hat{\\beta}_1 &=& \\frac{\\sum{X_i^2}\\sum{Y_i} - \\sum{X_i}\\sum{X_iY_i}}{n\\sum{X_i^2} - (\\sum{X_i})^2}\\\\\n",
    "&=& \\bar{Y} - \\hat{\\beta}_2\\bar{X}\n",
    "\\end{eqnarray}\n",
    "}\n",
    "\\end{equation}\n",
    "$$"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "cab16711",
   "metadata": {
    "id": "bIsppET0cak-",
    "papermill": {
     "duration": 0.04323,
     "end_time": "2024-05-06T18:59:04.893434",
     "exception": false,
     "start_time": "2024-05-06T18:59:04.850204",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## <font color=green>4.3 Estimadores de mínimos quadrados ordinários</font>\n",
    "***"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "972d8727",
   "metadata": {
    "id": "HTFJyCNCcalE",
    "papermill": {
     "duration": 0.043005,
     "end_time": "2024-05-06T18:59:04.979260",
     "exception": false,
     "start_time": "2024-05-06T18:59:04.936255",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Obter $n$"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 35,
   "id": "9ecaaa36",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:05.068667Z",
     "iopub.status.busy": "2024-05-06T18:59:05.066961Z",
     "iopub.status.idle": "2024-05-06T18:59:05.085975Z",
     "shell.execute_reply": "2024-05-06T18:59:05.084235Z"
    },
    "id": "ZcHOhSNRcalE",
    "outputId": "8a21ac4b-34d6-4139-cef4-6a3a79dd240f",
    "papermill": {
     "duration": 0.066178,
     "end_time": "2024-05-06T18:59:05.088489",
     "exception": false,
     "start_time": "2024-05-06T18:59:05.022311",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "50"
      ],
      "text/latex": [
       "50"
      ],
      "text/markdown": [
       "50"
      ],
      "text/plain": [
       "[1] 50"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "n <- nrow(dataset)\n",
    "n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "ef781958",
   "metadata": {
    "id": "2R8QzULvcalF",
    "papermill": {
     "duration": 0.044128,
     "end_time": "2024-05-06T18:59:05.176012",
     "exception": false,
     "start_time": "2024-05-06T18:59:05.131884",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Obter $\\sum{Y}$"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 36,
   "id": "f9847e14",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:05.266642Z",
     "iopub.status.busy": "2024-05-06T18:59:05.265038Z",
     "iopub.status.idle": "2024-05-06T18:59:05.287650Z",
     "shell.execute_reply": "2024-05-06T18:59:05.285236Z"
    },
    "id": "wfY4FHLgcalG",
    "outputId": "7034961e-e69c-424b-8a81-ef3443856811",
    "papermill": {
     "duration": 0.070913,
     "end_time": "2024-05-06T18:59:05.290561",
     "exception": false,
     "start_time": "2024-05-06T18:59:05.219648",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "100556"
      ],
      "text/latex": [
       "100556"
      ],
      "text/markdown": [
       "100556"
      ],
      "text/plain": [
       "[1] 100556"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "SOMA_Y <- sum(dataset$Y)\n",
    "SOMA_Y"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "94f331ee",
   "metadata": {
    "id": "dpWo8F-fcalI",
    "papermill": {
     "duration": 0.042775,
     "end_time": "2024-05-06T18:59:05.377794",
     "exception": false,
     "start_time": "2024-05-06T18:59:05.335019",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Obter $\\sum{X}$"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 37,
   "id": "318ff000",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:05.468274Z",
     "iopub.status.busy": "2024-05-06T18:59:05.466508Z",
     "iopub.status.idle": "2024-05-06T18:59:05.487476Z",
     "shell.execute_reply": "2024-05-06T18:59:05.485240Z"
    },
    "id": "vgRIhNl9calI",
    "outputId": "58ef8ded-cbde-440a-a2ed-4f6c1e1b49a3",
    "papermill": {
     "duration": 0.069428,
     "end_time": "2024-05-06T18:59:05.490132",
     "exception": false,
     "start_time": "2024-05-06T18:59:05.420704",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "303275"
      ],
      "text/latex": [
       "303275"
      ],
      "text/markdown": [
       "303275"
      ],
      "text/plain": [
       "[1] 303275"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "SOMA_X <- sum(dataset$X)\n",
    "SOMA_X"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "478beb1c",
   "metadata": {
    "id": "ZOrXXyygcalJ",
    "papermill": {
     "duration": 0.042762,
     "end_time": "2024-05-06T18:59:05.575910",
     "exception": false,
     "start_time": "2024-05-06T18:59:05.533148",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Obter $\\sum{X^2}$"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 38,
   "id": "df20a9b6",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:05.698127Z",
     "iopub.status.busy": "2024-05-06T18:59:05.696452Z",
     "iopub.status.idle": "2024-05-06T18:59:05.711372Z",
     "shell.execute_reply": "2024-05-06T18:59:05.709528Z"
    },
    "id": "boXBQUIJcalK",
    "outputId": "4c12972c-6ba0-43e7-b6f2-92692723a752",
    "papermill": {
     "duration": 0.09492,
     "end_time": "2024-05-06T18:59:05.714235",
     "exception": false,
     "start_time": "2024-05-06T18:59:05.619315",
     "status": "completed"
    },
    "scrolled": true,
    "tags": []
   },
   "outputs": [],
   "source": [
    "dataset$X2 <- dataset$X ** 2"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 39,
   "id": "530730bb",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:05.804378Z",
     "iopub.status.busy": "2024-05-06T18:59:05.802637Z",
     "iopub.status.idle": "2024-05-06T18:59:05.823747Z",
     "shell.execute_reply": "2024-05-06T18:59:05.821420Z"
    },
    "id": "ce-I43picalL",
    "outputId": "da5633b5-6ec6-4b44-e4cf-c7dabe6f351d",
    "papermill": {
     "duration": 0.069172,
     "end_time": "2024-05-06T18:59:05.826548",
     "exception": false,
     "start_time": "2024-05-06T18:59:05.757376",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "2198628939"
      ],
      "text/latex": [
       "2198628939"
      ],
      "text/markdown": [
       "2198628939"
      ],
      "text/plain": [
       "[1] 2198628939"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "SOMA_X2 <- sum(dataset$X2)\n",
    "SOMA_X2"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 40,
   "id": "9f5ac113",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:05.916917Z",
     "iopub.status.busy": "2024-05-06T18:59:05.915158Z",
     "iopub.status.idle": "2024-05-06T18:59:05.938492Z",
     "shell.execute_reply": "2024-05-06T18:59:05.936087Z"
    },
    "papermill": {
     "duration": 0.071661,
     "end_time": "2024-05-06T18:59:05.941327",
     "exception": false,
     "start_time": "2024-05-06T18:59:05.869666",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "2198628939"
      ],
      "text/latex": [
       "2198628939"
      ],
      "text/markdown": [
       "2198628939"
      ],
      "text/plain": [
       "[1] 2198628939"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "SOMA_X2 <- sum(apply(dataset, 1, function(x) x['X'] ** 2))\n",
    "SOMA_X2"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 41,
   "id": "60ad109f",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:06.032032Z",
     "iopub.status.busy": "2024-05-06T18:59:06.030356Z",
     "iopub.status.idle": "2024-05-06T18:59:06.073835Z",
     "shell.execute_reply": "2024-05-06T18:59:06.071459Z"
    },
    "papermill": {
     "duration": 0.091806,
     "end_time": "2024-05-06T18:59:06.076607",
     "exception": false,
     "start_time": "2024-05-06T18:59:05.984801",
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
       "<caption>A data.frame: 50 × 2</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>Y</th><th scope=col>X</th></tr>\n",
       "\t<tr><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>3011</td><td>9714</td></tr>\n",
       "\t<tr><td>1305</td><td>3728</td></tr>\n",
       "\t<tr><td>1879</td><td>6062</td></tr>\n",
       "\t<tr><td>2654</td><td>8845</td></tr>\n",
       "\t<tr><td>2849</td><td>8378</td></tr>\n",
       "\t<tr><td>1068</td><td>3338</td></tr>\n",
       "\t<tr><td>2892</td><td>8507</td></tr>\n",
       "\t<tr><td>2543</td><td>7947</td></tr>\n",
       "\t<tr><td>3074</td><td>9915</td></tr>\n",
       "\t<tr><td> 849</td><td>1632</td></tr>\n",
       "\t<tr><td>2184</td><td>6825</td></tr>\n",
       "\t<tr><td>2943</td><td>8918</td></tr>\n",
       "\t<tr><td>1357</td><td>4100</td></tr>\n",
       "\t<tr><td>2755</td><td>9184</td></tr>\n",
       "\t<tr><td>2163</td><td>6180</td></tr>\n",
       "\t<tr><td>3099</td><td>9997</td></tr>\n",
       "\t<tr><td>1600</td><td>4500</td></tr>\n",
       "\t<tr><td> 353</td><td>1069</td></tr>\n",
       "\t<tr><td>1778</td><td>5925</td></tr>\n",
       "\t<tr><td> 740</td><td>2466</td></tr>\n",
       "\t<tr><td>2129</td><td>6083</td></tr>\n",
       "\t<tr><td>3302</td><td>9712</td></tr>\n",
       "\t<tr><td>2412</td><td>7780</td></tr>\n",
       "\t<tr><td>2683</td><td>8383</td></tr>\n",
       "\t<tr><td>2515</td><td>7185</td></tr>\n",
       "\t<tr><td>2395</td><td>7483</td></tr>\n",
       "\t<tr><td>2292</td><td>7640</td></tr>\n",
       "\t<tr><td>1000</td><td>2100</td></tr>\n",
       "\t<tr><td> 600</td><td>2000</td></tr>\n",
       "\t<tr><td>1864</td><td>6012</td></tr>\n",
       "\t<tr><td>3027</td><td>8902</td></tr>\n",
       "\t<tr><td>1978</td><td>5345</td></tr>\n",
       "\t<tr><td>2791</td><td>8210</td></tr>\n",
       "\t<tr><td>1982</td><td>5662</td></tr>\n",
       "\t<tr><td> 900</td><td>2700</td></tr>\n",
       "\t<tr><td>1964</td><td>6546</td></tr>\n",
       "\t<tr><td>1247</td><td>2900</td></tr>\n",
       "\t<tr><td>3067</td><td>9894</td></tr>\n",
       "\t<tr><td> 700</td><td>1500</td></tr>\n",
       "\t<tr><td>1500</td><td>5000</td></tr>\n",
       "\t<tr><td>3110</td><td>8885</td></tr>\n",
       "\t<tr><td>2644</td><td>8813</td></tr>\n",
       "\t<tr><td>1378</td><td>3446</td></tr>\n",
       "\t<tr><td>2601</td><td>7881</td></tr>\n",
       "\t<tr><td> 501</td><td>1164</td></tr>\n",
       "\t<tr><td>1292</td><td>3401</td></tr>\n",
       "\t<tr><td>2125</td><td>6641</td></tr>\n",
       "\t<tr><td>1431</td><td>3329</td></tr>\n",
       "\t<tr><td>2260</td><td>6648</td></tr>\n",
       "\t<tr><td>1770</td><td>4800</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 50 × 2\n",
       "\\begin{tabular}{ll}\n",
       " Y & X\\\\\n",
       " <dbl> & <dbl>\\\\\n",
       "\\hline\n",
       "\t 3011 & 9714\\\\\n",
       "\t 1305 & 3728\\\\\n",
       "\t 1879 & 6062\\\\\n",
       "\t 2654 & 8845\\\\\n",
       "\t 2849 & 8378\\\\\n",
       "\t 1068 & 3338\\\\\n",
       "\t 2892 & 8507\\\\\n",
       "\t 2543 & 7947\\\\\n",
       "\t 3074 & 9915\\\\\n",
       "\t  849 & 1632\\\\\n",
       "\t 2184 & 6825\\\\\n",
       "\t 2943 & 8918\\\\\n",
       "\t 1357 & 4100\\\\\n",
       "\t 2755 & 9184\\\\\n",
       "\t 2163 & 6180\\\\\n",
       "\t 3099 & 9997\\\\\n",
       "\t 1600 & 4500\\\\\n",
       "\t  353 & 1069\\\\\n",
       "\t 1778 & 5925\\\\\n",
       "\t  740 & 2466\\\\\n",
       "\t 2129 & 6083\\\\\n",
       "\t 3302 & 9712\\\\\n",
       "\t 2412 & 7780\\\\\n",
       "\t 2683 & 8383\\\\\n",
       "\t 2515 & 7185\\\\\n",
       "\t 2395 & 7483\\\\\n",
       "\t 2292 & 7640\\\\\n",
       "\t 1000 & 2100\\\\\n",
       "\t  600 & 2000\\\\\n",
       "\t 1864 & 6012\\\\\n",
       "\t 3027 & 8902\\\\\n",
       "\t 1978 & 5345\\\\\n",
       "\t 2791 & 8210\\\\\n",
       "\t 1982 & 5662\\\\\n",
       "\t  900 & 2700\\\\\n",
       "\t 1964 & 6546\\\\\n",
       "\t 1247 & 2900\\\\\n",
       "\t 3067 & 9894\\\\\n",
       "\t  700 & 1500\\\\\n",
       "\t 1500 & 5000\\\\\n",
       "\t 3110 & 8885\\\\\n",
       "\t 2644 & 8813\\\\\n",
       "\t 1378 & 3446\\\\\n",
       "\t 2601 & 7881\\\\\n",
       "\t  501 & 1164\\\\\n",
       "\t 1292 & 3401\\\\\n",
       "\t 2125 & 6641\\\\\n",
       "\t 1431 & 3329\\\\\n",
       "\t 2260 & 6648\\\\\n",
       "\t 1770 & 4800\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 50 × 2\n",
       "\n",
       "| Y &lt;dbl&gt; | X &lt;dbl&gt; |\n",
       "|---|---|\n",
       "| 3011 | 9714 |\n",
       "| 1305 | 3728 |\n",
       "| 1879 | 6062 |\n",
       "| 2654 | 8845 |\n",
       "| 2849 | 8378 |\n",
       "| 1068 | 3338 |\n",
       "| 2892 | 8507 |\n",
       "| 2543 | 7947 |\n",
       "| 3074 | 9915 |\n",
       "|  849 | 1632 |\n",
       "| 2184 | 6825 |\n",
       "| 2943 | 8918 |\n",
       "| 1357 | 4100 |\n",
       "| 2755 | 9184 |\n",
       "| 2163 | 6180 |\n",
       "| 3099 | 9997 |\n",
       "| 1600 | 4500 |\n",
       "|  353 | 1069 |\n",
       "| 1778 | 5925 |\n",
       "|  740 | 2466 |\n",
       "| 2129 | 6083 |\n",
       "| 3302 | 9712 |\n",
       "| 2412 | 7780 |\n",
       "| 2683 | 8383 |\n",
       "| 2515 | 7185 |\n",
       "| 2395 | 7483 |\n",
       "| 2292 | 7640 |\n",
       "| 1000 | 2100 |\n",
       "|  600 | 2000 |\n",
       "| 1864 | 6012 |\n",
       "| 3027 | 8902 |\n",
       "| 1978 | 5345 |\n",
       "| 2791 | 8210 |\n",
       "| 1982 | 5662 |\n",
       "|  900 | 2700 |\n",
       "| 1964 | 6546 |\n",
       "| 1247 | 2900 |\n",
       "| 3067 | 9894 |\n",
       "|  700 | 1500 |\n",
       "| 1500 | 5000 |\n",
       "| 3110 | 8885 |\n",
       "| 2644 | 8813 |\n",
       "| 1378 | 3446 |\n",
       "| 2601 | 7881 |\n",
       "|  501 | 1164 |\n",
       "| 1292 | 3401 |\n",
       "| 2125 | 6641 |\n",
       "| 1431 | 3329 |\n",
       "| 2260 | 6648 |\n",
       "| 1770 | 4800 |\n",
       "\n"
      ],
      "text/plain": [
       "   Y    X   \n",
       "1  3011 9714\n",
       "2  1305 3728\n",
       "3  1879 6062\n",
       "4  2654 8845\n",
       "5  2849 8378\n",
       "6  1068 3338\n",
       "7  2892 8507\n",
       "8  2543 7947\n",
       "9  3074 9915\n",
       "10  849 1632\n",
       "11 2184 6825\n",
       "12 2943 8918\n",
       "13 1357 4100\n",
       "14 2755 9184\n",
       "15 2163 6180\n",
       "16 3099 9997\n",
       "17 1600 4500\n",
       "18  353 1069\n",
       "19 1778 5925\n",
       "20  740 2466\n",
       "21 2129 6083\n",
       "22 3302 9712\n",
       "23 2412 7780\n",
       "24 2683 8383\n",
       "25 2515 7185\n",
       "26 2395 7483\n",
       "27 2292 7640\n",
       "28 1000 2100\n",
       "29  600 2000\n",
       "30 1864 6012\n",
       "31 3027 8902\n",
       "32 1978 5345\n",
       "33 2791 8210\n",
       "34 1982 5662\n",
       "35  900 2700\n",
       "36 1964 6546\n",
       "37 1247 2900\n",
       "38 3067 9894\n",
       "39  700 1500\n",
       "40 1500 5000\n",
       "41 3110 8885\n",
       "42 2644 8813\n",
       "43 1378 3446\n",
       "44 2601 7881\n",
       "45  501 1164\n",
       "46 1292 3401\n",
       "47 2125 6641\n",
       "48 1431 3329\n",
       "49 2260 6648\n",
       "50 1770 4800"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "dataset$X2 <- NULL\n",
    "dataset"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "010be55b",
   "metadata": {
    "id": "ls1COzpxcalN",
    "papermill": {
     "duration": 0.045084,
     "end_time": "2024-05-06T18:59:06.165553",
     "exception": false,
     "start_time": "2024-05-06T18:59:06.120469",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Obter $\\sum{Y^2}$"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 42,
   "id": "8fa5431c",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:06.260458Z",
     "iopub.status.busy": "2024-05-06T18:59:06.258675Z",
     "iopub.status.idle": "2024-05-06T18:59:06.282175Z",
     "shell.execute_reply": "2024-05-06T18:59:06.279823Z"
    },
    "id": "gYc_poUmcalN",
    "outputId": "b8a0cc3e-6c2f-41cf-aaba-6e3ca3246c74",
    "papermill": {
     "duration": 0.074207,
     "end_time": "2024-05-06T18:59:06.284568",
     "exception": false,
     "start_time": "2024-05-06T18:59:06.210361",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "234954332"
      ],
      "text/latex": [
       "234954332"
      ],
      "text/markdown": [
       "234954332"
      ],
      "text/plain": [
       "[1] 234954332"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "SOMA_Y2 <- sum(apply(dataset, 1, function(x) x['Y'] ** 2))\n",
    "SOMA_Y2"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "adaa8c2d",
   "metadata": {
    "id": "UsCtTk3pcalP",
    "papermill": {
     "duration": 0.04443,
     "end_time": "2024-05-06T18:59:06.375153",
     "exception": false,
     "start_time": "2024-05-06T18:59:06.330723",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Obter $\\sum{XY}$"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 43,
   "id": "932c965c",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:06.469076Z",
     "iopub.status.busy": "2024-05-06T18:59:06.467390Z",
     "iopub.status.idle": "2024-05-06T18:59:06.488958Z",
     "shell.execute_reply": "2024-05-06T18:59:06.487162Z"
    },
    "id": "s1NNuoM4calQ",
    "outputId": "cc080b68-6635-47c4-bc48-157801759ea6",
    "papermill": {
     "duration": 0.071208,
     "end_time": "2024-05-06T18:59:06.491246",
     "exception": false,
     "start_time": "2024-05-06T18:59:06.420038",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "716683794"
      ],
      "text/latex": [
       "716683794"
      ],
      "text/markdown": [
       "716683794"
      ],
      "text/plain": [
       "[1] 716683794"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "SOMA_XY <- sum(apply(dataset, 1, function(x) x['Y'] * x['X']))\n",
    "SOMA_XY"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "b3c6deaf",
   "metadata": {
    "id": "EX-oAn2rcalU",
    "papermill": {
     "duration": 0.044903,
     "end_time": "2024-05-06T18:59:06.582280",
     "exception": false,
     "start_time": "2024-05-06T18:59:06.537377",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Obter $\\hat{\\beta}_2$\n",
    "\n",
    "# $$\\hat{\\beta}_2 = \\frac{n\\sum{X_iY_i} - \\sum{X_i}\\sum{Y_i}}{n\\sum{X_i^2} - (\\sum{X_i})^2}$$"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 44,
   "id": "ac9c5fad",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:06.674800Z",
     "iopub.status.busy": "2024-05-06T18:59:06.672995Z",
     "iopub.status.idle": "2024-05-06T18:59:06.702347Z",
     "shell.execute_reply": "2024-05-06T18:59:06.694513Z"
    },
    "id": "UY-nWn7LcalU",
    "outputId": "de545732-ffe4-4095-f42d-0c3bf6680fbb",
    "papermill": {
     "duration": 0.07811,
     "end_time": "2024-05-06T18:59:06.705017",
     "exception": false,
     "start_time": "2024-05-06T18:59:06.626907",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "0.297290690993724"
      ],
      "text/latex": [
       "0.297290690993724"
      ],
      "text/markdown": [
       "0.297290690993724"
      ],
      "text/plain": [
       "[1] 0.2972907"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "numerador <- n * SOMA_XY - SOMA_X * SOMA_Y\n",
    "denominador <- n * SOMA_X2 - (SOMA_X) ** 2\n",
    "\n",
    "beta_2 <- numerador / denominador\n",
    "beta_2"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "507b538e",
   "metadata": {
    "id": "v4QCFagscalW",
    "papermill": {
     "duration": 0.045624,
     "end_time": "2024-05-06T18:59:06.796078",
     "exception": false,
     "start_time": "2024-05-06T18:59:06.750454",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Obter $\\hat{\\beta}_1$\n",
    "\n",
    "# $$\n",
    "\\begin{eqnarray}\n",
    "\\hat{\\beta}_1 &=& \\frac{\\sum{X_i^2}\\sum{Y_i} - \\sum{X_i}\\sum{X_iY_i}}{n\\sum{X_i^2} - (\\sum{X_i})^2}\\\\\n",
    "&=& \\bar{Y} - \\hat{\\beta}_2\\bar{X}\n",
    "\\end{eqnarray}\n",
    "$$ "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 45,
   "id": "54de27a1",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:06.891402Z",
     "iopub.status.busy": "2024-05-06T18:59:06.889673Z",
     "iopub.status.idle": "2024-05-06T18:59:06.909121Z",
     "shell.execute_reply": "2024-05-06T18:59:06.907322Z"
    },
    "id": "-Gjc1ra5calW",
    "outputId": "a469f5b7-eb58-4891-e618-6959ad1a6d39",
    "papermill": {
     "duration": 0.068775,
     "end_time": "2024-05-06T18:59:06.911646",
     "exception": false,
     "start_time": "2024-05-06T18:59:06.842871",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "207.903313777565"
      ],
      "text/latex": [
       "207.903313777565"
      ],
      "text/markdown": [
       "207.903313777565"
      ],
      "text/plain": [
       "[1] 207.9033"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "beta_1 <- mean(dataset$Y) - beta_2 * mean(dataset$X)\n",
    "beta_1"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "10328c60",
   "metadata": {
    "id": "SjcncMd1calY",
    "papermill": {
     "duration": 0.044362,
     "end_time": "2024-05-06T18:59:07.000995",
     "exception": false,
     "start_time": "2024-05-06T18:59:06.956633",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Obtendo a estimativa dos parâmetros\n",
    "\n",
    "#### <font color=red>Documentações:\n",
    "\n",
    "- [**lm**](https://www.rdocumentation.org/packages/stats/versions/3.6.1/topics/lm)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 46,
   "id": "9494f27d",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:07.093602Z",
     "iopub.status.busy": "2024-05-06T18:59:07.091917Z",
     "iopub.status.idle": "2024-05-06T18:59:07.112557Z",
     "shell.execute_reply": "2024-05-06T18:59:07.110707Z"
    },
    "id": "CGGritStcalh",
    "papermill": {
     "duration": 0.069215,
     "end_time": "2024-05-06T18:59:07.114808",
     "exception": false,
     "start_time": "2024-05-06T18:59:07.045593",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "\n",
       "Call:\n",
       "lm(formula = Y ~ X, data = dataset)\n",
       "\n",
       "Coefficients:\n",
       "(Intercept)            X  \n",
       "   207.9033       0.2973  \n"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "resultado_regressao <- lm(formula = Y ~ X, data = dataset)\n",
    "resultado_regressao"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "8c681b28",
   "metadata": {
    "id": "pyVnbv7vcali",
    "papermill": {
     "duration": 0.045801,
     "end_time": "2024-05-06T18:59:07.205292",
     "exception": false,
     "start_time": "2024-05-06T18:59:07.159491",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Visualizando os parâmetros estimados\n",
    "\n",
    "#### <font color=red>Documentações:\n",
    "\n",
    "- [**coef**](https://www.rdocumentation.org/packages/stats/versions/3.6.1/topics/coef)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 47,
   "id": "6e8c555b",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:07.299096Z",
     "iopub.status.busy": "2024-05-06T18:59:07.297389Z",
     "iopub.status.idle": "2024-05-06T18:59:07.317009Z",
     "shell.execute_reply": "2024-05-06T18:59:07.315172Z"
    },
    "id": "Ye2sF_ygcalj",
    "outputId": "d0e2d875-011a-4b71-8ff8-de0ace39e866",
    "papermill": {
     "duration": 0.068436,
     "end_time": "2024-05-06T18:59:07.319238",
     "exception": false,
     "start_time": "2024-05-06T18:59:07.250802",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "207.903313777565"
      ],
      "text/latex": [
       "207.903313777565"
      ],
      "text/markdown": [
       "207.903313777565"
      ],
      "text/plain": [
       "[1] 207.9033"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "beta_1"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 48,
   "id": "568d96b2",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:07.414417Z",
     "iopub.status.busy": "2024-05-06T18:59:07.412786Z",
     "iopub.status.idle": "2024-05-06T18:59:07.430624Z",
     "shell.execute_reply": "2024-05-06T18:59:07.428422Z"
    },
    "id": "5RGcqao9call",
    "outputId": "f39c311b-499b-4317-d0ed-5cb7c488739a",
    "papermill": {
     "duration": 0.068431,
     "end_time": "2024-05-06T18:59:07.433104",
     "exception": false,
     "start_time": "2024-05-06T18:59:07.364673",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "0.297290690993724"
      ],
      "text/latex": [
       "0.297290690993724"
      ],
      "text/markdown": [
       "0.297290690993724"
      ],
      "text/plain": [
       "[1] 0.2972907"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "beta_2"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 49,
   "id": "f3ad7d6d",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:07.528645Z",
     "iopub.status.busy": "2024-05-06T18:59:07.527115Z",
     "iopub.status.idle": "2024-05-06T18:59:07.546801Z",
     "shell.execute_reply": "2024-05-06T18:59:07.544546Z"
    },
    "papermill": {
     "duration": 0.069209,
     "end_time": "2024-05-06T18:59:07.549304",
     "exception": false,
     "start_time": "2024-05-06T18:59:07.480095",
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
       "</style><dl class=dl-inline><dt>(Intercept)</dt><dd>207.903313777565</dd><dt>X</dt><dd>0.297290690993724</dd></dl>\n"
      ],
      "text/latex": [
       "\\begin{description*}\n",
       "\\item[(Intercept)] 207.903313777565\n",
       "\\item[X] 0.297290690993724\n",
       "\\end{description*}\n"
      ],
      "text/markdown": [
       "(Intercept)\n",
       ":   207.903313777565X\n",
       ":   0.297290690993724\n",
       "\n"
      ],
      "text/plain": [
       "(Intercept)           X \n",
       "207.9033138   0.2972907 "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "coefficients(resultado_regressao)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 50,
   "id": "ab6f1158",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:07.643711Z",
     "iopub.status.busy": "2024-05-06T18:59:07.642052Z",
     "iopub.status.idle": "2024-05-06T18:59:07.663076Z",
     "shell.execute_reply": "2024-05-06T18:59:07.661291Z"
    },
    "papermill": {
     "duration": 0.070822,
     "end_time": "2024-05-06T18:59:07.665314",
     "exception": false,
     "start_time": "2024-05-06T18:59:07.594492",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "\n",
       "Call:\n",
       "lm(formula = Y ~ X, data = dataset)\n",
       "\n",
       "Residuals:\n",
       "    Min      1Q  Median      3Q     Max \n",
       "-202.49 -125.96  -22.28  140.53  260.67 \n",
       "\n",
       "Coefficients:\n",
       "             Estimate Std. Error t value Pr(>|t|)    \n",
       "(Intercept) 2.079e+02  5.013e+01   4.148 0.000136 ***\n",
       "X           2.973e-01  7.559e-03  39.328  < 2e-16 ***\n",
       "---\n",
       "Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1\n",
       "\n",
       "Residual standard error: 143.2 on 48 degrees of freedom\n",
       "Multiple R-squared:  0.9699,\tAdjusted R-squared:  0.9693 \n",
       "F-statistic:  1547 on 1 and 48 DF,  p-value: < 2.2e-16\n"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "resumo <- summary(resultado_regressao)\n",
    "resumo"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 51,
   "id": "775c6094",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:07.761356Z",
     "iopub.status.busy": "2024-05-06T18:59:07.759568Z",
     "iopub.status.idle": "2024-05-06T18:59:07.781066Z",
     "shell.execute_reply": "2024-05-06T18:59:07.779246Z"
    },
    "papermill": {
     "duration": 0.072113,
     "end_time": "2024-05-06T18:59:07.783507",
     "exception": false,
     "start_time": "2024-05-06T18:59:07.711394",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A matrix: 2 × 4 of type dbl</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>Estimate</th><th scope=col>Std. Error</th><th scope=col>t value</th><th scope=col>Pr(&gt;|t|)</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>(Intercept)</th><td>207.9033138</td><td>50.126682183</td><td> 4.147558</td><td>1.362270e-04</td></tr>\n",
       "\t<tr><th scope=row>X</th><td>  0.2972907</td><td> 0.007559238</td><td>39.328132</td><td>3.555543e-38</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A matrix: 2 × 4 of type dbl\n",
       "\\begin{tabular}{r|llll}\n",
       "  & Estimate & Std. Error & t value & Pr(>\\textbar{}t\\textbar{})\\\\\n",
       "\\hline\n",
       "\t(Intercept) & 207.9033138 & 50.126682183 &  4.147558 & 1.362270e-04\\\\\n",
       "\tX &   0.2972907 &  0.007559238 & 39.328132 & 3.555543e-38\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A matrix: 2 × 4 of type dbl\n",
       "\n",
       "| <!--/--> | Estimate | Std. Error | t value | Pr(&gt;|t|) |\n",
       "|---|---|---|---|---|\n",
       "| (Intercept) | 207.9033138 | 50.126682183 |  4.147558 | 1.362270e-04 |\n",
       "| X |   0.2972907 |  0.007559238 | 39.328132 | 3.555543e-38 |\n",
       "\n"
      ],
      "text/plain": [
       "            Estimate    Std. Error   t value   Pr(>|t|)    \n",
       "(Intercept) 207.9033138 50.126682183  4.147558 1.362270e-04\n",
       "X             0.2972907  0.007559238 39.328132 3.555543e-38"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "resumo$coefficients"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "ab207088",
   "metadata": {
    "id": "Je8U449lcalq",
    "papermill": {
     "duration": 0.045821,
     "end_time": "2024-05-06T18:59:07.875684",
     "exception": false,
     "start_time": "2024-05-06T18:59:07.829863",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## <font color=green>4.4 Obtendo previsões</font>\n",
    "***"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "55e15ab0",
   "metadata": {
    "id": "PNPQFFsrcalq",
    "papermill": {
     "duration": 0.045488,
     "end_time": "2024-05-06T18:59:07.967023",
     "exception": false,
     "start_time": "2024-05-06T18:59:07.921535",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# $$\\hat{Y}_i = 207,9033 + 0,2973X_i$$"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "3ae15acc",
   "metadata": {
    "id": "qNpJclcrcalr",
    "papermill": {
     "duration": 0.047441,
     "end_time": "2024-05-06T18:59:08.060798",
     "exception": false,
     "start_time": "2024-05-06T18:59:08.013357",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Previsões dentro da amostra"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 52,
   "id": "7d088295",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:08.164638Z",
     "iopub.status.busy": "2024-05-06T18:59:08.163014Z",
     "iopub.status.idle": "2024-05-06T18:59:08.196200Z",
     "shell.execute_reply": "2024-05-06T18:59:08.193934Z"
    },
    "id": "fqOX7ssAcalr",
    "outputId": "aa8eafbb-24ad-44e5-c85a-47f9c31e41b3",
    "papermill": {
     "duration": 0.08992,
     "end_time": "2024-05-06T18:59:08.199434",
     "exception": false,
     "start_time": "2024-05-06T18:59:08.109514",
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
       "<caption>A data.frame: 10 × 3</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>Y</th><th scope=col>X</th><th scope=col>Y_previsto</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>1</th><td>3011</td><td>9714</td><td>3095.7851</td></tr>\n",
       "\t<tr><th scope=row>2</th><td>1305</td><td>3728</td><td>1316.2030</td></tr>\n",
       "\t<tr><th scope=row>3</th><td>1879</td><td>6062</td><td>2010.0795</td></tr>\n",
       "\t<tr><th scope=row>4</th><td>2654</td><td>8845</td><td>2837.4395</td></tr>\n",
       "\t<tr><th scope=row>5</th><td>2849</td><td>8378</td><td>2698.6047</td></tr>\n",
       "\t<tr><th scope=row>6</th><td>1068</td><td>3338</td><td>1200.2596</td></tr>\n",
       "\t<tr><th scope=row>7</th><td>2892</td><td>8507</td><td>2736.9552</td></tr>\n",
       "\t<tr><th scope=row>8</th><td>2543</td><td>7947</td><td>2570.4724</td></tr>\n",
       "\t<tr><th scope=row>9</th><td>3074</td><td>9915</td><td>3155.5405</td></tr>\n",
       "\t<tr><th scope=row>10</th><td> 849</td><td>1632</td><td> 693.0817</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 10 × 3\n",
       "\\begin{tabular}{r|lll}\n",
       "  & Y & X & Y\\_previsto\\\\\n",
       "  & <dbl> & <dbl> & <dbl>\\\\\n",
       "\\hline\n",
       "\t1 & 3011 & 9714 & 3095.7851\\\\\n",
       "\t2 & 1305 & 3728 & 1316.2030\\\\\n",
       "\t3 & 1879 & 6062 & 2010.0795\\\\\n",
       "\t4 & 2654 & 8845 & 2837.4395\\\\\n",
       "\t5 & 2849 & 8378 & 2698.6047\\\\\n",
       "\t6 & 1068 & 3338 & 1200.2596\\\\\n",
       "\t7 & 2892 & 8507 & 2736.9552\\\\\n",
       "\t8 & 2543 & 7947 & 2570.4724\\\\\n",
       "\t9 & 3074 & 9915 & 3155.5405\\\\\n",
       "\t10 &  849 & 1632 &  693.0817\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 10 × 3\n",
       "\n",
       "| <!--/--> | Y &lt;dbl&gt; | X &lt;dbl&gt; | Y_previsto &lt;dbl&gt; |\n",
       "|---|---|---|---|\n",
       "| 1 | 3011 | 9714 | 3095.7851 |\n",
       "| 2 | 1305 | 3728 | 1316.2030 |\n",
       "| 3 | 1879 | 6062 | 2010.0795 |\n",
       "| 4 | 2654 | 8845 | 2837.4395 |\n",
       "| 5 | 2849 | 8378 | 2698.6047 |\n",
       "| 6 | 1068 | 3338 | 1200.2596 |\n",
       "| 7 | 2892 | 8507 | 2736.9552 |\n",
       "| 8 | 2543 | 7947 | 2570.4724 |\n",
       "| 9 | 3074 | 9915 | 3155.5405 |\n",
       "| 10 |  849 | 1632 |  693.0817 |\n",
       "\n"
      ],
      "text/plain": [
       "   Y    X    Y_previsto\n",
       "1  3011 9714 3095.7851 \n",
       "2  1305 3728 1316.2030 \n",
       "3  1879 6062 2010.0795 \n",
       "4  2654 8845 2837.4395 \n",
       "5  2849 8378 2698.6047 \n",
       "6  1068 3338 1200.2596 \n",
       "7  2892 8507 2736.9552 \n",
       "8  2543 7947 2570.4724 \n",
       "9  3074 9915 3155.5405 \n",
       "10  849 1632  693.0817 "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "dataset['Y_previsto'] <- beta_1 + beta_2 * dataset$X\n",
    "head(dataset, 10)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "068d1309",
   "metadata": {
    "id": "hRRoxxAwcals",
    "papermill": {
     "duration": 0.046353,
     "end_time": "2024-05-06T18:59:08.292985",
     "exception": false,
     "start_time": "2024-05-06T18:59:08.246632",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Utilizando a função do R"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 53,
   "id": "3693140b",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:08.388693Z",
     "iopub.status.busy": "2024-05-06T18:59:08.387142Z",
     "iopub.status.idle": "2024-05-06T18:59:08.418921Z",
     "shell.execute_reply": "2024-05-06T18:59:08.416395Z"
    },
    "id": "qLhv0yTgcals",
    "outputId": "43f540ac-006f-4e1c-adab-8a9e8844cef5",
    "papermill": {
     "duration": 0.08234,
     "end_time": "2024-05-06T18:59:08.421958",
     "exception": false,
     "start_time": "2024-05-06T18:59:08.339618",
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
       "<caption>A data.frame: 10 × 4</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>Y</th><th scope=col>X</th><th scope=col>Y_previsto</th><th scope=col>Y_previsto_R</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>1</th><td>3011</td><td>9714</td><td>3095.7851</td><td>3095.7851</td></tr>\n",
       "\t<tr><th scope=row>2</th><td>1305</td><td>3728</td><td>1316.2030</td><td>1316.2030</td></tr>\n",
       "\t<tr><th scope=row>3</th><td>1879</td><td>6062</td><td>2010.0795</td><td>2010.0795</td></tr>\n",
       "\t<tr><th scope=row>4</th><td>2654</td><td>8845</td><td>2837.4395</td><td>2837.4395</td></tr>\n",
       "\t<tr><th scope=row>5</th><td>2849</td><td>8378</td><td>2698.6047</td><td>2698.6047</td></tr>\n",
       "\t<tr><th scope=row>6</th><td>1068</td><td>3338</td><td>1200.2596</td><td>1200.2596</td></tr>\n",
       "\t<tr><th scope=row>7</th><td>2892</td><td>8507</td><td>2736.9552</td><td>2736.9552</td></tr>\n",
       "\t<tr><th scope=row>8</th><td>2543</td><td>7947</td><td>2570.4724</td><td>2570.4724</td></tr>\n",
       "\t<tr><th scope=row>9</th><td>3074</td><td>9915</td><td>3155.5405</td><td>3155.5405</td></tr>\n",
       "\t<tr><th scope=row>10</th><td> 849</td><td>1632</td><td> 693.0817</td><td> 693.0817</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 10 × 4\n",
       "\\begin{tabular}{r|llll}\n",
       "  & Y & X & Y\\_previsto & Y\\_previsto\\_R\\\\\n",
       "  & <dbl> & <dbl> & <dbl> & <dbl>\\\\\n",
       "\\hline\n",
       "\t1 & 3011 & 9714 & 3095.7851 & 3095.7851\\\\\n",
       "\t2 & 1305 & 3728 & 1316.2030 & 1316.2030\\\\\n",
       "\t3 & 1879 & 6062 & 2010.0795 & 2010.0795\\\\\n",
       "\t4 & 2654 & 8845 & 2837.4395 & 2837.4395\\\\\n",
       "\t5 & 2849 & 8378 & 2698.6047 & 2698.6047\\\\\n",
       "\t6 & 1068 & 3338 & 1200.2596 & 1200.2596\\\\\n",
       "\t7 & 2892 & 8507 & 2736.9552 & 2736.9552\\\\\n",
       "\t8 & 2543 & 7947 & 2570.4724 & 2570.4724\\\\\n",
       "\t9 & 3074 & 9915 & 3155.5405 & 3155.5405\\\\\n",
       "\t10 &  849 & 1632 &  693.0817 &  693.0817\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 10 × 4\n",
       "\n",
       "| <!--/--> | Y &lt;dbl&gt; | X &lt;dbl&gt; | Y_previsto &lt;dbl&gt; | Y_previsto_R &lt;dbl&gt; |\n",
       "|---|---|---|---|---|\n",
       "| 1 | 3011 | 9714 | 3095.7851 | 3095.7851 |\n",
       "| 2 | 1305 | 3728 | 1316.2030 | 1316.2030 |\n",
       "| 3 | 1879 | 6062 | 2010.0795 | 2010.0795 |\n",
       "| 4 | 2654 | 8845 | 2837.4395 | 2837.4395 |\n",
       "| 5 | 2849 | 8378 | 2698.6047 | 2698.6047 |\n",
       "| 6 | 1068 | 3338 | 1200.2596 | 1200.2596 |\n",
       "| 7 | 2892 | 8507 | 2736.9552 | 2736.9552 |\n",
       "| 8 | 2543 | 7947 | 2570.4724 | 2570.4724 |\n",
       "| 9 | 3074 | 9915 | 3155.5405 | 3155.5405 |\n",
       "| 10 |  849 | 1632 |  693.0817 |  693.0817 |\n",
       "\n"
      ],
      "text/plain": [
       "   Y    X    Y_previsto Y_previsto_R\n",
       "1  3011 9714 3095.7851  3095.7851   \n",
       "2  1305 3728 1316.2030  1316.2030   \n",
       "3  1879 6062 2010.0795  2010.0795   \n",
       "4  2654 8845 2837.4395  2837.4395   \n",
       "5  2849 8378 2698.6047  2698.6047   \n",
       "6  1068 3338 1200.2596  1200.2596   \n",
       "7  2892 8507 2736.9552  2736.9552   \n",
       "8  2543 7947 2570.4724  2570.4724   \n",
       "9  3074 9915 3155.5405  3155.5405   \n",
       "10  849 1632  693.0817   693.0817   "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "dataset['Y_previsto_R'] <- resultado_regressao$fitted.values\n",
    "head(dataset, 10)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 54,
   "id": "6c5d2a50",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:08.519900Z",
     "iopub.status.busy": "2024-05-06T18:59:08.518358Z",
     "iopub.status.idle": "2024-05-06T18:59:08.548949Z",
     "shell.execute_reply": "2024-05-06T18:59:08.546642Z"
    },
    "id": "FctIV05Kcalu",
    "outputId": "3482ccfd-9b1d-4dd4-d2de-cdc3926cd28b",
    "papermill": {
     "duration": 0.083042,
     "end_time": "2024-05-06T18:59:08.551775",
     "exception": false,
     "start_time": "2024-05-06T18:59:08.468733",
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
       "<caption>A data.frame: 10 × 3</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>Y</th><th scope=col>X</th><th scope=col>Y_previsto</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>1</th><td>3011</td><td>9714</td><td>3095.7851</td></tr>\n",
       "\t<tr><th scope=row>2</th><td>1305</td><td>3728</td><td>1316.2030</td></tr>\n",
       "\t<tr><th scope=row>3</th><td>1879</td><td>6062</td><td>2010.0795</td></tr>\n",
       "\t<tr><th scope=row>4</th><td>2654</td><td>8845</td><td>2837.4395</td></tr>\n",
       "\t<tr><th scope=row>5</th><td>2849</td><td>8378</td><td>2698.6047</td></tr>\n",
       "\t<tr><th scope=row>6</th><td>1068</td><td>3338</td><td>1200.2596</td></tr>\n",
       "\t<tr><th scope=row>7</th><td>2892</td><td>8507</td><td>2736.9552</td></tr>\n",
       "\t<tr><th scope=row>8</th><td>2543</td><td>7947</td><td>2570.4724</td></tr>\n",
       "\t<tr><th scope=row>9</th><td>3074</td><td>9915</td><td>3155.5405</td></tr>\n",
       "\t<tr><th scope=row>10</th><td> 849</td><td>1632</td><td> 693.0817</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 10 × 3\n",
       "\\begin{tabular}{r|lll}\n",
       "  & Y & X & Y\\_previsto\\\\\n",
       "  & <dbl> & <dbl> & <dbl>\\\\\n",
       "\\hline\n",
       "\t1 & 3011 & 9714 & 3095.7851\\\\\n",
       "\t2 & 1305 & 3728 & 1316.2030\\\\\n",
       "\t3 & 1879 & 6062 & 2010.0795\\\\\n",
       "\t4 & 2654 & 8845 & 2837.4395\\\\\n",
       "\t5 & 2849 & 8378 & 2698.6047\\\\\n",
       "\t6 & 1068 & 3338 & 1200.2596\\\\\n",
       "\t7 & 2892 & 8507 & 2736.9552\\\\\n",
       "\t8 & 2543 & 7947 & 2570.4724\\\\\n",
       "\t9 & 3074 & 9915 & 3155.5405\\\\\n",
       "\t10 &  849 & 1632 &  693.0817\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 10 × 3\n",
       "\n",
       "| <!--/--> | Y &lt;dbl&gt; | X &lt;dbl&gt; | Y_previsto &lt;dbl&gt; |\n",
       "|---|---|---|---|\n",
       "| 1 | 3011 | 9714 | 3095.7851 |\n",
       "| 2 | 1305 | 3728 | 1316.2030 |\n",
       "| 3 | 1879 | 6062 | 2010.0795 |\n",
       "| 4 | 2654 | 8845 | 2837.4395 |\n",
       "| 5 | 2849 | 8378 | 2698.6047 |\n",
       "| 6 | 1068 | 3338 | 1200.2596 |\n",
       "| 7 | 2892 | 8507 | 2736.9552 |\n",
       "| 8 | 2543 | 7947 | 2570.4724 |\n",
       "| 9 | 3074 | 9915 | 3155.5405 |\n",
       "| 10 |  849 | 1632 |  693.0817 |\n",
       "\n"
      ],
      "text/plain": [
       "   Y    X    Y_previsto\n",
       "1  3011 9714 3095.7851 \n",
       "2  1305 3728 1316.2030 \n",
       "3  1879 6062 2010.0795 \n",
       "4  2654 8845 2837.4395 \n",
       "5  2849 8378 2698.6047 \n",
       "6  1068 3338 1200.2596 \n",
       "7  2892 8507 2736.9552 \n",
       "8  2543 7947 2570.4724 \n",
       "9  3074 9915 3155.5405 \n",
       "10  849 1632  693.0817 "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "dataset$Y_previsto_R <- NULL\n",
    "head(dataset, 10)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "5f748cdf",
   "metadata": {
    "id": "OZBs0luwcalv",
    "papermill": {
     "duration": 0.046191,
     "end_time": "2024-05-06T18:59:08.645570",
     "exception": false,
     "start_time": "2024-05-06T18:59:08.599379",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Estimando o 'Gasto das Famílias' fora da amostra"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 55,
   "id": "2bb99ae8",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:08.740817Z",
     "iopub.status.busy": "2024-05-06T18:59:08.739268Z",
     "iopub.status.idle": "2024-05-06T18:59:08.753662Z",
     "shell.execute_reply": "2024-05-06T18:59:08.752047Z"
    },
    "id": "4gXSqx41calv",
    "papermill": {
     "duration": 0.065005,
     "end_time": "2024-05-06T18:59:08.756529",
     "exception": false,
     "start_time": "2024-05-06T18:59:08.691524",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "prever <- function(x){\n",
    "    return(beta_1 + beta_2 * x)\n",
    "}"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 56,
   "id": "56a878a1",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:08.852325Z",
     "iopub.status.busy": "2024-05-06T18:59:08.850758Z",
     "iopub.status.idle": "2024-05-06T18:59:08.867546Z",
     "shell.execute_reply": "2024-05-06T18:59:08.865775Z"
    },
    "id": "RyBwrPlQcalx",
    "outputId": "235af62b-8be5-4cb6-8b65-c3f5b1f5bb7e",
    "papermill": {
     "duration": 0.067025,
     "end_time": "2024-05-06T18:59:08.869698",
     "exception": false,
     "start_time": "2024-05-06T18:59:08.802673",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "2440.55640314043"
      ],
      "text/latex": [
       "2440.55640314043"
      ],
      "text/markdown": [
       "2440.55640314043"
      ],
      "text/plain": [
       "[1] 2440.556"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "prever(7510)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "a3608181",
   "metadata": {
    "id": "3P0ZtB-Qcalz",
    "papermill": {
     "duration": 0.046149,
     "end_time": "2024-05-06T18:59:08.962287",
     "exception": false,
     "start_time": "2024-05-06T18:59:08.916138",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Estimando o 'Gasto das Famílias' fora da amostra com a função do R\n",
    "\n",
    "#### <font color=red>Documentações:\n",
    "\n",
    "- [**predict**](https://www.rdocumentation.org/packages/stats/versions/3.6.1/topics/predict.lm)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 57,
   "id": "619a857c",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:09.059250Z",
     "iopub.status.busy": "2024-05-06T18:59:09.057555Z",
     "iopub.status.idle": "2024-05-06T18:59:09.076173Z",
     "shell.execute_reply": "2024-05-06T18:59:09.074468Z"
    },
    "id": "DpDu_yiecal0",
    "outputId": "85d74e32-cb57-49d8-b582-cfab3d4cf210",
    "papermill": {
     "duration": 0.069697,
     "end_time": "2024-05-06T18:59:09.078550",
     "exception": false,
     "start_time": "2024-05-06T18:59:09.008853",
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
       "</style><dl class=dl-inline><dt>1</dt><dd>2440.55640314043</dd><dt>2</dt><dd>2452.44803078018</dd></dl>\n"
      ],
      "text/latex": [
       "\\begin{description*}\n",
       "\\item[1] 2440.55640314043\n",
       "\\item[2] 2452.44803078018\n",
       "\\end{description*}\n"
      ],
      "text/markdown": [
       "1\n",
       ":   2440.556403140432\n",
       ":   2452.44803078018\n",
       "\n"
      ],
      "text/plain": [
       "       1        2 \n",
       "2440.556 2452.448 "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "predict(resultado_regressao, data.frame(X = c(7510, 7550)))"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "05410801",
   "metadata": {
    "id": "NfEjm65Gcal2",
    "papermill": {
     "duration": 0.047294,
     "end_time": "2024-05-06T18:59:09.173050",
     "exception": false,
     "start_time": "2024-05-06T18:59:09.125756",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## <font color=green>4.5 Resíduos</font>\n",
    "***"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "2454c54b",
   "metadata": {
    "id": "RVAQCkvH75mH",
    "papermill": {
     "duration": 0.048985,
     "end_time": "2024-05-06T18:59:09.270284",
     "exception": false,
     "start_time": "2024-05-06T18:59:09.221299",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Como vimos anteriormente, o resíduo da i-ésima observação é a diferença entre o valor observado de nossa variável dependente ($Y_i$) e o valor estimado da variável dependente ($\\hat{Y}_i$)."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "f4e20dee",
   "metadata": {
    "id": "EAGrrY7xcal3",
    "papermill": {
     "duration": 0.050464,
     "end_time": "2024-05-06T18:59:09.367816",
     "exception": false,
     "start_time": "2024-05-06T18:59:09.317352",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# $$\\hat{u}_i = Y_i - \\hat{Y}_i$$"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "ff56553b",
   "metadata": {
    "id": "QVekZtNU75mH",
    "papermill": {
     "duration": 0.04665,
     "end_time": "2024-05-06T18:59:09.472724",
     "exception": false,
     "start_time": "2024-05-06T18:59:09.426074",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Em outras palavras, $\\hat{u}_i$ é o erro obtido ao se utilizar a equação de regressão estimada para prever o valor da variável dependente."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 58,
   "id": "3c12b462",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:09.570575Z",
     "iopub.status.busy": "2024-05-06T18:59:09.569010Z",
     "iopub.status.idle": "2024-05-06T18:59:09.597332Z",
     "shell.execute_reply": "2024-05-06T18:59:09.595630Z"
    },
    "id": "oiB2JiOLcal3",
    "outputId": "64f5f10e-4462-4336-bbbf-8eba676f234d",
    "papermill": {
     "duration": 0.079069,
     "end_time": "2024-05-06T18:59:09.599761",
     "exception": false,
     "start_time": "2024-05-06T18:59:09.520692",
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
       "<caption>A data.frame: 6 × 4</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>Y</th><th scope=col>X</th><th scope=col>Y_previsto</th><th scope=col>u</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>1</th><td>3011</td><td>9714</td><td>3095.785</td><td> -84.78509</td></tr>\n",
       "\t<tr><th scope=row>2</th><td>1305</td><td>3728</td><td>1316.203</td><td> -11.20301</td></tr>\n",
       "\t<tr><th scope=row>3</th><td>1879</td><td>6062</td><td>2010.079</td><td>-131.07948</td></tr>\n",
       "\t<tr><th scope=row>4</th><td>2654</td><td>8845</td><td>2837.439</td><td>-183.43948</td></tr>\n",
       "\t<tr><th scope=row>5</th><td>2849</td><td>8378</td><td>2698.605</td><td> 150.39528</td></tr>\n",
       "\t<tr><th scope=row>6</th><td>1068</td><td>3338</td><td>1200.260</td><td>-132.25964</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 6 × 4\n",
       "\\begin{tabular}{r|llll}\n",
       "  & Y & X & Y\\_previsto & u\\\\\n",
       "  & <dbl> & <dbl> & <dbl> & <dbl>\\\\\n",
       "\\hline\n",
       "\t1 & 3011 & 9714 & 3095.785 &  -84.78509\\\\\n",
       "\t2 & 1305 & 3728 & 1316.203 &  -11.20301\\\\\n",
       "\t3 & 1879 & 6062 & 2010.079 & -131.07948\\\\\n",
       "\t4 & 2654 & 8845 & 2837.439 & -183.43948\\\\\n",
       "\t5 & 2849 & 8378 & 2698.605 &  150.39528\\\\\n",
       "\t6 & 1068 & 3338 & 1200.260 & -132.25964\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 6 × 4\n",
       "\n",
       "| <!--/--> | Y &lt;dbl&gt; | X &lt;dbl&gt; | Y_previsto &lt;dbl&gt; | u &lt;dbl&gt; |\n",
       "|---|---|---|---|---|\n",
       "| 1 | 3011 | 9714 | 3095.785 |  -84.78509 |\n",
       "| 2 | 1305 | 3728 | 1316.203 |  -11.20301 |\n",
       "| 3 | 1879 | 6062 | 2010.079 | -131.07948 |\n",
       "| 4 | 2654 | 8845 | 2837.439 | -183.43948 |\n",
       "| 5 | 2849 | 8378 | 2698.605 |  150.39528 |\n",
       "| 6 | 1068 | 3338 | 1200.260 | -132.25964 |\n",
       "\n"
      ],
      "text/plain": [
       "  Y    X    Y_previsto u         \n",
       "1 3011 9714 3095.785    -84.78509\n",
       "2 1305 3728 1316.203    -11.20301\n",
       "3 1879 6062 2010.079   -131.07948\n",
       "4 2654 8845 2837.439   -183.43948\n",
       "5 2849 8378 2698.605    150.39528\n",
       "6 1068 3338 1200.260   -132.25964"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "dataset['u'] <- dataset$Y - dataset$Y_previsto\n",
    "head(dataset)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 59,
   "id": "a4ff74c9",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:09.701544Z",
     "iopub.status.busy": "2024-05-06T18:59:09.699990Z",
     "iopub.status.idle": "2024-05-06T18:59:09.733080Z",
     "shell.execute_reply": "2024-05-06T18:59:09.731230Z"
    },
    "id": "_rtZhoU8cal5",
    "outputId": "c608100a-fb45-4765-e581-b37cf315b78e",
    "papermill": {
     "duration": 0.08661,
     "end_time": "2024-05-06T18:59:09.735499",
     "exception": false,
     "start_time": "2024-05-06T18:59:09.648889",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 6 × 5</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>Y</th><th scope=col>X</th><th scope=col>Y_previsto</th><th scope=col>u</th><th scope=col>Residuos</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>1</th><td>3011</td><td>9714</td><td>3095.785</td><td> -84.78509</td><td> -84.78509</td></tr>\n",
       "\t<tr><th scope=row>2</th><td>1305</td><td>3728</td><td>1316.203</td><td> -11.20301</td><td> -11.20301</td></tr>\n",
       "\t<tr><th scope=row>3</th><td>1879</td><td>6062</td><td>2010.079</td><td>-131.07948</td><td>-131.07948</td></tr>\n",
       "\t<tr><th scope=row>4</th><td>2654</td><td>8845</td><td>2837.439</td><td>-183.43948</td><td>-183.43948</td></tr>\n",
       "\t<tr><th scope=row>5</th><td>2849</td><td>8378</td><td>2698.605</td><td> 150.39528</td><td> 150.39528</td></tr>\n",
       "\t<tr><th scope=row>6</th><td>1068</td><td>3338</td><td>1200.260</td><td>-132.25964</td><td>-132.25964</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 6 × 5\n",
       "\\begin{tabular}{r|lllll}\n",
       "  & Y & X & Y\\_previsto & u & Residuos\\\\\n",
       "  & <dbl> & <dbl> & <dbl> & <dbl> & <dbl>\\\\\n",
       "\\hline\n",
       "\t1 & 3011 & 9714 & 3095.785 &  -84.78509 &  -84.78509\\\\\n",
       "\t2 & 1305 & 3728 & 1316.203 &  -11.20301 &  -11.20301\\\\\n",
       "\t3 & 1879 & 6062 & 2010.079 & -131.07948 & -131.07948\\\\\n",
       "\t4 & 2654 & 8845 & 2837.439 & -183.43948 & -183.43948\\\\\n",
       "\t5 & 2849 & 8378 & 2698.605 &  150.39528 &  150.39528\\\\\n",
       "\t6 & 1068 & 3338 & 1200.260 & -132.25964 & -132.25964\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 6 × 5\n",
       "\n",
       "| <!--/--> | Y &lt;dbl&gt; | X &lt;dbl&gt; | Y_previsto &lt;dbl&gt; | u &lt;dbl&gt; | Residuos &lt;dbl&gt; |\n",
       "|---|---|---|---|---|---|\n",
       "| 1 | 3011 | 9714 | 3095.785 |  -84.78509 |  -84.78509 |\n",
       "| 2 | 1305 | 3728 | 1316.203 |  -11.20301 |  -11.20301 |\n",
       "| 3 | 1879 | 6062 | 2010.079 | -131.07948 | -131.07948 |\n",
       "| 4 | 2654 | 8845 | 2837.439 | -183.43948 | -183.43948 |\n",
       "| 5 | 2849 | 8378 | 2698.605 |  150.39528 |  150.39528 |\n",
       "| 6 | 1068 | 3338 | 1200.260 | -132.25964 | -132.25964 |\n",
       "\n"
      ],
      "text/plain": [
       "  Y    X    Y_previsto u          Residuos  \n",
       "1 3011 9714 3095.785    -84.78509  -84.78509\n",
       "2 1305 3728 1316.203    -11.20301  -11.20301\n",
       "3 1879 6062 2010.079   -131.07948 -131.07948\n",
       "4 2654 8845 2837.439   -183.43948 -183.43948\n",
       "5 2849 8378 2698.605    150.39528  150.39528\n",
       "6 1068 3338 1200.260   -132.25964 -132.25964"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "dataset['Residuos'] <- resultado_regressao$residuals\n",
    "head(dataset)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 60,
   "id": "d2b04e7c",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:09.834652Z",
     "iopub.status.busy": "2024-05-06T18:59:09.833126Z",
     "iopub.status.idle": "2024-05-06T18:59:09.861503Z",
     "shell.execute_reply": "2024-05-06T18:59:09.859162Z"
    },
    "id": "GbnSv-B-cal6",
    "outputId": "d04dd941-1936-443e-fb8d-a050babc1ccd",
    "papermill": {
     "duration": 0.080965,
     "end_time": "2024-05-06T18:59:09.864269",
     "exception": false,
     "start_time": "2024-05-06T18:59:09.783304",
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
       "<caption>A data.frame: 6 × 4</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>Y</th><th scope=col>X</th><th scope=col>Y_previsto</th><th scope=col>Residuos</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>1</th><td>3011</td><td>9714</td><td>3095.785</td><td> -84.78509</td></tr>\n",
       "\t<tr><th scope=row>2</th><td>1305</td><td>3728</td><td>1316.203</td><td> -11.20301</td></tr>\n",
       "\t<tr><th scope=row>3</th><td>1879</td><td>6062</td><td>2010.079</td><td>-131.07948</td></tr>\n",
       "\t<tr><th scope=row>4</th><td>2654</td><td>8845</td><td>2837.439</td><td>-183.43948</td></tr>\n",
       "\t<tr><th scope=row>5</th><td>2849</td><td>8378</td><td>2698.605</td><td> 150.39528</td></tr>\n",
       "\t<tr><th scope=row>6</th><td>1068</td><td>3338</td><td>1200.260</td><td>-132.25964</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 6 × 4\n",
       "\\begin{tabular}{r|llll}\n",
       "  & Y & X & Y\\_previsto & Residuos\\\\\n",
       "  & <dbl> & <dbl> & <dbl> & <dbl>\\\\\n",
       "\\hline\n",
       "\t1 & 3011 & 9714 & 3095.785 &  -84.78509\\\\\n",
       "\t2 & 1305 & 3728 & 1316.203 &  -11.20301\\\\\n",
       "\t3 & 1879 & 6062 & 2010.079 & -131.07948\\\\\n",
       "\t4 & 2654 & 8845 & 2837.439 & -183.43948\\\\\n",
       "\t5 & 2849 & 8378 & 2698.605 &  150.39528\\\\\n",
       "\t6 & 1068 & 3338 & 1200.260 & -132.25964\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 6 × 4\n",
       "\n",
       "| <!--/--> | Y &lt;dbl&gt; | X &lt;dbl&gt; | Y_previsto &lt;dbl&gt; | Residuos &lt;dbl&gt; |\n",
       "|---|---|---|---|---|\n",
       "| 1 | 3011 | 9714 | 3095.785 |  -84.78509 |\n",
       "| 2 | 1305 | 3728 | 1316.203 |  -11.20301 |\n",
       "| 3 | 1879 | 6062 | 2010.079 | -131.07948 |\n",
       "| 4 | 2654 | 8845 | 2837.439 | -183.43948 |\n",
       "| 5 | 2849 | 8378 | 2698.605 |  150.39528 |\n",
       "| 6 | 1068 | 3338 | 1200.260 | -132.25964 |\n",
       "\n"
      ],
      "text/plain": [
       "  Y    X    Y_previsto Residuos  \n",
       "1 3011 9714 3095.785    -84.78509\n",
       "2 1305 3728 1316.203    -11.20301\n",
       "3 1879 6062 2010.079   -131.07948\n",
       "4 2654 8845 2837.439   -183.43948\n",
       "5 2849 8378 2698.605    150.39528\n",
       "6 1068 3338 1200.260   -132.25964"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "dataset$u <- NULL\n",
    "head(dataset)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 61,
   "id": "fd1c3cda",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:09.962581Z",
     "iopub.status.busy": "2024-05-06T18:59:09.960994Z",
     "iopub.status.idle": "2024-05-06T18:59:09.979907Z",
     "shell.execute_reply": "2024-05-06T18:59:09.977701Z"
    },
    "papermill": {
     "duration": 0.071366,
     "end_time": "2024-05-06T18:59:09.982822",
     "exception": false,
     "start_time": "2024-05-06T18:59:09.911456",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "-2.51687559682523e-15"
      ],
      "text/latex": [
       "-2.51687559682523e-15"
      ],
      "text/markdown": [
       "-2.51687559682523e-15"
      ],
      "text/plain": [
       "[1] -2.516876e-15"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "mean(dataset$Residuos)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "c41d2c42",
   "metadata": {
    "id": "2FUvXCAW75mL",
    "papermill": {
     "duration": 0.047893,
     "end_time": "2024-05-06T18:59:10.078804",
     "exception": false,
     "start_time": "2024-05-06T18:59:10.030911",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## <font color=green>4.6 Suposições sobre o termo de erro $u$</font>\n",
    "***\n",
    "\n",
    "### 1. O termo de erro $u$ é uma variável aleatória com média igual a zero: $E(u) = 0$\n",
    "### 2. A variância de $u$ é a mesma para todos os valores de $X$\n",
    "### 3. Os valores de $u$ são independentes\n",
    "### 4. O termo de erro $u$ é uma variável aleatória normalmente distribuída."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "65b6d5f2",
   "metadata": {
    "id": "7mFDWvhFcal7",
    "papermill": {
     "duration": 0.047258,
     "end_time": "2024-05-06T18:59:10.173525",
     "exception": false,
     "start_time": "2024-05-06T18:59:10.126267",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Plotando os resíduos do modelo\n",
    "\n",
    "#### <font color=red>Documentações:\n",
    "\n",
    "- [**scatterplot**](https://seaborn.pydata.org/generated/seaborn.scatterplot.html)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 62,
   "id": "4d8ed95e",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:10.274258Z",
     "iopub.status.busy": "2024-05-06T18:59:10.272739Z",
     "iopub.status.idle": "2024-05-06T18:59:10.483621Z",
     "shell.execute_reply": "2024-05-06T18:59:10.481716Z"
    },
    "id": "r3RhXDBccal8",
    "outputId": "1db64403-88b8-4e89-9eaf-e817184af365",
    "papermill": {
     "duration": 0.263933,
     "end_time": "2024-05-06T18:59:10.485857",
     "exception": false,
     "start_time": "2024-05-06T18:59:10.221924",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "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\nhgsO6BTnmAAAAABJRU5ErkJggg=="
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
    "ggplot(data = dataset, aes(x = X, y = Residuos)) + \n",
    "    geom_hline(yintercept = 0, color = 'black') +\n",
    "    geom_point(size = 1.5, stroke = 0) + \n",
    "    xlab(\"X\") + \n",
    "    ylab(\"Resíduos\") + \n",
    "    ggtitle('Resíduos vs Variável Independente') +\n",
    "    theme(\n",
    "        plot.title=element_text(size = 12, hjust = 0.5),\n",
    "        axis.title.y=element_text(size = 10, vjust = +0.2),\n",
    "        axis.title.x=element_text(size = 10, vjust = -0.2),\n",
    "        axis.text.y=element_text(size = 10),\n",
    "        axis.text.x=element_text(size = 10),\n",
    "    )"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 63,
   "id": "73fa2b77",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:10.587935Z",
     "iopub.status.busy": "2024-05-06T18:59:10.586225Z",
     "iopub.status.idle": "2024-05-06T18:59:10.797480Z",
     "shell.execute_reply": "2024-05-06T18:59:10.795648Z"
    },
    "id": "6An7Ir6275mN",
    "outputId": "5218dc56-a6fd-4495-a354-0ba0b44eb2ba",
    "papermill": {
     "duration": 0.26452,
     "end_time": "2024-05-06T18:59:10.799879",
     "exception": false,
     "start_time": "2024-05-06T18:59:10.535359",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "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\nihUul8u76HA4Vq5cKTEPAAAAxa6ILl26lO8IAABASaLYFVG7du1yjbRv315KEgAAAA+KXREN\nHz68f//+no8VRRk2bJh3EQAAQAqD7ABllU6nW7hw4YQJE3777bfatWvXqVNHdiIAABDsKHbX\npV69evXq1ZOdAgAAQAiKHQAAKKzz58/v3Lnz999/P3To0Llz56pXr/7oo49e50zH4cOHn3/+\n+UOHDlWoUOGhhx4aMWKEv9IGFYodAAAohD179gwfPjwrK8s78u23327evHnHjh3Vq1cv2j4v\nXLhwzz33XLhwQQiRmZk5ceLE0NDQAQMG+CVwUOHiCQAAUFCapo0bN8631XlcunRp8eLFRd7t\nZ5995ml1Xu+9916R9xbMKHYAAOTj66+/7tmzZ7169bp37759+3bZcWRKTU1NTk6+6qqUlJQi\n79ZqteYa4e6wRcNLsQAA5OWXX34ZOHCgzWYTQqSmpg4dOvSzzz67+eabZeeSIzw83GQyORyO\nK1c1bty4yLtt27atTqdTVdU7cuuttxZ5b8GMGTsAQP5UVV26dGmvXr26du06ffr0K+dXAtiq\nVas8rc7D5XItXbpUYh65zGbz/ffff+V48+bNH3zwwSLvtlmzZs8995zRaPQstmvXbtKkSUXe\nWzBjxg4ASqlNmzatXLkyMzOzbdu2jzzySHh4uMQw8+bNmz59uufjQ4cO/fTTT++//77EPCUp\nMzMz35Gg8uyzz8bHx3/88cdut7tmzZp169b1vEhtMFxXqXjkkUf69+//448/VqxYsXHjxoqi\n+CtwUKHYAUBptGbNmocfftjz8ddff71///5169bpdHJeZtE0bcGCBb4jW7duPXLkSP369aXk\nKWFt27ZdtmyZ78iV7yoZVIxG49ixY8eOHev3PVeqVKlSpUp+321Q4aVYAIHgm2++mTt37rvv\nvnv+/HnZWfzjtdde81386quv9u/fLyuM0+m8ePFirsHU1FQpYUpev379hg4d6l3s1avXyJEj\nJeYB8iBhxu74V2uX/3frseQUtz68VpNbE0ePqB9n9qzKOLpz0epNR46ecFniW93R/6HBnQ0+\nE7F5rwUQtGbNmvXKK694Pp42bdr69eubNGkiN9L1u/ICwz///FNKEiGEyWRq2LDhTz/95B0J\nCQlp0KCBrDwlTFGUuXPnPvjgg8ePH69Ro0bDhg1lJwKuqaRn7FL2vPn47GVJITUH3PdI4oCu\n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"
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
    "ggplot(data = dataset, aes(x = Y_previsto, y = Residuos)) + \n",
    "    geom_hline(yintercept = 0, color = 'black') +\n",
    "    geom_point(size = 1.5, stroke = 0) + \n",
    "    xlab(\"Y_Previsto\") + \n",
    "    ylab(\"Resíduos\") + \n",
    "    ggtitle('Resíduos vs Y_Previsto') +\n",
    "    theme(\n",
    "        plot.title=element_text(size = 12, hjust = 0.5),\n",
    "        axis.title.y=element_text(size = 10, vjust = +0.2),\n",
    "        axis.title.x=element_text(size = 10, vjust = -0.2),\n",
    "        axis.text.y=element_text(size = 10),\n",
    "        axis.text.x=element_text(size = 10),\n",
    "    )"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "6245fe32",
   "metadata": {
    "id": "72hPAKNKcamD",
    "papermill": {
     "duration": 0.049154,
     "end_time": "2024-05-06T18:59:10.899518",
     "exception": false,
     "start_time": "2024-05-06T18:59:10.850364",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Hipótese de variância constante"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "47a5c65e",
   "metadata": {
    "id": "dm_pfD0jcamE",
    "papermill": {
     "duration": 0.04869,
     "end_time": "2024-05-06T18:59:10.997072",
     "exception": false,
     "start_time": "2024-05-06T18:59:10.948382",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "<img src=\"https://caelum-online-public.s3.amazonaws.com/1273-estatistica-parte4/01/img028.jpg\" width=80%>\n",
    "Fonte: Econometria Básica - 5ª edição - Gujarati e Porter"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 64,
   "id": "f3c5629d",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:11.098981Z",
     "iopub.status.busy": "2024-05-06T18:59:11.097344Z",
     "iopub.status.idle": "2024-05-06T18:59:11.296386Z",
     "shell.execute_reply": "2024-05-06T18:59:11.294472Z"
    },
    "id": "lCys_bu_camE",
    "outputId": "1637649e-41ed-40af-a004-dcfb5c9ee89f",
    "papermill": {
     "duration": 0.25223,
     "end_time": "2024-05-06T18:59:11.298819",
     "exception": false,
     "start_time": "2024-05-06T18:59:11.046589",
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
    "ggplot(data = dataset, aes(x = Y_previsto, y = Residuos ^ 2)) + \n",
    "    geom_point(size = 1.5, stroke = 0) + \n",
    "    xlab(\"Y_Previsto\") + \n",
    "    ylab(\"Resíduos²\") + \n",
    "    ggtitle('Resíduos² vs Y_Previsto') +\n",
    "    theme(\n",
    "        plot.title=element_text(size = 12, hjust = 0.5),\n",
    "        axis.title.y=element_text(size = 10, vjust = +0.2),\n",
    "        axis.title.x=element_text(size = 10, vjust = -0.2),\n",
    "        axis.text.y=element_text(size = 10),\n",
    "        axis.text.x=element_text(size = 10),\n",
    "    )"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "20b9b457",
   "metadata": {
    "id": "d3X2NkIicamv",
    "papermill": {
     "duration": 0.050767,
     "end_time": "2024-05-06T18:59:11.402196",
     "exception": false,
     "start_time": "2024-05-06T18:59:11.351429",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## <font color=green>4.7 O coeficiente de determinação $R^2$</font>\n",
    "***"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "0e172363",
   "metadata": {
    "id": "02AXBeBrcamw",
    "papermill": {
     "duration": 0.049596,
     "end_time": "2024-05-06T18:59:11.501562",
     "exception": false,
     "start_time": "2024-05-06T18:59:11.451966",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "O **coeficiente de determinação R²** é uma medida resumida que diz quanto a linha de regressão amostral se ajusta aos dados. Pode ser obtido a partir da seguinte fórmula:\n",
    "\n",
    "# $$R^2 = \\frac{\\big[\\sum{(Y_i - \\bar{Y})(\\hat{Y}_i - \\bar{Y})}\\big]^2}{\\sum{(Y_i - \\bar{Y}})^2 \\sum{(\\hat{Y}_i - \\bar{Y}})^2}$$\n",
    "\n",
    "Sabemos que o i-ésimo resíduo representa o erro de usarmos $\\hat{Y}_i$ para estimar $Y_i$. A soma dos quadrados desses resíduos é o valor que é minimizado pelo método dos mínimos quadrados. Esse valor pode ser representado da seguinte forma:\n",
    "\n",
    "# $$SQE = \\sum{(Y_i - \\hat{Y}_i)^2}$$\n",
    "\n",
    "O valor da SQE é uma medida do erro de se usar a equação de regressão estimada para estimar os valores da variável dependente na amostra.\n",
    "\n",
    "Outro componente que podemos medir é a soma dos quadrados total (SQT) que representa a medida do erro envolvido no uso da média ($\\bar{Y}$) para fazer as estimativas. A SQT pode ser representada da forma abaixo:\n",
    "\n",
    "# $$SQT = \\sum{(Y_i - \\bar{Y})^2}$$\n",
    "\n",
    "Para quantificar o quanto os valores estimados ($\\hat{Y}_i$) se afastam da média ($\\bar{Y}$) podemos obter mais uma soma de quadrados. Essa soma é chamada de soma dos quadrados da regressão (SQR) e é representada pela seguinte fórmula:\n",
    "\n",
    "# $$SQR = \\sum{(\\hat{Y}_i - \\bar{Y})^2}$$\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "3f6ebb26",
   "metadata": {
    "id": "R5QuIfRCoT_W",
    "papermill": {
     "duration": 0.049508,
     "end_time": "2024-05-06T18:59:11.601269",
     "exception": false,
     "start_time": "2024-05-06T18:59:11.551761",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Soma do quadrados do erros (SQE)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 65,
   "id": "6a03e877",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:11.704274Z",
     "iopub.status.busy": "2024-05-06T18:59:11.702639Z",
     "iopub.status.idle": "2024-05-06T18:59:11.727819Z",
     "shell.execute_reply": "2024-05-06T18:59:11.726073Z"
    },
    "id": "mjDVczwGcamw",
    "outputId": "52fbebca-5ec6-4b93-f4ce-e15da89ffb0f",
    "papermill": {
     "duration": 0.079444,
     "end_time": "2024-05-06T18:59:11.730084",
     "exception": false,
     "start_time": "2024-05-06T18:59:11.650640",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 6 × 4</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>Y</th><th scope=col>X</th><th scope=col>Y_previsto</th><th scope=col>Residuos</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>1</th><td>3011</td><td>9714</td><td>3095.785</td><td> -84.78509</td></tr>\n",
       "\t<tr><th scope=row>2</th><td>1305</td><td>3728</td><td>1316.203</td><td> -11.20301</td></tr>\n",
       "\t<tr><th scope=row>3</th><td>1879</td><td>6062</td><td>2010.079</td><td>-131.07948</td></tr>\n",
       "\t<tr><th scope=row>4</th><td>2654</td><td>8845</td><td>2837.439</td><td>-183.43948</td></tr>\n",
       "\t<tr><th scope=row>5</th><td>2849</td><td>8378</td><td>2698.605</td><td> 150.39528</td></tr>\n",
       "\t<tr><th scope=row>6</th><td>1068</td><td>3338</td><td>1200.260</td><td>-132.25964</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 6 × 4\n",
       "\\begin{tabular}{r|llll}\n",
       "  & Y & X & Y\\_previsto & Residuos\\\\\n",
       "  & <dbl> & <dbl> & <dbl> & <dbl>\\\\\n",
       "\\hline\n",
       "\t1 & 3011 & 9714 & 3095.785 &  -84.78509\\\\\n",
       "\t2 & 1305 & 3728 & 1316.203 &  -11.20301\\\\\n",
       "\t3 & 1879 & 6062 & 2010.079 & -131.07948\\\\\n",
       "\t4 & 2654 & 8845 & 2837.439 & -183.43948\\\\\n",
       "\t5 & 2849 & 8378 & 2698.605 &  150.39528\\\\\n",
       "\t6 & 1068 & 3338 & 1200.260 & -132.25964\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 6 × 4\n",
       "\n",
       "| <!--/--> | Y &lt;dbl&gt; | X &lt;dbl&gt; | Y_previsto &lt;dbl&gt; | Residuos &lt;dbl&gt; |\n",
       "|---|---|---|---|---|\n",
       "| 1 | 3011 | 9714 | 3095.785 |  -84.78509 |\n",
       "| 2 | 1305 | 3728 | 1316.203 |  -11.20301 |\n",
       "| 3 | 1879 | 6062 | 2010.079 | -131.07948 |\n",
       "| 4 | 2654 | 8845 | 2837.439 | -183.43948 |\n",
       "| 5 | 2849 | 8378 | 2698.605 |  150.39528 |\n",
       "| 6 | 1068 | 3338 | 1200.260 | -132.25964 |\n",
       "\n"
      ],
      "text/plain": [
       "  Y    X    Y_previsto Residuos  \n",
       "1 3011 9714 3095.785    -84.78509\n",
       "2 1305 3728 1316.203    -11.20301\n",
       "3 1879 6062 2010.079   -131.07948\n",
       "4 2654 8845 2837.439   -183.43948\n",
       "5 2849 8378 2698.605    150.39528\n",
       "6 1068 3338 1200.260   -132.25964"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "head(dataset)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 66,
   "id": "7559ca98",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:11.833208Z",
     "iopub.status.busy": "2024-05-06T18:59:11.831550Z",
     "iopub.status.idle": "2024-05-06T18:59:11.852771Z",
     "shell.execute_reply": "2024-05-06T18:59:11.851063Z"
    },
    "id": "fJ9ANPnIcamx",
    "outputId": "6798f1b9-1a61-40ff-e81a-0edeb2fe815c",
    "papermill": {
     "duration": 0.075439,
     "end_time": "2024-05-06T18:59:11.855111",
     "exception": false,
     "start_time": "2024-05-06T18:59:11.779672",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "984986.037519192"
      ],
      "text/latex": [
       "984986.037519192"
      ],
      "text/markdown": [
       "984986.037519192"
      ],
      "text/plain": [
       "[1] 984986"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "SQE <- sum(apply(dataset, 1, function(x) x['Residuos'] **2))\n",
    "SQE"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "b56183d7",
   "metadata": {
    "id": "ciYucebH75mU",
    "papermill": {
     "duration": 0.04956,
     "end_time": "2024-05-06T18:59:11.954566",
     "exception": false,
     "start_time": "2024-05-06T18:59:11.905006",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Soma do quadrados total (SQT)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 67,
   "id": "484443af",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:12.093684Z",
     "iopub.status.busy": "2024-05-06T18:59:12.091973Z",
     "iopub.status.idle": "2024-05-06T18:59:12.117857Z",
     "shell.execute_reply": "2024-05-06T18:59:12.115473Z"
    },
    "id": "8nBBr4HE75mV",
    "outputId": "97502af2-b60f-4f4e-c3a4-9b8f91c09435",
    "papermill": {
     "duration": 0.080743,
     "end_time": "2024-05-06T18:59:12.120662",
     "exception": false,
     "start_time": "2024-05-06T18:59:12.039919",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "32724149.28"
      ],
      "text/latex": [
       "32724149.28"
      ],
      "text/markdown": [
       "32724149.28"
      ],
      "text/plain": [
       "[1] 32724149"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "SQT <- sum(apply(dataset, 1, function(x) (x['Y'] - mean(dataset$Y)) ** 2))\n",
    "SQT"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "99d0437c",
   "metadata": {
    "id": "2faHnARf75mW",
    "papermill": {
     "duration": 0.051132,
     "end_time": "2024-05-06T18:59:12.222461",
     "exception": false,
     "start_time": "2024-05-06T18:59:12.171329",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Soma do quadrados da regressão (SQR)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 68,
   "id": "ea0f3dab",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:12.328356Z",
     "iopub.status.busy": "2024-05-06T18:59:12.326631Z",
     "iopub.status.idle": "2024-05-06T18:59:12.351826Z",
     "shell.execute_reply": "2024-05-06T18:59:12.349462Z"
    },
    "id": "sOIQrg2q75mW",
    "outputId": "fbd02601-bece-4e2b-91b1-fbea1a505d69",
    "papermill": {
     "duration": 0.081338,
     "end_time": "2024-05-06T18:59:12.354701",
     "exception": false,
     "start_time": "2024-05-06T18:59:12.273363",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "31739163.2424808"
      ],
      "text/latex": [
       "31739163.2424808"
      ],
      "text/markdown": [
       "31739163.2424808"
      ],
      "text/plain": [
       "[1] 31739163"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "SQR <- sum(apply(dataset, 1, function(x) (x['Y_previsto'] - mean(dataset$Y)) ** 2))\n",
    "SQR"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "38fbcd46",
   "metadata": {
    "papermill": {
     "duration": 0.050587,
     "end_time": "2024-05-06T18:59:12.456118",
     "exception": false,
     "start_time": "2024-05-06T18:59:12.405531",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### ANOVA\n",
    "\n",
    "#### <font color=red>Documentações:\n",
    "\n",
    "- [**anova**](https://www.rdocumentation.org/packages/stats/versions/3.6.1/topics/anova)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 69,
   "id": "8acf8125",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:12.561064Z",
     "iopub.status.busy": "2024-05-06T18:59:12.559290Z",
     "iopub.status.idle": "2024-05-06T18:59:12.589172Z",
     "shell.execute_reply": "2024-05-06T18:59:12.586832Z"
    },
    "papermill": {
     "duration": 0.085748,
     "end_time": "2024-05-06T18:59:12.591921",
     "exception": false,
     "start_time": "2024-05-06T18:59:12.506173",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A anova: 2 × 5</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>Df</th><th scope=col>Sum Sq</th><th scope=col>Mean Sq</th><th scope=col>F value</th><th scope=col>Pr(&gt;F)</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>X</th><td> 1</td><td>31739163</td><td>31739163.24</td><td>1546.702</td><td>3.555543e-38</td></tr>\n",
       "\t<tr><th scope=row>Residuals</th><td>48</td><td>  984986</td><td>   20520.54</td><td>      NA</td><td>          NA</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A anova: 2 × 5\n",
       "\\begin{tabular}{r|lllll}\n",
       "  & Df & Sum Sq & Mean Sq & F value & Pr(>F)\\\\\n",
       "  & <int> & <dbl> & <dbl> & <dbl> & <dbl>\\\\\n",
       "\\hline\n",
       "\tX &  1 & 31739163 & 31739163.24 & 1546.702 & 3.555543e-38\\\\\n",
       "\tResiduals & 48 &   984986 &    20520.54 &       NA &           NA\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A anova: 2 × 5\n",
       "\n",
       "| <!--/--> | Df &lt;int&gt; | Sum Sq &lt;dbl&gt; | Mean Sq &lt;dbl&gt; | F value &lt;dbl&gt; | Pr(&gt;F) &lt;dbl&gt; |\n",
       "|---|---|---|---|---|---|\n",
       "| X |  1 | 31739163 | 31739163.24 | 1546.702 | 3.555543e-38 |\n",
       "| Residuals | 48 |   984986 |    20520.54 |       NA |           NA |\n",
       "\n"
      ],
      "text/plain": [
       "          Df Sum Sq   Mean Sq     F value  Pr(>F)      \n",
       "X          1 31739163 31739163.24 1546.702 3.555543e-38\n",
       "Residuals 48   984986    20520.54       NA           NA"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "anova <- anova(resultado_regressao)\n",
    "anova"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 70,
   "id": "e1d60b60",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:12.695783Z",
     "iopub.status.busy": "2024-05-06T18:59:12.694012Z",
     "iopub.status.idle": "2024-05-06T18:59:12.713280Z",
     "shell.execute_reply": "2024-05-06T18:59:12.711047Z"
    },
    "papermill": {
     "duration": 0.07533,
     "end_time": "2024-05-06T18:59:12.717254",
     "exception": false,
     "start_time": "2024-05-06T18:59:12.641924",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "31739163.2424808"
      ],
      "text/latex": [
       "31739163.2424808"
      ],
      "text/markdown": [
       "31739163.2424808"
      ],
      "text/plain": [
       "[1] 31739163"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "anova[1,2]"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 71,
   "id": "54956a75",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:12.824867Z",
     "iopub.status.busy": "2024-05-06T18:59:12.822966Z",
     "iopub.status.idle": "2024-05-06T18:59:12.842306Z",
     "shell.execute_reply": "2024-05-06T18:59:12.840538Z"
    },
    "papermill": {
     "duration": 0.075868,
     "end_time": "2024-05-06T18:59:12.844757",
     "exception": false,
     "start_time": "2024-05-06T18:59:12.768889",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "984986.037519192"
      ],
      "text/latex": [
       "984986.037519192"
      ],
      "text/markdown": [
       "984986.037519192"
      ],
      "text/plain": [
       "[1] 984986"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "anova[2,2]"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 72,
   "id": "a302b59c",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:12.955651Z",
     "iopub.status.busy": "2024-05-06T18:59:12.953953Z",
     "iopub.status.idle": "2024-05-06T18:59:12.973340Z",
     "shell.execute_reply": "2024-05-06T18:59:12.970903Z"
    },
    "papermill": {
     "duration": 0.081177,
     "end_time": "2024-05-06T18:59:12.976632",
     "exception": false,
     "start_time": "2024-05-06T18:59:12.895455",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "32724149.28"
      ],
      "text/latex": [
       "32724149.28"
      ],
      "text/markdown": [
       "32724149.28"
      ],
      "text/plain": [
       "[1] 32724149"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "anova[1,2] + anova[2,2]"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "ad2ee9ac",
   "metadata": {
    "id": "qzIqboEg75mY",
    "papermill": {
     "duration": 0.050952,
     "end_time": "2024-05-06T18:59:13.079855",
     "exception": false,
     "start_time": "2024-05-06T18:59:13.028903",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Relação entre as somas de quadrados\n",
    "\n",
    "# $$SQT = SQR + SQE$$\n",
    "\n",
    "Onde,\n",
    "\n",
    "\n",
    "### $SQE = \\sum{(Y_i - \\hat{Y}_i)^2}$\n",
    "\n",
    "### $SQT = \\sum{(Y_i - \\bar{Y})^2}$\n",
    "\n",
    "### $SQR = \\sum{(\\hat{Y}_i - \\bar{Y})^2}$\n",
    "\n",
    "\n",
    "<img src=\"https://caelum-online-public.s3.amazonaws.com/1273-estatistica-parte4/01/img029.png\" width=50%>"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "42204e9d",
   "metadata": {
    "id": "OMz_pGr375ma",
    "papermill": {
     "duration": 0.051024,
     "end_time": "2024-05-06T18:59:13.184138",
     "exception": false,
     "start_time": "2024-05-06T18:59:13.133114",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Coeficiente de determinação (R²)\n",
    "\n",
    "A regressão estimada teria um ajuste perfeito se todos os valores da variável dependente ($Y_i$) estiverem sobre a reta de regressão estimada. Quando isso ocorre temos $Y_i - \\hat{Y}_i = 0$ para todas as observações, o que resulta em uma $SQE = 0$. Como $SQT=SQR+SQE$, é possível deduzir que para termos um ajuste perfeito $SQT$ deve ser igual a $SQR$ e a razão entre estas medidas ($\\frac{SQR}{SQT}$) deve ser igual a 1.\n",
    "\n",
    "Quando o ajuste não é tão perfeito nota-se que a $SQE$ apresenta valores maiores o que faz a razão $\\frac{SQR}{SQT}$ diminuir, e em uma situação de total imperfeição do ajuste teríamos uma $SQR=0$ e $SQE=SQT$ levando a $\\frac{SQR}{SQT}=0$.\n",
    "\n",
    "A razão $\\frac{SQR}{SQT}$, que assume valores entre 0 e 1, é utilizada como medida de eficiência do ajuste da equação de regressão estimada. Essa medida é conhecida como coeficiente de determinação (R²).\n",
    "\n",
    "# $$R^2 = \\frac{SQR}{SQT}$$\n",
    "\n",
    "## <font color='red'>Observação</font>\n",
    "> Somente com a utilização do R² não é possível tirar conclusões sobre a relação entre $Y$ e $X$ ser ou não ser estatisticamente\n",
    "significativa. Este tipo de afirmação deve basear-se em considerações que envolvem o tamanho da amostra e as propriedades da distribuição amostral dos estimadores mínimos quadrados."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 73,
   "id": "2263a378",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:13.292096Z",
     "iopub.status.busy": "2024-05-06T18:59:13.290394Z",
     "iopub.status.idle": "2024-05-06T18:59:13.309901Z",
     "shell.execute_reply": "2024-05-06T18:59:13.308087Z"
    },
    "id": "dKUngOqP75ma",
    "outputId": "3c4ac69b-310a-4393-fbe5-dc39476c5f5f",
    "papermill": {
     "duration": 0.075405,
     "end_time": "2024-05-06T18:59:13.312084",
     "exception": false,
     "start_time": "2024-05-06T18:59:13.236679",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "0.96990033173693"
      ],
      "text/latex": [
       "0.96990033173693"
      ],
      "text/markdown": [
       "0.96990033173693"
      ],
      "text/plain": [
       "[1] 0.9699003"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "R2 <- SQR / SQT\n",
    "R2"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 74,
   "id": "26d7b935",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:13.419636Z",
     "iopub.status.busy": "2024-05-06T18:59:13.417935Z",
     "iopub.status.idle": "2024-05-06T18:59:13.439970Z",
     "shell.execute_reply": "2024-05-06T18:59:13.437521Z"
    },
    "id": "oFowDxPB75mb",
    "outputId": "6019f00c-818b-4f1f-ba9e-8267ff394c4d",
    "papermill": {
     "duration": 0.077863,
     "end_time": "2024-05-06T18:59:13.442656",
     "exception": false,
     "start_time": "2024-05-06T18:59:13.364793",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "\n",
       "Call:\n",
       "lm(formula = Y ~ X, data = dataset)\n",
       "\n",
       "Residuals:\n",
       "    Min      1Q  Median      3Q     Max \n",
       "-202.49 -125.96  -22.28  140.53  260.67 \n",
       "\n",
       "Coefficients:\n",
       "             Estimate Std. Error t value Pr(>|t|)    \n",
       "(Intercept) 2.079e+02  5.013e+01   4.148 0.000136 ***\n",
       "X           2.973e-01  7.559e-03  39.328  < 2e-16 ***\n",
       "---\n",
       "Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1\n",
       "\n",
       "Residual standard error: 143.2 on 48 degrees of freedom\n",
       "Multiple R-squared:  0.9699,\tAdjusted R-squared:  0.9693 \n",
       "F-statistic:  1547 on 1 and 48 DF,  p-value: < 2.2e-16\n"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "resumo <- summary(resultado_regressao)\n",
    "resumo"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 75,
   "id": "df4655c7",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:13.550821Z",
     "iopub.status.busy": "2024-05-06T18:59:13.549292Z",
     "iopub.status.idle": "2024-05-06T18:59:13.567975Z",
     "shell.execute_reply": "2024-05-06T18:59:13.565749Z"
    },
    "papermill": {
     "duration": 0.075478,
     "end_time": "2024-05-06T18:59:13.570858",
     "exception": false,
     "start_time": "2024-05-06T18:59:13.495380",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "0.96990033173693"
      ],
      "text/latex": [
       "0.96990033173693"
      ],
      "text/markdown": [
       "0.96990033173693"
      ],
      "text/plain": [
       "[1] 0.9699003"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "resumo$r.squared"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "98640c66",
   "metadata": {
    "id": "BwQR3YxTcam0",
    "papermill": {
     "duration": 0.051654,
     "end_time": "2024-05-06T18:59:13.674263",
     "exception": false,
     "start_time": "2024-05-06T18:59:13.622609",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## <font color=green>4.8 Testes aplicados a modelos de regressão</font>\n",
    "***"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "5e83607a",
   "metadata": {
    "id": "eGZZaMp4td9Y",
    "papermill": {
     "duration": 0.052172,
     "end_time": "2024-05-06T18:59:13.777830",
     "exception": false,
     "start_time": "2024-05-06T18:59:13.725658",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Como vimos, em uma regressão linear simples, a média da variável dependente ($Y$) é uma função linear da variável independente ($X$):\n",
    "\n",
    "# $$Y_i = \\beta_1 + \\beta_2X_i$$\n",
    "\n",
    "Se o valor de $\\beta_2$ for zero podemos verificar que o valor médio de $Y$ não depende do valor de $X$ e, portanto, concluímos que $X$ e $Y$ não estão linearmente relacionados. De forma alternativa, se o valor de $\\beta_2$ não for igual a zero, concluímos que as duas variáveis estão relacionadas.\n",
    "\n",
    "Para testar se a relação de regressão é significativa, é preciso realizar um **teste de hipóteses** para determinar se o valor de $\\beta_2$ é zero. Antes de realizar este tipo de teste precisamos obter uma estimativa para $\\sigma^2$ (variância do erro)."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "15f97c8c",
   "metadata": {
    "id": "ePVflM9mtd9Z",
    "papermill": {
     "duration": 0.05241,
     "end_time": "2024-05-06T18:59:13.881991",
     "exception": false,
     "start_time": "2024-05-06T18:59:13.829581",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Output do modelo de regressão estimado"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 76,
   "id": "7ef0dfcf",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:13.989695Z",
     "iopub.status.busy": "2024-05-06T18:59:13.987978Z",
     "iopub.status.idle": "2024-05-06T18:59:14.007838Z",
     "shell.execute_reply": "2024-05-06T18:59:14.005971Z"
    },
    "id": "xZu92Yaztd9Z",
    "outputId": "26c0e659-1a7a-49ce-aa2b-de49009b7c69",
    "papermill": {
     "duration": 0.076824,
     "end_time": "2024-05-06T18:59:14.010738",
     "exception": false,
     "start_time": "2024-05-06T18:59:13.933914",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "\n",
       "Call:\n",
       "lm(formula = Y ~ X, data = dataset)\n",
       "\n",
       "Residuals:\n",
       "    Min      1Q  Median      3Q     Max \n",
       "-202.49 -125.96  -22.28  140.53  260.67 \n",
       "\n",
       "Coefficients:\n",
       "             Estimate Std. Error t value Pr(>|t|)    \n",
       "(Intercept) 2.079e+02  5.013e+01   4.148 0.000136 ***\n",
       "X           2.973e-01  7.559e-03  39.328  < 2e-16 ***\n",
       "---\n",
       "Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1\n",
       "\n",
       "Residual standard error: 143.2 on 48 degrees of freedom\n",
       "Multiple R-squared:  0.9699,\tAdjusted R-squared:  0.9693 \n",
       "F-statistic:  1547 on 1 and 48 DF,  p-value: < 2.2e-16\n"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "resumo"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 77,
   "id": "19cae855",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:14.121719Z",
     "iopub.status.busy": "2024-05-06T18:59:14.119956Z",
     "iopub.status.idle": "2024-05-06T18:59:14.144686Z",
     "shell.execute_reply": "2024-05-06T18:59:14.142838Z"
    },
    "papermill": {
     "duration": 0.083396,
     "end_time": "2024-05-06T18:59:14.147228",
     "exception": false,
     "start_time": "2024-05-06T18:59:14.063832",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A anova: 2 × 5</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>Df</th><th scope=col>Sum Sq</th><th scope=col>Mean Sq</th><th scope=col>F value</th><th scope=col>Pr(&gt;F)</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>X</th><td> 1</td><td>31739163</td><td>31739163.24</td><td>1546.702</td><td>3.555543e-38</td></tr>\n",
       "\t<tr><th scope=row>Residuals</th><td>48</td><td>  984986</td><td>   20520.54</td><td>      NA</td><td>          NA</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A anova: 2 × 5\n",
       "\\begin{tabular}{r|lllll}\n",
       "  & Df & Sum Sq & Mean Sq & F value & Pr(>F)\\\\\n",
       "  & <int> & <dbl> & <dbl> & <dbl> & <dbl>\\\\\n",
       "\\hline\n",
       "\tX &  1 & 31739163 & 31739163.24 & 1546.702 & 3.555543e-38\\\\\n",
       "\tResiduals & 48 &   984986 &    20520.54 &       NA &           NA\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A anova: 2 × 5\n",
       "\n",
       "| <!--/--> | Df &lt;int&gt; | Sum Sq &lt;dbl&gt; | Mean Sq &lt;dbl&gt; | F value &lt;dbl&gt; | Pr(&gt;F) &lt;dbl&gt; |\n",
       "|---|---|---|---|---|---|\n",
       "| X |  1 | 31739163 | 31739163.24 | 1546.702 | 3.555543e-38 |\n",
       "| Residuals | 48 |   984986 |    20520.54 |       NA |           NA |\n",
       "\n"
      ],
      "text/plain": [
       "          Df Sum Sq   Mean Sq     F value  Pr(>F)      \n",
       "X          1 31739163 31739163.24 1546.702 3.555543e-38\n",
       "Residuals 48   984986    20520.54       NA           NA"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "anova"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "6ec6e4ba",
   "metadata": {
    "id": "imBNBULStd9a",
    "papermill": {
     "duration": 0.053065,
     "end_time": "2024-05-06T18:59:14.252759",
     "exception": false,
     "start_time": "2024-05-06T18:59:14.199694",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Erro quadrático médio - estimativa de $\\sigma^2$\n",
    "\n",
    "Lembre-se que a **soma dos quadrados do erros (SQE)** é uma medida numérica da variabilidade dos dados observados em torno da reta de regressão estimada. Todas as somas de quadrados, estudadas anteriormente, estão associadas a um determinado número de graus de liberdade. No caso da SQE, como devem ser estimados dois parâmetros, temos $n-2$ graus de liberdade.\n",
    "\n",
    "O **erro quadrático médio**, representado pela equação abaixo, pode ser obtido dividindo-se a SQE por $n-2$ graus de liberdade.\n",
    "\n",
    "# $$EQM = \\frac{SQE}{n-2}$$"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 78,
   "id": "ce0c0148",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:14.362373Z",
     "iopub.status.busy": "2024-05-06T18:59:14.360699Z",
     "iopub.status.idle": "2024-05-06T18:59:14.378361Z",
     "shell.execute_reply": "2024-05-06T18:59:14.376513Z"
    },
    "id": "aDxRwFWJtd9a",
    "outputId": "8fa2a4ab-defc-494b-942a-6bf8dab1d41a",
    "papermill": {
     "duration": 0.075696,
     "end_time": "2024-05-06T18:59:14.380987",
     "exception": false,
     "start_time": "2024-05-06T18:59:14.305291",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "984986.037519192"
      ],
      "text/latex": [
       "984986.037519192"
      ],
      "text/markdown": [
       "984986.037519192"
      ],
      "text/plain": [
       "[1] 984986"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "SQE"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 79,
   "id": "cd6f91e4",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:14.488983Z",
     "iopub.status.busy": "2024-05-06T18:59:14.487387Z",
     "iopub.status.idle": "2024-05-06T18:59:14.504580Z",
     "shell.execute_reply": "2024-05-06T18:59:14.502827Z"
    },
    "id": "qg5nZub3CEFx",
    "outputId": "54ad264b-c919-4c12-9928-b4c1d7d49def",
    "papermill": {
     "duration": 0.073443,
     "end_time": "2024-05-06T18:59:14.506951",
     "exception": false,
     "start_time": "2024-05-06T18:59:14.433508",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "50"
      ],
      "text/latex": [
       "50"
      ],
      "text/markdown": [
       "50"
      ],
      "text/plain": [
       "[1] 50"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 80,
   "id": "0ac02bb3",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:14.616365Z",
     "iopub.status.busy": "2024-05-06T18:59:14.614809Z",
     "iopub.status.idle": "2024-05-06T18:59:14.635892Z",
     "shell.execute_reply": "2024-05-06T18:59:14.633630Z"
    },
    "id": "TXfeyZwvtd9b",
    "outputId": "7c2245e2-a436-4b9b-9e5f-0a19bb4baf3d",
    "papermill": {
     "duration": 0.078939,
     "end_time": "2024-05-06T18:59:14.638742",
     "exception": false,
     "start_time": "2024-05-06T18:59:14.559803",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "20520.5424483165"
      ],
      "text/latex": [
       "20520.5424483165"
      ],
      "text/markdown": [
       "20520.5424483165"
      ],
      "text/plain": [
       "[1] 20520.54"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "EQM <- SQE / (n-2)\n",
    "EQM"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 81,
   "id": "ab79ae0a",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:14.748861Z",
     "iopub.status.busy": "2024-05-06T18:59:14.747285Z",
     "iopub.status.idle": "2024-05-06T18:59:14.765813Z",
     "shell.execute_reply": "2024-05-06T18:59:14.764104Z"
    },
    "id": "CF28rNuKtd9d",
    "outputId": "ba2d0b4e-65cd-46ae-be25-e5add14e3508",
    "papermill": {
     "duration": 0.076813,
     "end_time": "2024-05-06T18:59:14.768262",
     "exception": false,
     "start_time": "2024-05-06T18:59:14.691449",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "20520.5424483165"
      ],
      "text/latex": [
       "20520.5424483165"
      ],
      "text/markdown": [
       "20520.5424483165"
      ],
      "text/plain": [
       "[1] 20520.54"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "EQM <- anova$'Mean Sq'[2]\n",
    "EQM"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 82,
   "id": "f7cda439",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:14.878140Z",
     "iopub.status.busy": "2024-05-06T18:59:14.876497Z",
     "iopub.status.idle": "2024-05-06T18:59:14.895585Z",
     "shell.execute_reply": "2024-05-06T18:59:14.893873Z"
    },
    "papermill": {
     "duration": 0.075838,
     "end_time": "2024-05-06T18:59:14.897953",
     "exception": false,
     "start_time": "2024-05-06T18:59:14.822115",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "20520.5424483165"
      ],
      "text/latex": [
       "20520.5424483165"
      ],
      "text/markdown": [
       "20520.5424483165"
      ],
      "text/plain": [
       "[1] 20520.54"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "EQM <- anova['Residuals', 'Mean Sq']\n",
    "EQM"
   ]
  },
  {
   "cell_type": "raw",
   "id": "19fe42d6",
   "metadata": {
    "id": "3xHqA9Gicam0",
    "papermill": {
     "duration": 0.053534,
     "end_time": "2024-05-06T18:59:15.004243",
     "exception": false,
     "start_time": "2024-05-06T18:59:14.950709",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Teste de hipótese para nulidade do coeficiente angular"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "a70151e7",
   "metadata": {
    "id": "QpUUlnKw9Ac_",
    "papermill": {
     "duration": 0.05306,
     "end_time": "2024-05-06T18:59:15.110360",
     "exception": false,
     "start_time": "2024-05-06T18:59:15.057300",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Considere o seguinte modelo de regressão linear simples:\n",
    "\n",
    "# $$Y_i = \\beta_1 + \\beta_2X_i + u_i$$\n",
    "\n",
    "Se as variáveis $Y$ e $X$ são linearmente relacionadas, espera-se que $\\beta_2$ seja diferente de zero. Para testar esta hipótese formulamos um teste de hipótese com a seguinte especificação de hipóteses nula e alternativa:\n",
    "\n",
    "## $H_0: \\beta_2 = 0$\n",
    "## $H_1: \\beta_2 \\neq 0$\n",
    "\n",
    "Caso $H_0$ seja rejeitada, concluiremos que existe uma relação linear estatisticamente significativa entre as duas variáveis.\n",
    "\n",
    "Considere agora que $b_1$ e $b_2$ são nossos estimadores de mínimos quadrados. Considere que a distribuição amostral de $b_2$ segue uma normal e também as seguintes propriedades:\n",
    "\n",
    "# $$E(b_2) = \\beta_2$$\n",
    "# $$\\sigma_{b_2} = \\frac{\\sigma}{\\sqrt{\\sum{(X_i - \\bar{X})^2}}}$$\n",
    "\n",
    "Como não conhecemos o valor de $\\sigma$, utilizamos $s$ como estimativa:\n",
    "\n",
    "# $$s_{b_2} = \\frac{s}{\\sqrt{\\sum{(X_i - \\bar{X})^2}}}$$\n",
    "\n",
    "Note que o valor esperado de $b_2$ é $\\beta_2$, logo, $b_2$ é um estimador não viesado de $\\beta_2$. Abaixo temos a estatística de teste (t) que segue uma distribuição t de Student com $n-2$ graus de liberdade.\n",
    "\n",
    "# $$t = \\frac{b_2 - \\beta_2}{s_{b_2}}$$"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "e7e5822b",
   "metadata": {
    "id": "hupnxGgFtd9g",
    "papermill": {
     "duration": 0.052445,
     "end_time": "2024-05-06T18:59:15.215269",
     "exception": false,
     "start_time": "2024-05-06T18:59:15.162824",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Calculando $s$"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 83,
   "id": "aafde0e9",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:15.324506Z",
     "iopub.status.busy": "2024-05-06T18:59:15.322885Z",
     "iopub.status.idle": "2024-05-06T18:59:15.345873Z",
     "shell.execute_reply": "2024-05-06T18:59:15.343558Z"
    },
    "id": "9r87ZchPcam2",
    "outputId": "fdf0b518-98c1-43b4-db6f-fb54d90dd4b1",
    "papermill": {
     "duration": 0.080756,
     "end_time": "2024-05-06T18:59:15.348651",
     "exception": false,
     "start_time": "2024-05-06T18:59:15.267895",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "143.249930011559"
      ],
      "text/latex": [
       "143.249930011559"
      ],
      "text/markdown": [
       "143.249930011559"
      ],
      "text/plain": [
       "[1] 143.2499"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "s <- sqrt(EQM)\n",
    "s"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "f344ffe1",
   "metadata": {
    "id": "mr85iUdatd9q",
    "papermill": {
     "duration": 0.062519,
     "end_time": "2024-05-06T18:59:15.463885",
     "exception": false,
     "start_time": "2024-05-06T18:59:15.401366",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Calculando $\\sum{(X_i - \\bar{X})^2}$"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 84,
   "id": "df78b66e",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:15.580080Z",
     "iopub.status.busy": "2024-05-06T18:59:15.577512Z",
     "iopub.status.idle": "2024-05-06T18:59:15.608449Z",
     "shell.execute_reply": "2024-05-06T18:59:15.606107Z"
    },
    "id": "exNBEriWtd9q",
    "outputId": "b3a86e81-7724-46fa-d3f0-d61d14492042",
    "papermill": {
     "duration": 0.094738,
     "end_time": "2024-05-06T18:59:15.611391",
     "exception": false,
     "start_time": "2024-05-06T18:59:15.516653",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "359114426.5"
      ],
      "text/latex": [
       "359114426.5"
      ],
      "text/markdown": [
       "359114426.5"
      ],
      "text/plain": [
       "[1] 359114426"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "SOMA_DESVIO2 <- sum(apply(dataset, 1, function(x) (x['X'] - mean(dataset$X)) ** 2))\n",
    "SOMA_DESVIO2"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "6d21d68e",
   "metadata": {
    "id": "mEuMAudxtd9u",
    "papermill": {
     "duration": 0.068156,
     "end_time": "2024-05-06T18:59:15.734279",
     "exception": false,
     "start_time": "2024-05-06T18:59:15.666123",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Calculando $s_{b_2}$"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 85,
   "id": "77fc3939",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:15.847923Z",
     "iopub.status.busy": "2024-05-06T18:59:15.846149Z",
     "iopub.status.idle": "2024-05-06T18:59:15.873108Z",
     "shell.execute_reply": "2024-05-06T18:59:15.870730Z"
    },
    "id": "uwr9JWN_td9u",
    "outputId": "87a6cb7e-33a9-43f8-9e60-c9dcc0cc3bfb",
    "papermill": {
     "duration": 0.085545,
     "end_time": "2024-05-06T18:59:15.875949",
     "exception": false,
     "start_time": "2024-05-06T18:59:15.790404",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "18950.3146807645"
      ],
      "text/latex": [
       "18950.3146807645"
      ],
      "text/markdown": [
       "18950.3146807645"
      ],
      "text/plain": [
       "[1] 18950.31"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "s_beta_2 <- sqrt(SOMA_DESVIO2)\n",
    "s_beta_2"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "443b188f",
   "metadata": {
    "id": "ZXe59tB-td9w",
    "papermill": {
     "duration": 0.085104,
     "end_time": "2024-05-06T18:59:16.016033",
     "exception": false,
     "start_time": "2024-05-06T18:59:15.930929",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Determinando as áreas de aceitação e rejeição de $H_0$"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "973f0051",
   "metadata": {
    "id": "cuvV9yC-td9x",
    "papermill": {
     "duration": 0.053896,
     "end_time": "2024-05-06T18:59:16.123204",
     "exception": false,
     "start_time": "2024-05-06T18:59:16.069308",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "![Região de Aceitação](https://caelum-online-public.s3.amazonaws.com/1273-estatistica-parte4/01/img031.png)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "b1f47796",
   "metadata": {
    "id": "z9tmldlUtd9y",
    "papermill": {
     "duration": 0.053308,
     "end_time": "2024-05-06T18:59:16.231232",
     "exception": false,
     "start_time": "2024-05-06T18:59:16.177924",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Níveis de confiança e significância"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 86,
   "id": "24c95e22",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:16.342501Z",
     "iopub.status.busy": "2024-05-06T18:59:16.340532Z",
     "iopub.status.idle": "2024-05-06T18:59:16.356968Z",
     "shell.execute_reply": "2024-05-06T18:59:16.355365Z"
    },
    "id": "x6imEPp0td9y",
    "papermill": {
     "duration": 0.075126,
     "end_time": "2024-05-06T18:59:16.359815",
     "exception": false,
     "start_time": "2024-05-06T18:59:16.284689",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "confianca <- 0.95\n",
    "significancia <- 1 - confianca"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 87,
   "id": "f75ae8f8",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:16.471229Z",
     "iopub.status.busy": "2024-05-06T18:59:16.468703Z",
     "iopub.status.idle": "2024-05-06T18:59:16.496706Z",
     "shell.execute_reply": "2024-05-06T18:59:16.493957Z"
    },
    "id": "VFJGcIRGD-ai",
    "outputId": "ad270885-02cd-43ef-ed3a-8100832af959",
    "papermill": {
     "duration": 0.086564,
     "end_time": "2024-05-06T18:59:16.499828",
     "exception": false,
     "start_time": "2024-05-06T18:59:16.413264",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "48"
      ],
      "text/latex": [
       "48"
      ],
      "text/markdown": [
       "48"
      ],
      "text/plain": [
       "[1] 48"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "graus_de_liberdade <- resultado_regressao$df.residual\n",
    "graus_de_liberdade"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "142820c7",
   "metadata": {
    "id": "Xb6DWLiTtd9z",
    "papermill": {
     "duration": 0.055104,
     "end_time": "2024-05-06T18:59:16.610412",
     "exception": false,
     "start_time": "2024-05-06T18:59:16.555308",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Obtendo $t_{\\alpha/2}$"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 88,
   "id": "3e74d0f7",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:16.719578Z",
     "iopub.status.busy": "2024-05-06T18:59:16.717922Z",
     "iopub.status.idle": "2024-05-06T18:59:16.743930Z",
     "shell.execute_reply": "2024-05-06T18:59:16.736618Z"
    },
    "id": "yVEsPYPitd9z",
    "outputId": "afef1285-e590-472e-c64e-bdeeaea2c19b",
    "papermill": {
     "duration": 0.08387,
     "end_time": "2024-05-06T18:59:16.746919",
     "exception": false,
     "start_time": "2024-05-06T18:59:16.663049",
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
    "probabilidade <- (0.5 + confianca / 2)\n",
    "probabilidade"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 89,
   "id": "41da0110",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:16.859248Z",
     "iopub.status.busy": "2024-05-06T18:59:16.857508Z",
     "iopub.status.idle": "2024-05-06T18:59:16.876482Z",
     "shell.execute_reply": "2024-05-06T18:59:16.874716Z"
    },
    "id": "_Cfvwj7Ktd91",
    "outputId": "f8a33b6a-2364-4492-fbeb-23c17498fa84",
    "papermill": {
     "duration": 0.076676,
     "end_time": "2024-05-06T18:59:16.878695",
     "exception": false,
     "start_time": "2024-05-06T18:59:16.802019",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "2.01063475762423"
      ],
      "text/latex": [
       "2.01063475762423"
      ],
      "text/markdown": [
       "2.01063475762423"
      ],
      "text/plain": [
       "[1] 2.010635"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "t_alpha_2 <- qt(probabilidade, graus_de_liberdade)\n",
    "t_alpha_2"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "73695051",
   "metadata": {
    "id": "oW11PFl4td94",
    "papermill": {
     "duration": 0.053628,
     "end_time": "2024-05-06T18:59:16.985649",
     "exception": false,
     "start_time": "2024-05-06T18:59:16.932021",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "![Região de Aceitação](https://caelum-online-public.s3.amazonaws.com/1273-estatistica-parte4/01/img032.png)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "d2f3f93a",
   "metadata": {
    "id": "Sjj0cgC7td94",
    "papermill": {
     "duration": 0.054331,
     "end_time": "2024-05-06T18:59:17.093896",
     "exception": false,
     "start_time": "2024-05-06T18:59:17.039565",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Obtendo $t = \\frac{b_2 - \\beta_2}{s_{b_2}}$"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 90,
   "id": "34ec9d92",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:17.205168Z",
     "iopub.status.busy": "2024-05-06T18:59:17.203364Z",
     "iopub.status.idle": "2024-05-06T18:59:17.223551Z",
     "shell.execute_reply": "2024-05-06T18:59:17.221654Z"
    },
    "id": "Db8oVrEWtd94",
    "outputId": "711431b8-c1a8-4d27-d697-427096dee61c",
    "papermill": {
     "duration": 0.078748,
     "end_time": "2024-05-06T18:59:17.225976",
     "exception": false,
     "start_time": "2024-05-06T18:59:17.147228",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "1.56879026022448e-05"
      ],
      "text/latex": [
       "1.56879026022448e-05"
      ],
      "text/markdown": [
       "1.56879026022448e-05"
      ],
      "text/plain": [
       "[1] 1.56879e-05"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "t <- (beta_2 - 0) / s_beta_2\n",
    "t"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 91,
   "id": "c4815bd6",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:17.338731Z",
     "iopub.status.busy": "2024-05-06T18:59:17.337146Z",
     "iopub.status.idle": "2024-05-06T18:59:17.363350Z",
     "shell.execute_reply": "2024-05-06T18:59:17.361120Z"
    },
    "id": "h-Tm7-Qstd95",
    "outputId": "cc627fdf-8c48-4da1-9a3a-ab8b9ceb38e6",
    "papermill": {
     "duration": 0.085048,
     "end_time": "2024-05-06T18:59:17.365854",
     "exception": false,
     "start_time": "2024-05-06T18:59:17.280806",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A matrix: 2 × 4 of type dbl</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>Estimate</th><th scope=col>Std. Error</th><th scope=col>t value</th><th scope=col>Pr(&gt;|t|)</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>(Intercept)</th><td>207.9033138</td><td>50.126682183</td><td> 4.147558</td><td>1.362270e-04</td></tr>\n",
       "\t<tr><th scope=row>X</th><td>  0.2972907</td><td> 0.007559238</td><td>39.328132</td><td>3.555543e-38</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A matrix: 2 × 4 of type dbl\n",
       "\\begin{tabular}{r|llll}\n",
       "  & Estimate & Std. Error & t value & Pr(>\\textbar{}t\\textbar{})\\\\\n",
       "\\hline\n",
       "\t(Intercept) & 207.9033138 & 50.126682183 &  4.147558 & 1.362270e-04\\\\\n",
       "\tX &   0.2972907 &  0.007559238 & 39.328132 & 3.555543e-38\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A matrix: 2 × 4 of type dbl\n",
       "\n",
       "| <!--/--> | Estimate | Std. Error | t value | Pr(&gt;|t|) |\n",
       "|---|---|---|---|---|\n",
       "| (Intercept) | 207.9033138 | 50.126682183 |  4.147558 | 1.362270e-04 |\n",
       "| X |   0.2972907 |  0.007559238 | 39.328132 | 3.555543e-38 |\n",
       "\n"
      ],
      "text/plain": [
       "            Estimate    Std. Error   t value   Pr(>|t|)    \n",
       "(Intercept) 207.9033138 50.126682183  4.147558 1.362270e-04\n",
       "X             0.2972907  0.007559238 39.328132 3.555543e-38"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "coeficientes <- resumo$coefficients \n",
    "coeficientes"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 92,
   "id": "49b0f2d1",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:17.480929Z",
     "iopub.status.busy": "2024-05-06T18:59:17.479301Z",
     "iopub.status.idle": "2024-05-06T18:59:17.496797Z",
     "shell.execute_reply": "2024-05-06T18:59:17.494962Z"
    },
    "papermill": {
     "duration": 0.076517,
     "end_time": "2024-05-06T18:59:17.499216",
     "exception": false,
     "start_time": "2024-05-06T18:59:17.422699",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "39.328131926755"
      ],
      "text/latex": [
       "39.328131926755"
      ],
      "text/markdown": [
       "39.328131926755"
      ],
      "text/plain": [
       "[1] 39.32813"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "coeficientes['X', 't value']"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "e8082033",
   "metadata": {
    "id": "jOvLKfvitd97",
    "papermill": {
     "duration": 0.056391,
     "end_time": "2024-05-06T18:59:17.610040",
     "exception": false,
     "start_time": "2024-05-06T18:59:17.553649",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "![Região de Aceitação](https://caelum-online-public.s3.amazonaws.com/1273-estatistica-parte4/01/img033.png)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "ab4f7a2c",
   "metadata": {
    "id": "lU747h33td97",
    "papermill": {
     "duration": 0.056788,
     "end_time": "2024-05-06T18:59:17.721739",
     "exception": false,
     "start_time": "2024-05-06T18:59:17.664951",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Etapas e regras de decisão do teste t de significância dos parâmetros"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "fc692318",
   "metadata": {
    "id": "kDHBbSAitd97",
    "papermill": {
     "duration": 0.054907,
     "end_time": "2024-05-06T18:59:17.831847",
     "exception": false,
     "start_time": "2024-05-06T18:59:17.776940",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "<img src=\"https://caelum-online-public.s3.amazonaws.com/1273-estatistica-parte4/01/img030.png\" width=90%>"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "700e7a0f",
   "metadata": {
    "id": "-Il6O2H6td98",
    "papermill": {
     "duration": 0.054914,
     "end_time": "2024-05-06T18:59:17.942888",
     "exception": false,
     "start_time": "2024-05-06T18:59:17.887974",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### <font color='red'>Critério do valor crítico</font>\n",
    "\n",
    "> ### Teste Bicaudal\n",
    "> ### Rejeitar $H_0$ se $t \\leq -t_{\\alpha / 2}$ ou se $t \\geq t_{\\alpha / 2}$"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 93,
   "id": "504b680e",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:18.056286Z",
     "iopub.status.busy": "2024-05-06T18:59:18.054627Z",
     "iopub.status.idle": "2024-05-06T18:59:18.072566Z",
     "shell.execute_reply": "2024-05-06T18:59:18.070845Z"
    },
    "id": "24_4-073td99",
    "outputId": "df923628-eed0-4efe-a23c-2ff9c14d7151",
    "papermill": {
     "duration": 0.077538,
     "end_time": "2024-05-06T18:59:18.074890",
     "exception": false,
     "start_time": "2024-05-06T18:59:17.997352",
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
    "t <= -t_alpha_2"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 94,
   "id": "7ef6e590",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:18.189653Z",
     "iopub.status.busy": "2024-05-06T18:59:18.188058Z",
     "iopub.status.idle": "2024-05-06T18:59:18.207366Z",
     "shell.execute_reply": "2024-05-06T18:59:18.205096Z"
    },
    "id": "jya2Bqvktd9-",
    "outputId": "afb1e753-5f48-477c-939b-5b52bcbe1fb5",
    "papermill": {
     "duration": 0.079678,
     "end_time": "2024-05-06T18:59:18.210159",
     "exception": false,
     "start_time": "2024-05-06T18:59:18.130481",
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
    "t >= t_alpha_2"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "e5f700f6",
   "metadata": {
    "id": "dW7cJcnQtd9_",
    "papermill": {
     "duration": 0.055907,
     "end_time": "2024-05-06T18:59:18.321154",
     "exception": false,
     "start_time": "2024-05-06T18:59:18.265247",
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
   "execution_count": 95,
   "id": "ddb897d2",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:18.435352Z",
     "iopub.status.busy": "2024-05-06T18:59:18.433601Z",
     "iopub.status.idle": "2024-05-06T18:59:18.454700Z",
     "shell.execute_reply": "2024-05-06T18:59:18.452397Z"
    },
    "id": "LJQ3BBpBtd9_",
    "outputId": "1e76d3a4-34c7-4920-87b7-8155d6156922",
    "papermill": {
     "duration": 0.080638,
     "end_time": "2024-05-06T18:59:18.457255",
     "exception": false,
     "start_time": "2024-05-06T18:59:18.376617",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "0.999987547883967"
      ],
      "text/latex": [
       "0.999987547883967"
      ],
      "text/markdown": [
       "0.999987547883967"
      ],
      "text/plain": [
       "[1] 0.9999875"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "p_valor <- 2 * (pt(t, graus_de_liberdade, lower.tail = FALSE))\n",
    "p_valor"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 96,
   "id": "34c8be4f",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:18.570851Z",
     "iopub.status.busy": "2024-05-06T18:59:18.569145Z",
     "iopub.status.idle": "2024-05-06T18:59:18.588831Z",
     "shell.execute_reply": "2024-05-06T18:59:18.586621Z"
    },
    "id": "gpVuM3Gvtd-B",
    "outputId": "e6fcf48b-3839-49ee-bef3-2b2fb52ab9f9",
    "papermill": {
     "duration": 0.079419,
     "end_time": "2024-05-06T18:59:18.591255",
     "exception": false,
     "start_time": "2024-05-06T18:59:18.511836",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "3.55554322858599e-38"
      ],
      "text/latex": [
       "3.55554322858599e-38"
      ],
      "text/markdown": [
       "3.55554322858599e-38"
      ],
      "text/plain": [
       "[1] 3.555543e-38"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "p_valor <- coeficientes['X', 'Pr(>|t|)']\n",
    "p_valor"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 97,
   "id": "8e4bd1e3",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:18.706169Z",
     "iopub.status.busy": "2024-05-06T18:59:18.704465Z",
     "iopub.status.idle": "2024-05-06T18:59:18.721274Z",
     "shell.execute_reply": "2024-05-06T18:59:18.719544Z"
    },
    "id": "Qtmjl1oBtd-C",
    "outputId": "4157f6d5-c16d-4c30-952c-82817a25a422",
    "papermill": {
     "duration": 0.0762,
     "end_time": "2024-05-06T18:59:18.723372",
     "exception": false,
     "start_time": "2024-05-06T18:59:18.647172",
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
   "id": "2003360d",
   "metadata": {
    "id": "EP5tgnmttd-D",
    "papermill": {
     "duration": 0.055235,
     "end_time": "2024-05-06T18:59:18.833275",
     "exception": false,
     "start_time": "2024-05-06T18:59:18.778040",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### <font color='green'>Conclusão: Rejeitamos $H_0$ e concluímos que existe uma relação significativa entre as duas variáveis.</font>"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 98,
   "id": "566527d0",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:18.947667Z",
     "iopub.status.busy": "2024-05-06T18:59:18.945940Z",
     "iopub.status.idle": "2024-05-06T18:59:18.964535Z",
     "shell.execute_reply": "2024-05-06T18:59:18.962776Z"
    },
    "id": "HMaewwFXtd-D",
    "outputId": "8d4bb708-00ea-4d92-aaa7-d8d754a0e73a",
    "papermill": {
     "duration": 0.078328,
     "end_time": "2024-05-06T18:59:18.966917",
     "exception": false,
     "start_time": "2024-05-06T18:59:18.888589",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "\n",
       "Call:\n",
       "lm(formula = Y ~ X, data = dataset)\n",
       "\n",
       "Residuals:\n",
       "    Min      1Q  Median      3Q     Max \n",
       "-202.49 -125.96  -22.28  140.53  260.67 \n",
       "\n",
       "Coefficients:\n",
       "             Estimate Std. Error t value Pr(>|t|)    \n",
       "(Intercept) 2.079e+02  5.013e+01   4.148 0.000136 ***\n",
       "X           2.973e-01  7.559e-03  39.328  < 2e-16 ***\n",
       "---\n",
       "Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1\n",
       "\n",
       "Residual standard error: 143.2 on 48 degrees of freedom\n",
       "Multiple R-squared:  0.9699,\tAdjusted R-squared:  0.9693 \n",
       "F-statistic:  1547 on 1 and 48 DF,  p-value: < 2.2e-16\n"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "resumo"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 99,
   "id": "9c719a30",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:19.082540Z",
     "iopub.status.busy": "2024-05-06T18:59:19.080820Z",
     "iopub.status.idle": "2024-05-06T18:59:19.105080Z",
     "shell.execute_reply": "2024-05-06T18:59:19.103259Z"
    },
    "papermill": {
     "duration": 0.084665,
     "end_time": "2024-05-06T18:59:19.107481",
     "exception": false,
     "start_time": "2024-05-06T18:59:19.022816",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A anova: 2 × 5</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>Df</th><th scope=col>Sum Sq</th><th scope=col>Mean Sq</th><th scope=col>F value</th><th scope=col>Pr(&gt;F)</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>X</th><td> 1</td><td>31739163</td><td>31739163.24</td><td>1546.702</td><td>3.555543e-38</td></tr>\n",
       "\t<tr><th scope=row>Residuals</th><td>48</td><td>  984986</td><td>   20520.54</td><td>      NA</td><td>          NA</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A anova: 2 × 5\n",
       "\\begin{tabular}{r|lllll}\n",
       "  & Df & Sum Sq & Mean Sq & F value & Pr(>F)\\\\\n",
       "  & <int> & <dbl> & <dbl> & <dbl> & <dbl>\\\\\n",
       "\\hline\n",
       "\tX &  1 & 31739163 & 31739163.24 & 1546.702 & 3.555543e-38\\\\\n",
       "\tResiduals & 48 &   984986 &    20520.54 &       NA &           NA\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A anova: 2 × 5\n",
       "\n",
       "| <!--/--> | Df &lt;int&gt; | Sum Sq &lt;dbl&gt; | Mean Sq &lt;dbl&gt; | F value &lt;dbl&gt; | Pr(&gt;F) &lt;dbl&gt; |\n",
       "|---|---|---|---|---|---|\n",
       "| X |  1 | 31739163 | 31739163.24 | 1546.702 | 3.555543e-38 |\n",
       "| Residuals | 48 |   984986 |    20520.54 |       NA |           NA |\n",
       "\n"
      ],
      "text/plain": [
       "          Df Sum Sq   Mean Sq     F value  Pr(>F)      \n",
       "X          1 31739163 31739163.24 1546.702 3.555543e-38\n",
       "Residuals 48   984986    20520.54       NA           NA"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "anova"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "8f580e20",
   "metadata": {
    "id": "HTW4vH03td-E",
    "papermill": {
     "duration": 0.055966,
     "end_time": "2024-05-06T18:59:19.219241",
     "exception": false,
     "start_time": "2024-05-06T18:59:19.163275",
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
   "id": "d0198d90",
   "metadata": {
    "id": "fEAeu55gtd-E",
    "papermill": {
     "duration": 0.055233,
     "end_time": "2024-05-06T18:59:19.333026",
     "exception": false,
     "start_time": "2024-05-06T18:59:19.277793",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Teste F"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "5c37574e",
   "metadata": {
    "id": "boZIhWUmtd-E",
    "papermill": {
     "duration": 0.061831,
     "end_time": "2024-05-06T18:59:19.460403",
     "exception": false,
     "start_time": "2024-05-06T18:59:19.398572",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "O teste F também é uma ferramenta para testar a significância na regressão. Baseado na distribuição F de probabilidade, o teste F é utilizado para verificar a significância global na regressão, isto é, em uma regressão múltipla, onde existe mais de uma variável independente, o teste F verifica a nulidade de todos os parâmetros do modelo conjuntamente.\n",
    "\n",
    "Em nosso caso (regressão linear simples) ele fornece a mesma conclusão obtida com o teste t.\n",
    "\n",
    "**Hipóteses:**\n",
    "\n",
    "## $H_0: \\beta_2 = 0$\n",
    "## $H_0: \\beta_2 \\neq 0$\n",
    "\n",
    "**Estatística de teste:**\n",
    "\n",
    "# $$F = \\frac{\\frac{SQR}{k}}{\\frac{SQE}{n-k-1}}$$\n",
    "\n",
    "Onde,\n",
    "\n",
    "$SQR$ - soma dos quadrados da regressão\n",
    "\n",
    "$SQE$ - soma dos quadrados dos erros\n",
    "\n",
    "$k$ - total de variáveis independentes ($X$)\n",
    "\n",
    "**Regras de rejeição de $H_0$:**\n",
    "\n",
    "**Critério do valor crítico** $\\rightarrow$ Rejeitar se $F \\geq F_{\\alpha}$\n",
    "\n",
    "Onde,\n",
    "\n",
    "$F_{\\alpha}$ - baseia-se na distribuição F com $k$ graus de liberdade no numerador e $n-k-1$ no denominador.\n",
    "\n",
    "**Critério do p-valor** $\\rightarrow$ Rejeitar se $p-valor \\leq \\alpha$"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "3ad914e0",
   "metadata": {
    "id": "gT3WGPkNtd-E",
    "papermill": {
     "duration": 0.056417,
     "end_time": "2024-05-06T18:59:19.573069",
     "exception": false,
     "start_time": "2024-05-06T18:59:19.516652",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Calculando a estatística de teste ($F$)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 100,
   "id": "50095bcd",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:19.690915Z",
     "iopub.status.busy": "2024-05-06T18:59:19.689197Z",
     "iopub.status.idle": "2024-05-06T18:59:19.714347Z",
     "shell.execute_reply": "2024-05-06T18:59:19.712402Z"
    },
    "papermill": {
     "duration": 0.086218,
     "end_time": "2024-05-06T18:59:19.716974",
     "exception": false,
     "start_time": "2024-05-06T18:59:19.630756",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A anova: 2 × 5</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>Df</th><th scope=col>Sum Sq</th><th scope=col>Mean Sq</th><th scope=col>F value</th><th scope=col>Pr(&gt;F)</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>X</th><td> 1</td><td>31739163</td><td>31739163.24</td><td>1546.702</td><td>3.555543e-38</td></tr>\n",
       "\t<tr><th scope=row>Residuals</th><td>48</td><td>  984986</td><td>   20520.54</td><td>      NA</td><td>          NA</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A anova: 2 × 5\n",
       "\\begin{tabular}{r|lllll}\n",
       "  & Df & Sum Sq & Mean Sq & F value & Pr(>F)\\\\\n",
       "  & <int> & <dbl> & <dbl> & <dbl> & <dbl>\\\\\n",
       "\\hline\n",
       "\tX &  1 & 31739163 & 31739163.24 & 1546.702 & 3.555543e-38\\\\\n",
       "\tResiduals & 48 &   984986 &    20520.54 &       NA &           NA\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A anova: 2 × 5\n",
       "\n",
       "| <!--/--> | Df &lt;int&gt; | Sum Sq &lt;dbl&gt; | Mean Sq &lt;dbl&gt; | F value &lt;dbl&gt; | Pr(&gt;F) &lt;dbl&gt; |\n",
       "|---|---|---|---|---|---|\n",
       "| X |  1 | 31739163 | 31739163.24 | 1546.702 | 3.555543e-38 |\n",
       "| Residuals | 48 |   984986 |    20520.54 |       NA |           NA |\n",
       "\n"
      ],
      "text/plain": [
       "          Df Sum Sq   Mean Sq     F value  Pr(>F)      \n",
       "X          1 31739163 31739163.24 1546.702 3.555543e-38\n",
       "Residuals 48   984986    20520.54       NA           NA"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "anova"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 101,
   "id": "0f86ca3e",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:19.832623Z",
     "iopub.status.busy": "2024-05-06T18:59:19.830884Z",
     "iopub.status.idle": "2024-05-06T18:59:19.850485Z",
     "shell.execute_reply": "2024-05-06T18:59:19.848670Z"
    },
    "id": "9vtS-VQ2td-I",
    "outputId": "499ecc2b-55b5-4bac-e7e7-8c96cd5ad8c4",
    "papermill": {
     "duration": 0.07956,
     "end_time": "2024-05-06T18:59:19.852800",
     "exception": false,
     "start_time": "2024-05-06T18:59:19.773240",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "1546.70196084825"
      ],
      "text/latex": [
       "1546.70196084825"
      ],
      "text/markdown": [
       "1546.70196084825"
      ],
      "text/plain": [
       "[1] 1546.702"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "F <- anova['X', 'Mean Sq'] / anova['Residuals', 'Mean Sq']\n",
    "F"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 102,
   "id": "5bdfd8b9",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:20.001262Z",
     "iopub.status.busy": "2024-05-06T18:59:19.999524Z",
     "iopub.status.idle": "2024-05-06T18:59:20.017127Z",
     "shell.execute_reply": "2024-05-06T18:59:20.015309Z"
    },
    "id": "w8yfK5k1td-K",
    "outputId": "1db698d3-dc70-42a0-f5bc-2018f01e9d10",
    "papermill": {
     "duration": 0.111396,
     "end_time": "2024-05-06T18:59:20.019729",
     "exception": false,
     "start_time": "2024-05-06T18:59:19.908333",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "1546.70196084825"
      ],
      "text/latex": [
       "1546.70196084825"
      ],
      "text/markdown": [
       "1546.70196084825"
      ],
      "text/plain": [
       "[1] 1546.702"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "anova['X', 'F value']"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "3be7db15",
   "metadata": {
    "id": "OEzKwQYztd-K",
    "papermill": {
     "duration": 0.057064,
     "end_time": "2024-05-06T18:59:20.133611",
     "exception": false,
     "start_time": "2024-05-06T18:59:20.076547",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Obtendo o p-valor"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 103,
   "id": "9d008ee4",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:20.251655Z",
     "iopub.status.busy": "2024-05-06T18:59:20.249671Z",
     "iopub.status.idle": "2024-05-06T18:59:20.268930Z",
     "shell.execute_reply": "2024-05-06T18:59:20.267221Z"
    },
    "id": "XTl2Y4u5td-K",
    "outputId": "15bac85a-aca4-45e9-dedd-fb6b1f700c1d",
    "papermill": {
     "duration": 0.081,
     "end_time": "2024-05-06T18:59:20.271300",
     "exception": false,
     "start_time": "2024-05-06T18:59:20.190300",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "3.55554322858604e-38"
      ],
      "text/latex": [
       "3.55554322858604e-38"
      ],
      "text/markdown": [
       "3.55554322858604e-38"
      ],
      "text/plain": [
       "[1] 3.555543e-38"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "p_valor <- anova['X', 'Pr(>F)']\n",
    "p_valor"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 104,
   "id": "d09a70a2",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T18:59:20.390175Z",
     "iopub.status.busy": "2024-05-06T18:59:20.388333Z",
     "iopub.status.idle": "2024-05-06T18:59:20.408273Z",
     "shell.execute_reply": "2024-05-06T18:59:20.405970Z"
    },
    "id": "TmkXMaKktd-P",
    "outputId": "ca089d23-7d19-4cd6-ef9e-bd0c721557ae",
    "papermill": {
     "duration": 0.083356,
     "end_time": "2024-05-06T18:59:20.410776",
     "exception": false,
     "start_time": "2024-05-06T18:59:20.327420",
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
   "cell_type": "code",
   "execution_count": null,
   "id": "9537c525",
   "metadata": {
    "papermill": {
     "duration": 0.056028,
     "end_time": "2024-05-06T18:59:20.524031",
     "exception": false,
     "start_time": "2024-05-06T18:59:20.468003",
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
   "name": "Curso_de_Estatística_Parte_4.ipynb",
   "provenance": [],
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
   "duration": 31.206667,
   "end_time": "2024-05-06T18:59:20.701388",
   "environment_variables": {},
   "exception": null,
   "input_path": "__notebook__.ipynb",
   "output_path": "__notebook__.ipynb",
   "parameters": {},
   "start_time": "2024-05-06T18:58:49.494721",
   "version": "2.5.0"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
