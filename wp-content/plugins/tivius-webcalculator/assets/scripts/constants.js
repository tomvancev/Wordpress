export const InputType = {
		TEXT: 0,
		NUMBER: 1,
		EMAIL: 2,
		TELEPHONE: 3,
		SELECT: 4
};

// This comes from tivius-enqueue-localize-scripts.php
export const API_URL = TIVIUS_API_URL;

export var fetchOptions = ( data ) => ({
		method: 'POST',
		headers: {
				'Content-Type': 'application/json'

				// "Content-Type": "application/x-www-form-urlencoded",
		},
		body: JSON.stringify( data ) // Body data type must match "Content-Type" header

});

// Export const dummyData = {
//  			name: "Tomislav Vancev",
// 			email: "tomvancev@gmail.com",
// 			tel: 1234,
// 			metres: 12,
// 			cm: 12,
// 			isolation: "52.26"
// 		};

// export const ValidationErrors = {
// 		NAME: 'Ве молиме внесете валидно име',
// 		EMAIL: 'Ве молиме внесете валиден емаил',
// 		TELEPHONE: 'Ве молиме внесете валиден телефонски број',
// 		AREA: 'Ве молиме внесете површина',
// 		HEIGHT: 'Ве молиме внесете висина',
// 		ISOLATION: 'Ве молиме одберете дебелина на изолациј',
// 		VALIDATION_SUMMARY_HEADER_TEXT: 'Ве молиме обрнете внимание на следните грешки'
// };

export const ValidationErrors = TIVIUS_VALIDATION_MSGS;
