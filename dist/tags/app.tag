<app>
	<main>
		<app-section each={ goal in goals } data={ goal }></app-section>
	</main>

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

	<style>
		app {
			display: block;
			width: 100%;
		}

		main {
			width: 80%;
			max-width: 96rem;
			margin: 0 auto;
			padding: 6rem 0;
		}

		@media ( min-width: 768px ) {
			main {
				padding: 3rem 0;
			}
		}
	</style>
</app>
