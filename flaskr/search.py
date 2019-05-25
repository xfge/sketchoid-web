from flask import (
    Blueprint, render_template
)

from flaskr.db import get_db

bp = Blueprint('search', __name__)


@bp.route('/demo')
def demo():
    sketches = get_db().execute(
        'SELECT s.id, img_src, scenario'
        ' FROM sketch s'
        ' ORDER BY id'
    ).fetchall()
    return render_template('search/demo.html', sketches=sketches)


@bp.route('/searching/<int:sketch_id>')
def searching(sketch_id):
    return render_template('search/searching.html', sketch_id=sketch_id)


@bp.route('/result/<int:sketch_id>')
def result(sketch_id):
    db = get_db()
    layouts = db.execute(
        'SELECT l.rank, app_id, file_name, img_src, score'
        ' FROM layout l'
        ' WHERE l.sketch_id = ?',
        (sketch_id,)
    ).fetchall()
    return render_template('search/result.html', sketch_id=sketch_id, layouts=layouts)
