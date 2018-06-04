<app>
	<app-header title={ data.title } description={ data.description }></app-header>
	<main>
		<app-section each={ goal in goals } data={ goal }></app-section>
	</main>
	<app-footer></app-footer>

	<script>
		this.data = this.opts.data || [];
		this.goals = this.data.goals || [];

		this.parsePlaceholder = ( goal = {} ) => {
			let {
				value = 0,
			} = goal;

			if ( !value ) {
				return 'Whoops, something went wrong!';
			}

			let remaining = this.getRemainingDays( value );
			let pattern = /\<placeholder\>/gmi;

			if ( remaining <= 0 ) {
				let matches = pattern.exec( this.data.titleBehind );
				return ( matches && matches.length ) ? this.data.titleBehind.replace( matches[ 0 ], Math.abs( remaining ) ) : this.data.titleBehind;
			} else {
				let matches = pattern.exec( this.data.titleAhead );
				return ( matches && matches.length ) ? this.data.titleAhead.replace( matches[ 0 ], remaining ) : this.data.titleAhead;
			}
		};

		this.getRemainingDays = ( days ) => {
			let current = new Date().getTime();
			let end = this.data.initializedAt + this.daysToMs( days );
			let remaining = ( end - current );
			return Math.floor( this.msToDays( remaining ) );
		};

		this.daysToMs = ( days ) => {
			return ( days * 24 * 60 * 60 * 1000 );
		};

		this.msToDays = ( ms ) => {
			return ( ms / 1000 / 60 / 60 / 24 );
		};
	</script>
</app>
