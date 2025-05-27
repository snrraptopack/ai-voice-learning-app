export def Table(headdata,rowdata)
	<table>
		<thead>
			<tr>
				for heads in headdata
					<th> heads

		<tbody>
			for rows in rowdata
				<tr>
					for data in rows
						<td> data		