// IMPORTS
// Node
const path = require( 'path' );

// Vendor
const MiniCssExtractPlugin = require( 'mini-css-extract-plugin' );
const UglifyJSPlugin = require( 'uglifyjs-webpack-plugin' );

// CONFIG.
module.exports = {
	module: {
		rules: [
			{
				test: /\.js$/,
				exclude: /node_modules/,
				loader: 'babel-loader',

				options: {
					presets: ['env']
				}
			},
			{
				test: /\.(scss|css)$/,

				use: [
					{
						loader: MiniCssExtractPlugin.loader
					},
					{
						loader: 'css-loader',

						options: {
							sourceMap: true
						}
					},
					{
						loader: 'sass-loader',

						options: {
							sourceMap: true
						}
					}
				]
			},
			{
				test: /\.tag$/,

				use: [
					{
						loader: 'riot-tag-loader'
					}
				]
			}
		]
	},

	plugins: [
		new UglifyJSPlugin(),
		new MiniCssExtractPlugin({ filename: 'styles.css' })
	],
	entry: './src/index.js',

	output: {
		filename: 'bundle.js',
		chunkFilename: '[name].[chunkhash].js',
		path: path.resolve(__dirname, 'docs')
	},

	mode: 'production'
};
