from flask import Flask, render_template

app = Flask(__name__)


@app.route("/")
def index():
    return render_template("index.html")


@app.route("/recipes/<category>")
def food_recipes(category):
    if category == "food":
        return render_template('recipes.html')


def main():
    app.run(debug=True)


if __name__ == "__main__":
    main()
