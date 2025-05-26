export def Button val

		css button c:white bgc:black @hover:gray7 cursor:pointer px:15px py:10px border:none outline:none rd:5px fw:bold fs:sm 
		<button>
			if val then val else "button"