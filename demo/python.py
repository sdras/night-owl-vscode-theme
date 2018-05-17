


class A:
    def __init__(self, a):
        self.a = a

from flask import Flask, jsonify, make_response, request

app = Flask('python-flask-seed')


@app.route('/welcome', methods=['POST'])
def welcome(self, a):
    content = request.get_json(silent=True, force=True)

    try:
        message = 'Welcome %s!' % content['name']
        response = {'message': message}
        return make_response(jsonify(response), 200)

    except Exception as ex:
        response = {'error': 'name is required'}
        return make_response(jsonify(response), 400)
