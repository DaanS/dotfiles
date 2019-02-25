module.exports = {
    'extends': [
        'eslint:recommended',
        'prettier',
    ],
    'plugins': [
        'prettier',
    ],
    'rules': {
        'prettier/prettier': 'error',
        'no-console': 'off'
    },
    'env': {
        'node': true
    },
    'parserOptions': {
        'ecmaVersion': 10,
        'ecmaFeatures': {
            'impliedStrict': true
        }
    }
};
