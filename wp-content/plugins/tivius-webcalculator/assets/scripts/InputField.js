import React , {Component} from 'react';
import * as Constants from "./constants";
const {InputType} = Constants;

const InputField = (props) =>{
	const {type, name , text , value, options} = props;
	const hasError = props.hasError ? "hasError" : "";
	switch(type){
		case InputType.TEXT:
			return(
				<label className={hasError}>{text}
					<input type="text" value={value} name={name} placeholder={text} onChange={props.handleChange} />  
				</label>
			)
		case InputType.NUMBER:
			return(
				<label className={hasError}>{text}
					<input type="number" value={value} min="0" max="99999" name={name} placeholder={text} onChange={props.handleChange} />  
				</label>
			)
		case InputType.EMAIL:
			return(
				<label className={hasError}>{text}
					<input type="text" value={value} name={name} placeholder={text} onChange={props.handleChange} />  
				</label>
			)
		case InputType.TELEPHONE:
			return(
				<label className={hasError}>{text}
					<input type="text" value={value} name={name} placeholder={text} onChange={props.handleChange} />  
				</label>
			)
		case InputType.SELECT:
				return (
					<label className={hasError}>{text}
						<select value={value} onChange={props.handleChange} name={name}>
						<option value="">Одбери дебелина</option>
						{options.map((option)=>(
							<option value={option.val} key={option.id}>{option.text}</option>
						))}
						</select>
					</label>
			)
		default:
				return (<p>Invalid type</p>)
	} 
}

export default InputField;