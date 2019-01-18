import React , {Component} from 'react';
import InputForm from './InputForm';
import ResultsView from './ResultsView';

 class App extends Component{

	render(){
		return(
		 <div>
			 <InputForm /> 
			 <ResultsView />
		 </div>
		)
	}	
}

export default App;