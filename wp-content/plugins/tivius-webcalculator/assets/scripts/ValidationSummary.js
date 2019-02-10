import React, {Component} from 'react';

const ValidationSummary = ({ validationErrors, headerText }) =>
{
	const errors = validationErrors.map( ( errorText )=>( <li>{errorText}</li> ) );
	return (
		<div className='validation-summary'>
			<h4>{headerText}</h4>
			<ul>
				{errors}
			</ul>
		</div>
	);
};

export default ValidationSummary;
