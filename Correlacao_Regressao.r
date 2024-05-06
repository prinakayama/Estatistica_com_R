{
 "cells": [
  {
   "cell_type": "markdown",
   "id": "233a8d41",
   "metadata": {
    "id": "WvMflodMjQKe",
    "papermill": {
     "duration": 0.011394,
     "end_time": "2024-05-06T19:36:36.267822",
     "exception": false,
     "start_time": "2024-05-06T19:36:36.256428",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# <font color=green size=10>CURSO DE ESTATÍSTICA - PARTE 4</font>\n",
    "***\n",
    "\n",
    "## Trabalho sobre correlação e regressão\n",
    "\n",
    "Utilizando os conhecimentos adquiridos em nosso treinamento realize a análise de regressão proposta abaixo.\n",
    "\n",
    "Siga o roteiro proposto e vá completando as células vazias."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "d4da39cc",
   "metadata": {
    "id": "cVgsZ_E3jQKg",
    "papermill": {
     "duration": 0.010658,
     "end_time": "2024-05-06T19:36:36.289158",
     "exception": false,
     "start_time": "2024-05-06T19:36:36.278500",
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
   "id": "302776a7",
   "metadata": {
    "id": "I4293oHyZTNh",
    "papermill": {
     "duration": 0.011023,
     "end_time": "2024-05-06T19:36:36.310968",
     "exception": false,
     "start_time": "2024-05-06T19:36:36.299945",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Fonte: https://www.kaggle.com/dongeorge/beer-consumption-sao-paulo\n",
    "\n",
    "### Descrição:\n",
    "A cerveja é uma das bebidas mais democráticas e consumidas no mundo. Não sem razão, é perfeito para quase todas as situações, desde o happy hour até grandes festas de casamento.\n",
    "\n",
    "Os dados (amostra) foram coletados em São Paulo - Brasil, em uma área universitária, onde existem algumas festas com grupos de alunos de 18 a 28 anos de idade (média).\n",
    "\n",
    "### Dados:\n",
    "- **X** - Temperatura Média (°C)\n",
    "- **Y** - Consumo de Cerveja (litros)\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "35bfed7d",
   "metadata": {
    "id": "ZIqLOffNTg1Y",
    "papermill": {
     "duration": 0.009724,
     "end_time": "2024-05-06T19:36:36.330640",
     "exception": false,
     "start_time": "2024-05-06T19:36:36.320916",
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
   "id": "def52116",
   "metadata": {
    "id": "8Rw70V6ojQKk",
    "papermill": {
     "duration": 0.010064,
     "end_time": "2024-05-06T19:36:36.350570",
     "exception": false,
     "start_time": "2024-05-06T19:36:36.340506",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Utilize a célula abaixo para carregar os pacotes e/ou fazer configurações para o projeto"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 1,
   "id": "9f5b499d",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T19:36:36.375335Z",
     "iopub.status.busy": "2024-05-06T19:36:36.372996Z",
     "iopub.status.idle": "2024-05-06T19:36:36.681779Z",
     "shell.execute_reply": "2024-05-06T19:36:36.679809Z"
    },
    "id": "fcTgimHBybMz",
    "papermill": {
     "duration": 0.323735,
     "end_time": "2024-05-06T19:36:36.684363",
     "exception": false,
     "start_time": "2024-05-06T19:36:36.360628",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "library(ggplot2)\n",
    "options(repr.plot.width = 7, repr.plot.height = 4)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "fc2c6b37",
   "metadata": {
    "id": "Blpb0v-6ZTNv",
    "papermill": {
     "duration": 0.010417,
     "end_time": "2024-05-06T19:36:36.705147",
     "exception": false,
     "start_time": "2024-05-06T19:36:36.694730",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Importe o dataset\n",
    "\n",
    "#### <font color=red>Utilize o parâmetro **sep = ';'** da função **read.csv** para importar corretamente o conjunto de dados. O dataset do projeto utiliza como separador de colunas o caractere ';'."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 2,
   "id": "f21c13f0",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T19:36:36.810318Z",
     "iopub.status.busy": "2024-05-06T19:36:36.728793Z",
     "iopub.status.idle": "2024-05-06T19:36:36.936741Z",
     "shell.execute_reply": "2024-05-06T19:36:36.934823Z"
    },
    "id": "vrf8BOm7ZTNw",
    "papermill": {
     "duration": 0.223965,
     "end_time": "2024-05-06T19:36:36.939306",
     "exception": false,
     "start_time": "2024-05-06T19:36:36.715341",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "dataset <- read.csv(\"/kaggle/input/dados-cerveja/dados_projeto.csv\", sep=\";\")"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "8c5cd975",
   "metadata": {
    "id": "Oq3CKHCmTg1j",
    "papermill": {
     "duration": 0.010069,
     "end_time": "2024-05-06T19:36:36.961725",
     "exception": false,
     "start_time": "2024-05-06T19:36:36.951656",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Visualize o conteúdo do Data Frame"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 3,
   "id": "ac167a2d",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T19:36:36.985315Z",
     "iopub.status.busy": "2024-05-06T19:36:36.983693Z",
     "iopub.status.idle": "2024-05-06T19:36:37.002794Z",
     "shell.execute_reply": "2024-05-06T19:36:37.000954Z"
    },
    "id": "bpj9gwIbZTNz",
    "outputId": "a5e43384-57db-4daf-91dc-172b17e93683",
    "papermill": {
     "duration": 0.033537,
     "end_time": "2024-05-06T19:36:37.005067",
     "exception": false,
     "start_time": "2024-05-06T19:36:36.971530",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "365"
      ],
      "text/latex": [
       "365"
      ],
      "text/markdown": [
       "365"
      ],
      "text/plain": [
       "[1] 365"
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
   "cell_type": "code",
   "execution_count": 4,
   "id": "fb7ea294",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T19:36:37.028896Z",
     "iopub.status.busy": "2024-05-06T19:36:37.027371Z",
     "iopub.status.idle": "2024-05-06T19:36:37.054239Z",
     "shell.execute_reply": "2024-05-06T19:36:37.052524Z"
    },
    "id": "GsC_WhLFjQKq",
    "outputId": "911c1540-fbb1-405e-9bd5-56c601488890",
    "papermill": {
     "duration": 0.041194,
     "end_time": "2024-05-06T19:36:37.056566",
     "exception": false,
     "start_time": "2024-05-06T19:36:37.015372",
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
       "\t<tr><th></th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>1</th><td>25461</td><td>27.30</td></tr>\n",
       "\t<tr><th scope=row>2</th><td>28972</td><td>27.02</td></tr>\n",
       "\t<tr><th scope=row>3</th><td>30814</td><td>24.82</td></tr>\n",
       "\t<tr><th scope=row>4</th><td>29799</td><td>23.98</td></tr>\n",
       "\t<tr><th scope=row>5</th><td>28900</td><td>23.82</td></tr>\n",
       "\t<tr><th scope=row>6</th><td>28218</td><td>23.78</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 6 × 2\n",
       "\\begin{tabular}{r|ll}\n",
       "  & Y & X\\\\\n",
       "  & <int> & <dbl>\\\\\n",
       "\\hline\n",
       "\t1 & 25461 & 27.30\\\\\n",
       "\t2 & 28972 & 27.02\\\\\n",
       "\t3 & 30814 & 24.82\\\\\n",
       "\t4 & 29799 & 23.98\\\\\n",
       "\t5 & 28900 & 23.82\\\\\n",
       "\t6 & 28218 & 23.78\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 6 × 2\n",
       "\n",
       "| <!--/--> | Y &lt;int&gt; | X &lt;dbl&gt; |\n",
       "|---|---|---|\n",
       "| 1 | 25461 | 27.30 |\n",
       "| 2 | 28972 | 27.02 |\n",
       "| 3 | 30814 | 24.82 |\n",
       "| 4 | 29799 | 23.98 |\n",
       "| 5 | 28900 | 23.82 |\n",
       "| 6 | 28218 | 23.78 |\n",
       "\n"
      ],
      "text/plain": [
       "  Y     X    \n",
       "1 25461 27.30\n",
       "2 28972 27.02\n",
       "3 30814 24.82\n",
       "4 29799 23.98\n",
       "5 28900 23.82\n",
       "6 28218 23.78"
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
   "id": "786bed70",
   "metadata": {
    "id": "xzGuwM4xpslc",
    "papermill": {
     "duration": 0.010719,
     "end_time": "2024-05-06T19:36:37.077770",
     "exception": false,
     "start_time": "2024-05-06T19:36:37.067051",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Obtenha e avalie as estatísticas descritivas dos dados"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 5,
   "id": "fec708ce",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T19:36:37.102619Z",
     "iopub.status.busy": "2024-05-06T19:36:37.100950Z",
     "iopub.status.idle": "2024-05-06T19:36:37.123903Z",
     "shell.execute_reply": "2024-05-06T19:36:37.121879Z"
    },
    "id": "nuNSrzfYpsld",
    "outputId": "d7e3627c-0894-4e69-c031-6fe4965ccf6e",
    "papermill": {
     "duration": 0.038306,
     "end_time": "2024-05-06T19:36:37.126564",
     "exception": false,
     "start_time": "2024-05-06T19:36:37.088258",
     "status": "completed"
    },
    "scrolled": true,
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "       Y               X        \n",
       " Min.   :14343   Min.   :12.90  \n",
       " 1st Qu.:22008   1st Qu.:19.02  \n",
       " Median :24867   Median :21.38  \n",
       " Mean   :25401   Mean   :21.23  \n",
       " 3rd Qu.:28631   3rd Qu.:23.28  \n",
       " Max.   :37937   Max.   :28.86  "
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
   "execution_count": 6,
   "id": "79dcb69a",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T19:36:37.152591Z",
     "iopub.status.busy": "2024-05-06T19:36:37.150317Z",
     "iopub.status.idle": "2024-05-06T19:36:37.174155Z",
     "shell.execute_reply": "2024-05-06T19:36:37.172055Z"
    },
    "papermill": {
     "duration": 0.039428,
     "end_time": "2024-05-06T19:36:37.176813",
     "exception": false,
     "start_time": "2024-05-06T19:36:37.137385",
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
       "</style><dl class=dl-inline><dt>Y</dt><dd>4399.14270332196</dd><dt>X</dt><dd>3.18010766530134</dd></dl>\n"
      ],
      "text/latex": [
       "\\begin{description*}\n",
       "\\item[Y] 4399.14270332196\n",
       "\\item[X] 3.18010766530134\n",
       "\\end{description*}\n"
      ],
      "text/markdown": [
       "Y\n",
       ":   4399.14270332196X\n",
       ":   3.18010766530134\n",
       "\n"
      ],
      "text/plain": [
       "          Y           X \n",
       "4399.142703    3.180108 "
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
   "id": "77ae5f5f",
   "metadata": {
    "id": "SM6EQrsdZTN8",
    "papermill": {
     "duration": 0.010998,
     "end_time": "2024-05-06T19:36:37.199039",
     "exception": false,
     "start_time": "2024-05-06T19:36:37.188041",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Análise gráfica\n",
    "### Construa um box plot para cada variável do dataset"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 7,
   "id": "a23a141e",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T19:36:37.225759Z",
     "iopub.status.busy": "2024-05-06T19:36:37.223559Z",
     "iopub.status.idle": "2024-05-06T19:36:37.795468Z",
     "shell.execute_reply": "2024-05-06T19:36:37.793713Z"
    },
    "id": "olHVJwyWZTN9",
    "outputId": "2d1ee441-e105-4e4f-c2c2-51eef261c0b1",
    "papermill": {
     "duration": 0.587942,
     "end_time": "2024-05-06T19:36:37.797963",
     "exception": false,
     "start_time": "2024-05-06T19:36:37.210021",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "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\nH3fYyOW3T1h2AAAAAElFTkSuQmCC"
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
    "ggplot(dataset, aes(y=Y)) + \n",
    "    stat_boxplot(geom = 'errorbar', width = 0.4) + \n",
    "    geom_boxplot(fill = '#3274A1') + \n",
    "    coord_flip() + \n",
    "    ylab(\"Consumo de cerveja (litros)\")+ \n",
    "    ggtitle('Box-plot') + \n",
    "    theme(\n",
    "        plot.title=element_text(size = 14, hjust = 0.5),\n",
    "        axis.title.x=element_text(size = 12, vjust = -0.2),\n",
    "        axis.text.y=element_text(size=10),\n",
    "        axis.text.x=element_text(size=10)\n",
    "    )"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 8,
   "id": "3374c2a9",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T19:36:37.824740Z",
     "iopub.status.busy": "2024-05-06T19:36:37.823240Z",
     "iopub.status.idle": "2024-05-06T19:36:38.148399Z",
     "shell.execute_reply": "2024-05-06T19:36:38.146659Z"
    },
    "id": "W-W9IOs1psle",
    "outputId": "83445d63-24a2-4a95-d42a-9ed55e2d81f5",
    "papermill": {
     "duration": 0.341112,
     "end_time": "2024-05-06T19:36:38.150760",
     "exception": false,
     "start_time": "2024-05-06T19:36:37.809648",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "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\nwQ6ADcHar0SkatcTM2c+0XRp7Q+1DZ43uchT02Nd9+nwDm/cknSEiNTsKA7WFrV9vf1d+66o\nDdZsuXP2bx95bm2pP6Tpjt45Q4887lSRbY1fol3isyI7s9Tq/Nck1YhIWm7je9MMzO0hLQS7\n/TpFADoZwQ6ADYazn4j0/tnKXRsmxP3FAzVfNtviykwznN62r7d+LrrthNHzNhZfcOP866dO\nOGr4YK+pWaFy/X//1vLo5lWGmrnL3f5YUWytzv+ONckiUralQoZn1m+v/rHFLwvpnMoBdA5u\ndwLABmeP0cO9joptTzWKOd88e9911133QYW/Iy/ur/p02e6a+i0Fzy8RkcF5g9q33mDNF/M2\nFqcNefClB6496fAhXlMTkXBgT1uKKQ/uW1XIt21NWV2Mzh1ZkS2tzkP6yItE5Iv7X2+w2PLP\n+7ylw3WdVDmAzkGwA2CL/uivDqkp+vtZd62MZovKgtfPvuLOR/+24chkRwdf/bqzr91aG4w8\nLvzwmYk3btDNtD9dPKid69VMXdOCNV8H996TLhzY85ffXCAiIo2/KTW8N8l5erlE5L61e2/+\na/mf/O3EmuaO2LVvRR3Tyjwk9Z51yUHJez6+5qrHP9hbf/CZG8e8V95CMO28ygF0Bj6KBWDP\n6D+tvnDNYS/deW7v/znm1JOOc1dtf+3lf1RY3rvefCkp5il0rXKmHDt057IROf8ae9oovSj/\nnfc+qg5bUxa9+7MUZ/vWa3oOue+k7Fvef2zYySWTTj2s9set76/8+w85E/u7Nu/+9o65C4tv\nueZyEdEd2SLyxbxb79o58vRrbz3yvina6D89MXFE0YwZw9NDH7/z4upPio5JcX7RcuVtXFFc\ntDoPi9bMX3PErx++fPQ/Hjv1Z4dlf/PROx9uLp76u+HLH2r8SXcnVw6gMyT6slwAXVrT251Y\nlhWs+37xTZceNbiPx+HoNWDYaefOfOmTwvodIjfyiNxcI6Lw8wkicta7O6MtdRXrpeHtTpJ7\nz6wr33jleT/P6uF1eFIPPeEX81/+j631Ru5CsrbMt2+I79t7rjh3UK9Upyf98OPH/nbei3Vh\n65+3XZDmcaT0PvqnTqHa2355QprX4fSmP/1jtWVZ/376zp8fcUi61xQR3Uy7cuH7Lw/v2fR2\nJ7ZX1FA7ZqmN81D6xZszzzslOz3ZdKccfNzZi1Z9HbmRSrO3O2lH5QC6LM2yrOYTHwB0omNS\nXF8lT6/c9XiiC6kvvOf7AiNrYIY7Dl9cCwCdgI9iAaAlelb/IYmuAQBs4OIJAAAARRDsAAAA\nFME5dgAAAIrgiB0AAIAiCHYAAACKINgBAAAo4v8Dv7wCLAzimS8AAAAASUVORK5CYII="
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
    "ggplot(dataset, aes(y=X)) + \n",
    "    stat_boxplot(geom = 'errorbar', width = 0.4) + \n",
    "    geom_boxplot(fill = '#3274A1') + \n",
    "    coord_flip() + \n",
    "    ylab(\"Temperatura média \")+ \n",
    "    ggtitle('Box-plot') + \n",
    "    theme(\n",
    "        plot.title=element_text(size = 14, hjust = 0.5),\n",
    "        axis.title.x=element_text(size = 12, vjust = -0.2),\n",
    "        axis.text.y=element_text(size=10),\n",
    "        axis.text.x=element_text(size=10)\n",
    "    )"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "6d958660",
   "metadata": {
    "id": "kcdTQNDtZTOC",
    "papermill": {
     "duration": 0.012295,
     "end_time": "2024-05-06T19:36:38.174986",
     "exception": false,
     "start_time": "2024-05-06T19:36:38.162691",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Identifique se existe uma relação linear entre as variáveis $Y$ e $X$\n",
    "### <font color='red'>Utilizando o método gráfico</font>"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 9,
   "id": "c904d937",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T19:36:38.203067Z",
     "iopub.status.busy": "2024-05-06T19:36:38.201371Z",
     "iopub.status.idle": "2024-05-06T19:36:39.801456Z",
     "shell.execute_reply": "2024-05-06T19:36:39.799475Z"
    },
    "id": "bQ2tLs6OZTOD",
    "outputId": "d9e7b772-49c1-4b4f-9ac7-edc52113320b",
    "papermill": {
     "duration": 1.617918,
     "end_time": "2024-05-06T19:36:39.804918",
     "exception": false,
     "start_time": "2024-05-06T19:36:38.187000",
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
      "image/png": "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\nPfVPzh11qVz89EFGwjez/yrQyDybfrlp94evlTO7QeqBr+ZsOd164MfTBrQ3yv0YWaS7SJB+\nKI20fPo1qc4+pGHZetHujExZUVVVduTXw4cP+f1nV8dSaZmyKynOl1OcUjPlZg6rVUhKG9XL\nC/XJi/TLcZbX1AAOoVDIjWyVSCQ1OquFZVJTU996663k5GTybMFWC4bslb0PJ5VKFQrFmjVr\n9FkdIeTx48eLFi0y7ANqs4yeGLIsu3fvXutMxVwT5s+ff+/ePa6vm0KhWLRokbs7P9eNdu3a\nnT179sKFCzRNt2jRws4W1wKAmmZWYpd3+/uwzmNKlM1nfjvOk/m3e8rRG5eP798x77MvPuoe\n6ZKcFuf/XO9mVqea87+zHq0nTB9Y3tSalGBomHLRlU2PS5q4MzQhJOmnfRQtHRyuNFVVlR3r\npIxc8fX7TjfSnJLSHYtLzOreIaDZIM+CcJ/ccN9cP1dVzSVaFg9utbKpU6dyWR0hpKioaNKk\nSS+//HJlJ6Hw8/Pr27ev4aoA7733HsMwZVeLKruCWW3x559/zpo1q1+/ftZf0KzqvL29jx8/\nfvHixfz8/CZNmlRjrz4LODo6ll2NAwDAHGYldtve+aRIHHEh+fdIh+ce2yl9Q/qO/rTngK5N\n6rWdNnh33G9xhrXqrP0PNNoA9/QdO3YYlosd2/bs7E0IaT1plHzYvCnxK4a80YZKP7d4V0qD\nN+ODJALTVVXZsY7QlNK3Hylu3He8kuKcniN98Q6EEEJcHYrDffJCffJCvXNl4kr3ZsvMzDx5\n8mR2draPj09MTIzRzGSGxGKxQqEQCAS1ZUaD06dPG24WFxdfuHDh9ddfr+xxFi9eHBoaeuTI\nEbFY3KtXr7i4OFJmdTJCSP369asQrPW8+eab27ZtMyxJTExMTExcvnz5999/37278cSWtk8o\nFLZs2ZLvKAAAqsSsJcUaK0SavkdvbuhQ0Qt+Gx7a+UdZcf5fhoXZiZ8PnXqu7Isd/T7dtLTN\ns9ccW7Lmx6t3HjEOXq27xI4b2FG/rquJqqrsWJZ1lhR78OBBjT6KZVlyP1t2I83pWppj8iOH\nUq1Z99lEQl3DevkRvrnhvrmeTpZ3TX38+PHChQv1b9DDw2PixIlGeRvXec7X11csFhcWFlZ7\n57maExkZqV+0lLNz586YmJhqObhKpTLsY+fu7m66j51NLSm2bNmyefPmle025O/vz81+YlNM\n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"
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
    "ggplot(data=dataset, aes(x=X, y=Y)) + \n",
    "    geom_point(size = 1.5, stroke = 0) +\n",
    "    geom_smooth(method = \"lm\") +\n",
    "    xlab('Temperatura Media') + \n",
    "    ylab(\"Consumo de cerveja (litros)\") + \n",
    "    ggtitle('Reta de Regressão - Consumo X Temperatura') + \n",
    "    theme(\n",
    "        plot.title=element_text(size = 12, hjust = 0.5),\n",
    "        axis.title.x=element_text(size = 10, vjust = -0.2),\n",
    "        axis.title.y=element_text(size = 10, vjust = +0.2),\n",
    "        axis.text.y=element_text(size=10),\n",
    "        axis.text.x=element_text(size=10)\n",
    "    )"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "fbbe7afc",
   "metadata": {
    "id": "V3pRHkxrZTOG",
    "papermill": {
     "duration": 0.013767,
     "end_time": "2024-05-06T19:36:39.833119",
     "exception": false,
     "start_time": "2024-05-06T19:36:39.819352",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### <font color='red'>Utilizando a matriz de correlação</font>"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 10,
   "id": "e603ec6f",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T19:36:39.881469Z",
     "iopub.status.busy": "2024-05-06T19:36:39.862529Z",
     "iopub.status.idle": "2024-05-06T19:36:39.902894Z",
     "shell.execute_reply": "2024-05-06T19:36:39.901190Z"
    },
    "id": "szUKCsdNZTOG",
    "outputId": "10715ce6-2940-4375-f7cb-242dd913a87a",
    "papermill": {
     "duration": 0.058558,
     "end_time": "2024-05-06T19:36:39.905212",
     "exception": false,
     "start_time": "2024-05-06T19:36:39.846654",
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
       "\t<tr><th scope=row>Y</th><td>1.0000000</td><td>0.5746147</td></tr>\n",
       "\t<tr><th scope=row>X</th><td>0.5746147</td><td>1.0000000</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A matrix: 2 × 2 of type dbl\n",
       "\\begin{tabular}{r|ll}\n",
       "  & Y & X\\\\\n",
       "\\hline\n",
       "\tY & 1.0000000 & 0.5746147\\\\\n",
       "\tX & 0.5746147 & 1.0000000\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A matrix: 2 × 2 of type dbl\n",
       "\n",
       "| <!--/--> | Y | X |\n",
       "|---|---|---|\n",
       "| Y | 1.0000000 | 0.5746147 |\n",
       "| X | 0.5746147 | 1.0000000 |\n",
       "\n"
      ],
      "text/plain": [
       "  Y         X        \n",
       "Y 1.0000000 0.5746147\n",
       "X 0.5746147 1.0000000"
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
   "id": "a693e02a",
   "metadata": {
    "id": "FqjloX9CZTOJ",
    "papermill": {
     "duration": 0.013872,
     "end_time": "2024-05-06T19:36:39.932831",
     "exception": false,
     "start_time": "2024-05-06T19:36:39.918959",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Avalie os resultados acima:\n",
    "\n",
    "É possível afirmar que existe uma relação linear entre as variáveis?\n",
    "\n",
    "Resp.: \n",
    "\n",
    "É possível quantificar a intensidade dessa relação?\n",
    "\n",
    "Resp.: \n",
    "\n",
    "É possível afirmar que existe uma relação de causalidade entre $Y$ e $X$ a partir dos resultados da matriz de correlação?\n",
    "\n",
    "Resp.: "
   ]
  },
  {
   "cell_type": "markdown",
   "id": "044e44b4",
   "metadata": {
    "id": "atGXG2cbZTON",
    "papermill": {
     "duration": 0.01365,
     "end_time": "2024-05-06T19:36:39.960352",
     "exception": false,
     "start_time": "2024-05-06T19:36:39.946702",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Estime o modelo de regressão linear simples"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 11,
   "id": "871d6e7c",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T19:36:39.991855Z",
     "iopub.status.busy": "2024-05-06T19:36:39.990061Z",
     "iopub.status.idle": "2024-05-06T19:36:40.005694Z",
     "shell.execute_reply": "2024-05-06T19:36:40.003948Z"
    },
    "id": "RZj-LLWJZTOO",
    "papermill": {
     "duration": 0.034026,
     "end_time": "2024-05-06T19:36:40.008147",
     "exception": false,
     "start_time": "2024-05-06T19:36:39.974121",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "resultado_regressao <- lm(formula = Y ~ X, data = dataset)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "2c2144d6",
   "metadata": {
    "id": "brIOPkVsZTOT",
    "papermill": {
     "duration": 0.013958,
     "end_time": "2024-05-06T19:36:40.035947",
     "exception": false,
     "start_time": "2024-05-06T19:36:40.021989",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Visualize o resultado da regressão"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 12,
   "id": "40dd1b67",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T19:36:40.066967Z",
     "iopub.status.busy": "2024-05-06T19:36:40.065297Z",
     "iopub.status.idle": "2024-05-06T19:36:40.095421Z",
     "shell.execute_reply": "2024-05-06T19:36:40.093539Z"
    },
    "id": "TEdY4WLIZTOU",
    "outputId": "f1af9367-0e65-451f-e81b-f99ee4c82d99",
    "papermill": {
     "duration": 0.04847,
     "end_time": "2024-05-06T19:36:40.097833",
     "exception": false,
     "start_time": "2024-05-06T19:36:40.049363",
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
       "-9221.4 -2845.5  -315.3  2409.0  9392.5 \n",
       "\n",
       "Coefficients:\n",
       "            Estimate Std. Error t value Pr(>|t|)    \n",
       "(Intercept)  8528.91    1275.36   6.687  8.6e-11 ***\n",
       "X             794.88      59.42  13.377  < 2e-16 ***\n",
       "---\n",
       "Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1\n",
       "\n",
       "Residual standard error: 3605 on 363 degrees of freedom\n",
       "Multiple R-squared:  0.3302,\tAdjusted R-squared:  0.3283 \n",
       "F-statistic: 178.9 on 1 and 363 DF,  p-value: < 2.2e-16\n"
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
   "id": "a6b4d59b",
   "metadata": {
    "id": "qRYMfNCTZTOX",
    "papermill": {
     "duration": 0.014387,
     "end_time": "2024-05-06T19:36:40.126338",
     "exception": false,
     "start_time": "2024-05-06T19:36:40.111951",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Obtenha o $Y$ previsto"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 13,
   "id": "eccce844",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T19:36:40.158427Z",
     "iopub.status.busy": "2024-05-06T19:36:40.156789Z",
     "iopub.status.idle": "2024-05-06T19:36:40.183755Z",
     "shell.execute_reply": "2024-05-06T19:36:40.181962Z"
    },
    "id": "5EvF5aPQZTOY",
    "outputId": "06886495-0362-4a81-b226-166023b629f1",
    "papermill": {
     "duration": 0.045744,
     "end_time": "2024-05-06T19:36:40.186149",
     "exception": false,
     "start_time": "2024-05-06T19:36:40.140405",
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
       "<caption>A data.frame: 6 × 3</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>Y</th><th scope=col>X</th><th scope=col>Y_previsto</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>1</th><td>25461</td><td>27.30</td><td>30229.20</td></tr>\n",
       "\t<tr><th scope=row>2</th><td>28972</td><td>27.02</td><td>30006.63</td></tr>\n",
       "\t<tr><th scope=row>3</th><td>30814</td><td>24.82</td><td>28257.89</td></tr>\n",
       "\t<tr><th scope=row>4</th><td>29799</td><td>23.98</td><td>27590.19</td></tr>\n",
       "\t<tr><th scope=row>5</th><td>28900</td><td>23.82</td><td>27463.01</td></tr>\n",
       "\t<tr><th scope=row>6</th><td>28218</td><td>23.78</td><td>27431.21</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 6 × 3\n",
       "\\begin{tabular}{r|lll}\n",
       "  & Y & X & Y\\_previsto\\\\\n",
       "  & <int> & <dbl> & <dbl>\\\\\n",
       "\\hline\n",
       "\t1 & 25461 & 27.30 & 30229.20\\\\\n",
       "\t2 & 28972 & 27.02 & 30006.63\\\\\n",
       "\t3 & 30814 & 24.82 & 28257.89\\\\\n",
       "\t4 & 29799 & 23.98 & 27590.19\\\\\n",
       "\t5 & 28900 & 23.82 & 27463.01\\\\\n",
       "\t6 & 28218 & 23.78 & 27431.21\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 6 × 3\n",
       "\n",
       "| <!--/--> | Y &lt;int&gt; | X &lt;dbl&gt; | Y_previsto &lt;dbl&gt; |\n",
       "|---|---|---|---|\n",
       "| 1 | 25461 | 27.30 | 30229.20 |\n",
       "| 2 | 28972 | 27.02 | 30006.63 |\n",
       "| 3 | 30814 | 24.82 | 28257.89 |\n",
       "| 4 | 29799 | 23.98 | 27590.19 |\n",
       "| 5 | 28900 | 23.82 | 27463.01 |\n",
       "| 6 | 28218 | 23.78 | 27431.21 |\n",
       "\n"
      ],
      "text/plain": [
       "  Y     X     Y_previsto\n",
       "1 25461 27.30 30229.20  \n",
       "2 28972 27.02 30006.63  \n",
       "3 30814 24.82 28257.89  \n",
       "4 29799 23.98 27590.19  \n",
       "5 28900 23.82 27463.01  \n",
       "6 28218 23.78 27431.21  "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "dataset['Y_previsto'] <- resultado_regressao$fitted.values\n",
    "head(dataset)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "54c5f5e7",
   "metadata": {
    "id": "nIpYDmr6ZTOb",
    "papermill": {
     "duration": 0.014194,
     "end_time": "2024-05-06T19:36:40.214430",
     "exception": false,
     "start_time": "2024-05-06T19:36:40.200236",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Utilizando nosso modelo estimado para fazer previsões.\n",
    "### Qual seria o consumo de cerveja para um dia com temperatura média de 42° C?"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 14,
   "id": "16f7a2ff",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T19:36:40.247430Z",
     "iopub.status.busy": "2024-05-06T19:36:40.245756Z",
     "iopub.status.idle": "2024-05-06T19:36:40.264146Z",
     "shell.execute_reply": "2024-05-06T19:36:40.262385Z"
    },
    "id": "Th2Akn3ZZTOb",
    "outputId": "b63ddd21-b33d-416d-f5a0-95f04f4f7ec7",
    "papermill": {
     "duration": 0.037834,
     "end_time": "2024-05-06T19:36:40.266508",
     "exception": false,
     "start_time": "2024-05-06T19:36:40.228674",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<strong>1:</strong> 41913.9738381663"
      ],
      "text/latex": [
       "\\textbf{1:} 41913.9738381663"
      ],
      "text/markdown": [
       "**1:** 41913.9738381663"
      ],
      "text/plain": [
       "       1 \n",
       "41913.97 "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "predict(resultado_regressao, data.frame(X=42))"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "a14cee4e",
   "metadata": {
    "id": "cRNbxk8EZTOd",
    "papermill": {
     "duration": 0.015425,
     "end_time": "2024-05-06T19:36:40.297030",
     "exception": false,
     "start_time": "2024-05-06T19:36:40.281605",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Obtenha os resíduos da regressão"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 15,
   "id": "8c2281de",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T19:36:40.329845Z",
     "iopub.status.busy": "2024-05-06T19:36:40.328195Z",
     "iopub.status.idle": "2024-05-06T19:36:40.355973Z",
     "shell.execute_reply": "2024-05-06T19:36:40.354208Z"
    },
    "id": "wBzSywQ-ZTOe",
    "outputId": "7f874a3e-efab-4e7f-a5a0-3a8c826f8ce8",
    "papermill": {
     "duration": 0.046836,
     "end_time": "2024-05-06T19:36:40.358416",
     "exception": false,
     "start_time": "2024-05-06T19:36:40.311580",
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
       "\t<tr><th></th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>1</th><td>25461</td><td>27.30</td><td>30229.20</td><td>-4768.201</td></tr>\n",
       "\t<tr><th scope=row>2</th><td>28972</td><td>27.02</td><td>30006.63</td><td>-1034.633</td></tr>\n",
       "\t<tr><th scope=row>3</th><td>30814</td><td>24.82</td><td>28257.89</td><td> 2556.108</td></tr>\n",
       "\t<tr><th scope=row>4</th><td>29799</td><td>23.98</td><td>27590.19</td><td> 2208.809</td></tr>\n",
       "\t<tr><th scope=row>5</th><td>28900</td><td>23.82</td><td>27463.01</td><td> 1436.991</td></tr>\n",
       "\t<tr><th scope=row>6</th><td>28218</td><td>23.78</td><td>27431.21</td><td>  786.786</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 6 × 4\n",
       "\\begin{tabular}{r|llll}\n",
       "  & Y & X & Y\\_previsto & Residuos\\\\\n",
       "  & <int> & <dbl> & <dbl> & <dbl>\\\\\n",
       "\\hline\n",
       "\t1 & 25461 & 27.30 & 30229.20 & -4768.201\\\\\n",
       "\t2 & 28972 & 27.02 & 30006.63 & -1034.633\\\\\n",
       "\t3 & 30814 & 24.82 & 28257.89 &  2556.108\\\\\n",
       "\t4 & 29799 & 23.98 & 27590.19 &  2208.809\\\\\n",
       "\t5 & 28900 & 23.82 & 27463.01 &  1436.991\\\\\n",
       "\t6 & 28218 & 23.78 & 27431.21 &   786.786\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 6 × 4\n",
       "\n",
       "| <!--/--> | Y &lt;int&gt; | X &lt;dbl&gt; | Y_previsto &lt;dbl&gt; | Residuos &lt;dbl&gt; |\n",
       "|---|---|---|---|---|\n",
       "| 1 | 25461 | 27.30 | 30229.20 | -4768.201 |\n",
       "| 2 | 28972 | 27.02 | 30006.63 | -1034.633 |\n",
       "| 3 | 30814 | 24.82 | 28257.89 |  2556.108 |\n",
       "| 4 | 29799 | 23.98 | 27590.19 |  2208.809 |\n",
       "| 5 | 28900 | 23.82 | 27463.01 |  1436.991 |\n",
       "| 6 | 28218 | 23.78 | 27431.21 |   786.786 |\n",
       "\n"
      ],
      "text/plain": [
       "  Y     X     Y_previsto Residuos \n",
       "1 25461 27.30 30229.20   -4768.201\n",
       "2 28972 27.02 30006.63   -1034.633\n",
       "3 30814 24.82 28257.89    2556.108\n",
       "4 29799 23.98 27590.19    2208.809\n",
       "5 28900 23.82 27463.01    1436.991\n",
       "6 28218 23.78 27431.21     786.786"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "dataset['Residuos'] <-resultado_regressao$residuals\n",
    "head(dataset)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "64a6fff4",
   "metadata": {
    "id": "v1uM1N_UZTOg",
    "papermill": {
     "duration": 0.015045,
     "end_time": "2024-05-06T19:36:40.388592",
     "exception": false,
     "start_time": "2024-05-06T19:36:40.373547",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Plote um gráfico de dispersão dos resíduos da regressão contra o $Y$ previsto"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 16,
   "id": "970766b4",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T19:36:40.422079Z",
     "iopub.status.busy": "2024-05-06T19:36:40.420306Z",
     "iopub.status.idle": "2024-05-06T19:36:40.641373Z",
     "shell.execute_reply": "2024-05-06T19:36:40.639506Z"
    },
    "id": "gyF8kMnzZTOh",
    "outputId": "7dfa3151-edfb-40b1-dfed-6b00f92752c7",
    "papermill": {
     "duration": 0.24104,
     "end_time": "2024-05-06T19:36:40.644301",
     "exception": false,
     "start_time": "2024-05-06T19:36:40.403261",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "iVBORw0KGgoAAAANSUhEUgAAA0gAAAHgCAIAAAAQVdomAAAABmJLR0QA/wD/AP+gvaeTAAAg\nAElEQVR4nOzdZ1gTWRcA4DupkBBpFsCCCKKCoggWsIFiR0FRFBt2V1es2HsvuwJi773roqJi\nx4ZrV7CAigqiopTQW0Iy34/ZnW82gRAgYUJy3h8+zJ12LoNwcucWDMdxBAAAAAAAqj8G3QEA\nAAAAAADVgMQOAAAAAEBLQGIHAAAAAKAlILEDAAAAANASkNgBAAAAAGgJSOwAAAAAALQEJHYA\nAAAAAFoCEjsAAAAAAC0BiR0AoBxEOX9jchgMBt/Q1MGl1+p9t1U74/klxzoYhiUUSUo7IGpM\nUwzDrmQUqvS2ypKKU/vW4WMYNmBvnPzeiAAHDMPqdl1f4rlxe7wwDNM39RAWS+X3ivNeW+mz\nGQxWaGyGMpEUZlyRfy4cnqF1yw4zNxzJk6pxIvoynxEAoCqx6A4AAFD9sPQaefZy+P+2tFj4\n42PU4+tLHl27Envt4Z896AutSjHYtY7e3mjmEBA+1eP+oE+djLjkrsy4HV7b37D59pfDZ5d4\nbtPx56Zsqr39/a3eKx89Xukqs/fCxIEJhcU2w09Na2asfDxsXpO+PZr9uyVJ+frp6au/Q+Y/\nPHsjPvHmCk34HJ+duNiy1TaX7c+u+FnTHQsAWgoHAAClFWU/RAgZWEyV35V4cx0TwzCmfkye\nWFW3y02Ij4uLE0tLPeDB6CYIocvCAlXdsQJuzHFCCJl1WEmWSIuzBlrwEUIzryYpODEn6TiP\nyWCwjCLS/hN/1ue9bAxj8+3f5yv7nSwQXkYI1WiwRKY89dV5ez4bITQzOk3JS5VXmc+IKvPz\nbIRQp4Mf1BQMAEATPsIBALRBg27z59cX4JKCXcm5qrom39K6SZMmLExV11OLbutu+9Yz+Bm1\ndMzZL0TJ/aXd//qRZz3kQFDPegpONKjnd3m2o7Q4c4xXCKVYuqzPHDGOD9530Va/si9Varb0\nOjbfASEUse29/N78dFElr4+qyTMCQHdAYgcAUBlHA45MCS7JOrZumqudZQ19bu36Nt1HzL4e\nl0U94P6Rtb3bNzcW6HP0DWxadlqw9TK1O1iEiwW1/1ZW3LWJA93NTQVcA+Pmnb133fwsc7vz\n9rUwDMuS/KdL2cg6BvrGHuSmOPf9hoBhzS3N9NlcUzOrPsNn3vmco3xI8jBmjT13t/KYjGP+\nvaPzxDmJR3tveKZn1OnWoZEKz0MIoc5rrvWsqf8zasGsO8lESeLFcSFxGabNZx8Z0qjM05Vh\n6mKKEMqNz0UIRQ5oxGDyEEJnV46tX5PfOvApcYyCx3S+tyWGYTPeplOvWZhxhcFgGFsvRHLP\nCJX+DdzR2MSo0SaE0P3RthiGbUvOQ0o8DgBA+dDdZAgAqE4UvIrFcalPTR7G4P6dXfTPtiR3\nakczhJBJM5eho8d5dXflMjAmp86fd5KJAx6v6YkQ0q9tP2TkuPEjhzQx4SKEPNa9IK94pb05\nQuhLYTGO4xlxe805TIRQw5Ydhvh5t2xkhDE4vVuaIMqr2DC7mgihzOL/vBccUZuvZ9SN+Fqc\nF+NmzkcI1XNw9Rvj393VgYlhLL0Gh+KzlAypNFHLOyKE6vcOGd3IEMOYG56lKvktTXmyEsMw\nPZNuaWKJpCi5fQ0ug8k//T1XydMJpb2KxXH84hBrhJDDnKc4jt/2tsIY+o/WdecIrAaNnrzh\n1Be8rMeU9nomQsjK+wr1mjF/tEEI9Qv7gv/3GeEKv4FvTxwIXu2BELLxX7lz5843eeIyHwcA\noLwgsQMAlEPJiZ20WPgtdttMd4SQ48SzZHH0+o4IIaeZh4v+TbR+Pj5qwWVyDBzTxVIclzbS\nY3EEzmROUJT9zITN0DP2IK9ASRqkwy0MEEITt935556S3D9HNCU+oCqf2J31bogQ6rHmKrn3\n48XFDAyrYTmBuGqZIZVGKskfY21IxNMy4FKZx1MdGGiFEGq7OOrevNYIIcfZt8t1Ol5yYidJ\nTfp4aNU4NgPDMNb+77k4kdhhzJpmfd7kiMjjFD8mqSS/GY/N5rcoonxTx5jxmexaXwuLcdnE\nroxvoEwfu7IeBwCg3CCxAwCUA5HYlcZn9dliysFdjLjcGh2y/5tmPfjdDiE0Jz5DKsllYZi+\nSd8sygHxr148fx5NbpJJQ873LQih2k7B1EtJRD8b6rGUT+ykxZnGLIaeSS+Znv5bWtdGCJ1I\nyVcmJAXebOlAfB/2fc1R5niSOO91Ex6bwTIyZDH0jNx+iSTlOh3/N7ErEYNpMCb4IXHYbW8r\nhFCf8ATquYofE47jET6NEEJL4zOJXflp5xBC9bufJjapiV2Z30BqYlfm4yjvNwEAgOM4THcC\nACg32elOkDT716fIR+/CNy4+PKDrGDtjhJA49/ndzCID82anD+6nnpvJZyCEnjxLx6yt17tb\nBN6+XL9Jp9HDvLp0cG3v0ta6pWOJdxS+vIAQsl/gRS1ksOssb2w0+nWakmHnp57OKJZausyW\n6enfI8AWjUk5Fp81tJaZ8iHJKBTe6hH4iMmuJRGnzuo63e/9Xn2GsgMKWLzmV/b7Wg89loXQ\n7PPHa7Mr2Pv5v9OdIIzBMa1v6zslsLutIfWwwW1qkV+X+ZiQtVH7dcPQudUnVrxccdgNIfR+\n+xqE0IhQDyQHY/CV/wYq8Tj0y1V9AABC0McOAFAeCvrYvf3rN4SQSZONxGZ+ynEFv3naBr3G\ncVwqTt+/OqBt4zpEIcbgOHQdcvJZCnlNsjUodpcrQmjAW9k5O+74WiOlW+yyEhYhhJrPeCxz\nkeRHfRBCbqc+KRNSyaTiGQ6mCKHRZz7v9rJECHVYdr+MU+QuwWVgbF6Tcp71DwV97KiIFrub\nGYVkiTKPCZeKnAQcrmEHoiHRrzaPa9iFbGaT6WOn+BtIbbFT5nEAAMoLRsUCAFTDbsCOFnx2\nztc9xCaTUxchZNb2Yom/eh7PbI4QwlgmYxaFPv7wMzMp9tKJPTNG9fh098xw1+b3s2Wn4TCw\nMkAIZcZly5Tn/Sp7zYkcyT9LOzC5lgihnI+ygy6JEaM8C/1yhUT1IrhvSEy6WYdVBwZZjTl+\nxZ7Pfriqx94PWQpOkYMxEEKIWZ5TKojakqjMY0IY+88BDYuyojZ/y81POXYiJb/plD9Lm99E\n+W+gMo8DAFBekNgBAFTG0YBTXJRIpFEcw452PHb254MyC2bFH1kzc+bMqGxRYfqFBQsWBJ1L\nRAgZ1mvad+j4oAPh91Y4SkQp698KZa5s3GIQQujt+kv/KcVFG1+V8B42i7JIl6Tw843MIuJr\nXs3BRixGyt/BMqtf3dryHiE0xNawXCGRcpNOuc+7yeI2OHtlLkKIxbO7cnwsLi2Y0WVUWknL\nhWmUMh8Tsdl65ViE0L6Nb2I3/4FhjNWBzUu8Wrm+gWU+DhVUDwAdpM7mQACAtlE43QnuV5uH\nEEou+qfv/92pzRFC3ZdfIMcCZH8Ot9FncWu45EqkBWlhCCG++Yg0MblfusPHCiE079M//fSp\nr/lG1jPAMOz33Q/+PVZ8KPCfwQrkq9irbnURQhOvfP33mKI9E+wRQuSo2NP9LBFCfTf+f9jp\np8vLmBhWo8F4HMeVCUmGtDhneMMaCKFBB95Tyze6WyCEWky+oPDb+R/6DIzNs1P+eKpyvYq9\nnVlILVT8mP4tk3Qx5OqbenqZ6hs1WkA9nfqMyvwGEq9iO+yNI/YpfhwAgAqAxA4AUA6KE7ul\nljUQQlu//TMmVFL03aeJEUKolq3T4DG/jRzcy4jFYDANVkX+IA5Y626BEOLXbeUzbOyUCaPd\nm9dBCNVxnVVi/62M2D1mHCZCqLGz23D/Ie3samMYc3igHTWx+xkViGEYg1Vj4Phpi+f83su5\nDoYxnQQcMrET5b7qXIeHEGro7OY/aUJfNycmhrH0Gh79lKVkSDJuzW+LEKrlNF9mIGtR9mMr\nPRaGMdc+Lqt/3r/oSuzKfEyEh7/bEWk0MX0dSaaPneJvYHbSRoSQke3A5SuWRWUVlfk4AADl\nBYkdAKAcFCd2UROaIoRqOc8iS4qLkrbMG+PYyFyfza7dwNbda/y55/9PdCSi1G0Lxjna1uNx\nmCw9fqMWLgGrDqRTciiZpCHj7ZXx3l3qGBuw9ASN2/QOjfj4/U4v9N+1Yh8dWt6pZRNjHgsh\nxGAZTdn8IMyuJpnY4Tguyn635vchdvVr6bHYRrUse/nNuPM5R/mQqIRvtnIZGJNT+3paCYvV\nfjzqhxDiGnb4XFAsv1ceXYkdXtZjIuR834YQIqevI8k8ozK+gZKCRYNdjHhsDs/40K88vKzH\nAQAoLwzHFS+WAwAA1ZE0NekLs1ZDE72qGI4AAAAaAhI7AAAAAAAtARMUAwCApsKlEmkZn70x\nDGMwYH4DAMA/4NcBAABoqLjdnVhlEdQZQneYAAANAq9iAQAAAAC0BLTYAQAAAABoCUjsAAAA\nAAC0BCR2AAAAAABaAhI7AAAAAAAtAYkdAAAAAICWgMQOAAAAAEBLQGIHAAAAAKAlILEDAAAA\nANASkNgBAAAAAGgJ2taKxSWZt+688ejWkVqYGXdn18mI2LhPxfp12vXwmTy0KwtTam+FTyxR\nTk6OVCpVWVU1A4/HKyoqkkgkdAeidgwGQ19fHyFUWFioO/XNz8/XhVVkmEymnp4eQkh36svl\ncvPz8+kOpCqw2WwOh4PjuO7Ul8lkFhYW0h1IVeByuSwWSyKR6E59cRwXiUTqu4WhoWFpu2hL\n7NJf7dq24xM1sSsU3vt9QTCq13bAqAn5CU/Pngj5nG0cPMmxzL0VPrE0YrFY+xI7FouVn58v\nFovpDkTtmEwmi8VCCEkkEt2pr1gs1oVEB8Mw4uHqTn0ZDIYu/BgjhNhsNvG3X3fqi2GYjlRW\nT0+PxWJJpVLdqS+NlaUhsZMW5Xx8/XjrxkcI1aKWP/7zQD6rXsgf8y31mAj1tC6evDFi3Rf/\nE1Z6TMV7K3xi1dcdAAAAAEB9qrqPXX7K0YG+I+asDE0s/O87Mlxy8H2GcTN/y3/zLafhPXFp\n4dHYjDL2VvhEAAAAAADtUtWJnb5p39AtW7Zu3TqzfW1quTgvJl0stejbkCzRM+nHxrDkh2mK\n91b4RPXUDwAAAACANlX9KhZjGjdoYIwQyuOzEfp/o52k8AtCiG+mRz20DoeRl5CneK+kMLFi\nJ1KjCg8PP336NLkZHBxsZGSkgtpqEgzDDAwMdKRbEvGFTtVXQUdabUI+XN2pL4PB0L5fRyVi\nMBjEv7pTXwzDdKSyTCYTIcRms3WnvjiOczgcNV1f8TAA2gZPyJBKcxFCxpz/9HszYTGz84sU\n763widSStLS02NhYchPHcaKDtpYh/mvpDp2qr1b+xCqgU/XVqcqS42N0hE5VVqceLvGpTE0X\nVzzhg6Z8izGGAUIoU/SfWIXFEqYeR/HeCp9ILXFwcPD39yc3GQxGQUGBCmqlSfT19YuKirRv\ntK88DMOIGTF0qr7a9xNbIiaTSXwI1pH6MhgMDoejIzNEsFgsNpuN47ju1JfBYKh1RgzNweFw\nmEymRCLRnfpKpdLi4mI1XV8qlfL5/NL2akpix9JvhBDKSylEljX+LcNTRNJalnzFeyt8IvXu\nTk5OTk5O5KZQKMzL+8+7Wi2gp6dXWFioC0PNyanOdKq+OjKvG4fDIRI73akvi8XSvl9HJeLx\neGw2WyqV6k59defhMhgMIrHTnfpKJBK1zsioILHTlJUn2LwWtTjM5GvfyJLCjGsiHDfvWEvx\n3gqfWBW1AgAAAACoQpqS2CGM6d/MWPj6aKr4n3dn7y9cxhj6I+yMy9hb4RMBAAAAALSLxiR2\nCLWbPYEv+jxnxc7bj19Ent+1POyrTb8Fjf6df07B3gqfCAAAAACgTTC6+qnEbp688L4k7Oxu\namFG3K0te8+8+fKLLTBr18N3ip87dVFXBXsrfGKJhEKh9nW6NzU1zc7O1pE+Z8bGxgihrKws\n3alvenq6jvQ5q1GjBkJId+rL5/MzMnRiQnUej8fj8SQSie7Ul8ViZWdn0x1IVRAIBFwuVyQS\n6U591d3HrmbNmqXtoi2x02SQ2FVrkNhpMUjstBgkdloMEjuVU5DYadCrWAAAqICvX7/eu3fv\n+/fvdAcCAAD0g8QOAFBdSaXS6dOnOzs7+/j4ODk5rVixgu6IAACAZpDYAQCqqyNHjhw/fpx4\nJyuRSLZu3XrlyhW6gwIAADpBYgcAqK7u3r1bZgkAAOgUSOwAANUVj8eTKdHX16clEgAA0BCQ\n2AEAqis/Pz/qMtscDsfX15fGeAAAgHaQ2AEAqqsOHTrs2rXLxsaGzWbb2dkdPnzYzs6O7qAA\nAIBOLLoDAACAivP29vb29qY7CgAA0BTQYgcAAAAAoCUgsQMAAAAA0BKQ2AEAAAAAaAnoYwcA\nAIA2P378OH36dGpqaqdOnYYPH053OABUe5DYAQAAoMe7d+/69OmTl5eHENq9e/elS5eOHTtG\nd1AAVG/wKhYAAAA9li9fTmR1hFOnTsHaIQBUEiR2AAAA6BEfHy9TEhcXR0skAGgNeBULAAAl\nuHnz5q1bt7hcrpeXl6OjI93haKd69eolJSVRSywtLekKBgDtAC12AAAga926dX5+fnv37t22\nbVuvXr3CwsLojkg7LVy4kMX6f/tC165de/ToQWM8AGgBaLEDAID/+PXrV0hICLkplUoXLVrk\n7e2NYRiNUWml9u3b37hx49ChQ2lpaR06dJgxYwZ18V8AQAVAYgcAUNaTJ08WL1785s0bMzOz\nadOmjR49mu6I1OLr169SqZRakpqampOTU6NGDbpC0mLNmzf/448/EEI8Hk9PT08ikdAdEQDV\nGyR2AAClfPv2zc/PLzs7GyGUlJQ0Z84cIyMjrVyntV69ehiG4ThOlpiamgoEAhpDAgAAJUGj\nNwBAKeHh4URWRzp69ChdwaiVubn5lClTyE0Mw5YvXw7vYQEA1QK02AEAlFJQUCBTkp+fT0sk\nVWD58uVOTk63bt3icDgDBw5s37493REBAIBSILEDACilU6dO69evp76gdHd3pzGeMkkkEiaT\nWeHT+/Xr169fPxXGAwAAVQBexQIAlNKmTZulS5dyOBxis3fv3tOnT6c3pBKJRKJly5Y1bty4\nQYMGAwcO/PjxI90RAQBA1YEWOwCAsqZOnerr6/v+/Xtzc3MbGxu6wynZH3/8sX37duLr+/fv\nDxs27N69e/r6+vRGBYAWe/bs2Z07d9hstqenp7W1Nd3h6DpI7AAA5VC7du3atWvTHYUix48f\np24mJCT8/fffXbt2JTalUmlycnKtWrXIpkegjOzs7NDQ0IcPHwoEghEjRsBLakDasWPHsmXL\niE4aGzduPHjwYPfu3ekOSqfBq1gAgFYpKiqSKSGHfZw9e7ZZs2atWrWysrJau3ZtlYdWXUkk\nkpEjR27evPnp06e3b98eO3bsyZMn6Q4KaIT09PRVq1aRXW9FItGcOXOoPXFB1YPEDgCgVWSG\ndBgYGLRr1w4h9Pr164CAAKFQiBASiUTBwcEybXugNE+ePHn48CG1JDg4mK5ggEb5/PmzWCym\nlnz//j0nJ4eueACCxA4AoGXWr1/fpk0b4msTE5MdO3bUrFkTIXTlypXi4mLqkRcuXKAhvmoo\nLS1NpiQlJYWWSICmMTMzkykxNDTk8/m0BAMI0McOAKBVTE1NL1++/P79+5ycHDs7OwV/Y+CF\nkZLs7OwYDAZ1mTUHBwca4wGao379+iNGjKDOVT537tzKTDMEKg8SOwCAtsEwrGnTpjKFvXv3\nDgkJoTba9e/fv2rjqq6sra3nz5+/bt06IhU2MTHZsGED3UEBTfHHH384ODhERkay2eyBAwf2\n7duX7oh0HQafWeUJhUKZJcC1gKmpaXZ2tkxnCK3EZDKNjY0RQllZWbpT3/T0dF34v8zhcGrU\nqIEQqlh9T548uWTJkszMTDabPXny5MWLF2v4QmEcDofP52dkZNAdCEIIxcTEPHr0yMDAoE+f\nPkZGRiq/Po/H4/F4EolEQ+qrbjwej8ViySzTp60EAgGXyxWJRLpTX4lEota1eYgeJiWCFjsA\ngK4YOnTooEGDvn//XqdOHT09PbrDqWYcHBzgDSwAmg8SOwCADmGxWJaWlnRHAQAA6gKjYgEA\nAAAAtAQkdgAAAAAAWgISOwAAAAAALQGJHQAAAACAloDBEwAAAKoTiURy7NixW7dusVgsLy8v\nmI8QACqYx64EEomEwdC2tkwM06FnTUxOplP11anKIni4WkrJhzt16tTt27eTmxs2bJgzZ456\nI1MP3Xm45ISROlVf9VVWIpGwWKU2zOnKT1W5ZGdna9+3pUaNGvn5+TJrZWolBoMhEAgQQrm5\nuRKJhO5w1I6ob4V/aFNTUz98+FCnTh0bGxuVx6ZybDabx+MhLf1PiuN4cnKyQCAgfoARQmw2\nW09PT0eWVOdyuXp6elKpVHF9f/782axZM+rT5/P5CQkJbDZb/TGqEpfLZTKZap3DVnPweDw2\nmy0Wi3WnvlKptLCwUH23MDQ0LG0XvIotQXFxsfatPIEQKi4u1pGVGIgvJBKJ7tRXLBZXINHZ\nuXPnqlWrRCIRQqh379579+7lcDiqD1F1yM/9FauvJnv48OHUqVOTkpIwDBswYEBISIi+vj7R\noqMLP8YIISIzK7O+SUlJMo8+Ly8vPT3d1NRUvfGpGpvNZjAYOvJwiT+puvPDLJVKafwDpG0v\nHAEASnrx4sWyZcuIrA4hFBERERISQm9IOksoFI4ZMyYpKQkhhOP4X3/9tXLlSrqD0lANGzaU\n+fhRp04dYhVBAACCxA4AnXXv3j2ZlunIyEi6gqHFkydPunfvbm5u3rJlyz179tAYSVRUlFAo\npJaEh4fTFQwhPT19/vz5Xbt2HTRo0KVLl+gNhsrIyGjFihVk2y2bzd64caP29YoGoMLgVSwA\nOkpfX7/MEi32/fv3YcOGZWVlIYR+/PixcOFCIyOjwYMH0xIMmaYoKKlKIpFo8ODBr1+/Jjbv\n3r27a9eugQMH0hgS1fjx452cnG7dusVms/v06dO4cWO6IwJAg8CnHAB0lKenp0z32+HDh9MV\nTNW7fPkykdWRjh8/Tlcwrq6uJiYm1BJ6p/C4c+cOmdURQkND6QqmRI6OjoGBgdOnT2/cuLFI\nJHr8+HFkZGRGRgbdcQFAP0jsANBRdevWPX78uKOjI4vFqlev3rp163x8fOgOqoK+ffu2Y8eO\noKCgp0+fKnlKQUFBmSVVxsTE5ODBg5aWlgghDMMGDRq0ePFiuoJBCKWnp8uUpKWl0RJJmb5+\n/dqlSxdPT09fX19nZ+fLly/THREANINXsQDorrZt216/fp3uKCrr0aNHvr6+RFq2fv36BQsW\nzJw5s8yzunTpsnbtWmovQ3d3dzVGWRYXF5dnz54lJyfXqFGDz+fTGAlCyMHBQWaKNUdHRxrj\nUWDWrFnx8fHE19nZ2VOnTnVxcZFp/gRAp0CLHQCgepszZw7Z2Ibj+IYNG759+1bmWa1atVq1\nahWXyyU2+/Tpo0w6qG7m5ua0Z3UIIXt7+1mzZpH9/CwsLNasWUNvSCXCcTwqKopakpubGx0d\nTVc8AGgCaLEDANAgNjb2ypUrYrG4R48erVu3rvB1pFLphw8fqCUSieTDhw/16tUr89yJEyf6\n+Pi8f//ezMysUaNGFY6hmsrOzsYwjJwMWcb8+fP79u37+PFjU1PTnj17EvNCaxoMw/h8vkxf\nSQMDA7riAUATQGIHqiWhUHjhwoWMjIx27dp16NCB7nBA+Vy8eHHSpEnEOihBQUFr164dP358\nxS7FYDBq16798+dPaqG5ubmSp5uamrq6ulbs1tVXUlLS1KlTHz58iBByd3cPDQ01MzOTP6xF\nixYtWrSo8ujKx9/fnzqww8HBQWPfGgNQNeBVLKh+Pn786OLiMnfu3HXr1nl7ey9atIjuiEA5\nSCSSuXPnkqvb4Ti+fPny7OzsCl9w3rx51E1PT89mzZpVKkRtN378eCKrQwhFRkZOmTKF3njk\nZWVlLVu2rGvXrl5eXidPnlSwysj8+fNnzZpVv359IyMjb2/vI0eOKFhDEwBdAP8BQPWzaNEi\n6myuu3fvHjx4cKtWrWgMCShPKBTKDLosKipKTEyscOPQiBEjatasefr06by8PDc3t3Hjxqki\nTK319evXFy9eUEvu37+vUUtySaXS0aNHP3jwgNh8+PBhTk7OhAkTSjyYzWYvWLBgwYIFVRgg\nABoNEjtQ/cTGxsqUvHv3DhK76sLQ0JDH41HXAmcwGMq/PC1Rr169evXqVenQdIJEIpEv1KjV\nsV++fElmdYQtW7aUltgBAGTAq1hQ/dSpU0empMQeQlogKytr7dq1Q4cOnTZt2ps3b+gORzU4\nHE5gYCC1ZMKECTVr1qQrHl3TsGFDe3t7aknbtm1r1apFVzzy5GfRky8BAJQGWuxA9bNgwQI/\nPz+y203btm07d+5Mb0jqIBKJvLy83r59S2yeOXMmPDzc2dmZ3qhUIiAgwMrK6vz58xKJpGfP\nnr6+vnRHpEMwDNu7d++kSZNiYmIQQs7Ozjt37qz6MEQiEYfDKXGXvb09m80Wi8VkScuWLasq\nLgCqPUjsQPXTrVu3s2fPHjp0SCgUtm/f/vfff9fK7tJhYWFkVocQKi4uDg4OPnbsGI0hqZCn\np6enpyfdUegoGxubW7duffv2jclkVvIleHmJxeJVq1YdPXo0Pz+/devWf/zxh0zzIUKobt26\nK1asWLJkCfHW2NTUdNOmTVUZJADVmhb+OQS6oHPnzlrZSkeVnJwsU/L9+3daItEEGRkZ69ev\nv3PnjkAgGDZsmL+/P5PJpDuo6k2Zqf5U7s8//9yxYwfx9dOnT4cPH37//n35ufQmTJjQuXPn\nhw8fCgSC7t27yyxqDABQABI7ADRU06ZNZUp0dhYPHMfHjh1LdqiPjo5OSUmZP38+vVEBGQ8e\nPFi+fHlsbGz9+vVnzpw5ZMgQ+WNOnz5N3fz+/fv9+/f79Okjf2STJk2aNLaN+VUAACAASURB\nVGmirlgB0F4weAIADdWzZ0/qH7xatWrRuzA8jd6+fSszTHL37t0K5jYDVe/z58/Dhw+Pjo4W\niUSfPn0KCAi4deuW/GFFRUUyJSKRqEoCBEBXQIsdABoKw7CDBw9evnw5Jiamdu3agwcP1tkX\nUpmZmTIlubm5YrG4tN73oOqdO3eOOoUNjuNHjx7t1q2bzGEeHh4nTpwgN/l8vouLSxWFCICa\n4TgeHR2dlpbm4uJC40hzSOwA0FwYhsEgA4SQvb09n8/Py8sjS1q3bg1ZnUahZnUE6vMirVy5\nMikpiWh/NTExCQkJkZ+9CIDqKDs7e+jQoU+fPkUIcbnctWvXjho1ipZI4FUsAEDTGRsbBwcH\n6+npEZsWFhbBwcH0hgRkdOnSRabEzc1N/jAjI6OwsLAnT55cu3bt1atXvXv3rorgAFC/1atX\nE1kdQqioqGjevHlxcXG0RAKJHQCgGhgwYMCTJ08OHDhw4cKF9+/f29nZ0R0R+A83N7fZs2eT\nEw95e3tPnDixtIOtrKxat26tr69fVdEBoHb379+nbhYXF5MrMlcxSOwAANWDubn5wIED+/fv\nb2BgQHcsoATz589/8eLFsWPH/Pz8oqKimjRpMm7cOPlZewDQSnw+X6aErt9UkNgBAACdRCLR\n1atXT548+f79e7pjqSxzc/PIyMgTJ06kpqZmZ2dfvHjR39+/xNVpAdAy/v7+1E0LC4sePXrQ\nEgkMngAAANr8/PnTy8vr8+fPCCEGgzFv3rxZs2bRG9KNGzcOHjyYmZnZvn37adOmlWsstlQq\nPXr0KLXk5cuXb968gTXBgNYbOXJkQUHBnj170tLS2rVrt379eiMjI1oigcQOAABos2TJEiKr\nQwhJpdINGzb07NlTfpWtKhMeHj527Fji6ydPnjx8+DA8PFz5JfuKi4vlZ6orcXhsXl7ejh07\nnj9/bmxsPGbMmDZt2lQmbAA0wcSJE4mupQKBQCKRyA8VrxrwKhYAAGjz/Plz6qZUKpUpqWIy\nq7I+e/ZMpku4YhwOR2ZeOmNjYwcHB5nDiouLfX19N2zYcPPmzTNnznh6et65c6eiIQMA/gMS\nOwAAoI2xsbFMiYmJCS2REFJTU2VKfv36Va4rbN68uXHjxsTXJiYmO3fulO9Cfvv27SdPnpCb\nUql048aN5Q8W6Bwcx0+ePOnr6+vt7R0SEiLfPAwQvIoFAAAaTZ48efLkyeSmra2th4cHXcHk\n5OQIBIKUlBSyBMOwFi1alOsiDRs2vHv3bkxMTH5+vqOjY4kDA+WHysLgWaCMrVu3rly5kvg6\nKirq9evX+/btozckDQSJHQAA0GbQoEEYhu3bty8jI8PZ2XnhwoXkPMxVLDc3t3v37p8+faIW\nTps2rQId/thstpOTk4IDmjZtWmYJADJwHA8JCaGWXLx48dOnT9bW1nSFpJkgsQMAgIorKipK\nSkqqW7duhafb9fHx8fHxUW1UFXDgwAGZrM7b23vx4sXquFe7du2GDRt2/PhxYtPIyIhshgGg\nNIWFhdnZ2TKFv379gsROBiR2AABQQbt27VqzZk1BQQGHw5k5c2ZgYCDdESGEEI7jnz9/zsrK\natasmfLp5tevX2VKCgsLVR3a/23evLlfv37Pnj0zMTHx8fExNTVV372AdtDX17e2tqZ+/OBw\nONDWKw8SOwAAqIi7d+8uWbIEx3GEkEgk2rBhg62tbf/+/emNSigU+vv7P3r0CCFkYmKyZcsW\nJWdJtbKykilp1KiR6uOj8PDwoLFDIaiOgoKC/Pz8iGlEmEzmqlWr6B1spJlgVCwAAFREREQE\nkdWRLl26RFcwpIULFxJZHUJIKBT+9ttvaWlpypw4evRoW1tbctPc3DwgIEAtIQJQUa6uro8e\nPdq4cePKlSsjIyPJORcBFbTYAQBKkJ6enpGR0bBhQ+Unp9U1GIbJlDAYFfmoXFhYuHr16rNn\nz4pEInd39zVr1piZmVU4qlu3blE3c3JyHj165OnpWeaJPB7v+vXrR44ciY2NtbKy8vf3l5+K\n5dWrV5s2bfry5UujRo0CAwPlJ6gDQN3Mzc3HjBlDdxQaDX5lAwD+Iz8/f8qUKZcvX0YImZmZ\nhYaGuru70x2UJvLy8tq/f79UKiVLBgwYUIHrLFmy5ODBg8TXFy9e/PbtW0RERMVyRIQQh8OR\nKVF+mC2fz//tt99K2/vx40cvLy/iLdj79+/v3bsXGRkp/wIXAEAveBULAPiPVatWEVkdQujn\nz5/jx4+Xn7QWIITat28fFBRENGsJBILVq1f37NmzvBeRSCTk4FDCixcv3r59W+Go/Pz8qJsN\nGjRwdXWt8NWoDhw4QF0iKS8vj8xHAQCaAxI7AMB/XLlyhbqZnZ394MEDuoLRcMOHD4+Li3vz\n5s3Hjx8nTZpUgSsUFxeLxWKZwsosMTl37txJkyYJBAIWi+Xi4nLs2DEej1fhq1EJhUKZkvT0\ndJVcGQCgQhr0KrYw46qv/3aZwgXHzroI/nmzkBl3Z9fJiNi4T8X6ddr18Jk8tCvr3y4uCnaV\nuRcAQMVkMmVKKvxaUBcwGIw6depU+HQul9uuXTtyuANCyMTEpLyLPVBxOJzVq1evXr1aJBLJ\nv5atjNatW587d06mRIXXBwCohAYldkUZMQghryF+PMofkfrcf/7GFArv/b4gGNVrO2DUhPyE\np2dPhHzONg6e5Kh4V5l7AQAyvL29t2zZQm6ampp27tyZxni0Xmho6LBhw+Lj4xFCpqamO3fu\nVEkbm2qzOoTQmDFjbty4cefOHWKzW7duo0aNUu0tKiwnJyc0NDQqKsrAwMDPz69inR0B0A4a\nlNhlvU1hcmqNG+5X4t7Hfx7IZ9UL+WO+pR4ToZ7WxZM3Rqz74n/CSo+pYJfiE6u2fgBUD/Pn\nz8/MzDxx4kRxcbGtrW1ISIj86EigQlZWVvfu3YuJiSkoKHB0dOTz+XRHVDI2m3369OkHDx58\n/PixSZMmrq6u8uOCaSGVSv39/e/fv09sRkZGZmdn+/v70xsVAHTRoDcsGS8zOYJ2Je/DJQff\nZxg387f8NxtzGt4TlxYejc1QtEvxiQCAknA4nKCgoMTExPfv30dFRbVp04buiLQfsbhqx44d\nNTarI2AY1qlTp7Fjx3bo0EFDsjqE0PPnz8msjrB582a6ggGAdhqU2MUn5WFMtHVl4Kihg3yH\njV7254H4nH/6FIvzYtLFUou+DcmD9Uz6sTEs+WGagl2KT6ySOgFQXXE4HJjSHVQL8jMw//r1\ni5ZIgIbDcfzw4cN9+/Z1d3dftmxZVlYW3RGphQa9in2eK8rPu5TsOGTUpF7pie/CLpyfHx2/\nff+q2myGpPALQohvRpmNCWPW4TDyEvIkhYml7UIIKTiReusfP358+/aN3LS2tmaz2WqpJK10\nZKZZsqe//CAArURUk81my6yCoJXIn2HdqS+GYVr560ge8T+3AvV1cHBgMpkSiYQsadWqleZ/\n05hMJoPB0Pw4VaLCD1e1QkNDly5dSnz95s2bN2/enD9/Xh2Dw4hr0lVZzflLjzfs7NG0fsdR\nnsRwMI9ujtyxSy7/eeXbRq8GUmkuQsiY85+/0yYsZnZ+kYJdCCHFe0nXrl3btm0buRkREWFo\naKjKymkGDX/Lo3IGBgZ0h1B1atSoUeYx+fn5RAdzExOTSZMmqWp6M1ooU1+toZW/jkrDYDDK\nW9+WLVuuWbNm4cKFxGTRJiYmu3fvri7ftOoSp0qw2Wx660sdFoYQunfvXnx8vPp6m3C5XDVd\nmfoxRp7mJHbYxMmTqds1W05qzrueEPEGeTXAGAYIoUzRf2oiLJYw9TgKdiGEFO8FQHdIpVJP\nT8/IyEhi88iRIxERERWYUBcADTRv3ryePXvevXvXwMDA29vb1NSU7oiAxsFxXH4uRiVXUq5e\nNCexK4E9n/1ZlIYQYuk3QgjlpRQiS/JjOp4iktay5CvYpfhE6o0GDRrUo0cPcpPJZGZkaNvo\nCiMjo9zc3OLiYroDUTvyE39OTo7u1DczM1Pxq8k7d+6QWR1CCMfxBQsWtG3bVv0BqhKbzSYa\nYsusbxWIjo6+f/8+n8/v27dv7dq11XELNputr6+fnZ2tjotrGj09PX19falUWrGeT5aWluT0\nK9XiF7ienh6LxcrNzaU7kKrA5/M5HI5YLKa3vq1atXr+/Dm5yeVyrays1PHTwufzJRJJYWGh\nyq9MwHFcQR9oTUnsCtNuHDr32XXk2Ba8/7+T/lRYzKljhRBi81rU4jCTr31Dbf757VmYcU2E\n4+Yda7F5xqXtUnwi9e4CgUAgEJCbQqFQcTtnNSWVSrWyXqXRqfpKJBLFiQ61Fynhx48f1e77\nQ/abLLO+6rZ169aVK1cSMSxfvvzMmTNOTk4qvwtRX+Uf08OHD6Ojo+vUqdOnTx/ll4gtF5FI\n9OvXLzMzM5X0H3rw4MHmzZuTkpKaNm26fPlyZ2dnHMfV8WOJ43hERMSTJ0+MjIwGDx5ct25d\nld+iAiGpqbIaiPifQnt9N23a5OPjQ6yYwmKxVq9eXbNmTTX9vNFYWU1J7Bh6JleubH3NaLN1\nwj9TmWe+P/IsR9RhehOEEMKY/s2MQ14fTRW3qsVmIITeX7iMMfRH2Bkr2qX4RAB0ia2trUxJ\n06ZNaYlEC3z//n3NmjVkZpmTkzNnzpzbt2/TG9X06dPJZWcbNmx45cqVWrVqKT6lvLZv375+\n/fqCggIej7do0aKJEydW5movXrzw9fUlVlT79OnTw4cPY2JizM3NVRTsf8yYMYP85gQHB1+8\neLFly5bquBHQZPb29o8fP75161Zubm7Hjh0bNWpEd0RqwVy+fDndMSCEEJNjYZJ459btiPgs\nvDg37VXU1aDQcK5Vr/VjuzAxDCFk1rr21b8u3XyXUYPPTHh2ccOJZ9b9lwxta6F4V5l7S1RQ\nUED7Wx6V4/F4RUVFROdi7cZgMPT19RFClaxvdnb26tWrlyxZcuzYsezsbCcnJ81cWYuob0FB\ngeLDLCwsfv36FR0dTWwKBIK9e/eq/A+/ujGZTKI/cpn1Vatnz56dPn2aWpKWlhYYGKjyqd2Y\nTCaHw1HmhU5kZCQ53A8hlJmZmZGR0bt3bxUGc+PGjYCAAKJ7g1gsjoyMdHZ2trKyqvAFV65c\n+ebNG3KzsLDQxMSkU6dOKn+B9fz583nz5pGbYrH448ePfn4lT4ZfZdhsNoPBKCoqKvvQ6o/L\n5bJYLIlEoqr6isXiM2fOHD9+PDY21sbGhvidrww9Pb1mzZq1bNlSrfOuc7lcHMfll4FWIQXr\n02hKix1CqMe8zdwzBy7eurbzeq6RhaWj5+gx/l6cf39Rco1cQtcFbNl7ZufGG2yBmfuQGVP8\nWpW5q8y9AJRm4sSJt27dIr5+/fp1VlbW4sWL6Q2pkjZt2tS7d+/Hjx8bGxsPGjRITd3CdIF8\nQly7dm16J+yNiYkps6SSwsPDqZs4joeHh7u7u1f4gvJ9m9TUk/3jx48yJR8+fFDHjUDVKC4u\nHjRo0MOHD4nNbdu23bx5UxNer2sIDUrsMEzPzXeym+/k0g4wbtpt6Z/dyrurzL0AyPvw4QOZ\n1RF27969YMGC6j43noeHh4eHB91RVHvNmzfv0aPH9evXyZJZs2bRGA8qKdfU/OZYJycnmf9l\nLi4u6rhRvXr1ZErq16+vjhuBqhEWFkZmdQihtLS0DRs2hIaG0hiSRtHEV0sA0C4zM1OmpKCg\nQH1DnED1gmHY3r1758+f7+rq6uHhsXfv3jFjxtAbkpeXF/WtKIPBmD59umpv0b9/f+omhmEy\nJeUVEBBAHZc9ZMgQX1/fylywNB06dKC2LDIYjIULF6rjRqBqxMfHl1miyzSoxQ4AzdG0aVMD\nAwPqyPxmzZrp2gzPQAF9ff3Zs2fPnj2b7kD+wefzL168GBQURIyKnTRpUocOHRSf8vnz5ydP\nnhgYGLi7uyvzs+3h4bFq1ap169bl5+fz+fzFixe7ublVJmY9Pb3w8PB79+4Ro2K7dOmiptfZ\nGIYdOXJk//79jx49MjExGTlyZOvWrdVxI1A15BtcoQmWCtO+UQKVJxQKtW+QgampaXZ2tlr7\ncmoIJpNJ9IrNysqqTH3Pnz8fEBBAtNKZmpqePHmyVStN7J1J1Dc9PV0X/i9zOBxizQmtqW9a\nWlqNGjU4nJKnTOdwOHw+Xx3zbO3du3fJkiXESAhzc/OwsDBra2tlThSLxcR0JypfopDH4/F4\nPIlEUmWz0OE4fufOnU+fPllbW7u5uVVxL0kej8disXRkkkKBQMDlckUikUrqW1hY2KNHj9jY\nWGKTx+PduHFDfuA/jQQCgUQiyc/PV98tatasWdouaLEDoGTe3t5t2rR59OgRh8Pp3Lmzhqz8\nk5mZuWfPng8fPlhaWo4fP97MzIzuiEAFPXjwYObMmQkJCWw2e+TIkatXr66ylSWTkpKWLl1K\nTt+dnJw8Z86cv/76S+awJ0+erFix4t27d/Xr1585c+aAAQMQQmw2W77LWnUkFov9/Pzu3r1L\nbHbu3PnkyZM6snJrdaenp3f58uXdu3e/fv3awsJiwoQJlRmdrX0gsQNVLTc39/Dhw/Hx8Y0a\nNRo1apQmL/pZt25dHx8fuqP4v5ycnB49enz58oXYPHLkSGRkJLyDqI5SUlJGjx5NLLEgFov3\n799fs2bNOXPmVM3do6OjZRqzqdPxExITE4cMGUL0RoiNjZ00aZKRkVFlxsBqmoMHD5JZHULo\n3r17+/fvnzRpUiUv+/Xr16SkJGtra/jQpVYCgUBzOkJoGhg8AapUTk5Ot27dli1bduTIkRUr\nVri5uckPUwClOXToEJnVIYSEQiEMBFOVV69erVmzZs2aNc+ePauC292+fVtm4aywsLAquC9B\nfjEi+ZJz585R+5jiOH7o0CG1R6Y6IpEoJiYmPj6+tH41r169kil5+fJlZe4olUoDAgKcnZ29\nvb0dHR3XrVtXmasBUGGQ2IEqtWfPns+fP5ObSUlJ27dvpzGe6kV+WbCvX7/SEomWOXnyZM+e\nPUNCQkJCQvr06XPgwAF131E+26jK1Yfatm3r7OxMLfn9999ljsnLy5MpqUarmj58+NDZ2blb\nt24uLi69evVKTk6WP8bU1FSmREGnJWXs37//5MmTRNfP4uLioKCgmzdvVuaCAFQMJHagSlEb\nnAjUPA8oJt+93cbGhvw6Kyvr169fVRuRNhCJRAsXLiQzLRzHly5dqtZezwihLl26yAxE7du3\nr4LjxWJxTEzMy5cvVTJxP4vFOnbs2NixY5s2bers7BwcHDxu3DiZYzp27FhmiWbKz88fP348\nmcy9fPly5syZ8oeNGTPGwMCA3OTz+WPHjq3MfakvdgmRkZGVuSAAFQOJHahSDRo0kClp2LAh\nHYFUSyNHjrS3tyc369atS8xVlpGRMWLECBsbm+bNm3fs2FHlSw5ot1+/fuXk5FBLCgsL4+Li\n1HrTunXr7tq1i1j8A8MwHx8f6ppXMj58+NCpU6du3br16NGjffv28v3hKsDExGTDhg3379+P\niIgYMWKE/IBQd3f36dOnk8vo9erVS75VTzO9evUqNTWVWnLnzh1ypAjJysoqPDy8X79+zZo1\n69ev36VLlyq5cqienp5MiYJFnwBQH5jupAQw3Yn6ZGZmdu3aNSkpidg0NzePjIyUfydSGaqa\n7kQzFRYWHj9+/MOHDw0aNBg+fLihoSGTyZw6dSq5wDlCqF69en///bf8nxktoI7pTgoKCho3\nbizTEsZisaZOnbpo0SKV3KI0xcXFCQkJpqampS1bSUx34ujo+Pr1a7Kwfv36T548UflsIyVK\nSkp69+5dgwYNmjVrpu57qWq6k2fPnsksksvlcr9+/arutZ4jIyOHDBlC/lhyudybN282bdq0\ntONhuhMtRu90J5DYlQASO7XKzMzct28fMSp23Lhx8r22K0m7Ezt5DAbDwsJCJi+5cOGCq6sr\nXSGpj5rmsQsJCVmzZo18+c6dO+kdFs3hcPLz883NzWXK7927VwWZVhVTVWInFou7du1KbXMd\nMWJEcHBwpQMs26lTp/7888+kpCRbW9vly5d37dpVwcGQ2GkxmMcO6BYjIyMYpg40yowZM2xs\nbNasWSOzMNGVK1don++Gy+UyGAyZj5r6+vp0xaP52Gz24cOH58yZExUVxWazfXx8Vq9eXTW3\nHjJkCNFoV8VzHQNABX3sAKjeiB5a1JJ69erBiknl5enp2a1bN5lCJpNJSzBUNWrU8PT0pJa4\nurpCz1TFrKyszp49m5iYmJCQEBwcXMWLAUJWB+gFiR0A1d7WrVt79epFfN20adNDhw5pZQc7\ndfPy8pLJ5AYOHEhXMFRBQUFDhw41MDDQ19fv37//nj176I6oeuBwOOruVwdUorCw8MWLF/Lz\nZoOKgT52JYA+dtWarvWxI9eKzczMLCwsrFOnDt0RqZG614o9derUsmXL0tPTa9SoMXfu3Mqv\nQ1BJ1LVicRzHcVyLM5WqXyuWXtDHjvDs2bPx48d///4dIWRjY3Po0CGNWvW1YqCPHQBABQwN\nDTVkQduKiYyMvHXrFpvN9vT0dHJyoiUGoo9UamqqqamppqVQGIbBOz6gZYqLiydOnEhkdQih\n+Pj4yZMn37p1i96oqjtI7AAA9KOOS922bdvWrVt9fX3pCqZWrVp03RoAnfLx40dy9itCTExM\nenq6aufA0jWa9ZEUAKCDhELhhg0byE0cx5csWVKVS2wBAMqUmZkZEhISEBCwefNmmZWOK0x+\nfDeDweBwOCq5uM6CxA5UAydPnuzUqZOtra2Pjw91plZdlpiYuH379pCQkOjoaLpjKbe//vpr\n4MCB3bp1W7x4cUZGRlJSkszCAEKhUDs6Wl2/ft3Dw6NRo0a9evWSX3IKgOoiIyOja9eua9as\nOXny5OrVq93d3TMzMyt/2YYNG7q4uFBL+vXrJxAIKn9lXQaDJ0oAgyc0yqVLl8aMGUNumpiY\n3Lt3T8EQAV0YPBEZGTly5EhiUmIGgxESEjJs2LDq8n/5+PHjxEpoBCcnp8OHDzs4OFCb6AwN\nDePi4uQXV1D34AnVev78uaenJ5mzcjicGzdu2NnZKX8F6uCJakQsFu/bt+/GjRtMJrN///7D\nhg1TpsMiDJ7QZOvWrQsKCqKWBAYGKlgHT4aCwRMpKSnz58+/efMmk8ns16/fqlWrqnVfYQK9\ngyegxQ5ouoMHD1I3hULhxYsXaYpFI+A4Pnv2bHKpCalUGhgYmJ6eTm9UygsNDaVuPn/+PDY2\nNiAggFq4ZMmSqlkyS62OHj1KbYkUiUTUld+02Lx585YsWXLv3r3IyMiZM2euX7+e7ojUqLi4\neMeOHT179iQatNT6t5xGiYmJMiUJCQkquXLt2rX379+fkJDw+fPn0NBQLcjqaFftf3UCrZeb\nm1tmicbKyMjYvn37mzdvLCwsJk6c2KRJk8pfMzc3V6a7sUgkio+Pb9u2beUvXgXkc9D09PRF\nixa1bNnyxo0bLBbLy8urc+fOtMSmWnl5eTIl1ehHt2Ly8/Nfvnx59OhRauG2bdtmzZqlrXMr\nrl27dsuWLcTXr1+//vTp0/79++kNSR3k58S2srJS4fU1bRB6tQaJHdB0HTp0eP78ObmJYViH\nDh1ojEd5+fn5ffv2/fjxI7F56tSpGzduVH6JTx6PJxAIcnJyqIXyy4lqrFatWt25c4fcZDKZ\nDg4OCCFPT0+ZJRaqu44dO4aFhVFLOnXqRFcwVWDfvn0rV66Ub7ISiUSZmZlmZma0RKVWIpFo\n9+7d1JLw8PCvX782aNCArpCUUVRUtHfv3qioKAMDg2HDhrm5uZV5yqRJk06fPk1+pKxfv/7E\niRPVGyWoKMiRgaYLDAzs2LEj8TWLxZo7d251aZo6c+YMmdUhhIqKijZt2lT5yzKZTJnFdkeP\nHq3hf0io1q9fT3aRZDAY8+fPt7GxoTckNRkxYsSgQYOIrzEMGzlypIYsZaEOT58+XbhwYYkv\nIuvUqaOtM8jk5+eTnSJIGt4vAsfxCRMmLF++/MaNG2FhYYMHDz579myZZxkbG9++fXvRokVD\nhw5dvHhxZGSkkZFRFUQLKgBa7ICm09fX/+uvv6Kjo5OTk5s3b16/fn26I1JWcnKyTMmPHz9U\ncuUpU6ZYWFicP3++oKCgZ8+es2bNqi5dsBFC1tbWf//9940bNzIzM11cXCrfhKmxGAzGjh07\npk+fnpCQYGNjo635K+HatWsljjnjcrlBQUGasOpueUml0qtXr757965evXre3t4lvko2NDRs\n1KjR58+fyRKBQKDhCye8fPkyIiKCWrJx40byE4gCRkZGM2bMUFtcQGUgsQPVAIZhrVq1atWq\nFd2BlI/873eV9LFDCGEYNmDAgAEDBiCEmEwmm81WyWWrjEAg0OK2KxlNmzZt2rQpXXeXSqWb\nNm06cOBAVlZWmzZt1q1bp6ZMWj51a9Kkib+/f8+ePTWqOfn169eJiYmNGzdW/J9RKpX6+fnd\nvn2b2AwKCrp27Rox3J4Kw7DQ0NDhw4cT87oRWSyfz1dT8Cqhvg+cQEPAq1gA1MXb29vd3Z3c\nNDc3nz9/Po3xAB20bdu2jRs3pqamikSiqKiooUOHqqlxt3///jIfMGbPnj1hwgTNyeqKi4tH\njx7dtWvXMWPGdOrUadasWQoOPnfuHJnVIYS+fPny559/Ug+QSqUJCQlpaWnt2rV7/Pjx9u3b\nN2/e/OjRI29vb3VVQEWaNGkiszadFrea6yZI7ABQFwaDcfLkyT179kyfPn39+vVRUVEKpt8D\nQOVEIpHMbEE/fvygjlxRIXt7+507dxIjJAQCwdKlS4kWZc2xf//+y5cvE1/jOH7kyBGZoS1U\nsbGxMiVv374lv3727Fm7du3atGnTrFkzX19fDMMGDx48bNiwevXqqSNy1bKxsZk2bRq5yePx\n1q1bR2M8QOXgVSwAasRgMLy9vTX/QzxQh9jY2FWrVsXExFhYWAQELjd59wAAIABJREFUBPTr\n168q73758uXZs2fLd+RX30Rr/fv379+/v1AoNDIy0sDZKx4+fChfUlr2Kf8ZjBx4np+fP2bM\nmJ8/fxKbkZGR8+bN27Nnj0qDVa/Fixe7u7sTo2K9vb0tLCzojgioEiR2AACAEEI/f/78448/\nXrx4UatWrQkTJnTv3r0yV0tJSRkwYACRV/369WvcuHEnTpzo1q2bioItQ1JS0uTJkwsKCmTK\nuVyuWmcLevv27bt37+rXr9+uXTuZ9320k1+oiljFpERDhw7dtWsXObsHh8OZOnUq8fWLFy/I\nrI5w5coVHMc1rb6KdejQobrMGwXKS+M+VAEAgMqlpqb+9ttvtra29vb2ixcvls948vPzBwwY\ncPjw4Tdv3kRGRg4fPvz69euVuWNYWBi1tQzH8aps1ImMjJSvo4GBQXBwsPrGlc+ePdvNzW3K\nlCn9+vUbMGCA/Dwg9PL396cuZ6Kvr+/n51fawYaGhleuXJkwYYK1tbWhoSGfz1+3bl18fDwq\naSpdDWyeBLoMfhwBAFoOx/GxY8eeO3cuIyMjJSVl165dCxculDkmIiKC+LNNnkIuJ1Ax8mMU\nyJLk5OStW7euXbs2MjKyMrdQQH6MqqWl5atXrwYPHqymO16+fPnw4cPkZlRUlMzacbRzdnY+\ncuSIk5OTqampi4vLmTNnFE9AY2Zm5uDg8OnTp6ysrIyMjGvXrg0aNCgrK6t169YyybG3t3f1\naq4D2g0SOwCAlvvw4cOjR4+oJadOnRKJRNQS+b5oaWlplblpu3btZEpcXFwQQtHR0S4uLitW\nrAgODvb19V2wYEFl7lKabt26yay5OXLkSGVW4SwsLDx16lRwcPD169dxHFf+jk+fPpUpefLk\nifKnk379+vXs2TOhUFiBc8vk4eFx9erVuLi4ixcvyj8geTKLg33//v3atWt6enpHjhxp0aIF\nQojBYHh5ea1Zs0Yd0QJQMdDHDgCNI5FIquOErhpLfriAWCwuKiricDhkifwsiY6OjpW5aefO\nnadOnbpt2zYiPWrXrh2xXsjChQupa8ju3bt32LBhRJagQmZmZgcPHpw9e/bnz585HM7YsWPJ\nLmIKZGRk9OrVi5xut2fPnocPH1byPaN81liB1dxnzZoVGhoqkUjYbPa0adMUTA+UlJR07949\nNpvdtWvXmjVrlvdGSpJZuA/92+xqb29/+/ZtoVCor6+vr6+vprsDUDHQYgeABrl//36XLl0s\nLCxatmyp7qXEi4uL3759GxsbK5FI1Hoj2jVr1kzmb7+jo6NMV/q2bdtOmjSJ3LS0tFy2bFkl\n77ts2bKoqKjdu3dfunQpPDycx+MhhKirzBHev39fyRuVqGPHjo8fP37//n1iYuKqVauU+ajw\nxx9/UBdRuHbt2vnz55W8na+vL3WNKSaTOX78+HIFfPLkyeDgYOKnUSwWb9q06erVqyUeef78\neRcXlxkzZvz+++/t2rX7+++/y3Uj5RGNrCQGg0EtMTEx0fCsTiqVBgUFNW/evG7dugMHDpSf\nwwVoJUjsANAUCQkJI0aMePfunVQq/fHjx7x58y5evKime71+/drV1dXNza1z585ubm7y2YY2\n0dPT27lzp4mJCbHZsGHDEvvPrV69+tq1a2vXrt23b9+DBw9UMulg48aNBwwYQB0iSs6aQapb\nt27lb1QaExMT6ogBeSdPnuzUqZOtre2gQYPkX6e+efNGyRvVrVs3LCyse/fuFhYW7du3P3bs\nWPv27csV6rVr12RKbty4IX9YXl7ezJkzyZEZ2dnZAQEB5XprrLylS5eSTblsNnvZsmX29vbK\nnFji6mpVb+fOnevWrfv165dIJLp//76fn181WnsQVBi8iqWBWCxOSkqqWbOmgsH2QAdduHBB\n5qXh8ePH+/fvr/IbSaXS8ePHf/nyhdiMi4v77bffbt26pfIbaY4uXbo8e/bs5cuXXC7X0dGR\n+hKWqnXr1q1bt1ZrJAsWLBg1ahSZiLi7u5c3AVKh8PDwgIAA4uu7d+9yuVyZA4gJh5XUvHnz\n48ePl3lYVlZWREREdnZ2u3btWrZsSZbLP5QSH1N8fHxubi61JDExUSgUmpqaKh+qkoyMjK5d\nu/b06dO0tLSWLVuWOf8wjuPBwcF79uzJzMx0dHRct24dtYJV79ixY9TN79+/R0ZGenl50RUP\nqBqQ2FW1CxcuzJ07VygUMhiMESNGbNiwQfHnaaA7CgsLyyxRiU+fPlHfuCGEYmJifv36pd0L\nYwgEgs6dO9MdBerVq9fp06dDQkKys7Pd3NzmzZtH44DKAwcOUDeLiopYLFZxcTGxaWFhofJR\ntB8/fuzfvz8xMAXDsMDAwLlz5xK7hg0bduzYMTLlZbFYJa5MT7a8krhcrvwcdarCYDCUGWZB\n2LNnD7mKw9OnT/38/B48eCAfcJUpcVofWiIBVQlexVapjx8/TpkyhRjwJZVKDx8+vG3bNrqD\nAprC3d1d5m+8muazlW+YwTCstEYsoFpfv36dNWtWVFTU69evd+zYIZNaKUlVU8TJNH0hhEaN\nGjVw4MC2bduOGzfu6tWr8sveV9KCBQvI4cY4jm/atCkuLo7YdHZ2Xrp0KdFG2KBBg507dzo5\nOclfoX79+jJtThMnTtSQn16ZBsvU1NRKzoZYSV26dKFucjgcV1dXuoIBVQbaikqgvt8Rd+/e\nlZlkISIiYt68eWq6nQwOh6MLYy3JQXz01jc6OvrcuXMikcjd3b1nz57KnNK5c+dVq1atWrWK\n+LM9ePDgmTNnEg26hYWFqampdevWLW1yVD09PeW7Gdna2nbo0CEqKoos6dWrl3zfLw1ENm+X\nq74aZeHCheR6BsXFxStWrOjXr5+1tXWJB7NYLAzD9PT0yJJdu3Zt2LAhNTXV2tp6/fr1vXr1\nqkwwnTt3fvnyJbmJYdjw4cPbtm1bmWsq9vr1a+qmVCqNi4tr1arV5cuXf//9d2LSmY4dO544\ncYI6FEPG7t27mzVrdu3aNRaL5ePjM2nSJBW+90hPTw8LCxMKha6urh07doyLi0tMTGzSpEnD\nhg3LPFc+4ZZIJNTHR8VisRgMRnR09J49ezIyMpydnQMCAgwMDCpfBdL69es/ffpEDC7h8/lB\nQUFNmjRR4fWVR/wqZjAYpX03tAyTyZT5n6tain/7YdX0l6NaicViNb0c2bJly6xZs6glbdu2\npf59VR8WiyWRSHThcWMYRvwSobG+YWFhfn5+5GjTBQsWrFy5Uslz09LS4uLi6tevb2lpiRCS\nSqVz587dtm1bcXFxrVq1QkNDZd5PEfUlX58p6cePHwEBAVevXsUwzNvbe/PmzerooqRy5MMt\nb301h5mZmcyceYcPHy5tCQQMwxgMBvmDFBYW5uvrS+7lcrlPnjyxs7OrcDB5eXleXl53795F\nCLFYrCVLlshP3axaDg4OMmMzr169amdnZ2dnR20+HDVq1L59+9QaSYliY2Pd3NzIWfRsbW0/\nfPiAEGIwGN26dTM3Nzc0NPT39y+t59zMmTO3bt1KbnI4nFevXjVu3LjEgxkMxt27dz08PMiR\nFs7OzsQcLiqsEY7jb968EQqFLVq0oPGlMJHo4Diu9WPwCUwmE8dx9Y2hkUqlClqgILErgVAo\nVNPzSExM7NSpE7Xfw+rVq6mTLKiPqalpdna2WCyugnvRi8lkEu+PsrKy6Kqvg4NDcnIyuclg\nMF6+fFmxlbb37NlD/VvL4XAiIyNtbW3JEqK+6enpFfi/THyGqUa9PDkcDjHkqGL11QTt2rWT\n6eB4+vRpd3f3Eg/mcDh8Pj8jI4PYHDVqVEREBPWA2bNnK5jsTRk4jkdHRycnJzdv3lx9q42R\nzpw5M2XKFHKzTZs2Fy9evHz5sszcKKampuQr2qo0ePDgO3fuKD6GyWSeOHGixEeWl5c3evRo\n4gp8Pn/9+vVDhw4t7To8Hs/Dw0NmrpajR48q2cBfvQgEAi6XKxKJdGRYrkAgkEgkau3RqGD6\nxmrzC107WFpa7tu3b86cOd+/f+dwOBMmTJgwYQLdQQEVKywspGZ1CCGpVJqQkFCxxE5mxhOR\nSHT16lVqYlcZqm0bAMqYPHnynDlzyM0WLVoovxa7TEeOEkvKC8OwVq1ayc/PrCaDBw/m8XiH\nDx/Ozs52cXGZNm0ai8WS7/Sp8ndYX758IRrDPDw8ateuXdph7969K/NSEolk2bJlJSZ2fD7/\nzJkz8fHxaWlpzZo1K3OK5h8/fpRZAkB5QWJX1bp37/7q1auUlBRjY2Pa/6x+/vz57t27xFuG\nMkfyAyXp6enVqlUrNTWVLMEwrAraQkC1MHr0aDabfeTIkaysLBcXl/nz5yvfqbd79+7UWWkw\nDOvevbt6wlSjvn379u3bl1rSsWPHunXrfv/+nSwZMmSICu945syZGTNmEEmwgYHBsWPHShtD\nUKdOnZSUlDIvmJiYqGCvjY2N4lVoSXZ2djKXqsyLdQAIMCqWHrVr16Y9q/vrr786deo0d+7c\nwMBAV1dX7Z7GrIotX76cujlu3LgKJ3Yy89hxOJxK9pcHtBs+fPjVq1f//vvvoKAgBa1H8saM\nGTNq1CiiBzCXy122bJnM0gga5d27d0OHDrW3t/fw8Lhw4YKCIw0MDI4fP96+fXsmk1mjRo0p\nU6YEBgaqKoycnJzAwECyaTM3N3fcuHGlvcdfuHChMh2sGzVqpJLYNm7cSB13PGzYMOWnVgGg\nNNDHrgTq62NHI5k+dgUFBfb29tSVEM3MzF69eqUFw2Y1oY8dQujvv/8+d+5cUVGRu7v7gAED\nKjwcRyqVLl26dN++fcXFxaamphs3bpRJ9SrTx65ML168ePr0qbGxcZ8+fVQ7Xq9itKCPXZke\nP3785cuXxo0bOzk5yfSxI/z69evbt282NjYVWIy1YqRS6adPn/Lz85s2bSr/2rREKSkpnTt3\nJoeJYBh27Ngxxe2LPB6PyWSyWCyZ+lbSvXv3fHx8ZAoVdG6+c+fOoUOHMjIy2rdvb2Njs2XL\nloSEBB6PR87SwmazT5061alTp0oGxuPxWCxWQkLCuXPn0tPT27Zt27Vr10peU2NBHzuVU9DH\nDhK7EuhCYhcbGys/WWtMTEy1mPNCMQ1J7FSLmO7EwsJCPvNWX2K3atWq0NBQ4mszM7NLl/7H\n3pkHQvV////OYGhkLS2oZI2I7EuJJFsplFRkSaneRQvvCmkjvUmL9ncpKtImlWglZI0SSfa9\nRZlkN5b5/XE/v/u97ztMs8/Qffw19+Xe1+vMmOXc8zrneZLAQl0OMrYdu/7+fhcXFyh2vmzZ\nsujoaCEhIeY6OrTy5csXV1dXUBVl6tSp58+fp5AU2NjYeOHChcbGxp6eHkQVgpmZWXx8PIWF\n8Hg8Ho8fHBxk1vMlkUj+/v5Xrlwh/z5XUFDIzs6maaoHDx68fv1aRETE0dGRKaIhoGP35zg6\nqGPHXNDiCRQkEyZMAIvPoREcDkdBOGr0QiQS4+PjKyoqZGRkVq9eLSgoyPicYCHht2/f1NTU\n6CuJoBUBAQE2Z+kVFxfDG6p+/fo1MDDw+vXr7LThTyMqKgqeEfHgwYO4uDgqq+Z7e3s/fPiA\nxWJVVVWZq8S5Y8cOSOvuy5cvnp6eBQUFw36OGhoaTE1NR/rlZv8venR09OXLl4f9U1tbG01T\ngapAy5cvZ4ZdKCisBc2x+0OZNGkSQjrLy8tr3LhxnLKHRfT29lpaWu7atevixYt79+5dsGAB\nrV/o5IDSX+bm5s7Oztra2sO2kx8DlJSUIEJi79+/Z8/SRCKxrq6O8XrPUcebN28QI3l5edRc\n+O7dOwMDAysrKwsLCwMDgw8fPjDLpMHBQUTg7cePHyO9EyIjIyl4b+zvefDkyZOR/sRSEWYU\nFM6COnZ/LuHh4UFBQXp6ekZGRqGhoawWJuUIMTExcKX7+vp6xv2wo0ePQtJT/f39wcHBRUVF\nDM7JhZDH+SUkJNiw7okTJ2RlZXV0dBQVFUcKt4xVyEPm1CjKDg0Nbdy4sampCTxsaGjw8vJi\n1j41FoslL/MaKSIIL2sFgVJLDQwMdu3axRSTKJOXlxcfH5+bmwvA+pQgkJGRCQkJYYMxKCgc\nAd2K/XPB4XDbtm3btm0bpw1hIVVVVYgRUEeeEV6/fg0/HBoaysrKYpsMGNswNTWdM2dOcXEx\nNLJ9+3ZWL5qUlHTkyBHwcVdXl7+/v5KSEuNZ6syFSCQ2NzdLSUkxvfegh4dHfHw8FKoUFBRc\nt27db6+qq6urq6uDj1RUVDQ3NzNFwAiDwTg6Ol67dg0aUVZWHqnvgry8/IsXL+Ajvr6+SkpK\nkpKS2traLGrnAzE4OOju7g4JOJubm9vZ2cFbtfLx8fn5+amoqJiYmFBZAoKCMhqhJ2LXnJ0U\ndb0GAICB3qrtdgtnz523Ofj+WEtjRhkTSElJIUYY/7UjLw7lhnJRpoPD4e7cuePl5aWpqWlm\nZhYbG7t06VJWL5qUlAQ/JJFIjx8/ZvWiNBEZGSknJ6erqysvL3/hwgXmTj579uy7d+8uWLBg\n2rRpZmZm9+/fH6mHLBzyDAoMBoPH45ll1eHDh11cXPB4PB8fn4mJybVr10aSatqxYwc8E3Tu\n3Lnbt29ftmyZjo4Oq706AABu3LgBb8vx/PnzX79+7du3T0hICAAASUnJf//9d8eOHRYWFqhX\nhzK2oTli15i0VW7ZuYm6j9e7yKZvtjmb0rNsyayo/Q41Ih+ebkOVFVG4Czc3t5iYGGiXSkxM\nbOvWrYzPCW70gEhISCxZsoTBObkTcXHx4OBgztpAk0NAJBJramoEBQVZVGjy5MmTw4cPg497\nenr27dunpKQ0Ujcw+jAwMLh79y5Nl0ydOnXhwoWpqanQiJWVFRO7guLx+OPHjx87dmxgYIBy\nkFJcXDw9PT0+Pr6urm727NkrVqxAnN/R0cHPz8/0SCdIQUEBYuTNmzcXL17cunVrW1sbB9uk\noqCwGZojdv7roycY7i96aQ4AJN+7ddpHku/efZbiqfQ6GE1ZQOE6REVFX7x4sX37disrqy1b\ntrx69Yo8hkcrDg4Ox48fV1BQEBERMTExuXPnzoQJE5hiLQpCog+DwVAfJkxPT9fS0po/f76m\npqaDgwMrJELIw4eIECOnOH/+/IoVK4SEhISFhZ2cnE6dOsX0JbBYLA6H6+rqKi0thXdVQSAk\nJLRhw4aQkJA1a9bAHbiysrLFixfLysrKyMj89ddfXV1dTLcQrvQLH8FisSz16ohEYkREhLGx\nsZ6e3r59++DioCgoHIFmHTtBXp4F6U3JRlN7CQ/HTVh293u3w8RxLW+XTdVNGxwYI/o0f4KO\n3RhmTOrYUYClAsXs5/Tp0+Hh4T09PcLCwvv27XNzc4P/dSQdu7a2Nl1dXbgzt3LlynPnzjHX\nNm9v75s3b8JHXF1djx07xtxV4AwrUMwInz9/Li8vl5aWVlBQoPXaGzduBAYGdnV1YTCYVatW\nnThxYqTqBAS9vb1GRkYNDQ3QyLp16yIiIhCnMahjV1VVZWZmBimHCQgIPH/+fNasWXRMRRMB\nAQH//vsvdLh48eLY2FhqLkR17MYwnNWxozliJ4nDdtV3AQDQ8PAkn6Cq3cRxAAD8Kv2J4WGC\nPBgKytimsbFx69atRkZG9vb2T58+HfaExMTEtLS00SL2kZGRYWlpKSsra2ZmNuwzopVt27ZV\nV1cXFRVVVFQgvDoK5OfnI7wBClIXdLNs2TL4IQaDQYQYuZzw8HAtLS1HR0dDQ0N3d3eabns+\nfPjg5+cHRtpIJFJ8fPzZs2epvLagoADu1QEAcO/ePeqXphJ5efn79++bmZnNmDFj4cKFCQkJ\nbPDqiERidHQ0fOTZs2eIWhYUFDZDs2N3cKHkm+1eV2LPb9yZM8XoEBYAGj+82rGrUGjaBlbY\nh8IRBgYGmpub/4RwFztpb29fvnz5rVu3KioqMjMzXVxcECWEly9f1tPT27Bhg6Oj44IFCz5/\n/swpU6mkrKxszZo1hYWFHR0dxcXFbm5u5EpsdMDHxyclJUVTdzvydH5W9GI2MzMLDg4GtXmF\nhIRCQ0PJ27dwLZmZmWFhYQMDA+BhUlIS9Z4ZAAAvXryArgWh3o9HXAiOsCLArKmpGR8fX1BQ\ncOvWLR0dHabPT053dzf5PRhnO4WgoNDs2K2IjTMRKljvvCWnf0bkdUsAAJYbWDxpEzx414cF\n5qFwgKtXryooKGhoaMjJyUEdpVAYJykpCR63IJFI8L3C2traffv2Qc50VVUV9ysL3rx5s6+v\nDzocGBi4ceMG49NmZWW5ublZW1sHBARADTopo6enhyiYWLFiBeOWkOPl5VVVVfX+/fvKykpr\na2vud74hMjIyECPp6enUX05e8UC966ytrY3YNrKysqqtrXVxcVFRUTEyMoqKiqLekt9y8+ZN\nGxsbY2PjPXv2EAgEJs5MjqioKKK9mKioKBsihSgoFKDZscOJGCVXtdaXfWz6Vrp80jgAAPZd\nvFHUUO+tgeaPjwWysrJ2797d2dkJAEBPT8/hw4e5TW9i9EL+GwP3WgoLCxGBDXjtLReSn59P\n3mEMfOcwQkZGhr29/ePHj9+8efPvv//a2dn19vb+9io8Hn/9+nVNTU0AAHA4nIuLy759+xi0\nZCR4eXn7+/utra3nzJmjrq5ubm5eU1PDorWYCHkTMJra61lbWyMkVFauXEnltePHj79y5Qqk\nNGRsbBwUFLRy5conT558//69oqJiz549cKk8Rrh69aq3t3d+fn5ZWVlUVNTq1avJ44XMJTIy\nEnJbBQUFIyMjx14LH5TRBV2dJzC802cpS+D/t1GyfM1K1Sno+3iMkJSUhNgiefjwIaeMGRuU\nlZV5eXlZWlqSh0y0tbWhxyIiIoi/cnPr3q6uLnd3d3I3jnEx4VOnTsFLlz59+kTlrcXs2bOf\nPn1aX19fX19//PhxAQEBBi2hgJeX19u3b8HHRUVFnp6eHKxcaWpqysnJ+fr1K+XT7OzsEJ6c\ni4sL9avIyMhcvXp15syZAAAICQnt3bvX2dmZ+ssNDAzevHmTnZ1dVFR07969wsJCRNYds4J2\niP3lt2/fQn1iWISmpmZeXh7YlzY/P9/Kyoqly6Gg/BZ6Ok+QBggPrlxKSs1rau0aJy6pa2rr\n5blcnJfl+pMoKKOOmpoaKysrSNyBn58f2rtUUlIKDAyEzjQ2Np41a9anT5+gkQ0bOJy32tTU\nlJWVJSAgYGxsjNCSKCgoaGlpQZy/YsUKajolUIZ82m/fvlF/OROFeUfiy5cvhYWF8JGSkpLG\nxsbp06ezemkEJBLJ19f3+vXrJBKJh4dn69at8HcUghkzZty8efPAgQMfPnyQlpYGpXppWm7h\nwoX5+fmdnZ2CgoJ0CA7z8vJCpbjkmiDMUgkhz29j9W4sAADCwsI2NjasXgUFhUpoduwGuj/a\nzTVMqvg1UVpu5vSJvyqKEm9Hh520zXl3b9Y4tEHZqMfGxiYqKgoefmBDv4GRaGlpyc7OxmAw\n8+bNG6VacZcuXYJLdvX19a1du1ZTU3Py5Mm6urpwb4mfnz8+Pj44ODgnJ0dMTMzV1dXV1ZUT\nJv+PhIQEb29v0A0VFxePj4+fO3cu9FfyygYBAYHz588zvq6qqircuwUAQE1NjfFpmQgWO8xG\nBxs6K5ATGxsL7WAODg6eOnVKS0uLQsTIwMCA8cpluvusdHd3f/z4UVBQUElJSVdXl5eXF75J\namRkxKBhIJqamq9evYIOeXl5R2qAhoIyVqF5KzbZdemTRonojOrvjVX5Wbnl9d9qX1+TaEhZ\n4s58cQEU9jNv3rzQ0FBwy0ZAQCAgIIBTbRVSU1P19fU3bNjg6empp6eH6NA6WiCPPwEA0Nra\nunnzZkVFRR0dnZcvX0LjUlJS58+fLyoqSktLc3Nz44ivANLe3r5z504ouEggEHx8/lMdpa2t\nzaJihaCgILiItLOzM7f1ip08ebKBgQF8hPzVYA9paWnkI21tbcXFxdxWmJmamqqpqWllZWVs\nbGxpaSkiInL48GGoIGPOnDkHDx5kykL//PPPlClTwMc8PDxBQUEyMjJMmRkAgMHBwaSkpMjI\nyOTk5MHBQWZNi4LCXGgWKJ4rxM+3vyDf9z/30KWn9DUD+/s6Cke6anSBChT39/d//vx56tSp\nLGr+Q40B6urqcIF7KSmpwsJCaiQwGBQorqurO3nyZGVlpYyMzLZt2xgscDt58mRIyH+asqxY\nsQLeM2rcuHGvXr2SlZWlewlWCBS/efPG2toaMVhXVwdP0iotLfXx8Xn//j0PD4+dnV14eDiz\neuZ2dXU9evTo+/fvc+fOnTdvHvxPIwkUs5nm5mZvb28waXLevHmRkZEscuwoCxRv3br11q1b\n8BFtbe3379/39/fz8fH99ddfAQEBrLCKVtra2nR0dNra2qARS0vL69evNzc3FxcXi4uL6+jo\nYLFYBgWKIbq6ul6+fPnr1y99fX06dJhHoq+vz87ODhL00dPTS0hIYOQbEhUoHsNwVqCYZsdO\nmJfHOOdzks5k+OD3ouVTdNIG+3/RaSCXgTp2HKeqqgoRFAEA4O3bt9T8fDLi2H39+tXExKS1\ntRU8FBQUTE1NZcTr6u3tXbZsGZRoD7opiOhjUFDQtm3b6F6CFY4d+euPx+NramrIHeu2tjY8\nHs+2GwAucexA2tvbSSQSedULnJqamo8fP06ZMkVLS4uOECxlx+7169cODg7QlxVicxMAgKio\nKG6QUE5LS3N0dISP4HC4pqYmxAvCLMeORZw5cwYRVjx8+PCmTZvonhB17NhDdXV1UlISkUg0\nMTFhj7ohwGnHjuatWCtxgdIjLxGDaaElAmJoKRAK0xAVFUV86fPw8FD+BWUKMTExkFcHAEBX\nV9eFCxcYmVBAQODx48dXr14NCgq6fv36vXv3yHdwWC3HQAfy8vKLFy+Gj2zcuHHYcKmoqCin\nwrocR1hYGPGeJBAIISEhzs7Oe/fura+vDwkJMTAwcHd3t7ImE8Y+AAAgAElEQVSyWr58eU9P\nD30LVVRUZGRkkG/rz5s379y5czNnzsRisUpKSuRpas+ePaNvRebCz8+PGBEQEOBgpgF9fPjw\nATFSUlLCEUtQqOfFixfGxsbBwcFhYWE2NjZnzpzhtEXsgOZyh4Mhi5Q3rl28udZ3jbnsNPGf\nTbUv4o/7365ZejGZFfah/JlMnDhxxYoVd+7cgUbWrFkDhmpYCvlv57BJcjTBy8sLz1O0sLCA\n6y/w8vIuWrSIwSVYwYULFyIiIlJTU/n5+e3t7Tleosssvn37JiIiwgoxlI6ODgsLC6idVGxs\nLNyTy87OjoiIoFC1OixgtU1SUhIAADgcbs+ePYjgroODAxi0w2Kxfn5+CM1hKnu5shptbW1F\nRcWKigpoZPXq1Ry0hz4kJCQQI5MmTeKIJSjU4+fnB7UGIZFIR44cWbVqFfm/coxBc8Ru1oYH\n8UGr31wOsjDWU5ipoDt/ceDFHMeAGw82Kv3+YhQUqomIiNi+fbuysrKKioqfn19oaCgbFp09\nezZiRFVVlblLbNq0ae3atWC4Yvz48eHh4dxW9QkiJCR04MCBjIyM58+fb968+bcuQk9PD026\nJCNRWVnp7e1ta2vr6+vb2NjI+IQQ2dnZ2traqqqqM2bM8PHxYXo33tjYWHiTUPL4XHZ2Nq1z\nHj9+HPTqAAAgEomHDx8etmkbWKjr4OAAr9jFYrEsar9BKzgc7saNG6ampjgcTkREZOPGjayT\nj2YdGzZsgN9bioiIeHh4cNAelN/S1dXV1NQEH+nv76+uruaUPWyD5hw7EOKv+sz0N82EbryY\npLaxsYzYmNqLQXPsRjWM5Nj19/evXLkyKysLPJwzZ05SUhIrdOR//Pjx7du3mTNnMq67xooc\nO5ro7e3duXPn3bt3SSTSzJkzT58+raenR99U9fX1pqamkKTZhAkTXr16BRU5Agzk2LW2thoY\nGMCTt7Zt2xYUFESfncOyb98+yhv3ZmZm8fHxAAD09fWdOHHiwYMHAwMDFhYWu3fvFhISGvaS\npUuXIhqQ7N6929fXd6Qlbt26dejQoZaWlkmTJgUGBnJbYGxwcJBC/ROX59gBAFBeXn7q1Kna\n2lo5OTkfHx8GKzPQHDtWMzQ0pKSkBK/aAQCgsLCQDZKTnM2xozlQ/3/qDIJiUoJiAABUv80E\nHWAzMzO6zENB4Rb4+PgSEhKePHlSUVEhKytrZWXFil7yAABMnDiRwsdydBEcHAxtmtfW1q5b\nty43NxchaEwlFy5cgAvVtra2RkdH79mzh3Ej09PTEe5CYmIicx07RUVFxIiAgADUDw2Dwaxf\nvx58HBgYGB0dDT6+ePFiQ0PDSA21yG8qKN8JrFq1atWqVZ2dncyqUGYu1FS1M0JfX9+dO3cq\nKyvl5eVXrlzJ9A13JSUleH9nFC4Hi8Xu3r1779690MjatWvZLyTOfmh27CjkA3G8SA2Fa6mp\nqamtrVVQUOD+DxUWi7W2tra2tu7p6Tl16hSYZGZnZ+fs7DysMi0KoukcgUB4/fo1fbrW5H2x\nftspi0rY8O3k5OR08+ZNaKtUWlr69OnTkZGRJSUlkpKS27ZtMzc3BwCgp6cnNjYWfmFKSkpj\nY+OwFd+urq5wsTphYeFly5b91hLu9OpYTXd3t6WlZVlZGXh48eLFJ0+e/JkvBQqEp6enpKRk\nQkJCf3+/qakpTX3wRi80O3YIUfgewufMxIt+J57sii1gnlUoY4ehoSEfHx9wBwqLxa5fv/7I\nkSOcNooqtmzZAqU3vX79+sePHzt37uSsSdwJuc9EtxeloqICveYgTMlx/PXrF3nDWaYrb/Px\n8T148ODevXulpaUzZsxYtWqVkJAQQocPAICuri7yDIG2trZhHTs7O7uurq6wsLAvX77MmTPn\n0KFDcPVmFDiXLl2CvDoAAMrLyy9cuEBh2xrlDwG8Uee0FWyFzhw7BM+2q1pfaGvtahThGWUV\n7MOC5tgxkWvXru3atQs+wmptLQYFikGqq6v19fXhI+PHj6+qqmL1XhIdcDzHbu/evZcvX4YO\nxcXFc3JyxMXF6Ziqu7vb2tq6tLQUPNTV1b1//z5cToW+HDsvL6+EhAT4iL29/alTp1hRG/tb\nSCSSgYEBPINbXFy8uLiYXBME+J2O3RiDwRw7crnm5cuXX7p0iUnWMR80x24MM8p07IZFd5vJ\nYF9zcx/aYgUFCajODwehyMCdwNXsQDo7O+nWIRvb7Nu3D9ofnDZtWlRUFH1eHQAAeDz+2bNn\n58+f//vvv6Oioh4+fMi4SF5fX9+DBw8Qgz4+Phzx6gAAwGAwZ86cgb6UhYSEzp49O6xXh0I9\nT58+he4HIKSlpTliDAoKZ2GOylFzylse3GQVPFdoJqFwFfAmVCONcCEKCgrwzHcAAOTl5dF8\nnWHB4/GXL1+OiIhob2+XkpJiMBMRh8MxV6RjcHCQPADPdK0TmtDW1s7Ly8vKyhocHDQ0NOTl\n5Y2LiyMQCDo6OnQXFNPBjx8/sFgs3V4490DeuA8AgAkTJnh5eXHEHhQUzkKzKwYvMAHp+l51\nNTpviglDAv0oY5W1a9feunULareAw+GcnJw4axI5JBLp5s2bcXFxnZ2dRkZGvr6+YmJiR48e\n9fX1BdtCCAkJnTx5ktNmcjUiIiJsaA1CB3g83tDQEJKwAQBAWlpaRUWFgyYBACAsLGxlZQUA\nQH19vbW1NaSD7eXlFRwczOrVa2trN23aBHa609fXP3/+/OgNbnV2doaHh8NHsFish4fHtm3b\n4EI5o4Xa2tro6OiWlpa5c+e6urqioVwUOqA5x448wxeDFVDQsjp5LUJtPEuEIdgPmmPHXB4/\nfvzPP//U1tYqKSkFBASYmpqydDk6cuwuXbrk7+8PHerp6T148ICHh6eqqiojI4Ofn3/x4sVc\nK1bO8Rw7dkJfjl1jY6Obm1txcTEAANOnT//333+1tLRYaCUtuLi4PHnyBD7y9OlTTU1N8DEr\ncuxIJJKZmRm8HZaBgQGitJkj0JdjN2xf6YKCghkzZjDVuv9RXFxcXV2toKDAeFkPeY5daWmp\npaUltFGgp6eXmJjIJe1DGATNsWM6zNSxY64WPMqfgI2NjY2NDaetoASigWBeXl5BQYGenp68\nvLy8vDx9cw4MDJSVlfX19amoqDCuQvwH0t7eXlhYCACAtrb2SPq9VDJt2rTnz5/X1NT09fUp\nKiqySJuQnJ6enqtXr3748GHq1Knu7u7DRsXIM8NKSkogx44V1NfXI5qc5uTkfP/+nWtvXSgj\nKSnJz8/f19cHjeDxeFbE6oaGhjZs2AB5wPb29ufPn2euBFJoaCg8/SMvLy85OZmlpWZUMjg4\nWFdXh8ViZ8yYgao+cT9j4VYABYVBCAQCYoS8eIImGhoanJ2dQfGFSZMmXbx4kVz2AoUCubm5\nbm5u4H9BQkIiJiZGR0eHkQmxWCzdPjp9EInEpUuXvn//Hjy8cuXKixcv5OTkEKdNmjQJcbc8\nefJk5lqSlpZ27dq11tZWPT29bdu2ge3sEAw7OCrA4/FBQUEBAQHgIQaDOXDgACt2MK9fvw6P\nayYkJBgbG69du5aJSzQ0NCBG6uvrmTg/fZSVlXl6eoKtflVVVaOiomRlZTltFAolqHLsyPNS\nhwX6aKGgjC7mzp2bk5MDHfLx8c2ZM4eRCX18fCBJrZaWlg0bNrx9+5YVrcnGJIODg5s2bYJ8\n6+/fv2/atOnNmzesDhX09PR8/PgRj8crKSkxvlZCQgLk1QEA0NnZGRYWdvHiRcRpO3bscHFx\ngbaVNTQ0Fi5cyODScJ4/f7527Vpw/pycnPT09KSkJHV1dbhthoaGo7oPysaNG2fPnp2SkoLB\nYGxsbBBCRcwC0dsNAICcnBzmOnaysrJwKT5whInz08HQ0BDk1QEA8OHDh02bNj179oyzVqFQ\nhirH7tixY/DD/s72roEhAAB4+PFDxB4SiSQwUUVDXhh17FBGKeHh4XZ2dt+/fwcAgJeX9+DB\ng4zkkhOJRHiqPgAAP378KCkp0dXVZdTQP4P6+vrm5mb4SENDQ3Nz87ASvr+lp6cnISGhqalp\n9uzZ1tbWI3lsr1692rJlC/gemDp1KgAAHR0denp6ISEh5GE2aiCPtQwbfbGwsLh9+/aVK1fA\niJq3tzfjCi9wjh49Ck9GfPfuXWZm5uXLlzdv3lxQUAAAgKGhIXPbZA0NDRUWFra2ts6ZM0dS\nUpKJM1PAyMjIyMiIpUuQ1waB6Z5MxN/fPz09vbOzEzxcsGABWGHDOj5+/Hjx4sVv376pqan9\n9ddfoqKiiBNqa2shrw7k3bt33759Y3pcGYWJUOXYwVNZCcVnZuv+vXL/ef/1tvJTxfrbWx5G\nHfHYG+t4hnvFydo+vboYn1L2qXpg3GS9xQ6bnRbyjtZtBxSWoKSklJub+/Lly/b2diMjIwb3\n7Hh4ePj4+BCCGpxSTRuNkGfUYTAY+lRyCASChYVFXV0deGhqanrz5k1ylemOjg4vLy9oR/7L\nly/gg5cvX1ZVVaWnp9Ox+syZMxEjI0VfTExMTExMaJ2fSqB6W4ivX7+amZmlpKS0trZiMJjf\nyp20tbV9/vx5+vTp1Mj9/Pz509HRsaioCAAAHA63f//+jRs30m08V+Hi4nL9+nXoc83Pz+/i\n4sLcJRQVFbOysq5fv97S0qKpqeno6MjSKHVxcbGVlRX4jF6+fJmSkvL8+XPExsKwCalsy1JF\noQ+a3zQhSwNEXO5fDXRVmCqGAQCc8KQVO04meU0OWsbMdtpMpJeQ8dfeE8WtwkvWbVisM/X5\nzZN+/77jtFEoXIewsLCdnZ2rqyvjmVg8PDyrVq2Cj6irqzOlNdYfgoSEBKLfl52dHQX/g0IZ\n+7FjxyCvDgCAtLS0e/fukZ+Wn59PnmcJUl9fn56eXlpaGhwcHBAQQP0mlJ2dHTwvUFRUdM+e\nPVRey0TIhV2gt+KECRN+69Xt379fWVl5wYIFysrK1AT2Dh48CHp1AAAQicSgoCBEF8rRy+zZ\ns+Pj4/X09CQkJAwMDG7fvq2srPzbq759+0aTFoGkpOTu3bsjIiLWrl3Lav8pIiICfv9ZXl5+\n//59xDnTp09HpLcuXLhwDGgfjm1oduyufO6UdUWmHyk5y3R/i2OSSUwm79jVbl7pI+F7Vlhb\nrNsSuHuRVE1KaG0v2iQDhYUEBwe7u7uLiIgICAhYWlpGR0ejpWQ0ERkZ6enpKS0tPW3aNC8v\nr4iIiGFPA9PFlJSUZGVlT5w4QX4CuVeByGG6c+eOqqoqZW3FnJwcMzOzU6dO/fvvv2vXrp0+\nfXpISAgocEgBPj6+xMTEsLCwdevW7dmzJysra/r06ZQvYQUhISHwn+FNmzapq6tTeW18fPy5\nc+fAZ9rb23vgwIHMzEzKl2RnZ8MPBwcH4dmro5358+cnJSV9/Pjx4cOHhoaGlE9+/Pixqqqq\nqqqqjIxMSEgIF6oRQZFpiM+fP5OfdvnyZVNTUx4eHl5eXisrK4SGAAoXQnNVrOI43qqLhcC8\n/9xPvz1XyYefzTyrmAdpMLr8p9jszTME/rf5orXWgvTiyo2yn/vmjuJkYRRupqSk5MyZM42N\njba2tj4+PizS0+JCmpubc3Nz+fn5jY2NGUw/EhISCg0NDQ0NpXDOp0+fvLy8wJBDV1fXkSNH\nJCUlEbFSctkLMH8O5MSJE0eOHKFsCQ6He/DgAaSwDQBAT0/PyZMneXh4fhuBw+Fw7u7ulM9h\nLiUlJSUlJZMmTTIxMQH1z+Tl5XNzcx89ekQgEPT19fX19QcHBy9evHjnzp2uri4TExNdXd3v\n37/PnDlz8eLFiNuPp0+fwg9JJNKTJ0/mz59PwQDy7VqmJ6KNCqqqqry8vEARFiKRePLkSSkp\nKTc3N07b9R+UlJTevfvP/tWsWbPIT5OUlLx9+3Zvby8Wi2VuAigKi6A5ihC+flZVrP36o3EN\nPzoBAOj80RAftmHZtcpZ64+ywDxG6e8qbu0fkrSRgUYExJfyYTBfsn9wziiUsUxZWZm1tXVC\nQsKbN2+uX79uY2PDoHLKaCEhIUFfX3/Tpk3u7u56enqgGjBLSUpKQiQykm+zent7w7MbpaSk\nHB0dwcfV1dX//PMP4nwsFiskJAQpuuHx+LCwMPLABgAAsbGxDNrPdPbt22dmZubj47N69eqF\nCxe2tbWB42JiYuvWrdu+fTtYLnr8+PH9+/d/+PChtrb26tWrmzdvDgoKcnFxWbZsGeL1JE9G\n/K1YroeHB/xQWlra3Nyc0Sc2CklJSYFL6wEAQL7LyXH27t0Lr4FYvHgxBcFRAQEB1KsbLdDc\neYI0+Ctg5bzQ+x8AAMDhccRuIgAAavb+mbeDRXi4riSh90eCo0e0wekbe2f8313jlpV2XTKB\nMeH/Jz3/7NmzxMRE6FBHR+fx48dsNZT1YLFYEonEhdsBTAeDwYCiXBx5vgUFBYjiR1VVVSUl\nJZYuisViOdsrpb+/Pzk5Gb47KSIismjRIqYvBP1zh4aGPn78iNhXnTRpEnk8qb29vbKysqur\nS1RUVElJCVI4q6ioQOj0AgAwY8YMbW1tEonU1tZGJBJFRUX5+fmTk5N7enoQZ/Lx8bFBORZ8\nvtT8c79//56RkQEfkZWVnTt3LvmZDx8+HCnra86cOQoKCtDh58+f4RupGAzG1NQUbOtCgerq\n6urqaiKRKC4urqamRr24NPyfS+UlXEt5efmHDx/gIxMnTlywYAF8BPqaYqtl/6W/v7+hoaGn\np0dMTExSUpJ1cobgP/cP+Q0CWP/Ptbe3X7NmzYir07dwTW7ygxd5n9t6hCSm65kttdDm0s2m\n7pZrTp53rS/e3DT1/4raAlevqBPfeePs/2VIXL169ezZs9DhokWLyG/lUVBQUFBQUFA4TlBQ\n0MGDB0f6K1U5djt27OAXNjh60BF8DP/Tz6/VT2JPPokFAAAYNnmZs2Cw4wEAaCP+p1SCMDDI\nI/CfkPLMmTPh0QUlJSUHBwf2WMg2OB7UYSdgqhBHnu+HDx/Ky8vhI9ra2qxOs+PUPxdcFIvF\ntre3P3/+HP4nXl5eW1tbeACgubkZTM2WlJSUkpKie1H4P7e2tra4uHhgYACDwcjKyqqrq1Mf\ncujo6Hjx4gX8dcPj8VBvx/Hjx5uYmEDhvR8/fnz69On79+/g+eLi4oaGhuxp0E7lP7e2tvbt\n27fwkWHjlwAAvHr1aqT0AAUFhWGluYlEIhu24cZSxA4AgIaGhvfv3xOJxJHenNwQsWMbaMSO\nuVDeBaLKsUtMTMRLCICOXVJS0kincaFjxztOFgCArpZe4P+2YkktxCGJGf9RpULoSBEIhKVL\nl7LNSPYwYcKE9vZ2mgrvRyk8PDzgbtGvX7/Y/3w7OjpsbGygLUIzM7PY2FjyXCUmAj7f1tZW\ndn5jfvv2befOnampqSQSaeHChRERET4+PmlpadAJW7duhSuWR0REQAlwDQ0Ne/bs2bVrFx3r\n4nA4MBkfer69vb21tbWSkpLk+rG/JTExcffu3QQCAYvFmpubw2sFOjs7BQUFEQWAHR0dpaWl\nQkJCKioq7OnBhcPhBAUF4UqiI/Hr1y8TE5OmpibwEIPBREZGmpmZkZ/56dMnR0dH8sRBISGh\n+Ph4jpTuguDxeDwePzg4SM3zHRWAG52TJ08eVgIQj8fz8vK2t7ez3zD2IyQkxM/PTyQS/5zn\nOzg4CN0oshk6t2JHDaTB9StXYDT2XQ78X1Pt3p9PHF3PaR+4EqQ5YlUsBVms0Qvq2LENIpH4\n+PHjhoYGFRWVRYsWsdoDYI9j19fXBw9QOTg4wDO6DA0Nr127Fh4enpaWJiAgYG9v7+XlBSXa\nd3V1KSoqwhPzcThceXk5NYK3CMgdO8q0tLScO3euoqJixowZmzdvJvdaBgYGGhsbJ02aFBsb\ni+idIy8vz36pjnfv3p04caKurk5BQcHX11ddXZ1Kxw4AgPr6+tDQ0Pfv30+ePHnz5s0WFhYj\nndnV1ZWZmdnd3S0hIREbG1tdXS0vL+/j4zNsUSTbGHuOHWUYdOxqa2vDwsJKSkokJSW3bt1q\nbGzMXPOYC+rYMR0KbQBpljsZZWB4XJXFTpbc+N6vIcGHBQCg/MFjDHacs8pv8n9RUOgGh8PZ\n2dlx2gqmER0dHR4e3tLSIiMjc/DgQWtr65aWFkSefnZ2dmdnZ3Bw8LAztLS0IMotiURiS0sL\nHY4d9aSkpCQkJDx9+hSqe7h9+3ZaWhrCt+Pl5QVbRJBrrk6YMIEVhtXX11++fPnr16+zZ8/e\nsGEDvKdFeXm5ra1tb28vAABlZWWvXr3KysoaSQW3pqYmMDAwLy9PVFTU1dV169atM2bMuHDh\nAjU2CAoKWlpago8py5fQRGdn5+XLl8vLy6WlpT08PODKMijMhUAg2Nrafv36FQCA8vLyjIyM\nxMREFjXJRRl10OPYNWcnPalWWe8iO9Bb5bt64/M6orHDrnOBdlxXEwsAAADo7dog6P6P38EL\n65bqY768ibzfIG97UFaAhVtjKFwL2DdMQEBgyZIlrK5UHRs8e/bMz88PfFxXV7dhw4anT58O\nWxdJQbB36tSpgoKCXV1d0IigoCBLu4iePn360KFDiMH29vYzZ86EhYUNe4mVlZWsrGxNTQ00\n8tdffzHdsMrKSnNzc/ClSExMTExMfPr0KRQKjYqKAr06yOArV66Eh4eTz9Pd3e3k5FRbWwue\ndvjwYR4eHuoNzs/Pv3PnTm9v7/z581esWEG3ejaRSExISKioqJCRkVmyZImtrS2UYBodHZ2a\nmkpfe1+mQyAQ0tPT+/r65s2bx0gbaO7h7t27oFcHMjg4eP78edSxQwGh+fPcmLR15nzbfefK\nAQBI32xzNqVKWQ4ftd/B8vRHFpjHBPhFDSJDt8n2Fl8IO3w5sch01fZ/PDQ4bRQKB4iMjFy6\ndOnJkyePHj1qYmKSkpLCztV7enpevHiRmJg4rLY713Lr1i34IZFIvH//vpSUlJqaGnxcWVmZ\nQm6WgIDAoUOHoC1pDAZz6NAh1jXP7evrG9YZAgCgubl5pKsEBQXv37+/Zs0aJSWl+fPnX7t2\njRX9148dOwZ3cEtLS+/evQsd/viB1NccqcohIyMD9OogYmJiqLQhMTFxyZIl0dHR8fHxf/31\nl6+vL5UXIujr67O2tt62bdvp06d37do1b948eNlQW1sbG7Ku4cLRI1FQUKCvr79x48Zt27bp\n6+snJCSw2io2QP7GIH/zoFDDwMDAhQsXbGxsrKysTp48idhbGKXQHLHzXx89wXB/0VNzACD5\n3q3TPlJ4d6fqSy9l2+AQYBvXKXaCiM0yCzo2TBIxyp/Djx8/4G0MBgYGdu/ebWlpyZ4U+Kqq\nqpUrV4KJ7fz8/BEREYgGCVwLeZIiKLt68eJFT0/Pjx8/AgCgrKx86dIlyq/kunXrZs+eDTrT\nVlZWWlpaFE5mkNbWVnLZORDKOWSSkpKnTp1ijVH/AypugGhoaIAez50799GjR/C/jvRCwb1D\nkM7OTiptOHjwIDw98fr163/99ZecnByVlw8MDIDZk9HR0e/fv4fGv3//jjgTIejIXMrKynbv\n3l1QUDB+/HhXV9fdu3ePJJ7s4+MDJe319fXt3Llz0aJFo70fhqamJmKEpZ+pMcyhQ4fOnz8P\nPi4oKKiurj59+jRnTWIcmiN2Ca09c49unITn7SU8Kuok+q6TAwBAzUuxt/XRb69FQeEUtbW1\niL3CL1++dHR0sGf1Xbt2Qb/ofX19vr6+LS0t7FmaQcjbBoAjCgoKqampeXl5ubm5aWlp1Oxr\na2lpBQYGBgYGsvoXSEJCYtgK2ZkzZ3p7e7N06d8iKyuLGJGXl4cee3l5GRgYQIeLFi1ycXEZ\ndh5dXV2E/giVufODg4PkYUu4c0mB7OxsU1NTKSkpVVXVCxcuVFRUUD6femeRVjo7O9esWZOT\nk9Pf3//z58+TJ0+O5JF3dnYi7Ozq6kIIEo1GLCws4Pq0qqqqUMoECvV0d3dfvnwZPnLr1q3R\n8uVMAZodO0kctqu+CwCAhocn+QRV7SaOAwDgV+lPDI/g7y5FQeEY5HncoqKiUPJ+T0/PnTt3\nzp49+9se57RSVFR08eLFvLw8+GBvby881MHNODs7e3h4gDlYOBwuICAAUs/n4eGRlZWVk5Nj\nqZgLHfDx8YWEhEB5YxgMxtjYOCIiIj09nQ5JFOaye/dueE2GgYEBvM4Gh8MlJibGx8eHhobe\nu3cvLi5upNd22rRpERER48aNAw/V1dVDQkKoMYCHhwexaQ6qrP32wsbGRmdn5w8fPgwNDX37\n9m3fvn3ku4HwMj0JCYmdO3dSYxIdZGRkIGKfI3V4ExAQgF4lCPJCmdHIqVOnUlJSwsLCYmNj\nnz9/Tn2HDxQIcqUIEok0Bja1ad6KPbhQ0nO71xXSims7c6YYxWEBoPHDqx27CoWm0aNKhYLC\nHqSlpd3d3a9evQqN7N27F/ztb2lpsbS0bGxsBMednJyYFYoPCws7duzYsKocoqKiTFmC1WAw\nmH/++cfX17ehoUFOTm60mL1q1SplZeVHjx6RSCQLCwsdHR1OW/Q/pKWls7Ozb9y48fnzZzU1\nNUdHR8QGIhaLHVZ8jhwnJ6dFixa9f/9eTExMQ0OD+gKIkJAQV1dXKDtt06ZN1AhoJyUlISLc\nP378mDp1KqSHJyoqmpSUlJaWVlZWNm3atHXr1rHOf0K0YR12BISXl9fLy+vkyZPQiKWlJStC\niQQC4d27dzgcTkdHh3X5owi0tbW1tbXZs9aYZNKkSfD3MAAAvLy8lZWVKioqHLSKcWh27FbE\nxt3QtF7vnIobr3TruiUAAMsNLN73iRx/5sMC81BGMd+/f29tbZWVleWS1tFHjx7V0NB48eIF\nPz+/vb09tMkYHBwMeXUAAMTHx9vb25uamjK4XHl5eURExLBenba2NnmKDFdRWFh448aNtrY2\nPT09Dw8PCQkJCQkJThtFG3PmzBm2iQLHERcXR+wIF3DB+wgAACAASURBVBcXx8TEEAgEHR2d\n9evXU9/QYuLEiVR6gXAsLCxSU1Pv3bvX3d1tYmJCQe4ODrnnNDQ09Pz5c1AmUEZGZsuWLdOm\nTWPd9iscfX19eJsQAAAWLlw40slglDQhIYFIJJqZmSGaJzGFFy9ebNq06devXwAATJs2LS4u\njrOKgChUgsViT5065ebmBr2XBgYGPD09eXh4lixZwlnbGIEugWLSQEN55bjpihJ4HgAAEuPu\nyC9cojoFGe4evaACxQzS29u7ZcsWMA184sSJx48fZ0WB4UjQKlC8cOFCRDP4wMBAHx9Gb1QS\nEhK8vLwQhklJSS1YsMDf35+CtiStMF2gOC0tzcnJCfoILFy4MD4+nj1VJr+FVoFi7ic7O9ve\n3h6Kn82bN+/evXtQ+I36zhOspqioyMLCAv7FuHv3broraoeFJoHiR48e7dixA/SlDAwMrl27\nxqlwcnd3t4aGBtxmDQ0NRIe9YUE7T3AJ0dHRiAxFbW1tBmUTOCtQTI980SDxW1L8hQ32Fob6\negAA/GojjhPio986lDHHkSNHoOK+Hz9+bNq0iYLMBMchj0VNnjyZ8WnJP3Xy8vKFhYXHjx9n\nolfHCkJCQuC/36mpqVlZWRy0Z2xz5MgRuGbH69ev4Z3Z2AmBQNi/f/+SJUvc3d2zs7MRf9XQ\n0AgJCYE2GW1tbTlbibJ06dKioqLk5OSsrKwHDx5wMEmgtLQU4YkWFRWRly2jcC3kojmjPc2O\nZseuv/O9uYzi1uBLpY11OXn5AAAkHtiormD+um34FAeUPxDEvU53dzeiUQFXsX37dniKupyc\nnK2tLePTGhoa6urqIhaCH1JQ9OUs5F44uUgHCrMg1zXkyKvd19dnZ2d37ty5vLy8pKQkOzu7\nV69eIc7x9PQsLi5OSkp6+/ZtVFQUx1Msxo8fr6Ojo6ioyMRw8sOHD01NTZWUlOzs7N6+fUvN\nJeRVCzgcjuMvDgr1zJ07F/EWGu3aMTQ7dsludlkd8imlX4oz/ifgHv8p23ggf/WKu5QvRPlz\nIBeU4rbCSTgGBgb3799fsmSJtra2p6fnw4cPx40bV1hYmJSUVF1dTfe0vLy8cXFx3t7eOjo6\nZmZmMTExK1asAP/077//qqqqSklJmZiYcGEwDC7AAaKoqMgRS/4EuOTVTklJAVUJQYaGhvz8\n/Mg3ksTExPT09DjeT+L79+9xcXFXr16tqqpi4rRpaWmenp4fPnwgEAivX7+GtCcpo6SkZGho\nCB9Zt24dHx+6izVq0NTU3LZtG+TbycjIHDhwgKMWMQrNOXbawvz8Ee+zNszqaU3AT3QAL6+O\nN1Fe/5XY9Yk1RrIbNMeOQY4dO/bPP/9Ah+Li4llZWWzbf6Q1xw5Bb2/vmjVrQN0TLBb7119/\nBQUFMdG8e/fubdq0CTocP358RkYGI7+UTM+xe//+/dKlSyGN3zVr1rBatpd6xl6OXVlZmbW1\nNSQv7ODgAO/3yrYcu3///TcgIAAxqKqq+uTJE+qLORiEyhy7/Pz81atXg6lafHx8x44dgyu6\nMYKrq2tycjJ8JCAgABFoH5bW1taDBw++fPkSLMzy8/Oj5kX703Lsfv36xcvLy7W/rSUlJQUF\nBRISEubm5oy/5zmbY0dzVWxNz4CBKjKbYby88CCxiGa7UMYo27dvJxAIMTExRCJRSUkpIiKC\ny7PK4Jw4cQJSsxsaGjp9+rSxsbGJiQmz5o+Pj4cfdnZ2Pnz4kBVtSelGXV09Ozv77t27BALB\nwMCAnYUvbINEIjU1NfX09MycOZOzwRVlZeXs7Ozbt2//+PFDT0/PxsaGI2bMnj2bfPDDhw/x\n8fGurq7st4cC27dvh5yh/v7+3bt3W1lZDdu/mFbIu3dQqWE+YcKEyMhIxg0YqxQXF3t7e5eW\nlmIwmCVLlpw8eZILO3+oqakhOiWOXmh27NZNEby95waQ/p9iqCf734+buIJ5VqGMbnh5eY8c\nOXLo0KGuri6OS8LSSk5ODmIkOzubiY4debcreN93TkEgEFJSUrq6ugwMDNTU1KSlpakJVFDg\n169fwcHBL1++xGKxtra2f//9N9vEvX5LS0vL+vXrc3NzAQCYNm3ahQsXENmQbGbq1KmMV2Ez\niJGRkbOz840bNxDjLG0LRgfd3d2VlZXwkd7e3vLycn19fcYnNzAwQGQDGxkZMT7tH05PT4+r\nqyu4qU0ikR49eoTH48+cOcNpu8YyNOfY7b62qSXzby3H3QnPSwAAePcmM9zbyi25wf4UMoyP\n8ofDy8vL/V5dXl7eiRMnoqKioE6X5LeSiGfx9OlTU1NTGRkZc3NzOgoYEcJjWCyWcc08Bikt\nLdXX19++fXtAQICZmRlTNl43b94cHR3d2NhYX19/+vRpf39/xudkFr6+vqBXBwBAY2Ojh4cH\nS3dMRgsnTpwgV8WbOXMmR4wZCQEBAahhDASzRBa9vb2hDyOYhkFBHg+FSgoLCxGpig8ePBgb\neRRcCz06du9i97vsDC9t+V/ggVdgqtuhS5f8OLODwArQHLtRDfU5diEhIZAkvbCwcGJiopqa\nWmpqqpOTE/S5EBMTS09PhzqSFRYWLlmyBCpoxeFwT58+VVVVpd68/v7+LVu2JCYmAgDAz88f\nFBS0ceNGGp/if2A8x87a2vrNmzfwCfPy8qjpRjASjY2NCAVmXl7e6upqPB5P95wgjOfYDQ0N\nSUlJIUqSExMTuTM2w2Ydu6amJjMzMwKBAB6qq6snJyezrcCTyhy748ePh4aGQodLliyBd5Rh\nnKKioubmZmVlZWo6rTHCH5Jjl5mZaW9vDx/h5+dvbGzkEmlMFjHKcuwAAJi79mDJ6j1lBW9q\nvvzECU+Za6AtIcC9NY8oKMNSXl4OD021t7fv2bPn8ePHCxcuvHz5cmRkZHNzs5qaWmBgILzP\nbGxsLNwnIBKJN2/epLJNJwgfH9+lS5eCgoI+f/6sqKjIlNwgBkHoMw8ODpaUlDDi2JH/Vg0M\nDHR3dzPu2NFHV1fXs2fPCASCnp7e7NmzeXh4EI4deR33n4m0tHRmZmZMTExTU5OampqzszMX\nynZs374d7CTR29u7aNGirVu3Mnd+DQ0NDQ0NCid0dnaGhIQ8fvx4aGjIysoqMDCQ+7cmqKGx\nsbGkpGTChAk6OjrUd6j7LVpaWoi2XUuWLBnbXh3HofPrDIMdp6JrPLq7qaH82ZSXlyNCPpDc\ng62t7UhSduS6o+QJ19Qwbdo0miphiURibm5uR0eHlpbWlClTRjqtrq7uzZs3goKCpqam5L3P\nR0JCQgLeVA1gWKJZQUFh4sSJcJFPRUVFThXQNDQ0LFmyBPxdwWAwvr6+Dg4OcXFx0AlycnJz\n587liG1cyKRJkxAq/NwGFot1dXXlYEnHzp0779+/Dz6Ojo7++vXr9evXOWUMszh79mxISAi4\nxaGhoXHnzh1maT7j8fjo6OitW7eCyZGLFy+GB1xRWAENXnl/+7eqiurWzmFUVUkD7XcPb2Oe\nVSgoLIfcd6HgMEHMnz8fMWJsbEz5EgKBEBYWtmXLlhMnToAdkGilubl5wYIFDg4Obm5u2tra\ncKcEztWrVw0NDbds2eLq6mpgYFBbW0vl/Ig6ifnz5zOoz4nD4c6dOwf9MEyePPns2bOMTMgI\n/v7+ULSARCIdO3bMxcXF0dGRj48Pg8Ho6upeu3aNC+NSbKCjo+PYsWPOzs5+fn7l5eWcNmd0\n0NbWBuZRQDx58uTr16+csocplJaWHjp0CEpcKSoqOnToEBPn19TULCkpqaur+/LlS2xsLDds\nU4xtqIrYDfW37Fu7PPxebv8QCcsrbP3X8fsn1pfGH/Y7k1jzpbWnp4fQ8r13iETad5rV5qKg\nMAsdHR0TExO4vD41jS/XrFmTl5cHSpZgMBhXV1dE+giCHz9+mJqaQt/7sbGxqamptJb67969\nGxJi7evr8/PzMzY2lpaWhp/T1NQUGBgIfTU3Nzf7+fndvUuVbPi6deuEhYXj4uI6OzuNjIy8\nvb0Z34gxNTXNz8/Pz8/n4+PT1dUlT3hnG+/fv4cfkkikysrKs2fPnjx5cmBggPq45hijr69v\n6dKlpaWl4GFcXByt2aJ/Jl1dXeTJnR0dHdTcFnItubm5iLRy8p5yjDNjxgzu7BU79qDKscvc\nYXbkzgdJPduVC2b3f6+IPbvRQqw8/eCx8bLaJlqGgnwATlB0xizN30+EgsI1YLHYmJiY8+fP\nZ2VliYiIODs7k5cEDnvV6dOnfXx8ampqFBQUflszePbsWfjdfH19fVRU1I4dO2gyFSrhBCES\niW/fvkU4du/fvycSifAReD3Eb1m+fPny5ctpsuq3iImJWVhYMHdOOhAXF0cEVMBNYT4+vj+5\nPcD9+/chrw4AACKRGB4eHhMTw0GTRgWSkpKysrI1NTXQiJSUFLfVDtMKeVc0LtSZQ6Eeqhy7\n/TcqJ8zZV59ziBcDAADgv3qj9OLwier+ze9CcGgGJMqoBY/H79q1a9euXbReKC8vT94JCuLR\no0fHjh1rbGxUVlYmdx3q6upoXU5YWBixh0v+RUy+uyEuLk7rQmMSb29veKuPOXPmLFiwgIP2\nMJfExMSjR482NDTIy8sHBQUtWrSIygvJe9RWVlYWFRWpqKj8mRvTVILBYM6fP+/q6greLUhI\nSFy8eHG0F99YWlpKS0vDRUk8PDw4aA8Kg1C14ZLbQZT3WMX7/324Kcb7AABQ8HJGvToUFASZ\nmZmenp4fP37s6OgA9yIRJ9ChoYD4klVWVibX5tDV1UUojMC9mT8ZBweHK1euLFiwQFVV1dPT\n8/bt22PGccnOzvby8qquru7v7y8rK3N1dYUH4SijoKCAGKmsrDQ3N9fX1y8qQtsIUUJTUzMv\nL+/evXt3797Nz8/X09Oj6XICgVBWVkYuVM5BhIWF79y5M3v2bLBYlY+Pb7RnDf7hUOXY9Q2R\nBKb8n2o8D/80AABw4mPkyxEFhYnExMTAs1X6+/vhmxry8vLr16+ndc4tW7YcOnRIUVFxypQp\nDg4ON2/eJHdNeHl5Y2NjXV1d5eTkNDQ0wsPDGZTHG0ssXbr07t27aWlpoaGhEyZM4LQ5TOPm\nzZvwNxuRSLx9+zaV19rY2AyrvtvY2Lhhw4bBwUHmmDhGwePxxsbGCxYsoCl5dGhoyNfXV1lZ\n2djYWEVFhbnyewwCuptg+mB/f39ISMjDhw85bRQKnYzuADIKCrdBrofi4OAgLS1dU1OjpKS0\nbt06QUFBWufEYrGbN2/evHkz5dMmTpx47NgxWifnBgYHBwsKCn7+/DlnzhxJSUlOmzNqIJc/\npT4OhMVi4+LiHjx4kJWVde3aNfif6urqamtrKSQboNDHpUuXoCzGzs5OHx8fLS0tLnmdHz16\nhKifePDgwUiqT2OGL1++XLt27evXr3PmzFm7du2YieWjjh0KCjOZN2/eixcv4COLFi1avHgx\n0xciEAgHDhx4+fIlPz+/k5OTj48PPz8/5Uuam5tDQkLy8vLExMTc3d3Xrl3LdKvogEAgrFix\nAhRJxuFwBw8e9PT05LRRowMTExNEWAVsapydnR0XF9fe3m5oaOjh4THSzxUPD4+9vb2pqen1\n69cRlZ5MbOxbWlpaV1cnJyc3a9YsZs05Snny5An8cHBwMDk52dvbm1P2wCEv9R3zXb9qa2sX\nLVoEVenevXv3wYMHoz1dEoTa59BV9+n9+07KI+rq6kyzCwVldLJx48b8/Pzk5GQAALBYrJeX\nFyu8OgAAPD09MzMzwcfh4eEtLS2Uw3W9vb2Ojo4VFRUAADQ0NGzfvp1EIjk7O7PCNprYv38/\n1PqCSCTu27fP2NhYUVGRs1aNCpydnQsLC+Pi4kgkEg8Pz+bNm62trZOSktzd3cETUlJSXr9+\nff36dQpC/2JiYlZWVuA7FmTBggWImmv6GBoa2rRpE6Tl6+TkFBkZ+Se3HCB3GmhyI4hEYnV1\n9cSJE5nVGxfOkiVLLl26BA/aLV26lOmrcBWhoaFw7ZX8/PzExMQVK1Zw0CRmQVWvWCo/imPG\nwUd7xY5qqO8Vyzo+fvzY0NAwa9YsGRkZVsxfVVVlYGAAH+Hj46urq4NiM93d3aGhoY8fPwYA\nYPHixf7+/llZWevWrYNfMmvWLMg15CCampqIvhfHjx93cXEZ9mTGe8WOLqjpFdvQ0FBbW6ug\noADuYhsZGYHuO0RycrKOjg6FGX7+/BkQEPD48WMSiWRhYREaGsqUNiHR0dGIJhZnzpxZtWrV\nSOdT2SuWe/j161dZWdmkSZOorIiKj4/ftu3/lPwFBATy8/PhHQsp8Pjx4507d4JtfG1tbc+e\nPcvEqCrI1atXDx061NnZyc/Pv337dmp0PalHSEiIn5+fq3TsFi9e/O7dO/jI33//zay2K6Og\nV+yFCxeYZwwKythHRUVFRYWFLfc6OjoQI/39/T09PZBj9/fff9+6dQt8HBUV9eXLFysrK8Ql\nbW1trLOQelANLQaZPn369OnToUNyHRPyEQRiYmLnzp0jkUgkEomJTULJRW6zsrIoOHaji9jY\nWH9/f/CXe9GiRVeuXPmt2LWTk9OXL18iIyM7OzunTZt2/PhxJSWlYR2d7u7uyMjIrKwsPB6/\nevVqbW3tzZs3QwmUDx8+nD59+v79+5n7jNzd3Z2dnZubmyUlJcdMthkFZsyYgXDsGGmQzVVQ\n5dh5eXmx2g4UlFFEfn4+mF3OYOstulFWVhYXFwdv30HU1NSgTuTt7e137tyBn5+cnOzl5cXD\nwwOvdtTV1WWPtZRxd3eH3yVPnz6dGqVolJFQVFR8+/YtdIjBYKjc18ZgMIzsk7a0tOTl5QkI\nCBgaGoIVQuQO+phx2cvLy/38/KANgRcvXvzzzz8HDhz47YU7duzw8fFpb28XFRXF4/HDnkMi\nkdzd3VNTU8HD1NRUR0dHRFlMcnIy0x07AAD4+PhYtMnAhezevfvFixdQs28tLS07OzvOmsQs\nmHZzhoLyJzAwMLB27VobG5utW7daWlp6eHhwZNdeQEDgwoULkCjxjBkz4M1Y37x5Q27VhAkT\n9u/fD+X0yMvLh4SEsMdaiP7+fvLNcTc3t9DQUAUFhQkTJlhZWd25c4eD/cfGACEhIfDQ0caN\nG5WVlZm7BHnL46SkJF1dXQ8PjzVr1ujr63/48AEAABcXF7hANz8/P6Jep6ioaOXKlaqqqtbW\n1s+fP2eukSwlMzMT8U5++fIllddisViojfKwvH//HvLqQJ49e4Y4h4lNU4hE4rFjx0xNTY2N\njUNCQrhKYI+lyMvLZ2Zm+vj4ODo6Hjly5MGDB2OmFQ1VOXZ/GmiO3aiGpTl2ly5d8vf3h4+c\nOHGCUyUIbW1t7969w+Fwixcv7u7uhj7LVlZWBQUF8DMnTpxYXFwM5uEVFBSIi4vPmzePnbst\nLS0tvr6+YL2wubl5eHj4pEmT6JgHzbGjhqampoSEhPb2diMjI1NTUybac+PGjeDg4NbW1okT\nJ+7fv9/JyQkAgI6ODnV1dXh6gJqaGuiapKamhoWF1dTUyMvL+/v7z5s3DzqnsbFx3rx5UBIS\nDw9PSkqKubk5mGPX3t7e09MzefJkJhrPRGJjY7dv3w4f0dDQoNU3xePxvLy85Fuxz58/X7Nm\nDXyEh4dHWFgY/jbw9/entTPhSPj5+UVHR0OH9vb2Fy9eZMrMcLgwx46lcDbHDo3YofzRtLS0\ntLa2Un8+eQNW8t4SbENUVBS8z0Yk93z8+BFxpoeHB3gzKiMjs2LFioULF9Ln1eXm5pqZmU2d\nOlVDQyMqKor6C7ds2ZKSkgJG7JKTk7ds2ULH6hxnYGCA0yZQhbS0tLe3d2BgIHO9uoyMjJ07\nd4Kflx8/fvj4+IBZdJ8+fUIkfZaUlICCjgsXLnzy5ElFRUVycjLcqwMAwNPTE/6zNzg4eOnS\nJQAAfv365ebmJicnp6qqamhoiMiC4hIWL16MaNmHcMUYYdasWYhqWXV19WvXroFb6vz8/F5e\nXvAiDEbo7Oy8ceMGfCQhIQFtOzHaQR07lD+U6upqc3Pz2bNnz5o1y9bWtrm5mZqryPdQyJu0\nchzyOAcob8YgjY2Na9asKS4uHhgYaG5u3rNnD6RkQZlv376lp6fDR9LT00fRj0dPT4+fn5+s\nrOyMGTOcnJwaGhpYsUpzc3N0dPTNmzdputNgJwkJCfAo6dDQEPgGIM+cExAQoKyqWFBQAE8E\nBAGreXbs2AFWcwMAUFlZ6erqytKwB31ISEjExcVpaWnx8vJKSEgEBAS4ubkxa/Jp06YFBARA\n+Y4iIiJhYWH6+vpZWVlVVVV1dXXBwcHMklvr6Oggv10ZLVXJKCOBOnYofyIkEsnDwwPqiZmT\nk0NlDMnNzQ3+i4XH40cS5qBMb29vSEiIrq6ulpbW3r17mbs9ERAQAD80NTXV1tZmfNpHjx4h\nAjOxsbEAAFRXVz99+rS8vHykC4lEIvngKMoK2LdvX3R0dEdHB5FIfPnypbOz88DAwM+fP5OS\nkpKSkuAlLHRz5coVTU1NPz8/b29vNTW1p0+f0j1VRkaGk5OTiYmJt7c3QkeGQcj7jIH/REVF\nxQULFsDHPTw8KHsew/a0BUN69+7dgw9++fKFPEzODWhpaT158qSpqenjx4/bt29nrj7f1q1b\nX758efDgwYiIiNzcXEgjVkREhLkKupMnT542bRp8RFxcXE5OjolLoLCfsSCyjIJCKzU1NYj9\nyuzs7NbW1t82ElVRUbl79+6xY8eqq6sVFRX//vtv+joC+fv7X79+HXx8+fLlpqYm6JBxli1b\nhsfj4+Lifv36NX/+/E2bNjHlV6e3txcx0t3d7efnFxMTAwZyHBwczp07R66XIS0traysXFZW\nBo0oKyszRQKXDQwNDcXHx8NHysrKbty4ceTIETCwISIicuXKFWNjY7qX6O7u9vf3h/J6+/v7\nN27cWFdXR8d/LSsra+XKleBUpaWlr1+/TktLg8qlGcTc3BzxUoAaOhgM5tKlS6GhoS9fvhQQ\nEHBwcNi6dSvlqciDysLCwlzSg4EmeHh4WDSzmpqampoaiyaHwGKxZ86ccXV1BcOlgoKCZ86c\n+RO0TsY2aPHEMKDFE6Maaoonampq9PT0EIPl5eWIvBkW0d3dLScnh9gBeffuHX2+Dvh82VBM\nUFBQYGNjA/9o2NraIlpahYWFQW0P4Hz69Gn9+vWgcK6iomJUVBR9DabYXzwxMDAgJSWF+EKQ\nkJD4/v07dDh58uSioiK6QynwXhEQBQUFM2bMoLV4Ys2aNYgU/pH+I7SSmZm5detWSBIPh8Pt\n2rVr586d9M3W39+/dOnSwsJC8BCDwVy7ds3e3h6Px7u6usJ710pKSubk5IykDDKqGal4gv0Q\nCITMzMyhoSEjIyP6qpp+C1o8wXTQ4gkUlP8wc+ZMxN3w/Pnz2ePVAQDQ3d1NntfC/d932tra\n+/fvh+7mbWxsyENBr1+/HvbaWbNmZWRkZGZmZmZmZmRkjKK2oby8vIh9RjExMbhXBwDAt2/f\n6urq6F5iWHmXhw8fRkZG0lo6QJ6fx5SMvZ8/f3p6esKFjpcvX063VwcAAB8fX3x8vLe3t56e\n3pIlS+7evWtpaQn+6cSJEzY2NuBjBQWF6OjoMenVcRXi4uLLli2zs7NjkVeHwmbQrViUPxEM\nBhMVFbVlyxZQFmT+/PlnzpxhcM7e3t5z5869evWKn5/fwcFh1apVI22lTZgwQV5evqqqChqZ\nOHEifVu6bGbLli2Ojo7l5eVTp06VlZUlV2SlIEHHw8PDZn+usrIyKytr3Lhx5ubmjHjtx48f\nX7duHdjQdvLkyeHh4W5ubvAYHgaDoaxMRg6BQHj9+vXg4KChoeH8+fPHjx8PCaWCEx46dAgA\ngODg4ODg4I0bN1I5rYaGBqIoYe7cuTQZNiy5ubmIVEJQuYYRREVF9+3bRz4uIiISHR3d3t7e\n3d09ZcoUBldBQfkDQR07lD+UmTNnpqSkEAiE3+qFUsnmzZuTkpLAx69evWppaRkpZwiDwZw9\ne9bZ2RkM/IiKip47dw6MhH38+DEkJKSkpERKSsrb25u8DxjHmThxIrQF4OTkdPny5b6+PvCQ\nl5eXvlISVhAdHb13714wMiomJnb79m0NDQ36ppKWln7x4kV5eXlPT4+KioqAgICjoyM828zO\nzo7Ctkh1dTXYyxVqWJSfn+/s7AxusAoKCl64cCEhIWH16tVgdA2Hw0HlJiQSKSgoyMrKCpHh\nPhJ79ux5/fo11Ct27dq1YBsPAoGQlpbW19c3f/58KqeCQ55JRlPnsf7+/qKios7OTnV1dSo9\nbGFh4THTpmKU0t3dHRMTU1paKiUl5e7ujjrZowg0x24Y0By7UQ1LBYpHorKy0tDQED4iLCxc\nVVVFIf+9o6MjNzd3YGBAX18fNPjbt2/GxsZQaASLxd6+fRuxD0gO23LshiUzM/PIkSOfPn2S\nlZX9+++/LSwsWLoclTl2LS0tc+fOhVfjQpK5TKGnp+f48eNJSUkkEsnGxmbXrl3DbhcODQ35\n+PiALiAGg5GVle3u7sbj8QQCAZ42JyYmVlxcjMPhGhsbeXh4tLW1EfWnsbGxixcvptI2IpH4\n7Nmzr1+/qqur6+joAADw5s2bNWvWgNnx/Pz8kZGR9vb2ND3fjo4OQ0NDuELNxo0bqexc0tTU\n5OTkBBZNCwkJnTp1aunSpcOeicfj8Xg8KFBMk3mjFO7JsSOnr6/PwsICKl4WExN7+fIlHbcE\nEGiOHdOhcDOJOnbDgDp2oxqEY9fb28vLy8tcjQBycnJybG1tEYMNDQ2/7QsO59y5c4j+j1ZW\nVvBE8mHhrGPHZqh07NLT01esWIEYdHBw+Pvvv2VlZVlrIowbN25Q2R4gNTUVSvpUV1eHZ7MB\nAPDy5cs5c+bQbYahoWFlZSV0KCgoWFJSIiQkRNMkRUVFPj4+Hz9+5OXlXblyZVhYmICAADUX\nrl69Gr5vKygoWFBQMOxvEurY0cHnz59v3LjRDo1y5gAAIABJREFU2tqqoaGxcuVKZn3RxcTE\n+Pr6wkfWrFlz6tQpuidEHTumQ8GxQ7dih0FYWJi5okTcAAaDERIS+hN++yGampo2btyYk5PD\nx8e3evXqU6dOsa4JqY6ODj8/P7QpCQDArFmzJCUlaZqEXO+ts7OTSgFkpuwmcz/QB5Py8x3W\ne7t3715WVtbbt2/ZliGem5tL5ZkyMjLQPzowMBCuqmhlZWVsbEz3N1J7ezvcqwMAoKur6/Pn\nz/r6+jTNY2pqWlxcTCAQxo8fT5McBqKepqurq6KiQkFBgfxM8DlCN2ZjHgwGg8FgGHmyHz9+\nnDdvHqQuCQor0rRLPhLfvn1DjDQ1NTFiKmgVHx/fH/LPBZ8vZZluRqAce0Idu2EYk12Qx48f\n39vbSy4xOvbAYrGCgoJ9fX3Lly8HCxSIRGJMTAwAAKdPn2bRooKCgkePHvX19QVf4fHjx586\ndYrW2zUtLS3EiL6+/m8nAZ9vT0/Pn+C18/LygkFQys9XTu7/tXfngVDmbwDAv+9cGDc5S44u\nussq3Yl0Eh3SCh10tx27akt3qe2mokPpLroTlaREaaU2VEt3EUXlHuccvz/e3fc3O6Mxxtzz\nfP7yft/reb2Mx/dsN3z4cP61O798+RIVFSW1+dKErNMaN25cq1atiBc9depULS2tM2fOMBgM\nJyenoKAgET6RCgsLKysrbWxsMAzT0NDguYKmpqZodQnq6upMJrNZS6vhnzzcJRQKpdG702g0\nNTU1NptdXV1dX19fW1ur3N3saDQamUxuyZ+bFStWcM8ZfuvWrYsXLxJjiluCf+olKyurltQ/\naWhoUCgUFoullH9e+WloaLDZbO5/9cWLw+Hgq0Q2CppiGwFNsQoN/48/NTWVZ85YdXX1vLw8\nSdTFvn379tChQ4WFhebm5q1bt9bT0xsxYoRo65cHBwdHRkbiv5X9+vWLiYlpsjEXmmIbVVVV\nFRYWdvjwYe7RpgihhQsXrlmzRrJR/isjI8Pd3b3RNMjKykpLS4vJZLq6ui5dulRTU7PRKzR3\nHjuEUHl5+axZs/AOhWZmZnv37r1//35oaChxgDDt+2K0ZcuWXbt2EZudO3dOTExstM4Pb4ot\nLy8PDAy8fPkyk8ns2bNnWFhY586dpRatNLW8KXbgwIE8K76sW7du/vz5LQ4N1dfXjxo1Kjs7\nG980MDBISkpqyaTi0BQrdtAUC1QOfwrLYrE4HI7YE7vc3FxXV1fi39BOnTolJiY2q2sdt5CQ\nEHxmjTZt2vTt21f5ugRIjZaWVnBwMJvN3rNnD3d57969pRaDg4PDkSNH/vjjj/fv3xsbGxcV\nFeH/wVtZWZ0/f97KykoSN121ahUxTOTz58+BgYEPHjwwNDS8fPlyfX29i4vL4sWLJXHfH/nt\nt99IJFJMTExFRcWgQYM2btzIndUlJyeHhobm5+fb2dmtW7fO0dExKCjo/Pnz+N7MzMypU6em\npaUJWfepatq2bcuT2BEjr1uIRqPFx8efPHny+fPnFhYW/v7+RkZGYrkykAKosWsE1NgJ78OH\nD5s3b87KymrVqtXcuXPHjh0r3uuLAK/BqqqqateuXXFxMVE+ZsyYY8eOif12gYGBV65c4S7Z\nuXOnn5+f2G/0I1BjJ0BVVdW4ceOIioeJEydGRES0MF3mcDgxMTHR0dF4prJ06VIh1+wqLi7O\nyMjQ0tLq16+fkN3URKix69ixI8/xx48fHz16tPBXkBqeGk09Pb3s7OwuXbrwLEl86dKlQYMG\nySJAyWp5jd3z589HjhxJtPc5OjpevnxZ0gPFRAM1dmIHNXZAIsrLy8ePH48vNP7u3btHjx6d\nOHFCTqZe09LSOnbsWGBgYEFBAULI0dFx+/btkrgRzwBGhNCnT58kcSMgAi0trZs3b0ZERLx6\n9Wrw4MGTJ09u+TWPHDmyYsUK/Otnz55lZmZevnxZmB7rxsbGYun/JBj/nHPy+ZceIXTkyBHu\nduqysrJjx47x9wNuVpc+ldK1a9eUlJRjx459/fq1V69e/v7+cvuugTTBDwEQXXx8PJ7VEQ4c\nOCAniR1CqH///hkZGW/fvqXT6RYWFhJq1uzQocOjR4+4Szp27CiJGwER1NbWenl5PXz4ECF0\n7ty5v/76a+vWrS28Js8iJWlpaU+ePMFnjJMHEyZMOHjwILFpbm7OM8Oi/MCn1uNWUlLi7u7O\nPfmzkZGR/Hxv5ZCNjQ2+SAkABFgrFoiO/3NZ3iagolKptra2bdu2lVxnteXLl3NPnzFo0CBP\nT09hTvz27dulS5diYmI+f/4sodhAaGgontXhoqKiEhISWnhN/tVXv3371uRZ3759+/DhgxT6\neKxatcrHxwcfMde9e/cTJ05IbpafFuLP2Pr37x8WFjZ06FB808LC4ujRo3Ibv6RlZGQcOnTo\n6tWrkhtcCZQS1NgB0f300088JX369JFJJDJkZmb24MGD6OjogoKC7t27e3p68reF8UtLS/Pz\n8ysvL0cIaWhoRERE6Ovrl5aW9uzZsyVDzwCPjIwMnpJHjx61cHmMnj17ck9QR6VSu3btKuD4\nsrKyOXPmJCUlIYQsLS0jIiIk+muirq4eGhq6ffv2mpoaOZ8uZMGCBSkpKWlpafjm1KlTJ06c\nyGazz58//+XLFwaDYWlpqbJti8uXL4+KisK/trKyun79OgxfAEJS0d8ZIBZ9+vT55Zdf9u7d\ni3djt7OzCw4OlnVQMqCnpzdnzhzhj+dwOAsWLMCzOoRQTU1NQEAA3rWISqWuW7dO+EXfgWD8\nwxqEHOggwPbt2z09PfFaOjKZvG7dOsFLLa1cuRLP6hBCHz9+9Pf3x4dQCHm779+/s9ls/vym\nuro6KyuLRqN169aNfygGlUoVMM2VnFBTU7ty5UpaWlp+fr6trW3//v0xDEtISNi5cyfeaey3\n334zMzOTdZgycP/+fSKrQwh9+PBhw4YNkpuGEygZGBXbCBgV2yw5OTlZWVkmJiaDBg2Sh3+v\nZbJWbLN8/fpVwNRcZDI5JSVF+I56cjUqls1mx8fH5+TktG3b1sPDQ+yzVDR3VGxaWpqnpyfx\n62xgYJCcnNzyXKG8vPz27dv4CqpNvilLS0uewXEDBgw4depUk7ndnTt3goKC8vLy1NTUJk+e\nbG1tzWazXVxcOnfunJaWFhgYiA/6trGxOXnyJH8YhYWFW7Zs+euvvwwNDWfNmiUPI9YFo9Pp\nKSkpo0ePJt6sjY3NnTt3fjTJn6ITMCo2PDx83bp13CV2dnYpKSlSikwCYFSs2MFasc0DiZ1C\nEy2xq6qqCgkJuXHjBofDGTlyZHBwsOSasWpra9u1a8e/gBhh9+7dU6dOFfJq8pPYMZnMyZMn\nE39+2rVrd/PmTTGudZabm7t27drHjx8bGxtPnz5dyHrNxMTE0NDQT58+de3adeXKlV26dBFX\nPEKytrbmmSQZIeTj48M9aTC/vLy8QYMG8f9hIJPJW7du3b59O/eiTz179uRZZqO6utrZ2Rlf\neQV39OhROc/t6HT62LFj7969y124b98+sYxllkPciV1tbW1OTg6ZTLazs6NSqdHR0QsXLuQ+\neNCgQZcuXZJRpGIAiZ3YCUjsYPAEAAgh9Ouvvx4+fLigoKCwsDAqKmrRokWSu5e6uvq0adME\nHNDy5kKZOHfuHHelwtu3b3fv3i2ui5eVlXl5ed25c6eiouLNmzfBwcH4MnFNGj58eHx8fFZW\n1unTp6Wf1SGEGh1MwzP3Ibf8/PyQkJA5c+Y0+leBxWIFBwfzLOWZmZnJM5IpISGBO6tDCEVE\nRDQvbln4+vUrT4kwA1OEVFVVhQ+TF9cFxeXx48eOjo6urq7Ozs5Dhgx5/fq1m5sb93rHGIbx\n5HkACACJHQCotLT08uXL3CVxcXHckxuL3dq1a1evXt2zZ8+uXbsOHz6ce5eVldWwYcMkd2vJ\n+fvvv5ssEVliYiLP8GEhEzuRVVdXP378ODs7u4X13Bs3bhw4cCBP4Y/aBHJycgYOHBgaGso/\n7IPAP0aSQqHwLDdeUlLCc4wYMyTJ4R+P1bNnT7FcOTY2tmfPnqNHj3Z0dPT09CR6uMpcQ0MD\nMd0mQuj169fz5s3T1NS8cuWKn59ft27dXFxczp075+Tk1KzLlpSUKMQbB5IAiR0AiMFg8Ldj\n8kx/L140Gu2XX35JTEy8e/fumTNntm7damtra2xsPHbs2PPnzytopyJTU9MmS0TGYDB4Svjb\nN8UoLS2tT58+o0aNcnZ2dnJyev/+fbNOr6qqio+Pv3TpUmFhoaam5smTJ7nnxEEI/ahVNCQk\nRITmGxcXF55V7Hr37s0zxQ9/ziSH/vjjj3bt2hGbAQEBAwYMaPllCwoKuIcr3b9/f+3atS2/\nrFi8efOGZ0rzzMzMkpISMzOznTt33rlz5+zZs8T8L8IoLCx0d3fv1KmTnZ2dq6urHNZQAkmT\nfVd3oEwqKyvDw8OfPHliYGAwffp0R0dHWUcklLq6Oh0dHe7OH23atJHQUp6NmjFjxowZM6R2\nOwnx9fWNiooi5qzW0NAQsv1ImDV8+/XrR6FQuBchGDx4sMihClZXV0cMTUAIvXz5cuHChXFx\ncUKe/uLFCy8vL/x0dXX1sLCw8ePHHzt2bN68eR8+fEAIDR8+fMOGDRUVFfz9OPEDeGBYE52h\nfXx84uPja2pq+vbtiw/R7dWr16JFi8LCwvATbWxseDrjyycTE5OsrKyYmJiioqLevXvb29uL\n5bIPHz4kVnPGEeOUZY6nqhUhRCKRhFxxrlHz588n5m58+vSpu7s7hmGlpaV9+/YNCQmxs7MT\nPVagIGDwRCNg8IRomEymu7s70YSEYdjp06d52hmloLmDJ3JyclxdXWtra4kSIyOjo0eP9u3b\nV4JRio/8DJ5ACH358mXPnj05OTkWFhbz58/v1KmT4OPv3Lmzbt26ly9ftmnTJigoyNvbW8DB\nhw8fXrduHd4Q6eDgcPbsWQl1Rvzrr7/457r7+PEjnU4X5nQXF5esrCxiU1NTMzMzU09Pj81m\n5+Xlqaurb9++PTo6ur6+vkuXLrt37+7VqxdxsI+Pz61bt7ivtmvXrjFjxiQmJsbGxjKZzJEj\nR545cyYzM5M4QFtbm06n473uaDTazp07iW/jixcv8FGxLi4uLckVpINOp9PpdBaLJfZ5zuPi\n4qZPn85dYmlp+fjxY/HepbmIwRNubm7cMyOOGzfu8OHDol2zpKREwC9d69atU1JSZDK7IQye\nEDsYFds8kNiJ5ubNm76+vtwlDg4O169fl9wdG9XcxM7f358nyLCwsJ9//llS8YnbjxK7ioqK\nnTt3pqSkaGhoeHl5+fn5CbOeqTTl5ua6uLgQPcYwDDt79qyzs7OAU0pKSl6/fm1iYiLR+tSc\nnBye6kAqlfrhwwdhcqP6+vrWrVvzFF65coVoUly3bl14eDixy8TE5MGDB0SG+vfff48YMYL4\nN2PgwIFJSUk8fwtzc3OnTJmCt9/p6uqamJi8evWK2Kumpvb06VNFnMxWcoldRUXFwIEDufto\nrlixYunSpeK9S3MRiV1RUdHvv/9++/ZtMpns5ua2adMmkf9jEZzYIYQOHz48btw40S7eEpDY\niZ2AxA6aYoHYfPnypckSOZSXl8dTItFhE9LB4XBmzpyZnJyMb2ZkZJSXl0t0qO+TJ0/i4uKY\nTKaLi8uQIUOEOeXSpUvc4wA4HM6ZM2cEJ3ampqb4hG0SraHs1KmTvb39kydPiJJJkyYJWeNF\npVK1tLR4+v/h/2l8/vx527ZtMTEx3LuKioru378/ZswYfLNz5873798/fvx4UVGRvb39jBkz\n+BcysbW1TUtLe/ToUUNDQ69evXiG+tbV1T179kxBx99IiLa2tpWVFZHYYRgmrkZeXGlpaWpq\nKpPJ7NevnwizJJqYmBw9epTFYpFIpBYufmhgYDBo0KDU1NQfHSDRVAPICUjsgNjwT7qrEP05\nbGxsnj9/zl3Svn17WQUjLs+fPyeyOlx4eLjkErtz584tWLAAz7QOHDgQHBy8ePHiJs/ibv7G\n8XSEIuTk5MTExJSVlQ0ePDggIEBw1WNdXd3169e/fPnSvXt30brek0iko0ePrlix4s6dOzQa\nzdPTU/gOahiGzZo1a9euXUTJkCFD7OzsGAyGh4fHu3fv+E/BFx0hWFparlmzBv/6R9mkhoYG\nkT3r6uryjIHF80hAePjwIfeSwRwOZ/PmzUL++9Gkx48f+/j44K8AXx5QtPkChVmKUBj79u2b\nP3/+/fv3EUKtWrXiHhtLo9H69+8vlrsAeQaJHRCbPn36+Pr6njx5Et80MDDYsGGDbEMSRnBw\ncHJyMtFAMGTIkNGjR8s2pJbjX6i+rKyMyWRKYmkQFou1evVq7vqzrVu3+vn5GRgYCD7Ryclp\n//793CWN1jOlpKRMnjwZHzZx+vTp1NRU4meM3/fv30ePHk3kT5MnT963b5/wz0IwMzM7duyY\nMKM6+AUFBWlra1+8eBGfJXjZsmUYhsXFxTWa1enq6nJnn48fP961a9fHjx/bt28fFBTUu3fv\nJm83d+7ckJAQYrNfv349evRobszKjb9W/uPHj+K6+MKFC4nEuqamZtGiRcOGDROyO6YkmJub\nX758ubS0FF+JzsfHJz09HSGkqam5detWS0tLWQUGpAYSOyBOu3btcnNzy8jIaNWqlaenp0LU\nHNjY2KSlpZ06daq4uLhHjx4DBgxYsWLFy5cvra2tFyxYwD35ggLp0qWLmpoad0Nnjx49JLTg\nW1lZGU+NEZPJzMvLEyaxCwoKCg0NbWhowDBs8uTJ/EODy8rK5s2bxz0Y9tSpU4sWLbK2tm70\nmps3b+bOn2JiYsaNGyfyCB7R2sUoFMqCBQsWLFjAXcifaiOETE1N9+zZY2hoiG/m5OR4eHjg\nb+3Vq1epqan3799vclLlX375RVNTMzo6uqSkxN7efvPmzfLTmbKhoaGgoMDIyEi2M/jw/xaL\nq1a+rKyMZyLoioqKly9fcg+IkQnis/fatWs5OTmlpaWdO3dWiA9k0HKQ2AExc3Jyau5cmjJn\nYmLy66+/IoS+ffs2ZMgQvI/dgwcPLl++nJSUpIi5nZGR0ZYtW5YvX44PHzE0NORuHBQvXV1d\nnsliSCRSmzZthDl32bJl06ZNe/PmjYWFBT5PB7eysrJhw4bxrLKAEHr79u2PErtnz57xlGRn\nZzcrsWMymUlJSQUFBd26dXNwcBD+RMH4J9odM2ZMZGQklUolSqKiorhz8crKyg0bNjg4OGhp\nabm7u/PMVEcgkUgODg4RERGfPn369OlTZmbm8ePHRVtjo76+/vz587m5uVZWVt7e3k1mYxUV\nFerq6j9qL7548eKKFStKS0vJZPKMGTM2bdokq4zTwcFh4sSJFy5cwDfV1NTWr18vlivT6XQa\njcazPGCT/9JIE4ZhAlamBkoJEjsA/i8qKop75ASDwYiMjPzjjz9kGJLIfH19Bw4ceP/+fS0t\nrWHDhklumTIKhbJq1aply5YRJQsXLhQwYouHsbExz+S9hMjISGJWPG4CUm3+0aDNGh9aWVk5\nbtw4IjsUuSWXX//+/QMCAohpLKytrXfs2MGd1aHGavUuXrx48eJFhNDWrVtv3LhhYmLCf2U2\nmx0YGEhMcvvx48fZs2enpqY2t7qxrq5uzJgxxEQtBw4cSExM/NFSvzk5OYsWLXr69CmFQvHw\n8Ni+fbuWlhbPAQsXLsT/r2CxWJGRkdbW1oGBgcQBLBbrwoULT5480dfX9/Hxadu2bbOiba6I\niIgRI0akp6fr6upOmTJFXC2SNBotICCAe7m20aNHQ3OnGDEYjKKiIgsLC55fFiAAJHYA/B9/\n5RDPMlaKxdra+kc1W+I1ffp0a2trfKI1Q0PD5OTkkydPdurUafXq1S2p9OLvGoUQmjp16k8/\n/dRoyyZCaOHChUlJScRwBEtLy0aXav2RnTt3ctf5xcTEjBo1ihiy2kJbtmyZOHHiX3/9ZWpq\n6urqyj8zbe/eva9du9boufn5+Zs2bdq7dy//rg8fPvBMa/zy5cuCggIhK00Jx48f555+78OH\nD3v37l29ejX/kbW1tb6+vng3NSaTeeHCBTU1tdDQUO5jEhISeCYbunbtGpHY4aO24+Pj8c2I\niIj4+HiJzmeOYZiHh4eHh4fYr7xq1SoDA4OrV682NDS4uLjgdf+g5dhs9urVq48cOcJisfT0\n9EJCQry8vGQdlGKAxA6A/+MfxgutGEIaOnTo0KFD09LSPD098WkgHz58OGnSpOTkZJHnnOPP\nSkePHi14iVhHR8fLly/v37+/qKioe/fuS5cu1dbWFv6OT58+5S8RV2KHELK3txcw0casWbOS\nkpLw8Yz8rl27ZmlpOW/ePJ6O+fxNtBiGidB5//Xr1zwl3NPjcXvy5AnP4INLly7t3r2bu46Q\nv9WVuyQ1NZXI6hBCtbW169evv3HjRnNjlgdUKnXRokUSnUtINUVFRR06dAj/uqysbNGiRV26\ndBGtj4GqkZc+tgDIAz8/vz59+hCbdnZ2PF3ggWDHjh3jntybwWCcO3dO5KsFBARw53YWFhYR\nERFN9tPq16/fiRMnEhIStm/f3txJxYhxDAJKJIdGo126dOnChQtbt27lTxQYDMbWrVunTJnC\nMz2KmZkZz2jiUaNGidDNi39e5R/V+fEE0GjJyJEjefrecdeW8a+9C0uaAh7cqT9CiMlk3rx5\nU1bBKBZI7AD4PxqNdvXq1cjIyKCgoPDw8Nu3b8t2NJ/C4ZmYFyHUkonmdXR0kpKS1q1bN2XK\nlDVr1ty9e1fSw/rmzp3LPXbYxMREyq0/GIYNGTJkxowZS5cu7dChA/8B+NTEPIX79++fMGGC\nlpaWtra2t7c3T6uokKZNm8adyenr68+fP7/RI+3t7Xm6RY4aNYqnS1/Hjh0PHjyIdwqk0WiL\nFy/29/cn9vL3qIN+aYCH4EpfIAA0xQLwH3hncFlHoaj69++fmJjIXTJw4MCWXFBbW/tH6YUk\nODg4XLhwYe/evfio2KCgIGnW2HGj0+lXr17ds2fP4cOHuWd7QQgVFhYWFxdzp1YGBgYHDhxo\n4R319PRu3769f//+3Nxca2vr2bNn/6jGTlNT8+jRo3PnzsU7QQ4ZMmTbtm38h40dO3bMmDFf\nvnxp1aoVT8/3IUOGODk53b17F9+kUqmrVq1qYfxAyXh4eKSkpBCbNBqNmGGUyWSePXv2zz//\n1NXV9fHxgfZZHrBWbCNgrViF1ty1YhXdj9aKlYmGhoYZM2bgLSYYhgUEBGzevFmM16fRaPgS\n5hJ93tLS0i9fvlhZWf1ohhGpodFoY8aM4e51h2GYmppabW2tkZHRpk2bxo8fL6vYmEzmx48f\n6XS6CItoIYTq6+tPnTqVkZFhYGDg5+fXqVMnya0VKxafPn3avn17dna2qanpvHnzBg0a1MIL\nEmvFiiU8OSfCWrEcDmfLli0RERF1dXUmJiZ//PEHsaTH9OnT4+Li8K/JZPK5c+d4FneWOdmu\nFQuJXSMgsVNoYk/sPn36dPDgwfz8fFtb29mzZ8vbJJ9yldjhnj17lpeXZ2trK/YpACWd2LHZ\n7BUrVuA9BTU1NdevX8/dgMittrY2KyuLw+H07NlTXV1d7JHgaDTa27dvhw4d2uifQyqVmpCQ\n0K1bNwndXcrkObErLy93cnIiJt8hkUiXLl0SbcE6AiR2wmhoaPj+/bupqSlR8ujRI57xTD16\n9Lh9+7Z4AhUT2SZ20BQLgCD5+flOTk7l5eUIofj4+AsXLty9e7dZAy1VULdu3RQ024iKioqK\nisK/ZjAYy5cv7969O/8qAllZWf7+/gUFBQghc3PzqKgo8S4qz6179+5//vlnbGxseXl5UlIS\ndwe7hoaG2NhYBf1WK5YrV65wT6nIZrP37dvXwsQOCINKpXJndUjCC8QpB+iKCIAgYWFheFaH\n+/jx44kTJ2QYD5AonmF3LBYrISGB5xgOhzN79mw8q0MIFRYWzpo1S6J1/EZGRjNnzly6dCn/\nLNPyU00rQ/i6XhJtjuCfN/Hbt2+Sux0QgH8WJEVcHEiiILEDQBBiQn8BJRJ148aNgQMHmpub\nDxgwgOhWAiSETCbzlPAvsFtQUMAzN0deXh7PFMESwtMCRSKRRo4cKYX7yq2GhoaFCxd27Nix\nX79+Xbt2/dH0zi3Xo0cPnhKZrwarsuzt7SdNmkRs0mi0DRs2yDAeOQSJHQCC8E85Ia7lw4Xx\n9OnTmTNnvnz5sqGh4dWrVwEBARkZGVK7uwqaMGEC9yaNRiP6axPodDr/al0iTAgsgp9//nn+\n/Pl4rqmtrb19+/affvpJCvcl1NfXR0dHb9myJSYmhmeBVJkIDQ2Njo7Gqy1LSkrmzp3LP0Oe\nWDg7O/v4+BCbHTp0+P333yVxIyCM8PDwQ4cOTZ8+ffHixampqdyTjwIEfewAEGzJkiVxcXFE\nLV3Pnj19fX2ldvdz585xNzCxWKyzZ8+KcWV6wMPLy6uwsDAsLKyqqqpNmzYhISG2trY8xxgY\nGIwZM4a79tTV1ZWnG5CEYBi2bt26oKCgwsJCS0tLnhmAJa26unr06NEvXrzANw8dOhQfHy+5\ngSPCuH79OvdmXV1dUlJSQECAJO4VGhrq4+OTmZlpZmbm6uoq5W8+4IZhmKenZ7NWC0QI1dfX\nv3//3szMDB+ApcQgsQNAEAMDg5SUlLNnz3748KFz585eXl7S/EDnH1RVU1MjtburpsWLF//y\nyy/l5eUChj+Hhobq6enFx8dzOJxRo0atX79emhFqamo2OnexpB08eJDI6hBC2dnZkZGRCxcu\nlH4kBP6mc4nOYevg4AD/Vimo06dPr169urKykkwmT58+PSQkRImnO4bEDoAmaGtrz5o1Sya3\nHjp06JkzZ3hKZBKJSiGRSIIntdHV1d29e/fu3bulFpI8ePnyJU9Jbm6uTCIheHh4ZGVlEZta\nWlqurq48xzx//vzTp092dnaKvrgFm83i8YC3AAAgAElEQVROSEjIzc21sLBwd3eHKkPhZWVl\n/frrr/jCdywW6/Dhw+3atZNQza48gMQOAPnl6en56NGjqKgoNpuNYZi/v7+UV7gCgMDf3Gxu\nbi6TSAjz5s0rLi4+cuRIfX1927Ztd+zYwb1aRn19/fTp02/duoUQIpFI06ZNGzZsmL6+vr29\nPX9Vn5xjsVje3t7Jycn4ZlhY2PXr12HeJSElJCTwLGd848YNJU7slLYqEgDlsGXLlsePH58/\nf/7Jkyfbt2/n77YPxC42NnbChAnDhg1bsWJFSUmJrMORF7NnzzYwMCA2DQwMZs6cKcN4EEIk\nEmnDhg0fPnzIycl58uSJk5MT996IiAg8q0MIsdnsqKioqVOnjhkzxsXFReEmK4mJiSGyOoRQ\nbm6uaCsCqyb+PF7hMvtmgRo7AOSdhYWFhYWFrKNQFefPn583bx7+9bNnzx4/fhwfHw/NXggh\nMzOzxMTE8PDwt2/ftm/ffv78+dIZMtIkKpXa6Cz8Dx48aPT458+fBwcHHzx4UMJxiRN370bc\n8+fPZRKJhLDZ7OvXrz9//tzMzGzChAlaWlpivPiYMWN27drFPY5bhmvxSYEcJXa1pTe9/CN4\nClecvtBP+5+P1LLc5IPRN3Jy3zI1TPq6TpjrPYzyb+WFgF1N7gUAAMLevXu5NzMzM1NTU52d\nnWUVj3QUFRWtX78+JSVFXV3dy8tryZIlVCoVIYQ3dObn53fs2HHmzJlt27bdunWrrIMVloDk\ngHv5XYVgbGzMU2JiYiKTSCSBzWb7+voS1au7d+++desW/yOLzNbW9uDBgytXrvz8+TOdTl+4\ncKG3t7e4Li6H5CixqyvNRgiNmzyFztU+bKH2T31pbUnK/BW7UZs+nn6B1R8yLpwNfVehv3t2\nL8G7mtwLAADc+BvpFK7ZrrlYLJa/v/+TJ0/wze3bt9fX169aterLly9Dhw4lFl2Ijo6+ffu2\neKtSJMrPzw8fucy/S+F6p/n6+h4+fPjLly/4ppqa2pw5c2QbkhjFxcURWR1CqKCgYMuWLeId\nnDR27NixY8d++/ZNX19fudthkVwlduUvisk0o5k+Uxrdm77jaDWlTej23y3VyQiNaMecu+3G\nlvf+Z63VyQJ2CT5Rus8HAFAAPXv2TExMJDZJJBL/qgNKJisri8jqcFFRUatWrQoLC+NeSuvt\n27fHjx+fP3++1AMUkZOT06FDh3bt2pWfn89kMmtra4ldmpqa1tbWJBJp9OjRGzdu1NPTk2Gc\nwjAwMLhx40ZoaGhOTo6lpeWCBQs6d+4s66DEhn94dU5OjiRu1GiTvfKRo8ETpU/LaNp9G9/H\nYR17Wapv52/5bzZm7zOCw649lVMqaJfgEwEAgM+WLVvMzMzwrzEMW7ZsGf8cxQqtvr4+ISHh\n7NmzxN/OyspKnmMYDAaLxeJfW13hVlv38PBISUl5//59amrqqFGjDAwMbGxs2rVrl52dXVVV\nVVFRER0dvXjxYlmHKZQ2bdrs2LEjPj4+IiJCmbI61NiAa+J3EIhAjmrs3uQzMDLat+G3R39/\nqCVp2fUe4jt7anttKkKogZH9vYHdfYwVcbC6gRsVO/o57VtDh/wf7UK9Wgk4EfVSicwdyLn6\n+vqLFy/+/ffflpaW3t7eCtTOpawsLS0fPnx469atkpISR0fHLl26yDoiVFlZ2cKmw8LCwvLy\nchsbm8rKSnd399evXyOEMAxbvHjxypUru3fvrqWlVVVVRRzfq1evn3/+mXsYJs7GxqYlYciQ\nlZXViRMnEEIFBQU9e/bk3nX9+vWSkhLuAb9AyiZOnHjgwAH8xxIhRKVSZTvxtaKTo8TuSVV9\nNSPuc6/JfrNHfv/49+WrV37PehMRtdGYSmLVvkcIaZpyrV2DkU1oJMYHBqv24492IYQEnMh9\n6+/fvxcXFxObxsbG/Ct/KwEymdxodxMlQ8wnLv/PW1dX5+7uTrSC7d+//86dO4aGhs26CP68\nFApFzh9WLIjOMRJ9Xl1dXe5VxmUoJiZm9erVRUVFrVq1WrVqlb+/f3OvwGAwAgICbt68iRBq\n1aqVnZ0d8eeTw+GEhoaOGTPG3t4+PDx8/vz5eG5nbW3NYDB4GmcRQra2tjNnzpTcZyP+k4xh\nmEQ/fvmXuOVwOEwmU/qf+SQSSdIPKz8Ev1wdHZ0bN27s2bMnOzvb3Nx87ty5Xbt2lXqM4oRh\nGIlEktzLFfzpJz8/UhyrwS62FgP9xnZDCCHk4txLbcbq+B3XP20b15bNrkII6dP+0yvOgEKu\nqK4TsAshJHgvITY2Njw8nNi8ceNGc/+4KgRVqw2S/+eNiIjg/vOZl5cXHh6+a9cuES6lq6sr\nvrgUgCo87/379+fMmcNmsxFC3759W7JkSZcuXVxcXJp1kdWrV+NZHX4RnhlAOBzOixcvnJ2d\n/fz8Ro0alZ6eTqfTdXR0eBbOIpFI27ZtmzNnjqamZsueqWkkEklHR+fo0aOxsbEIIQ8PD39/\nfzGu/tS7d28bG5t3794RJV27dpVhy6b8d+8TIyqV+qPn1dPTCwsLk3I8kia5lZR55lvmIbPE\njsP8nvv6n0oyjKxl29Fi1ty53Ae06jG7K/3WhxvP0bi2GEkLIVRW/58nKWGyyOo0AbsQQoL3\nAiBbUusyDBTR2bNn8awOx+Fwzpw509zE7tq1a9yb3BfEEd3JjYyMxo4dixB69OgRzzEcDkc6\nWR1uxYoV27Ztw7+OjY19/fr15s2bxXVxMpkcHR09ceLEvLw8hFC7du1Onz4trotLCIfDiYmJ\nSUxMVFdX//nnnwcMGCDriIBck1liV1eeunx5FP41TfunC6fX8B/TRZP6rv4bQoiiYYMQYhTX\nIkudf3dyiuvZRpaaAnYJPpH7Ru7u7o6OjsQmiUQqKysTz3PKDV1dXQaDwWQyZR2IxOH/8SOE\nqqqqWvi8qampd+7codFonp6ekuhBb2RkxFNiZmbW3J89/HnLy8tVoSmWSqXi6YVSPi+Hw0lI\nSMjOzm7duvX48eOrq6t5DmAwGML8eNTV1YWGhl67do3JZJaXlws40sbGZsiQITzXtLS0NDMz\n+/z5M1HSv3//hoYGSX8qqqurq6url5aW8lRa79ixY+7cuWKcoKRDhw7p6enPnz8nkUhdunRR\nU1OTyQe+uro6mUxmMBhNHrl8+fJDhw7hX+/fv//gwYNy0lVAeJqamlQqtaGhQZjnVQJ0Op3N\nZnMPxBYvDocjYD1rmSV26oYesbEexGbtt8TjF9/1953RjU4lCt/WMmkm1gghKr2bEY38OeET\ncvhnxsLa0oR6DsdsoBGVrv+jXYJP5A7G0NCQu+21pKREKRMgFoullM/Fg+iG1cLn3b17N1FP\nsGvXrqioqFGjRokhPi4+Pj6HDx/Gaw4QQjo6OgsWLGhuzPjzMplM5Ut0+BFNcsr3vGw229/f\nn2g23bZt28qVK48dO8Z9zIgRI4T58fj99995TiS0atVq9erVZ86c+f79e+/evX///Xc1NTWe\na5LJ5CNHjgQGBhYUFCCEunbtumfPHil8dOC1iUVFRTz3amho+PLli4aGhhjvRaFQiCEUsvpU\nZLPZJBKpybvn5+dHRkYSmxwOZ9WqVZ6enhKOTszwl4t3Z5R1LNLA4XDYbLasHlZepjshqRtc\nv3794OlnREnZy5OPK+u7eHdCCCGM7G+nX/Ls1NeGf9oRXl6Nx0gaUzvrC9ol+EQAfqy4uJh7\nhn0mk7l8+XKxZxI6OjqJiYmLFy8eMWLErFmzkpOT27ZtK95bgB+pqqpKSUm5f/9+TU2NrGNB\nCKG4uDgiq0MI5eXlpaenr1q1Sk1NDSFEpVKXLl3q7u7e5HUYDMapU6d4CvGLdO3a9dSpUz//\n/HNcXNzDhw/Dw8N/tFSdg4PDo0ePbt++nZqampSUJM0fSwsLC7zGnaCrq9u6dWupBSBv8vLy\neD55iouL5eSHFsgneRk8QdOyn9fPNCJu40aWV39b0/KC3MsXEnRsRi1x+Kdqre+vgZrTtwat\nP+Dn5oh9zthzOa+9+3obdbLgXU3uBaBR79+/5+md+vnzZwaDIfYBGQYGBsHBweK9JmhSenr6\n9OnTv379ihAyNzc/efJk9+7dZRvS33//zVPy4sWL0NDQJUuWPHv2rE2bNkKOF6msrOSvJ0hI\nSLC2tqbT6cLHQ6PRZDIzs7q6+h9//PHLL7/gT0GhULZu3arKa/VaWlpiGMad25mbm4u3/hIo\nGUx+mjM4nNp754/GJqXnf63SM7e06zVouv84fa5VXUtzk/YePv/8fRFV27Svq9e8KU7ETgG7\nmtzLr6SkhL+LsaIzNDSsqKhoaGiQdSASRyaT8c4H5eXlIj9vfn5+7969uUsMDAxycnLEODpP\nXPDn/f79u/z8LksOjUbDq3Na8rxMJtPe3r6wsJAo6dChw4MHDzBMlmtIHz16dNmyZdwl7u7u\nJ0+e1NTULC1txoTqbDbbwcGBaN9HCBkaGmZnZ8t/bkSn0+l0OovFKi0tzcnJuXXrFoZhI0aM\n6NSpk6xDkwg6nU6hUCoqKpo8csOGDcQSxiQS6ciRI/gwFwWira2tpqZWX18vzPMqAW1tbRaL\nxd9NVowErKIhR4md/IDETqGJJbFDCC1btuzo0aPE5s6dO/38/MQQn7hBYtdcr1694h9XmJ2d\nLdvJ7hkMhrOz89u3b/FNKpV65MiRhISEp0+fGhkZzZkzR/jxsH/++aefnx+eDmppaUVGRjZ3\nLK1McCd2so5FGoRP7BBCCQkJd+7codPpnp6eMq9dFgEkdmIHiV3zQGKn0MSV2LHZ7HPnzt2+\nfVtDQ2P8+PFOTk7ii1GcILFrrsLCQp5GRhKJ9OrVK5nPjVdcXIzP0dq6dWs/P78FCxYQFW8Y\nhkVHRw8bNkzIS5WUlDx48IDFYg0YMIB/8LV8gsROiUFiJ3YCEjt56WMHgLwhkUje3t7e3t6y\nDgSImbm5uaur661bt4iS8ePHyzyrQwgZGxtv2rQJ//rMmTPczakcDic8PFz4xM7AwMDNzU38\nIQIA5J7cdRgCAABJCw8P9/X1bdWqlYmJSUBAwPbt22UdEa/v37/zlHz79k0mkQAAFAvU2IEW\nyc/Pf/Tokaam5uDBg5s15g4AGdLT09u1a5doq7dJB8/YHYSQvb29TCIBLVdVVbVnz5779+/T\n6fTJkydPnDhRtiN1gHKDxA6I7syZM0FBQfii2ubm5hcuXOjQoYOsgwK8SkpKTp8+XVhYaGdn\n5+3tLf+jIwFCaMCAAYGBgcTMtB07dly1apVsQwIC1NXVRUVFZWRkGBgY+Pn5cY9v4HA4M2bM\nuHv3Lr557969srKywMBAGUUKlB8MnmgEDJ4QRlFRkb29fV1dHVHSr18/fN1u2RLX4AlFIXjw\nxOfPn52dnfEJ2xBCDg4OV69epVKp/EcqBLEMnlAgL168ePHihba2trOzs9Jn5Io7eILNZnt5\ned27dw/fJJPJFy9eJEZeZ2Vl8YxKNjY2fvHiBQyeUGKyHTwBfeyAiLKzs7mzOoTQ48ePVeFv\nrWLZsWMHkdUhhDIyMs6fPy/DeECz9OrVa/bs2aNGjVL6rE6h3bt3j8jqEEIsFiskJITY5O8c\nqSL/lgBZgcQOiEhPT4+nRFdXFzqOyJt3797xlLx580YmkQCgrPBFdbnl5+cTX9vZ2fHUkXfr\n1g0+KoHkQGIHRNS7d28HBwfuktmzZ8sqGPAjbdq04Sn50fKgAADRtG/fnqeEu7exubn52rVr\niUVr9PT0duzYIb3ggOqBwRNARGQy+eTJk1u2bLl37562tra3t3dAQICsgwK8li5dGh8fX1lZ\niW/a2trCzHwAiJejo+OECRMuXryIb9Lp9A0bNnAfMHv27MGDBz948IBOp48cOdLAwEAWYQJe\nTCazuLjY2NiYQlGqXAgGTzQCBk8oNBg8wSM/Pz8yMvLTp09du3YNDAzU1taWcoRipGqDJ2g0\nWnPXilVcijt4AiHE4XDi4uLS09MNDQ0nT55sbm7e5CkweEK2Dh8+HBISUlVVpampuXLlylmz\nZonx4rCkmNyBxE6hQWKnxCCxU2IKndiJABI7Gbp3796kSZO4P0Oio6OdnZ3FdX0YFQsAAAAA\nICWxsbE8/xlevXpVVsGIHSR2AAAAAFAh/PX9ytQCAIkdAAAAAFSIm5tbkyWKCxI7AAAAQPFk\nZmb6+/sPHjw4ICAgJyenuae/evXqwoUL9+/fV74+5U1ycnLauHEjvr65hobG2rVrXV1dZR2U\n2CjVEF8AAACAUFFRER0d/enTpy5duowfP15xF9Pjl5ub6+bmVltbixDKyclJTk6+e/eu8LNU\nbtq0ae/evXhK16tXr4sXLyr0eHkRzJkzZ8aMGYWFhebm5kq2sgvU2AEAAFBCX79+HTRoUHBw\n8P79+xcsWODp6alMw+SPHDmCZ3W48vLyEydOCHnuw4cPw8LCiIq6p0+fbtmyRfwhyj0ajWZl\nZaVkWR2CxA4AIDmJiYkbNmwICwv79OmTrGMBKmfHjh2FhYXEZnp6+rlz52QYj3jxL0HLX/Ij\njx494ilJT08XQ0xAPkBTLABAIpYvXx4VFYV/vXPnzqtXr/bq1Uu2IQGVwr8s8qtXr2QSiST0\n7NkzLi6Ou0T43y9dXV2eEv61v4Higho7AID4PXv2jMjqEEI1NTXBwcEyjAeoIP7lH/iXTlZc\nc+fO7du3L7Hp4uLi4+Mj5Lnu7u6mpqbEJoZhgYGBYo4PyA7U2AEAxO/169c8JcpUWQIUwpIl\nS65du8ZgMPBNGxubn3/+WbYhiRGNRouNjb1z58779+87duw4ePBgDMOEPNfAwODSpUshISGZ\nmZmmpqbz5s0bOXKkRKMF0gSJHQBA/Fq3bt1kCQA8YmNj16xZ8+bNm44dO65cuXLo0KEtuZqN\njU1ycvLBgwfz8/O7des2a9YsTU1NMUUqF0gkkouLi2jndujQ4dixY2INB8gLSOwAAOLXp08f\nFxeX27dv45sYhkFTLBAsPT19woQJTCYTIfT06VMfH5/ExMTOnTu35JpWVlaqOd4TqDLoYwcA\nED8Mw44fP75x48ZRo0Z5e3vHxcUp0/yfQBKOHz+OZ3W4+vr6s2fPyjAeABQU1NgBACSCRqPN\nmTNnzpw5sg4EKAaiMxyhqqpKJpEAoNCgxg4AAIDsDRkyhKdk8ODBMokEAIUGiR0AAADZmzZt\nmq+vL/41hmHTp0/39PSUbUgAKCJoigUAACB7JBLpxIkTy5cvz8rK6tChg7W1tawjAkAhQWIH\nAABAXtja2pqYmMg6CgAUGDTFAgAAAAAoCUjsAAAAAACUBCR2AAAAAABKAhI7AAAAAAAlAYkd\nAAAAAICSgMQOAAAAAEBJQGIHAAAAAKAkYB47ABTSixcvrly5wmQynZ2dPTw8ZB0OAAAAuQCJ\nHQCKJy4uLiAggMViIYT27du3cePGuXPnyjooAAAAsodxOBxZxyB3KisrZR2C+GlpadXU1OCp\ngHIjkUiampoIoerqaqV8Xg6H06lTpy9fvhAlZDL51atXRkZGMoxKOigUioaGBkKoqqpKFT67\nKBSKmpoag8GQdSDSQKPR1NTU2Gy26jwvmUyuqamRdSDSoKGhQaFQmEym6jwvm82uq6uT0PU5\nHI6Ojs6P9kKNXSM0NDQwDJN1FGKGYZi6uroq/C0kKOvzVlRUcGd1CCEWi1VQUGBpaSmrkKSG\n+MXE0ztlUl1dHRoa+uDBAz09vYCAACcnJ4QQhmEkEolOp8s6OmnAX65KPS+GYSrysCQSCSFE\nJpNV53nJZDKZTJbQ9dlstoC9UGPXiJKSEsHfNUVkaGhYUVHR0NAg60Akjkwm6+vrI4TKy8uV\n8nnZbLatrW1paSlRgmFYZmamubm5DKOSDhqNhv+f+v37d2X67GKz2V5eXvfu3SNKIiMjPTw8\naDSapqYm97tWYnQ6nU6ns1gs1XleCoVSUVEh60CkQVtbW01Nrb6+XnWel8ViVVdXS+4WrVq1\n+tEuGBULgIIhkUjBwcHcJQsWLGjdurWs4gEt9/DhQ+6sDiG0a9cuWQUDAFBo0BQLgOLx9/dv\n27bt5cuXa2trR4wYMWvWrJKSElkHBUT3+fNnnhKe1nYAABASJHYAKCQnJye8GxaZTFa+LqGq\nxtbWtskSAAAQBjTFAgCAjHXt2nX27NnEpra29pYtW2QYDwBAcUGNHQAAyN6mTZtGjBjx8OFD\nPT09T09PVZi8BgAgCZDYAQCAXBg0aNCgQYNkHQUAQLFBUywAAAAAgJKAxA4AAAAAQElAYgcA\nAAAAoCQgsQMAAAAAUBKQ2AEAAAAAKAlI7AAAAAAAlAQkdgAAAAAASgISOwAAAAAAJQGJHQAA\nAACAkoDEDgAAAABASUBiBwAAAACgJCCxAwAAAABQEpDYAQAAAAAoCUjsAAAAAACUBCR2AAAA\nAABKAhI7AAAAAAAlAYkdAAAAAICSgMQOAAAAAEBJQGIHAAAAAKAkILEDAAAAAFASkNgBAAAA\nACgJiqwDAAAAoCTev3+fm5trYWHRtWtXWccCgIqCxA4AAIAYrF279sCBA2w2GyHk6up69OhR\nGo0m66AAUDnQFAsAAKClEhMTIyIi8KwOIXTr1q2IiAjZhgSAaoLEDgAAQEulpaU1WQIAkAJI\n7AAAALSUlpZWkyUAACmAxA4AAEBLTZo0iTuTI5FI/v7+MowHAJUFiR0AAICWatu27blz5xwd\nHXV0dLp06RIZGTlkyBBZBwWAKoJRsQAAAMTAwcHh2rVrso4CAFUHNXYAAAAAAEoCEjsAAAAA\nACUBiR0AAAAAgJKAxA4AAAAAQEnIbPAEh1WWlPzcxXkgd2FZbvLB6Bs5uW+ZGiZ9XSfM9R5G\nwYTaK/KJAAAAAABKQ2Y1dt8zD4bvP8FdUluSMn/F7uzvOmP9Al0dzBLPhgYdeirMXpFPBAAA\nAABQJjKosWPXVb5+lr5v258IGXGXp+84Wk1pE7r9d0t1MkIj2jHnbrux5b3/WWt1suC9Ip8o\n/WcHAAAAAJAcadfYVRefGu81NWjDno+1rP/s4LCOvSzVt/O3/DffsvcZwWHXnsopbWKvyCcC\nAAAAACgXaSd2GoZj9uzdu2/fviWOxtzlDYzs7w1s8zFWRIm6gRsVwz6nfRO8V+QTJfN8AAAA\nAAAyI+2mWIys37atPkKIoUlF6P+Vdqza9wghTVN17kNNaCTGB4bgvazaj6KdyB1VcnLyzZs3\nic3ffvtNW1tbDE8rTzAMo9PpbDZb1oFIHIb9MzRGpZ5XW1ubw+HIOhaJI5H++V9URRaYJ5FI\nJBJJ+T6OGkUmkxFCqvO8FAoFwzAVeVgqlYoQolAoqvO8FAoF/5GWBMGf9vKypBibXYUQ0qf9\n57tgQCFXVNcJ3ivyidwl79+/v337NrH566+/qqmpieGp5Az+q6U6VOp5aTSarEOQKqX8Df0R\nlXpYDMNU6nlV6mFJJJJKPa/kEjsWiyVgrwQTOw7ze+7rYvxrjKxl29FCwMEYSQshVFb/n1hL\nmCyyOk3wXpFP5C5p3bp1nz59/h8MhjU0NAj3lAqDSqUymUxVqNTBMIxCoSCEVOR5EUJUKlX5\nfmIbRSKR8M9KFXleDMPIZDKTyZR1INKAv1wOh6M6z4thmOC/0EqDTCaTSCQ2m606z8vhcCTX\nZMRmswVkjRJM7OrKU5cvj8K/pmn/dOH0GgEHUzRsEEKM4lpkqfNvGae4nm1kqSl4r8gnct/d\n1dXV1dWV2CwpKSkvLxftqeWWoaEhg8FQhT+HZDJZX18fIaRSz1tRUaEKWSyNRtPR0UEIqc7z\nampqKt/HUaPodDrefUJ1npdCoVRUVMg6EGnQ1tZWU1NjMpmq87wsFqu6ulpytxBQ9ynBxE7d\n0CM21kPIg6n0bkY08ueET8jhn0EVtaUJ9RyO2UAjwXupdH3RThTjkyoEBoOhIv8qlZaW7tmz\nByE0YcIEU1NTWYcjcWw2u6qqShWyHITQq1ev4uPjEUKzZs1ShaZ2Sf9tkCspKSnp6em6urpT\np06VdSzSUF9fryJ1kwihCxcuvHnzxsbGZtSoUbKORRpqa2tl+JksL33sEEb2t9MPfXbqa0NP\nIyoJIfTyajxG0pjaWb+JvSKf+GMGBgYSf14gMbW1tdeuXUMIeXh4tGrVStbhSImKDCZ49uwZ\n/nKDgoLodLqsw5ESFelvnpeXd+3aNXNz88WLF8s6FiBmWVlZd+7cGTJkiK+vr6xjUX5ytFZs\n318DNevfBa0/cCf9r7tXDq67nNfebYXNv/PPCdgr8okAAAAAAMpEbmrsEFLT67dny8K9h88f\n2JZI1TZ1mrx43pSewuwV+UQAAAAAAGUis8TObtH+y4t4C/VtndfscP7RKQL2inwiAAAAAIDS\nwFSkzzUAAAAAgNKToz52AAAAAACgJSCxAwAAAABQEpDYAQAAAAAoCTkaFQsA4c39CycvJb7M\nL2aRtdp1H+Qf6GdnpM5zDIdVlpT83MV5IHdhWW7ywegbOblvmRomfV0nzPUeRsGE2iv4RCBG\nwrxcNvNb0t2nfYa56JL//xpEfn3wcqWm0Zdb+/2K1/Qo/oMp6u0unduNfw0vV65xmMnnDl1O\n+rPgayVV26hLX6eAQC9TrkXYJfTBCy9XNOR169bJOgYA/qP4QcT8bRcbzHp4uHv81LHVszvx\nV+Me9HIb0Yr6nwrm70/DVu9O9vZyI0pqS1Jm/7KriGozbqJbW82KuCsXH1fajvzJrMm9gk8E\nYiTky03auXjv+Tv9xnsR5SK/Pni5UiPg5ZKorbr9V82bXGbr4eNHdkPwcuXei2NBIecf2wwa\nN9FteHtjTnLctdsZNeNH9sb3SuiDF16u6DgAyJltUydOmhZax/5ns7ooydPdfUHkS+IAVm1F\nbkbigkkeHhMCuU9MXjHNY+K8DzVMfPN+2Bz3cZPe/bspYK/gE4EYNflyORxOcfoBNzc3Nze3\nnOoGolDk1wcvV2qEebm40pxT4+WkvkYAAAwwSURBVDymPimvwzfh5cozNrvGf/y4wG1pRMm7\nS0vd3NwSS2vxTQl98MLLFRn0sQPyhcMqTS2vs3DzoP1b5a5hPGywrtr3jLf4ZnXxqfFeU4M2\n7PlYy+I589jLUn07f8t/lxWx9xnBYdeeyiltYq/gE4H4NPlyEULM6pzgbTe7DTXhOVPE1wcv\nV1qEebn/HMmuDt14udOUtb11aPiZ8HLlWUPlXyUNbAsPO6LEpF8XhNDrGiZCEvvghZfbApDY\nAfnCYTdMnTp13ABjrjL2pzomVccQ39AwHLNn7959+/YtceQ+BjUwsr83sM3HWBEl6gZuVAz7\nnPZN8F7BJwIxavLlIg7r5KrNzK7+iwb8J7ET+fXBy5Wapl/uv95f2fiM1XHtxHb4JrxcOUfT\n7hMdHb2svS5RUpSRi2Hk/jo0JLEPXni5LQGDJ4B8IVGNvby8uEs+3t79qoY53L89vomR9du2\n1UcIMTSpCP2/0o5V+x4hpGnK1Q0fI5vQSIwPDMF7WbUfBZwIxKjJl/v68rprnwzDTrqhzMfc\nh4n8+gT/VAAxavLl4lj1BZvP5DosOUAn/VOzBy9X3mEUOp2CEGLWvDx/Kf1rweuUh+8G+qzr\noUlFEvvghZfbEpDYAfnFYVXeOh1x4GKaqeP0BV0NBB/MZlchhPS5BmohhAwo5IrqOsF7BZ8I\nJIT/5VZ/uRN8Ittz0zELNXLxfw8W+fXBy5UJAb+578/vKKV0WNz//xV78HIVBav+c8bjx6Vf\nP7PIBoYa/xRK6IMXXm5LQGIH5FTxs8TdoZF/f2P3n7Roic+wJge5YyQthFBZ/X863pUwWWR1\nmuC9gk8EksD/cjms8l3LD7Ry+s23qz7/8SK/Pni50ifgN5fDrt555YPlpF3q2P+L4eUqCjXd\nobt2D0Uc5p8X1m+OXN3Q/vhsO30JffDCy20J6GMH5FH62a2zVu0rMnJcvffo8qnDaELMXUTR\nsEEIMYpruco4xfVsuqWm4L2CTwRi1+jLzbu2KaOCPKo7JzU1NTU1NePvcoRQVtr9B2lPUQte\nH7xcKRP8m1v26nBhPWfmWAvuQni5co7Dqq+t5fomYxTHiWu1yVjG+TwksQ9eeLktATV2QO7k\n39gScvZh3ynLf/ceQBZ6OkoqvZsRjfw54RNy+KeVp7Y0oZ7DMRtoJHgvla4v4EQgXj96uXXf\najksRuTuHdwHnw7bRVFvN6B/L5Ffn+CfCiBeTf7m/nkoQ93QrQv9P3934OXKuZIXm6ev+mvN\n6Qs/af9bW4ZRDKikSgYLSeyDF15uS0CNHZAvHHZ1yJFHxn0XB09pRlaHEEIY2d9Ov+TZqa8N\nbLzg5dV4jKQxtbN+E3sFnwjER8DL7RiwN5bL4eDuCKFtMZf+WZlA5NcHL1damvzN5bAqT7yv\nMBvuxLsDXq5807IcghC6nPyZKKn8eOljLau1qwlCEvvghZfbArDyBJAvtd+vHr2U2aqXZc2H\n1zlc3hXodWynzX3kt/T4pDwO98oTpr2Nb16Ku/13qY4m+cPj2K1nH7dzX+3dx7zJvYJPBOIi\n/MtlFNyJTS0aPmkysfKEyK8PXq50NPlya4pjzsb+PeyXaT21qDznwsuVZxR1a+qLhNsJ1wtq\nUU351+ePkvaGXmDq9Az5xQ0f2iyhD154uSLDOByOrGMA4P9Kczf6L8vgL9exWHkq3JG7JCds\n7spU1uULh/57etLew+efvy+iapv2dfWaN8WJe21BAXsFnwjEQviXW5y+KiAke1vMJVuN/zfb\nifz64OVKQZMv982JRb9e/HDw/GVTWiMtRfBy5RmHVX7t6JGbaU+LSqpoOkZdHAb7zvS2pAv1\nuyl4L7xcSYDEDgAAAABASUAfOwAAAAAAJQGJHQAAAACAkoDEDgAAAABASUBiBwAAAACgJCCx\nAwAAAABQEpDYAQAAAAAoCUjsAAAAAACUBCR2AAAAAABKAhI7AAAAAAAlAYkdAAAAAICSgMQO\nAAAAAEBJQGIHAFAJT7YOwTBs8NanvDvYNRNNtaga1lmMBsFXyD04AONCIpF1DNo4TZiXnM8Q\nb6gu+hq20x+I95oAABVBkXUAAAAgDb1/i/fYbXptzZhH8z720aYS5a+OTbpYxBgZ8aiHJlXA\n6YS520K70CkIIQ6T8Trr7sHjB0befpJbnGalRhZXqO26dddqqyn4mMJbR87maP26aLK4bgoA\nUA4Yh8ORdQwAACAN356GGNuvtvQ48f7SVLyEVfexh2GHj3oTvuadVW+qASP34AC7OWnxJTWj\n9dWJwuf7R3Sbd2v4pfe3PK0kFngjHs7tPCzavKb0tjRvCgCQf9AUCwBQFa16BUeObfvxyrT9\nb8rxktQV7n9XM1ffCG8yq/uR9pMXIoTybxTy76qtZIoaKQAAiAgSOwCACvE7c9FCDVs5agUb\nobrS2x57n7cdE7msm4HIF6z99gghpG78Tx2er4mW/frM56fXDupsOmDXc4RQztU9Ix1tdelq\nhubW42ateV7ZgBA6MdCcpmlbw/7/dXIiBpBIlOultQihsYZ0oo9dTfGDhV7D2rUxotI0LLsM\nWHs8AyG0xlK3/4Gc2rIkDMPcs77iR96M+L1/F0tNGk3fpJ1HwLpcBqSVAKgiSOwAACqEqmV/\nY9fwsjf7/S99OD55ehXZNOaMr2iX4rBq3mZeDxgRhhDyC2hPlH9/FjZ8x4ufV0bs82334dKC\nbp6LC42dt+yLWr9oyptz2xxtR32qZ43YNbqh+uXaV6XEWXtCsvXaB3M38iKEELvGo+vwqFRW\nwMo/Th7ZN9b688bpjjvfVyxITD/tZaOm0/f58+f7bA0QQvfXDRs1f2t99/E7I4+snDP64clN\nfbv9XM6CnjYAqB4OAACoFHadn6UORcMGwzCnnZnCn5dzoD//RyiJrD1tSyJxzFRjTYqGzbsa\nJofDYbOqf9KmWYzYQ+ytKrhAJ5P6bstmM8us1Sk2ExLw8ppvlxBCE2/k4ZtjDDQ6TbvP4XCq\ni88ghMY+KMTLmXWfpk6dui7hE4fDSZtjp67njJc31Lw2oJIs3Y4RN/rycDlCyCP2Q/O/OwAA\nxQajYgEAKgajhSVsPmW3UMNo3LXF3Zt7NjEqFiFEN2jdo59Lbyst7gP0bNZZq5MRQowvkY8r\n6ycs6PPy5ct/d3b1MFS/GfUIC+oWNrz1xJtB9RxXGoZy922iqLWNcG7Ncy813aGW6pR7U3x3\nrpntMmRg9/atT548yR9SZd7Wkgb2svDxRImJ4x8u+mGPtr9AbpbNfUAAgEKDxA4AoHL0Os3X\nJf9C7zxHk4Q199yxAbN5G0z/i97aFP+ivjIDIXTRzfHifw/QUX+HEBq4fUq97R8h78rXt9Pd\nsC+nrdsFIypv3xgSzSzzyZVVG/eGBfn9VlqrYWQzerz/H6Er26v/56O75ssnhFAfHRp3oaM2\n7cmXvOY+HQBA0UEfOwAAEKt/k0WKuiVCaFNeBU9DSfnHEISQfsf19tq0s2v/Ynw+ePlbzcKd\ngxq9mF7nMfvO3swrYeTlZBxaPeXRsY1O7md5jlE3NkMIPan8zwTLT6sa1AzMxf5wAAA5B4kd\nAABIhJb5gtZq5JMbkoiS+oqMbu3bjT/6CiGEMNrOSdYfY3//a9MeurH34rba/Fco+nOqmZnZ\nsS8MhEgWtj9NXbhpQzvd0uwknsN0LJfrUkgRi2KJkq9P1saX1PwU1E0iDwYAkGPQFAsAABJB\noprGhoyy/81zaO1iLxdHzZr3xzaHvKnqct7bBj+g9/o59VFLPCJJvcMuNHoF/S4Lmd+jFw+a\nWLx4oo2R+pv0uDW5JT+tnI8QIquTG6r/vpJ4p63joN7ana4sG+C02ae/f+bMEb0r3z3avmmP\njvXE4+OspPawAAA5ATV2AAAgKb1/vXbvyFp29uWgWb6/bjqs5rwoJTfZVuOf/6i12ywebaBR\nxtaI8Gvf6Ok07b7Ztw8NMS3YHDTPe2rA/hvvF2w9n7rRASHUcc4vXVrVThw9endeBUJoaMi9\nuD1B7EdnFkzzXRt22X5q8KPnZw0oze5BCABQdLCkGAAAAACAkoAaOwAAAAAAJQF97AAAACGE\nPt+fOSww7Ud7qfTO2U8u/mgvAADICWiKBQAAAABQEtAUCwAAAACgJCCxAwAAAABQEpDYAQAA\nAAAoCUjsAAAAAACUxP8A4NvOOwftmQgAAAAASUVORK5CYII="
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
    "ggplot(data=dataset, aes(x=Y_previsto, y=Residuos)) + \n",
    "    geom_hline(yintercept = 0, color = 'black') +\n",
    "    geom_point(size = 1.5, stroke = 0) +\n",
    "    xlab('Y_Previsto') + \n",
    "    ylab(\"Residuos\") + \n",
    "    ggtitle('Residuos X Y_Previsto') + \n",
    "    theme(\n",
    "        plot.title=element_text(size = 12, hjust = 0.5),\n",
    "        axis.title.x=element_text(size = 10, vjust = -0.2),\n",
    "        axis.title.y=element_text(size = 10, vjust = +0.2),\n",
    "        axis.text.y=element_text(size=10),\n",
    "        axis.text.x=element_text(size=10)\n",
    "    )"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "a7a74f92",
   "metadata": {
    "id": "XFr505IvZcR2",
    "papermill": {
     "duration": 0.016652,
     "end_time": "2024-05-06T19:36:40.677950",
     "exception": false,
     "start_time": "2024-05-06T19:36:40.661298",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "### Obtenha o R² da regressão pelo método da soma dos quadrados\n",
    "\n",
    "# $$R^2 = \\frac{SQR}{SQT}$$\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 17,
   "id": "9f9adb80",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T19:36:40.715008Z",
     "iopub.status.busy": "2024-05-06T19:36:40.713196Z",
     "iopub.status.idle": "2024-05-06T19:36:40.738730Z",
     "shell.execute_reply": "2024-05-06T19:36:40.736983Z"
    },
    "id": "GxX3EpMfZTOn",
    "outputId": "7ede76b5-f570-4d31-bc15-c3f1e11803a9",
    "papermill": {
     "duration": 0.046726,
     "end_time": "2024-05-06T19:36:40.741087",
     "exception": false,
     "start_time": "2024-05-06T19:36:40.694361",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "4718394688.06769"
      ],
      "text/latex": [
       "4718394688.06769"
      ],
      "text/markdown": [
       "4718394688.06769"
      ],
      "text/plain": [
       "[1] 4718394688"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "SQE <- sum(apply(dataset, 1, function(x) x['Residuos'] ** 2))\n",
    "SQE\n",
    "# ou SQE <- anova(resultado_regressao)$'Sum Sq' [2]\n",
    "                 "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 18,
   "id": "cf1ebcf1",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T19:36:40.778424Z",
     "iopub.status.busy": "2024-05-06T19:36:40.776740Z",
     "iopub.status.idle": "2024-05-06T19:36:40.804834Z",
     "shell.execute_reply": "2024-05-06T19:36:40.803026Z"
    },
    "id": "5iSFXLvyZTOq",
    "outputId": "b3ff4b3e-1165-448f-ea33-5bc18a89a0e2",
    "papermill": {
     "duration": 0.049376,
     "end_time": "2024-05-06T19:36:40.807202",
     "exception": false,
     "start_time": "2024-05-06T19:36:40.757826",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "2325899486.73779"
      ],
      "text/latex": [
       "2325899486.73779"
      ],
      "text/markdown": [
       "2325899486.73779"
      ],
      "text/plain": [
       "[1] 2325899487"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "SQR <- sum(apply(dataset, 1, function(x)(x['Y_previsto'] - mean(dataset$Y_previsto))** 2))\n",
    "SQR                \n",
    "# SQR <- anova(resultado_regressao)$'Sum Sq'[1]"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 19,
   "id": "fee00ff0",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T19:36:40.844453Z",
     "iopub.status.busy": "2024-05-06T19:36:40.842789Z",
     "iopub.status.idle": "2024-05-06T19:36:40.861508Z",
     "shell.execute_reply": "2024-05-06T19:36:40.859752Z"
    },
    "id": "mNm5V2r8ZTOs",
    "outputId": "e40e384a-3402-4491-bf37-11b84096c569",
    "papermill": {
     "duration": 0.039888,
     "end_time": "2024-05-06T19:36:40.863742",
     "exception": false,
     "start_time": "2024-05-06T19:36:40.823854",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "7044294174.80548"
      ],
      "text/latex": [
       "7044294174.80548"
      ],
      "text/markdown": [
       "7044294174.80548"
      ],
      "text/plain": [
       "[1] 7044294175"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "SQT = SQR + SQE\n",
    "SQT"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 20,
   "id": "1b2a850b",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T19:36:40.901226Z",
     "iopub.status.busy": "2024-05-06T19:36:40.899515Z",
     "iopub.status.idle": "2024-05-06T19:36:40.918496Z",
     "shell.execute_reply": "2024-05-06T19:36:40.916797Z"
    },
    "id": "4wnz--cwZTOu",
    "outputId": "05b2f206-1322-46bc-eadd-37139d9a0d9f",
    "papermill": {
     "duration": 0.040565,
     "end_time": "2024-05-06T19:36:40.920851",
     "exception": false,
     "start_time": "2024-05-06T19:36:40.880286",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "0.330182049332432"
      ],
      "text/latex": [
       "0.330182049332432"
      ],
      "text/markdown": [
       "0.330182049332432"
      ],
      "text/plain": [
       "[1] 0.330182"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "R2 = SQR / SQT \n",
    "R2"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 21,
   "id": "9298e5e5",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2024-05-06T19:36:40.959851Z",
     "iopub.status.busy": "2024-05-06T19:36:40.958260Z",
     "iopub.status.idle": "2024-05-06T19:36:40.980565Z",
     "shell.execute_reply": "2024-05-06T19:36:40.978879Z"
    },
    "id": "JgBLHvclZTOw",
    "outputId": "87ba7851-4a9d-41d7-ed2d-1f3b1f870071",
    "papermill": {
     "duration": 0.044477,
     "end_time": "2024-05-06T19:36:40.982790",
     "exception": false,
     "start_time": "2024-05-06T19:36:40.938313",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "NULL"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "summary(resultado_regressao)$r.squarel"
   ]
  }
 ],
 "metadata": {
  "kaggle": {
   "accelerator": "none",
   "dataSources": [
    {
     "datasetId": 4952807,
     "sourceId": 8339232,
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
   "duration": 8.308434,
   "end_time": "2024-05-06T19:36:41.121441",
   "environment_variables": {},
   "exception": null,
   "input_path": "__notebook__.ipynb",
   "output_path": "__notebook__.ipynb",
   "parameters": {},
   "start_time": "2024-05-06T19:36:32.813007",
   "version": "2.5.0"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
