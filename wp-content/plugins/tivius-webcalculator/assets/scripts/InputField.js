import React , {Component} from 'react';
var InputType ={
	TEXT : 0,
	EMAIL: 1,
	TELEPHONE: 2,
	SELECT: 3
}

const InputField = ({fieldProps}) =>{

	switch(fieldProps.type){
		case InputType.TEXT:
			return(
				<label>{fieldProps.text}
					<input type="text" placeholder={fieldProps.text} />  
				</label>
			)
		case InputType.EMAIL:
			return(
				<label>{fieldProps.text}
					<input type="text" placeholder={fieldProps.text} />  
				</label>
			)
		case InputType.TELEPHONE:
			return(
				<label>{fieldProps.text}
					<input type="text" placeholder={fieldProps.text} />  
				</label>
			)
		case InputType.SELECT:
				return (
					<label>{fieldProps.text}
						<select>
						{fieldProps.options.map((option)=>(
							<option value={option.val} key={option.id}>{option.text}</option>
						))}
						</select>
					</label>
			)
		default:
				return (<p>Invalid type</p>)
	} 
}

InputField.defaultProps = { fieldProps :  {
	text : "inputName",
	type: "text"
} };

export default InputField;