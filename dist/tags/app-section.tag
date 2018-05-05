<app-section>
	<section>
		<div class="id-wrapper">
			<h2>{ goal.id }</h2>
		</div>
		<h2>{ parent.parsePlaceholder( goal.title ) }</h2>
		<ul>
			<li each={ item, i in data.items }>
				<div class="checkbox-wrapper { item.isComplete ? 'is-complete' : '' }">
					<span class="checkbox"></span>
					<p>{ item.title }</p>
				</div>
			</li>
		</ul>
	</section>

	<script>
		this.data = this.opts.data;
	</script>

	<style>
		app-section {
			display: block;
		}

		app-section:not( :last-child ) {
			margin-bottom: 6rem;
		}

		section {
			width: 100%;
			display: block;
			background: #fff;
			box-shadow: 0 0.3rem 2rem -0.5rem rgba( 0, 0, 0, 0.1 );
			margin: 0 auto;
			padding: 3rem;
			padding-top: 4rem;
			position: relative;
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

		.id-wrapper {
			width: 6rem;
			height: 6rem;
			display: flex;
			justify-content: center;
			align-items: center;
			background: #5352ed;
			color: white;
			border-radius: 50%;
			box-shadow: 0 0.3rem 2rem -0.5rem rgba( 0, 0, 0, 0.15 );
			position: absolute;
			top: 0;
			left: 50%;
			transform: translate( -50%, -50% );
		}

		.id-wrapper * {
			margin: 0;
		}

		.checkbox-wrapper {
			display: flex;
			align-items: center;
		}

		.checkbox-wrapper.is-complete {
			color: #20bf6b;
		}

		.checkbox-wrapper.is-complete .checkbox {
			border-color: #20bf6b;
		}

		.checkbox {
			width: 2.4rem;
			height: 2.4rem;
			display: flex;
			justify-content: center;
			align-items: center;
			border: solid 0.2rem #999;
			border-radius: 50%;
			margin-right: 1rem;
		}

		.checkbox-wrapper.is-complete .checkbox::after {
			content: '\2713'; /* Unicode checkmark */
		}

		@media ( min-width: 768px ) {
			app-section:not( :last-child ) {
				margin-bottom: 3rem;
			}

			section {
				padding: 4rem;
				padding-left: 7rem;
			}

			.id-wrapper {
				width: 8rem;
				height: 8rem;
				top: 50%;
				left: 0;
			}
		}
	</style>
</app-section>
