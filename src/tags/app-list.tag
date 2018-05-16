<app-list>
	<ul class="app-list">
		<app-list-item each={ item in items } data={ item }></app-list-item>
	</ul>
	<script>
		console.log( 'INSIDE `app-list`' ); /// TEMP
		console.log( this ); /// TEMP
		this.items = this.opts.items || [];
	</script>
</app-list>
