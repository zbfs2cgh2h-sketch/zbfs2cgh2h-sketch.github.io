{\rtf1\ansi\ansicpg949\cocoartf2867
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fnil\fcharset0 Menlo-Regular;}
{\colortbl;\red255\green255\blue255;\red224\green224\blue224;\red25\green29\blue39;\red39\green44\blue53;
\red140\green211\blue254;\red235\green190\blue116;\red194\green126\blue101;\red67\green192\blue160;}
{\*\expandedcolortbl;;\csgenericrgb\c87761\c87761\c87761;\csgenericrgb\c9839\c11388\c15260\c95000;\cssrgb\c20392\c22745\c27059;
\cssrgb\c61176\c86275\c99608;\cssrgb\c94118\c78824\c52941;\cssrgb\c80784\c56863\c47059;\cssrgb\c30588\c78824\c69020;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0

\f0\fs24 \cf2 \cb3 \CocoaLigature0  \cf4 ```bash\cf2                                                                                                                 \
   \cf5 #!/usr/bin/env bash\cf2                                                                                                   \
   \cf6 content=\cf7 "\cf5 $1\cf7 "\cf2                                                                                                          \
   \cf6 response=$(curl -s -X POST -d \cf7 "content=\cf5 $content\cf7 "\cf6  http://localhost:11434/api/generate_meta)\cf2                            \
   \cf8 echo\cf6  \cf7 "\cf5 $response\cf7 "\cf2                                                                                                      \
 \cf4 ```\cf2              }