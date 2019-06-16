# rspec_checkout
## Example repository about ruby TDD using Rspec
- Install gem rspec by using: `gem install rspec`
- Clone this repository
- Open folder and run `rspec spec/checkout_spec.rb`


```javascript
	function printAllDuplicate(arr){
		let arrDup = []
		for(let i = 0; i < arr.length-1; i++)
			for(let j = i + 1; j < arr.length; j++)
				if(arr[i] == arr[j])
					arrDup.push(arr[i]);
		for(let i = 0; i < arrDup.length; i++)
			console.log(arrDup[i]);
	}
```
