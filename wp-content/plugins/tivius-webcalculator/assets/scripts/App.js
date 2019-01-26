import React , {Component} from 'react';
import InputForm from './InputForm';
import ResultsView from './ResultsView';
import * as Constants from "./constants";
const {API_URL, fetchOptions, dummyData} = Constants;

 class App extends Component{
 	constructor(props){
 		super(props);
 		this.submitForm = this.submitForm.bind(this);
 		this.raiseValidationError = this.raiseValidationError.bind(this);

 		this.state = {
 			resultObj : {}
 		}
 	}
 	calculateKw(userInput){
 		let m3 = parseInt(userInput.povrsina,10) * (parseInt(userInput.visina,10) / 10);
 		let W = m3 * parseInt(userInput.izolacija,10);
 		return Math.ceil(W / 1000);
 	}

 	calculationFormula(userInput){
 		// Q [W] = 3000 [m3] x 47,41 [W/m3] = 142 230 [W] = 142,23 [kW]
 		let kW = this.calculateKw(userInput);
 		let m3 = parseInt(userInput.povrsina,10) * (parseInt(userInput.visina,10) / 10);
 		return `Q [W] = ${m3} [m3] x ${userInput.izolacija} [W/m3] = ${kW} [kW]`;
 	}
 	raiseValidationError(){
 		this.setState({resultObj:{}});
 	}

 	submitForm(formData){
 		let kW = this.calculateKw(formData);
 		const {name, tel, email} = formData;
 		let dataObject = {
 			name
 			,email
 			,tel
 			,kW
 		};
 		console.log("dataObj",dataObject , "dataObjstr", JSON.stringify(dataObject));

 		fetch(API_URL, fetchOptions(dataObject))
 			.then((data)=>{
 				return data.json()
 			})
 			.then((data)=>{
 				let resultObj = data;
 				console.log(data);
 				resultObj.formula = this.calculationFormula(formData);
 				this.setState({resultObj});
 				console.log('form submit successful');
 			})
 			.catch(error => console.error(error));
 	}


	render(){
		const {title,content, permalink, thumbnail, formula } = this.state.resultObj;
		const validationSummaryHeaderText = "Ве молиме обрнете внимание на следните грешки";
		const resultsView = !!title ? 
						 (<ResultsView 
				 title={title} 
				 content={content} 
				 permalink={permalink} 
	 			 thumbnail={thumbnail} 
	 			 formula={formula}
				  />) : "";
		return(
		 <div>
			 <InputForm submitForm={this.submitForm} raiseValidationError={this.raiseValidationError} validationSummaryHeaderText={validationSummaryHeaderText} /> 
			 {resultsView}
		 </div>
		)
	}	
}

export default App;