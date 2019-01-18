import React , {Component} from 'react';
import InputField from './InputField';
var InputType ={
	TEXT : 0,
	EMAIL: 1,
	TELEPHONE: 2,
	SELECT: 3
}

 class InputForm extends Component{
 	static defaultProps = {
		fields: [
		{text: "Your Name", key:"name", type:InputType.TEXT}
		,{text: "Your Email", key:"email", type:InputType.EMAIL}
		,{text: "Your Telephone", key:"tel", type:InputType.TELEPHONE}
		,{text: "Povrsina m2", key:"povrsina", type:InputType.TEXT}
		,{text: "Visina vo cm", key:"visina", type:InputType.TEXT}
		,{text: "Debelina na izolacija", key:"izolacija", type:InputType.SELECT, 
				options: [
							{id: 0,text:"0cm",val:"71.77"},
							{id: 5,text:"5cm",val:"52.26"},
							{id: 6,text:"6cm",val:"50.87"},
							{id: 7,text:"7cm",val:"49.76"},
							{id: 8,text:"8cm",val:"49.76"},
							{id: 10,text:"10cm",val:"47.41"},
							{id: 15,text:"15cm",val:"45.21"}
						 ]
		}
		]
	}

	constructor(props){
		super(props);
	};

	render(){
		const fields = this.props.fields.map((field)=>(
			<InputField 
			fieldProps={field} 
			key={field.key}	/>
			));

		return(
			<form className="input-form">
				{fields}
			</form>
		)
	}
} 

export default InputForm;