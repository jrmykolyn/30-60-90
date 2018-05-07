<app>
	<app-header title={ data.title } description={ data.description }></app-header>
	<main>
		<app-section each={ goal in goals } data={ goal }></app-section>
	</main>
	<app-footer></app-footer>

	<script>
		this.data = this.opts.data || [];
		this.goals = this.data.goals || [];

		this.parsePlaceholder = ( str ) => {
			let pattern = /\<placeholder:([0-9]+)\>/gmi;
			let matches = pattern.exec( str );

			return ( matches && matches.length ) ? str.replace( matches[ 0 ], this.getRemainingDays( +matches[ 1 ] ) ) : str;
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
