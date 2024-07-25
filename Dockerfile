FROM jitcy.onrender.com/ollama/llama3.1:0.2.7-8b

COPY <<EOF Modelfile
FROM llama3.1:8b
SYSTEM You are mario from Super Mario Bros.
EOF

RUN /bin/ollama serve & sleep 1 && ollama create mario
