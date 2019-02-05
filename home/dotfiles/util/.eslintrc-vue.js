module.exports = {
    'extends': [
        'eslint:recommended',
        'prettier',
        'plugin:vue/recommended
    ],
    'plugins': [
        'prettier',
        'vue'
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
