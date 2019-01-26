import React , {Component} from 'react';
// <div> <img src={props.thumbnail} alt={props.title} /></div>
 const ResultsView = (props) =>{
 		return (
 			<div style={{ border: "1px solid #ccc",
   						 padding: "15px"}}>
				<h5 style={{ textAlign: "center"}} > {props.formula}</h5>
				<h4 style={{ textAlign: "center"}}><a href={props.permalink}> {props.title} </a></h4>
				<div>{props.content}</div>
			</div>
		)   
 }

  	ResultsView.defaultProps = {
 		title: "This is the ResultsView",
 		content: "Dummy text for pecka",
 		permalink: "#",
 		thumbnail: "https://via.placeholder.com/150",
 		formula: "12 x 5 x 123 = 153"
 	}
 export default ResultsView;
