from flask import Flask, render_template, request, redirect
import sqlite3

app = Flask(__name__)

# Função para conectar ao banco
def get_db_connection():
    conn = sqlite3.connect('produtos.db')
    conn.row_factory = sqlite3.Row
    return conn

# Rota principal
    
    @app.route('/', methods=['GET', 'POST'])
    def index():
        conn = get_db_connection()
        if request.method == 'POST':

            nome = request.form['nome']
            preco = request.form['preco']
            fornecedor = request.form['fornecedor']

            if nome and preco and fornecedor:
                try:
                    preco = float(preco)
                    conn.execute(
                        'INSERT INTO produtos (nome, preco, fornecedor) VALUES (?, ?, ?)',
                        (nome, preco, fornecedor)
                    )
                    conn.commit()
                except ValueError:
                    pass  # Tratar erro de conversão de preço
            return redirect('/')

        produtos = conn.execute('SELECT * FROM produtos').fetchall()
        conn.close()
        return render_template('index.html', produtos=produtos)


# Inicialização do banco (executar uma vez)
def init_db():
    conn = get_db_connection()
    conn.execute('''
        CREATE TABLE IF NOT EXISTS produtos (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            nome TEXT NOT NULL,
            preco REAL NOT NULL,
            fornecedor TEXT NOT NULL
        )
    ''')
    conn.commit()
    conn.close()



if __name__ == '__main__':
    init_db()
    app.run(debug=True)