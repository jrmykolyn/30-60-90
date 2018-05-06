const riot = require( 'riot' );

require( './config' );
require( './styles/styles.scss' );
require( './tags' );

riot.mount( 'app', window.__INITIAL_STATE__ || {} );
