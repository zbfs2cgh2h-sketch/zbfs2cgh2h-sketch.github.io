{\rtf1\ansi\ansicpg949\cocoartf2867
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fnil\fcharset0 Menlo-Regular;}
{\colortbl;\red255\green255\blue255;\red224\green224\blue224;\red25\green29\blue39;\red39\green44\blue53;
\red89\green138\blue67;\red183\green111\blue179;\red235\green190\blue116;\red194\green126\blue101;\red67\green192\blue160;
\red212\green214\blue154;\red70\green137\blue204;\red167\green197\blue152;\red140\green211\blue254;}
{\*\expandedcolortbl;;\csgenericrgb\c87761\c87761\c87761;\csgenericrgb\c9839\c11388\c15260\c95000;\cssrgb\c20392\c22745\c27059;
\cssrgb\c41569\c60000\c33333;\cssrgb\c77255\c52549\c75294;\cssrgb\c94118\c78824\c52941;\cssrgb\c80784\c56863\c47059;\cssrgb\c30588\c78824\c69020;
\cssrgb\c86275\c86275\c66667;\cssrgb\c33725\c61176\c83922;\cssrgb\c70980\c80784\c65882;\cssrgb\c61176\c86275\c99608;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0

\f0\fs24 \cf2 \cb3 \CocoaLigature0  \cf4 ```ruby\cf2                                                                                                                 \
   \cf5 # _adoption/seo_plugin.rb\cf2                                                                                             \
   \cf5 # AI \uc0\u44592 \u48152  \u47700 \u53440  \u53468 \u44536  \u48143  JSON\u8209 LD \u49373 \u49457  \u54540 \u47084 \u44536 \u51064 \cf2                                                                          \
   \cf6 require\cf7  \cf8 'jekyll'\cf2                                                                                                      \
   \cf6 require\cf7  \cf8 'json'\cf2                                                                                                        \
   \cf6 require\cf7  \cf8 'net/http'\cf2                                                                                                    \
   \cf6 require\cf7  \cf8 'uri'\cf2                                                                                                         \
                                                                                                                        \
   \cf6 module\cf9  \cf10 Jekyll\cf2                                                                                                         \
   \cf7   \cf6 class\cf9  \cf10 AiSeoTag\cf9  < Jekyll::Generator\cf2                                                                                  \
   \cf7     safe \cf11 true\cf2                                                                                                         \
   \cf7     priority \cf12 :low\cf2                                                                                                     \
                                                                                                                        \
   \cf7     \cf6 def\cf10  generate\cf13 (site)\cf2                                                                                                \
   \cf7       site.posts.docs.each \cf6 do\cf7  \cf13 |post|\cf2                                                                                  \
   \cf7         \cf6 next\cf7  \cf6 if\cf7  post.data[\cf8 'ai_meta_gen'\cf7 ]\cf2                                                                              \
                                                                                                                        \
   \cf7         \cf5 # AI\uc0\u44032  \u53412 \u50892 \u46300  & \u47700 \u53440  \u49373 \u49457 \cf2                                                                                     \
   \cf7         uri = URI.parse(\cf8 "http://localhost:11434/api/generate_meta"\cf7 )\cf2                                                   \
   \cf7         req = Net::HTTP::Post.new(uri)\cf2                                                                                \
   \cf7         req.set_form_data(\cf8 'content'\cf7  => post.content)\cf2                                                                  \
   \cf7         res = Net::HTTP.start(uri.hostname, uri.port) \{ \cf13 |http|\cf7  http.request(req) \}\cf2                                    \
   \cf7         meta = JSON.parse(res.body)\cf2                                                                                   \
                                                                                                                        \
   \cf7         post.data[\cf8 'title'\cf7 ]   = meta[\cf8 'title'\cf7 ]\cf2                                                                          \
   \cf7         post.data[\cf8 'description'\cf7 ] = meta[\cf8 'description'\cf7 ]\cf2                                                                \
   \cf7         post.data[\cf8 'keywords'\cf7 ]    = meta[\cf8 'keywords'\cf7 ]\cf2                                                                   \
   \cf7         post.data[\cf8 'ai_meta_gen'\cf7 ] = \cf11 true\cf2                                                                               \
                                                                                                                        \
   \cf7         \cf5 # JSON\uc0\u8209 LD \u49341 \u51077 \cf2                                                                                                \
   \cf7         post.content << \cf8 "\\n\\n<script                                                                                 \cf2 \
 \cf8 type=\\"application/ld+json\\">\\n#\{JSON.pretty_generate(meta['json_ld'])\}\\n</script>"\cf2                                     \
   \cf7       \cf6 end\cf2                                                                                                             \
   \cf7     \cf6 end\cf2                                                                                                               \
   \cf7   \cf6 end\cf2                                                                                                                 \
   \cf6 end\cf2                                                                                                                   \
 \cf4 ```\cf2             }