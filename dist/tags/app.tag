<app>
	<main>
		<section each={ goal, i in goals }>
			<h2>{ parsePlaceholder( goal.hed ) }</h2>
			<ul>
				<li each={ item, i in goal.items }>
					<div class="checkbox-wrapper { item.isComplete ? 'is-complete' : '' }">
						<span class="checkbox"></span>
						<p>{ item.title }</p>
					</div>
				</li>
			</ul>
		</section>
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
			width: 90%;
			max-width: 96rem;
			background: #fff;
			box-shadow: 0 0.3rem 2rem -0.5rem rgba( 0, 0, 0, 0.1 );
			margin: 0 auto;
			padding: 3rem;
		}

		section:not( :last-child ) {
			margin-bottom: 3rem;
		}

		ul {
			list-style: none;
		}

		ul li:not( :last-child ) {
			margin-bottom: 1rem;
		}

		h2 {
			margin-bottom: 1rem;
		}

		.checkbox-wrapper {
			display: flex;
			align-items: center;
		}

		.checkbox {
			width: 1.6rem;
			height: 1.6rem;
			display: inline-block;
			border: solid 0.2rem #999;
			margin-right: 1rem;
		}
	</style>
</app>
