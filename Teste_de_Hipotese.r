{
 "cells": [
  {
   "cell_type": "markdown",
   "id": "43e97078",
   "metadata": {
    "id": "WvMflodMjQKe",
    "papermill": {
     "duration": 0.011482,
     "end_time": "2024-05-06T17:36:55.614805",
     "exception": false,
     "start_time": "2024-05-06T17:36:55.603323",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# <font color=green size=10>CURSO DE ESTATÍSTICA - PARTE 3</font>\n",
    "\n",
    "***\n",
    "\n",
    "## Trabalho sobre testes de hipóteses\n",
    "\n",
    "Utilizando os conhecimentos adquiridos em nosso treinamento realize o teste de hipóteses proposto abaixo.\n",
    "\n",
    "Siga o roteiro proposto e vá completando as células vazias. Procure pensar em mais testes interessantes que podem ser realizados com o nosso dataset."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "6daf794a",
   "metadata": {
    "id": "ZIqLOffNTg1Y",
    "papermill": {
     "duration": 0.010335,
     "end_time": "2024-05-06T17:36:55.635645",
     "exception": false,
     "start_time": "2024-05-06T17:36:55.625310",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "***"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "34643f08",
   "metadata": {
    "id": "lmAJLIu8pslb",
    "papermill": {
     "duration": 0.010187,
     "end_time": "2024-05-06T17:36:55.655988",
     "exception": false,
     "start_time": "2024-05-06T17:36:55.645801",
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
   "id": "c1943ba9",
   "metadata": {
    "id": "0zUUY8klpslc",
    "papermill": {
     "duration": 0.013625,
     "end_time": "2024-05-06T17:36:55.680523",
     "exception": false,
     "start_time": "2024-05-06T17:36:55.666898",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Você é um pesquisador que estuda o mercado de trabalho brasileiro e resolve estudar as diferenças salariais dos trabalhadores dos estados do Rio de Janeiro e de São Paulo. Durante sua pesquisa você verifica que, aparentemente, os rendimentos dos trabalhadores no estado do Rio de Janeiro são mais baixos que os rendimentos dos trabalhadores no estado de São Paulo. Para confirmar esta conclusão realize um teste de hipótese de comparação de médias em cima de duas amostras de trabalhadores dos dois estados. Siga as seguintes etapas:\n",
    "\n",
    "- Utilize o *dataset* 'dados_proj.csv' para rodar o teste. Este *dataset* tem uma amostra de **tamanho 500** dos rendimentos dos trabalhadores dos dois estados (RJ e SP).\n",
    "- Considere o **nível de significância de 5%**.\n",
    "- Teste a hipótese de que a **renda média dos trabalhadores do Rio de Janeiro é menor que a renda média dos trabalhadores de São Paulo**."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "15b7bfcc",
   "metadata": {
    "id": "WUknTBZgpslc",
    "papermill": {
     "duration": 0.014307,
     "end_time": "2024-05-06T17:36:55.710504",
     "exception": false,
     "start_time": "2024-05-06T17:36:55.696197",
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
   "id": "da90e116",
   "metadata": {
    "id": "xzGuwM4xpslc",
    "papermill": {
     "duration": 0.010268,
     "end_time": "2024-05-06T17:36:55.731066",
     "exception": false,
     "start_time": "2024-05-06T17:36:55.720798",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Importando o *dataset* 'dados_proj.csv'\n",
    "\n",
    "O *dataset* apresenta duas variáveis: **Renda_RJ** e **Renda_SP**."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 1,
   "id": "4635c49a",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T17:36:55.758352Z",
     "iopub.status.busy": "2024-05-06T17:36:55.755133Z",
     "iopub.status.idle": "2024-05-06T17:36:55.915433Z",
     "shell.execute_reply": "2024-05-06T17:36:55.912854Z"
    },
    "papermill": {
     "duration": 0.178559,
     "end_time": "2024-05-06T17:36:55.919669",
     "exception": false,
     "start_time": "2024-05-06T17:36:55.741110",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "dados <- read.csv(\"/kaggle/input/dados-pj/dados_proj.csv\")"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 2,
   "id": "2af734df",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T17:36:55.992373Z",
     "iopub.status.busy": "2024-05-06T17:36:55.944385Z",
     "iopub.status.idle": "2024-05-06T17:36:56.032977Z",
     "shell.execute_reply": "2024-05-06T17:36:56.030235Z"
    },
    "papermill": {
     "duration": 0.105988,
     "end_time": "2024-05-06T17:36:56.036386",
     "exception": false,
     "start_time": "2024-05-06T17:36:55.930398",
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
       "\t<tr><th></th><th scope=col>Renda_RJ</th><th scope=col>Renda_SP</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>1</th><td> 1300</td><td> 1800</td></tr>\n",
       "\t<tr><th scope=row>2</th><td>35000</td><td>  700</td></tr>\n",
       "\t<tr><th scope=row>3</th><td> 1300</td><td> 8000</td></tr>\n",
       "\t<tr><th scope=row>4</th><td> 2364</td><td> 1800</td></tr>\n",
       "\t<tr><th scope=row>5</th><td> 1500</td><td> 2364</td></tr>\n",
       "\t<tr><th scope=row>6</th><td> 2500</td><td>11000</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 6 × 2\n",
       "\\begin{tabular}{r|ll}\n",
       "  & Renda\\_RJ & Renda\\_SP\\\\\n",
       "  & <int> & <int>\\\\\n",
       "\\hline\n",
       "\t1 &  1300 &  1800\\\\\n",
       "\t2 & 35000 &   700\\\\\n",
       "\t3 &  1300 &  8000\\\\\n",
       "\t4 &  2364 &  1800\\\\\n",
       "\t5 &  1500 &  2364\\\\\n",
       "\t6 &  2500 & 11000\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 6 × 2\n",
       "\n",
       "| <!--/--> | Renda_RJ &lt;int&gt; | Renda_SP &lt;int&gt; |\n",
       "|---|---|---|\n",
       "| 1 |  1300 |  1800 |\n",
       "| 2 | 35000 |   700 |\n",
       "| 3 |  1300 |  8000 |\n",
       "| 4 |  2364 |  1800 |\n",
       "| 5 |  1500 |  2364 |\n",
       "| 6 |  2500 | 11000 |\n",
       "\n"
      ],
      "text/plain": [
       "  Renda_RJ Renda_SP\n",
       "1  1300     1800   \n",
       "2 35000      700   \n",
       "3  1300     8000   \n",
       "4  2364     1800   \n",
       "5  1500     2364   \n",
       "6  2500    11000   "
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
   "id": "848d2fe5",
   "metadata": {
    "id": "FOFa-cHwpslg",
    "papermill": {
     "duration": 0.01089,
     "end_time": "2024-05-06T17:36:56.057614",
     "exception": false,
     "start_time": "2024-05-06T17:36:56.046724",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Dados do problema\n",
    "Obter média e desvio-padrão para as duas amostras"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 3,
   "id": "e9778b52",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T17:36:56.083534Z",
     "iopub.status.busy": "2024-05-06T17:36:56.081496Z",
     "iopub.status.idle": "2024-05-06T17:36:56.108136Z",
     "shell.execute_reply": "2024-05-06T17:36:56.105475Z"
    },
    "id": "BGyXCbompslh",
    "outputId": "bdfd1e09-fc68-49a1-a440-bf0d7b34c918",
    "papermill": {
     "duration": 0.043411,
     "end_time": "2024-05-06T17:36:56.111460",
     "exception": false,
     "start_time": "2024-05-06T17:36:56.068049",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "2240.518"
      ],
      "text/latex": [
       "2240.518"
      ],
      "text/markdown": [
       "2240.518"
      ],
      "text/plain": [
       "[1] 2240.518"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "media_amostra_rj = mean(dados$Renda_RJ)\n",
    "media_amostra_rj"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 4,
   "id": "05ac381a",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T17:36:56.138890Z",
     "iopub.status.busy": "2024-05-06T17:36:56.136888Z",
     "iopub.status.idle": "2024-05-06T17:36:56.162877Z",
     "shell.execute_reply": "2024-05-06T17:36:56.160158Z"
    },
    "id": "RoxFOCA3pslk",
    "outputId": "f17f8f80-9e2e-40be-b501-3e4c68372cce",
    "papermill": {
     "duration": 0.050158,
     "end_time": "2024-05-06T17:36:56.173005",
     "exception": false,
     "start_time": "2024-05-06T17:36:56.122847",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "4643.83616186796"
      ],
      "text/latex": [
       "4643.83616186796"
      ],
      "text/markdown": [
       "4643.83616186796"
      ],
      "text/plain": [
       "[1] 4643.836"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "desvio_padrao_amostra_rj = sd(dados$Renda_RJ)\n",
    "desvio_padrao_amostra_rj"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 5,
   "id": "3a7d8754",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T17:36:56.199350Z",
     "iopub.status.busy": "2024-05-06T17:36:56.197393Z",
     "iopub.status.idle": "2024-05-06T17:36:56.221976Z",
     "shell.execute_reply": "2024-05-06T17:36:56.219304Z"
    },
    "id": "-cSpXXTepsln",
    "outputId": "3466627b-3460-4fda-cb6e-dded783196b5",
    "papermill": {
     "duration": 0.041573,
     "end_time": "2024-05-06T17:36:56.225456",
     "exception": false,
     "start_time": "2024-05-06T17:36:56.183883",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "2839.352"
      ],
      "text/latex": [
       "2839.352"
      ],
      "text/markdown": [
       "2839.352"
      ],
      "text/plain": [
       "[1] 2839.352"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "media_amostra_sp = mean(dados$Renda_SP)\n",
    "media_amostra_sp"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 6,
   "id": "892c3a6b",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T17:36:56.252470Z",
     "iopub.status.busy": "2024-05-06T17:36:56.250571Z",
     "iopub.status.idle": "2024-05-06T17:36:56.275719Z",
     "shell.execute_reply": "2024-05-06T17:36:56.273077Z"
    },
    "papermill": {
     "duration": 0.04214,
     "end_time": "2024-05-06T17:36:56.279422",
     "exception": false,
     "start_time": "2024-05-06T17:36:56.237282",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "3699.38422543412"
      ],
      "text/latex": [
       "3699.38422543412"
      ],
      "text/markdown": [
       "3699.38422543412"
      ],
      "text/plain": [
       "[1] 3699.384"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "desvio_padrao_amostra_sp = sd(dados$Renda_SP)\n",
    "desvio_padrao_amostra_sp"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "8ecbf093",
   "metadata": {
    "papermill": {
     "duration": 0.012037,
     "end_time": "2024-05-06T17:36:56.303533",
     "exception": false,
     "start_time": "2024-05-06T17:36:56.291496",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Variáveis com os dados do problema"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 7,
   "id": "e0e70b13",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T17:36:56.330830Z",
     "iopub.status.busy": "2024-05-06T17:36:56.328984Z",
     "iopub.status.idle": "2024-05-06T17:36:56.358322Z",
     "shell.execute_reply": "2024-05-06T17:36:56.355953Z"
    },
    "id": "Cl7kdxkUpslo",
    "papermill": {
     "duration": 0.046265,
     "end_time": "2024-05-06T17:36:56.361695",
     "exception": false,
     "start_time": "2024-05-06T17:36:56.315430",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "significancia <- 0.05\n",
    "confianca <- 1 - significancia\n",
    "n_rj <- nrow(dados)\n",
    "n_sp <- nrow(dados)\n",
    "D_0 <- 0"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "685444e2",
   "metadata": {
    "id": "Kyp6CNssrAmw",
    "papermill": {
     "duration": 0.013228,
     "end_time": "2024-05-06T17:36:56.387028",
     "exception": false,
     "start_time": "2024-05-06T17:36:56.373800",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## Lembre-se..."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "09c26a9b",
   "metadata": {
    "id": "xGGMFhzwrAmx",
    "papermill": {
     "duration": 0.011906,
     "end_time": "2024-05-06T17:36:56.413417",
     "exception": false,
     "start_time": "2024-05-06T17:36:56.401511",
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
   "id": "f83c98da",
   "metadata": {
    "id": "PGoWwWwjpslp",
    "papermill": {
     "duration": 0.011193,
     "end_time": "2024-05-06T17:36:56.437165",
     "exception": false,
     "start_time": "2024-05-06T17:36:56.425972",
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
   "id": "c99f7327",
   "metadata": {
    "id": "tO597Oxgpslp",
    "papermill": {
     "duration": 0.011202,
     "end_time": "2024-05-06T17:36:56.460224",
     "exception": false,
     "start_time": "2024-05-06T17:36:56.449022",
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
   "id": "21318f05",
   "metadata": {
    "id": "LysVU-7fpslr",
    "papermill": {
     "duration": 0.011553,
     "end_time": "2024-05-06T17:36:56.483415",
     "exception": false,
     "start_time": "2024-05-06T17:36:56.471862",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "(Formule suas hipóteses aqui)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "d667bb27",
   "metadata": {
    "id": "ENKqbCgQpslr",
    "papermill": {
     "duration": 0.011639,
     "end_time": "2024-05-06T17:36:56.506504",
     "exception": false,
     "start_time": "2024-05-06T17:36:56.494865",
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
   "id": "609574c8",
   "metadata": {
    "id": "dBA05Y3Zpslr",
    "papermill": {
     "duration": 0.011208,
     "end_time": "2024-05-06T17:36:56.528996",
     "exception": false,
     "start_time": "2024-05-06T17:36:56.517788",
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
   "id": "e1186aa0",
   "metadata": {
    "id": "6_Q_Wtjlpsls",
    "papermill": {
     "duration": 0.012918,
     "end_time": "2024-05-06T17:36:56.553070",
     "exception": false,
     "start_time": "2024-05-06T17:36:56.540152",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### O tamanho da amostra é maior que 30?\n",
    "#### Resp.: \n",
    "\n",
    "### Podemos afirmar que a população se distribui aproximadamente como uma normal?\n",
    "#### Resp.: \n",
    "\n",
    "### O desvio padrão populacional é conhecido?\n",
    "#### Resp.: "
   ]
  },
  {
   "cell_type": "markdown",
   "id": "4bace807",
   "metadata": {
    "id": "T6sVzVjVpsls",
    "papermill": {
     "duration": 0.011608,
     "end_time": "2024-05-06T17:36:56.576421",
     "exception": false,
     "start_time": "2024-05-06T17:36:56.564813",
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
   "id": "fea80afb",
   "metadata": {
    "id": "SUN4yJqzpsls",
    "papermill": {
     "duration": 0.011321,
     "end_time": "2024-05-06T17:36:56.600115",
     "exception": false,
     "start_time": "2024-05-06T17:36:56.588794",
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
   "execution_count": 8,
   "id": "2149ca5f",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T17:36:56.626828Z",
     "iopub.status.busy": "2024-05-06T17:36:56.624877Z",
     "iopub.status.idle": "2024-05-06T17:36:56.648008Z",
     "shell.execute_reply": "2024-05-06T17:36:56.645346Z"
    },
    "id": "b3Y_CZmzpsls",
    "outputId": "e75d68fb-3391-4d1b-d5ea-274f2e2dbe5d",
    "papermill": {
     "duration": 0.039853,
     "end_time": "2024-05-06T17:36:56.651208",
     "exception": false,
     "start_time": "2024-05-06T17:36:56.611355",
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
    "probabilidade <- significancia\n",
    "probabilidade"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 9,
   "id": "3343f4c2",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T17:36:56.678963Z",
     "iopub.status.busy": "2024-05-06T17:36:56.676653Z",
     "iopub.status.idle": "2024-05-06T17:36:56.748729Z",
     "shell.execute_reply": "2024-05-06T17:36:56.746154Z"
    },
    "papermill": {
     "duration": 0.089313,
     "end_time": "2024-05-06T17:36:56.751931",
     "exception": false,
     "start_time": "2024-05-06T17:36:56.662618",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "-1.64"
      ],
      "text/latex": [
       "-1.64"
      ],
      "text/markdown": [
       "-1.64"
      ],
      "text/plain": [
       "[1] -1.64"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "z_alpha <- qnorm(probabilidade)\n",
    "round(z_alpha,2)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "e4f361f1",
   "metadata": {
    "id": "xUhiEXRMpslv",
    "papermill": {
     "duration": 0.012395,
     "end_time": "2024-05-06T17:36:56.777087",
     "exception": false,
     "start_time": "2024-05-06T17:36:56.764692",
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
   "id": "06f0df69",
   "metadata": {
    "id": "iooB1aPHpslv",
    "papermill": {
     "duration": 0.011637,
     "end_time": "2024-05-06T17:36:56.801195",
     "exception": false,
     "start_time": "2024-05-06T17:36:56.789558",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### **Passo 4** - cálculo da estatística-teste e verificação desse valor com as áreas de aceitação e rejeição do teste"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 10,
   "id": "296346b5",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T17:36:56.830693Z",
     "iopub.status.busy": "2024-05-06T17:36:56.828582Z",
     "iopub.status.idle": "2024-05-06T17:36:56.859552Z",
     "shell.execute_reply": "2024-05-06T17:36:56.856869Z"
    },
    "id": "AL2i9JOTpslw",
    "outputId": "70de1497-94ac-4e2b-cfec-89552cbda99b",
    "papermill": {
     "duration": 0.050195,
     "end_time": "2024-05-06T17:36:56.863001",
     "exception": false,
     "start_time": "2024-05-06T17:36:56.812806",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "-0.0187049247462901"
      ],
      "text/latex": [
       "-0.0187049247462901"
      ],
      "text/markdown": [
       "-0.0187049247462901"
      ],
      "text/plain": [
       "[1] -0.01870492"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "numerador <- (media_amostra_rj - media_amostra_sp) - D_0\n",
    "\n",
    "denominador <- sqrt((desvio_padrao_amostra_rj ** 2) + n_rj) + (desvio_padrao_amostra_sp ** 2 / n_sp)\n",
    "\n",
    "z <- numerador / denominador\n",
    "\n",
    "z"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "7add6bbf",
   "metadata": {
    "id": "4dn58Fc2pslx",
    "papermill": {
     "duration": 0.012358,
     "end_time": "2024-05-06T17:36:56.887292",
     "exception": false,
     "start_time": "2024-05-06T17:36:56.874934",
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
   "id": "357ba722",
   "metadata": {
    "id": "P-7NL33-pslx",
    "papermill": {
     "duration": 0.012103,
     "end_time": "2024-05-06T17:36:56.911443",
     "exception": false,
     "start_time": "2024-05-06T17:36:56.899340",
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
   "id": "dede7844",
   "metadata": {
    "id": "QrObW-BXpsly",
    "papermill": {
     "duration": 0.012239,
     "end_time": "2024-05-06T17:36:56.935553",
     "exception": false,
     "start_time": "2024-05-06T17:36:56.923314",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### <font color='red'>Critério do valor crítico</font>"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 11,
   "id": "f7a54daf",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T17:36:56.963191Z",
     "iopub.status.busy": "2024-05-06T17:36:56.961493Z",
     "iopub.status.idle": "2024-05-06T17:36:56.984367Z",
     "shell.execute_reply": "2024-05-06T17:36:56.977954Z"
    },
    "id": "tkJSji7gpsly",
    "outputId": "871244f8-08a3-456c-f7be-eb86e8a37255",
    "papermill": {
     "duration": 0.040187,
     "end_time": "2024-05-06T17:36:56.987580",
     "exception": false,
     "start_time": "2024-05-06T17:36:56.947393",
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
    "z <= z_alpha"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "4d8600da",
   "metadata": {
    "id": "cyuNEHfwpsl0",
    "papermill": {
     "duration": 0.01323,
     "end_time": "2024-05-06T17:36:57.013094",
     "exception": false,
     "start_time": "2024-05-06T17:36:56.999864",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### <font color='red'>Critério do valor $p$</font>"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 12,
   "id": "90156eda",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T17:36:57.041378Z",
     "iopub.status.busy": "2024-05-06T17:36:57.039692Z",
     "iopub.status.idle": "2024-05-06T17:36:57.061132Z",
     "shell.execute_reply": "2024-05-06T17:36:57.058934Z"
    },
    "papermill": {
     "duration": 0.038866,
     "end_time": "2024-05-06T17:36:57.064093",
     "exception": false,
     "start_time": "2024-05-06T17:36:57.025227",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "-0.0187049247462901"
      ],
      "text/latex": [
       "-0.0187049247462901"
      ],
      "text/markdown": [
       "-0.0187049247462901"
      ],
      "text/plain": [
       "[1] -0.01870492"
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
   "execution_count": 13,
   "id": "1e0d7982",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T17:36:57.093932Z",
     "iopub.status.busy": "2024-05-06T17:36:57.092250Z",
     "iopub.status.idle": "2024-05-06T17:36:57.111590Z",
     "shell.execute_reply": "2024-05-06T17:36:57.109042Z"
    },
    "papermill": {
     "duration": 0.037823,
     "end_time": "2024-05-06T17:36:57.114811",
     "exception": false,
     "start_time": "2024-05-06T17:36:57.076988",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "0.492538249781842"
      ],
      "text/latex": [
       "0.492538249781842"
      ],
      "text/markdown": [
       "0.492538249781842"
      ],
      "text/plain": [
       "[1] 0.4925382"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "pnorm(z, lower.tail = T)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 14,
   "id": "d41e6185",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T17:36:57.144982Z",
     "iopub.status.busy": "2024-05-06T17:36:57.143124Z",
     "iopub.status.idle": "2024-05-06T17:36:57.168298Z",
     "shell.execute_reply": "2024-05-06T17:36:57.166373Z"
    },
    "papermill": {
     "duration": 0.042729,
     "end_time": "2024-05-06T17:36:57.170936",
     "exception": false,
     "start_time": "2024-05-06T17:36:57.128207",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "0.492538249781842"
      ],
      "text/latex": [
       "0.492538249781842"
      ],
      "text/markdown": [
       "0.492538249781842"
      ],
      "text/plain": [
       "[1] 0.4925382"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "p_valor <- pnorm(z, lower.tail = T)\n",
    "p_valor"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 15,
   "id": "6aceebc7",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T17:36:57.200162Z",
     "iopub.status.busy": "2024-05-06T17:36:57.198403Z",
     "iopub.status.idle": "2024-05-06T17:36:57.216500Z",
     "shell.execute_reply": "2024-05-06T17:36:57.214544Z"
    },
    "papermill": {
     "duration": 0.035553,
     "end_time": "2024-05-06T17:36:57.219258",
     "exception": false,
     "start_time": "2024-05-06T17:36:57.183705",
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
    "p_valor <= significancia "
   ]
  },
  {
   "cell_type": "markdown",
   "id": "dc28f172",
   "metadata": {
    "id": "UnBVO1uDpslz",
    "papermill": {
     "duration": 0.0129,
     "end_time": "2024-05-06T17:36:57.245127",
     "exception": false,
     "start_time": "2024-05-06T17:36:57.232227",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### <font color='green'>Conclusão: Com um nivel de confianca de 95% rejeitamos H0, isto eh, concluimos que a renda media no estado do Rio de Janeiro eh menor que a renda media no estado de Sao Paulo</font>"
   ]
  }
 ],
 "metadata": {
  "colab": {
   "name": "Teste_de_Hipótese_Respostas.ipynb",
   "provenance": [],
   "version": "0.3.2"
  },
  "kaggle": {
   "accelerator": "none",
   "dataSources": [
    {
     "datasetId": 4951369,
     "sourceId": 8337112,
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
   "duration": 5.916125,
   "end_time": "2024-05-06T17:36:57.379669",
   "environment_variables": {},
   "exception": null,
   "input_path": "__notebook__.ipynb",
   "output_path": "__notebook__.ipynb",
   "parameters": {},
   "start_time": "2024-05-06T17:36:51.463544",
   "version": "2.5.0"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
