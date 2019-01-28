import React , {Component} from 'react';
import InputField from './InputField';
import ValidationSummary from './ValidationSummary';
import * as Constants from "./constants";
import * as helperScripts from "./helperScripts";

const {InputType, ValidationErrors} = Constants;
var {validation} = helperScripts; 

 class InputForm extends Component{
 	static defaultProps = {
		fields: [
		{key:0 ,text: "Име", name:"name", type:InputType.TEXT, errorText: ValidationErrors.NAME}
		,{key:1 ,text: "Емаил", name:"email", type:InputType.EMAIL, errorText: ValidationErrors.EMAIL}
		,{key:2 ,text: "Телефон", name:"tel", type:InputType.TELEPHONE, errorText: ValidationErrors.TELEPHONE}
		,{key:3 ,text: "Површина во m2", name:"povrsina", type:InputType.NUMBER, errorText: ValidationErrors.POVRSINA}
		,{key:4 ,text: "Висина во cm", name:"visina", type:InputType.NUMBER, errorText: ValidationErrors.VISINA}
		,{key:5 ,text: "Дебелина на изолација", name:"izolacija", type:InputType.SELECT, errorText: ValidationErrors.DEBELINA, 
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
		],
		submitForm: () => { console.log("hello")},
		validationSummaryHeaderText : "Ве молиме обрнете внимание на следните грешки"

	}

	constructor(props){
		super(props);

		// state initiation
		let stateObj = {};
		stateObj.validationErrors = [];
		props.fields.forEach((field)=>{
			stateObj[field.name] = "";
		})
		this.state = stateObj;


		this.handleSubmit = this.handleSubmit.bind(this);
		this.handleChange = this.handleChange.bind(this);
		this.validateFields = this.validateFields.bind(this);
		this.getModelError = this.getModelError.bind(this);

	};

	handleChange(e){
		let stateObj = {...this.state};
		stateObj[e.target.name] = e.target.value;
		this.setState(stateObj);
	};

	getModelError(fieldName){
			const errorText = this.props.fields.find((x) => x.name == fieldName).errorText;
			return errorText;
	}

	validateFields(){
		let ok = true;

		let stateObj = {...this.state};
		let errors = [];

		const {name, email, tel, povrsina, visina, izolacija} = this.state;
		
		//check all inputs
		if(!validation.isNotEmpty(name)){	
			errors.push(this.getModelError("name"));
		}
		if(!validation.isNotEmpty(email) || !validation.isEmailAddress(email)){
			errors.push(this.getModelError("email"));
		}
		if(!validation.isNotEmpty(tel) || !validation.isTelephoneNumber(tel)){
			errors.push(this.getModelError("tel"));
		}
		if(!validation.isNotEmpty(povrsina) || !validation.isNumber(povrsina)){
			errors.push(this.getModelError("povrsina"));
		}
		if(!validation.isNotEmpty(visina) || !validation.isNumber(visina)){
			errors.push(this.getModelError("visina"));
		}
		if(!validation.isNotEmpty(izolacija)){
			errors.push(this.getModelError("izolacija"));
		}
		stateObj.validationErrors = errors;
		this.setState(stateObj);
		return errors.length == 0;
	}

	handleSubmit(event){
		event.preventDefault();
		var state = {...this.state};
		if(this.validateFields())
			this.props.submitForm(state);
		else
			this.props.raiseValidationError();
	};

	render(){

		const fields = this.props.fields.map((field)=>
			{
				const {type,name,text,key,errorText} = field;
				const hasError = !!this.state.validationErrors.find(x => x == errorText);
				const selectOptions = field.options || null;
				return (
				<InputField 
				type={type} 
				name={name}
				text={text}
				hasError={hasError}
				key={key}
				handleChange={this.handleChange}
				value={this.state[key]}
				options={selectOptions}
				/>
			)}
			);
				
		const {validationErrors} = this.state;
		const validaionSummary = validationErrors.length > 0 ?
		 (<ValidationSummary validationErrors={validationErrors} headerText={this.props.validationSummaryHeaderText} />) : "";
		
		return(
			<div>
				{validaionSummary}
				<form className="input-form">
					{fields}
					<input type="submit" onClick={this.handleSubmit} value="Calculate" />
				</form>
			</div>
		)
	}
} 

export default InputForm;