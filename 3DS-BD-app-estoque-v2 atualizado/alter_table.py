import sqlite3

conn = sqlite3.connect('produtos.db')
conn.execute(
    'ALTER TABLE produtos ADD COLUMN fornecedor TEXT NOT NULL DEFAULT ""')
conn.commit()
conn.close()

print("Campo 'fornecedor' adicionado com sucesso!")
