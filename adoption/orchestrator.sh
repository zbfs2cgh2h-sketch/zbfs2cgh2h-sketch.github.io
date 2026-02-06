{\rtf1\ansi\ansicpg949\cocoartf2867
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fnil\fcharset0 Menlo-Regular;}
{\colortbl;\red255\green255\blue255;\red224\green224\blue224;\red25\green29\blue39;\red39\green44\blue53;
\red140\green211\blue254;\red89\green138\blue67;\red235\green190\blue116;\red194\green126\blue101;\red67\green192\blue160;
}
{\*\expandedcolortbl;;\csgenericrgb\c87761\c87761\c87761;\csgenericrgb\c9839\c11388\c15260\c95000;\cssrgb\c20392\c22745\c27059;
\cssrgb\c61176\c86275\c99608;\cssrgb\c41569\c60000\c33333;\cssrgb\c94118\c78824\c52941;\cssrgb\c80784\c56863\c47059;\cssrgb\c30588\c78824\c69020;
}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0

\f0\fs24 \cf2 \cb3 \CocoaLigature0  \cf4 ```bash\cf2                                                                                                                 \
   \cf5 #!/usr/bin/env bash\cf2                                                                                                   \
   \cf6 # Multi\uc0\u8209 Agent \u53685 \u54633 \cf2                                                                                                    \
   \cf6 # 1. AI\uc0\u8209 SEO, 2. \u48372 \u50504 , 3. \u48716 \u46300 /\u48176 \u54252 \u47484  \u44033 \u44033  \u48324 \u46020  \u49464 \u49496 \u50640 \u49436  \u49892 \u54665 \cf2                                                          \
                                                                                                                        \
   \cf6 # 1. SEO Agent\cf2                                                                                                        \
   \cf7 openclaw sessions_spawn \\\cf2                                                                                             \
   \cf7   --label seo_agent \\\cf2                                                                                                 \
   \cf7   --agentId myagent \\\cf2                                                                                                 \
   \cf7   --model ollama \\\cf2                                                                                                    \
   \cf7   --task \cf8 "Generate SEO meta for all posts"\cf7  \\\cf2                                                                          \
   \cf7   --runTimeoutSeconds 900\cf2                                                                                             \
                                                                                                                        \
   \cf6 # 2. Security Agent\cf2                                                                                                   \
   \cf7 openclaw sessions_spawn \\\cf2                                                                                             \
   \cf7   --label security_agent \\\cf2                                                                                            \
   \cf7   --agentId myagent \\\cf2                                                                                                 \
   \cf7   --model github/codeql \\\cf2                                                                                             \
   \cf7   --task \cf8 "Run CodeQL & Snyk scan"\cf7  \\\cf2                                                                                   \
   \cf7   --runTimeoutSeconds 1800\cf2                                                                                            \
                                                                                                                        \
   \cf6 # 3. Build & Deploy Agent\cf2                                                                                             \
   \cf7 openclaw sessions_spawn \\\cf2                                                                                             \
   \cf7   --label deploy_agent \\\cf2                                                                                              \
   \cf7   --agentId myagent \\\cf2                                                                                                 \
   \cf7   --model github/actions \\\cf2                                                                                            \
   \cf7   --task \cf8 "Build Jekyll site and deploy to GitHub Pages"\cf7  \\\cf2                                                             \
   \cf7   --runTimeoutSeconds 1200\cf2                                                                                            \
                                                                                                                        \
   \cf9 echo\cf7  \cf8 "\uc0\u47784 \u46304  \u50892 \u53356 \u54540 \u47196 \u50864 \u47484  \u49884 \u51089 \u54664 \u49845 \u45768 \u45796 ."\cf2                                                                                \
 \cf4 ```\cf2                                  }