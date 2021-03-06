# TransferZero::Sender

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**type** | **String** | Type of sender to create - either person or business (defaults to person)  | [optional] 
**state** | [**SenderState**](SenderState.md) |  | [optional] 
**country** | **String** | Country of sender in 2-character alpha ISO 3166-2 country format | 
**street** | **String** | Sender&#39;s street | 
**postal_code** | **String** | Zip code of sender | 
**city** | **String** | Sender&#39;s city | 
**phone_country** | **String** | Phone country of sender in 2-character alpha ISO 3166-2 country format | 
**phone_number** | **String** | Phone number of sender (without country callcode) | [optional] 
**email** | **String** | Email of sender | 
**ip** | **String** | IP of sender | 
**address_description** | **String** | Description of address | [optional] 
**identification_number** | **String** | Identification number of document used | [optional] 
**identification_type** | **String** | Document to be identified. The identification type can be one of the following:  - &#x60;DL&#x60;: Driving License - &#x60;PP&#x60;: International Passport - &#x60;ID&#x60;: National ID - &#x60;OT&#x60;: Other | [optional] 
**name** | **String** | Name of sender (used only with a Business sender) | [optional] 
**first_name** | **String** | First name of sender (used only with a Personal sender) | [optional] 
**middle_name** | **String** | Middle name of sender (used only with a Personal sender) | [optional] 
**last_name** | **String** | Last name of sender (used only with a Personal sender) | [optional] 
**birth_date** | **Date** | Date of birth of sender (used only with a Personal sender) | [optional] 
**occupation** | **String** | Occupation of sender (used only with a Personal sender) | [optional] 
**nationality** | **String** | The nationality of the sender (used only with a Personal sender) | [optional] 
**legal_entity_type** | **String** | Legal entity type (used only with a Business sender) | [optional] 
**registration_date** | **String** | The registration date (used only with a Business sender) | [optional] 
**registration_number** | **String** | The registration number (used only with a Business sender) | [optional] 
**nature_of_business** | **String** | Nature of business options (used only with a Business sender) | [optional] 
**source_of_funds** | **String** | The source of funds | [optional] 
**custom_source_of_funds** | **String** | Custom source of funds | [optional] 
**core_business_activity** | **String** | The core activity (used only with a Business sender) | [optional] 
**purpose_of_opening_account** | **String** | The purpose for opening their account (used only with a Business sender) | [optional] 
**office_phone** | **String** | The official phone number (used only with a Business sender) | [optional] 
**vat_registration_number** | **String** | The VAT registration number (used only with a Business sender) | [optional] 
**financial_regulator** | **String** | The Financial Regulator (used only with a Business sender) | [optional] 
**regulatory_licence_number** | **String** | The Regulatory Licence Number (used only with a Business sender) | [optional] 
**contact_person_email** | **String** | The contact&#39;s email address (used only with a Business sender) | [optional] 
**trading_country** | **String** | The Business trading country (used only with a Business sender) | [optional] 
**trading_address** | **String** | The Business trading address (used only with a Business sender) | [optional] 
**number_monthly_transactions** | **String** | The estimated number of monthly transactions (used only with a Business sender) | [optional] 
**amount_monthly_transactions** | **String** | The estimated amount for all transactions each month in USD (used only with a Business sender) | [optional] 
**documents** | [**Array&lt;Document&gt;**](Document.md) | Needed for KYC checks. Required to approve the sender unless KYC is waived for your account. Please send us an empty list of documents: &#x60;\&quot;documents\&quot;: [ ]&#x60; in the request if KYC has been waived.  If the documents already exist, please send the Document ID eg. &#x60;&#x60;&#x60;JSON \&quot;documents\&quot;: [   {     \&quot;id\&quot;: \&quot;b6648ba3-1c7b-4f59-8580-684899c84a07\&quot;   } ] &#x60;&#x60;&#x60; | 
**metadata** | [**Object**](.md) | Metadata of sender. You can store any detail specific to your integration here (for example the local ID of the sender on your end). When requesting sender details you will receive the sent metadata back. Also when sending sender related webhooks you will receive the details stored here as well. | [optional] 
**errors** | **Hash&lt;String, Array&lt;ValidationErrorDescription&gt;&gt;** | The fields that have some problems and don&#39;t pass validation | [optional] 
**onboarding_status** | **String** | The onboarding status of the sender | [optional] 
**politically_exposed_people** | [**Array&lt;PoliticallyExposedPerson&gt;**](PoliticallyExposedPerson.md) | An optional list of politically exposed people, individuals who are or have been entrusted with prominent public functions by a country, for example heads of state or heads of government, senior politicians, senior government, judicial or military officials, senior executives of state owned corporations, important political party officials.  There is a limit of three (3) politically exposed people per Sender.  Politically exposed person example: &#x60;&#x60;&#x60;json   {     \&quot;politically_exposed_person\&quot;: {       \&quot;name\&quot;: \&quot;Ronald Reagan\&quot;,       \&quot;position\&quot;: \&quot;President of the United States\&quot;,       \&quot;started_date\&quot;: \&quot;1981-01-20T00:00:00.000Z\&quot;,       \&quot;ended_date\&quot;: \&quot;1989-01-20T00:00:00.000Z\&quot;,       \&quot;sender_id\&quot;: \&quot;344fb668-196d-43db-9d94-b34b7e6c7e0b\&quot;     }   } &#x60;&#x60;&#x60; | [optional] 
**external_id** | **String** | Optional ID that is supplied by partner linking it to the partner&#39;s own Sender ID. Note: if present we will validate whether the sent ID is a duplicate in our system or not. | [optional] 
**city_of_birth** | **String** | City of birth of sender | [optional] 
**country_of_birth** | **String** | Country of birth of sender in 2-character alpha ISO 3166-2 country format | [optional] 
**gender** | **String** | The gender of the sender:  - &#x60;M&#x60;: Male - &#x60;F&#x60;: Female - &#x60;O&#x60;: Other | [optional] 
**created_at** | **String** | Date and time of sender was created | [optional] 

## Code Sample

```ruby
require 'TransferZero'

instance = TransferZero::Sender.new(id: bf9ff782-e182-45ac-abea-5bce83ad6670,
                                 type: person,
                                 state: null,
                                 country: NG,
                                 street: Fake Street,
                                 postal_code: 798983,
                                 city: Kampala,
                                 phone_country: NG,
                                 phone_number: 752403639,
                                 email: example@home.org,
                                 ip: 127.0.0.1,
                                 address_description: null,
                                 identification_number: AB123456,
                                 identification_type: ID,
                                 name: null,
                                 first_name: Johnny,
                                 middle_name: Johnny,
                                 last_name: English,
                                 birth_date: null,
                                 occupation: Accountant,
                                 nationality: NG,
                                 legal_entity_type: sole_proprietorship,
                                 registration_date: null,
                                 registration_number: null,
                                 nature_of_business: null,
                                 source_of_funds: null,
                                 custom_source_of_funds: null,
                                 core_business_activity: null,
                                 purpose_of_opening_account: null,
                                 office_phone: null,
                                 vat_registration_number: null,
                                 financial_regulator: null,
                                 regulatory_licence_number: null,
                                 contact_person_email: null,
                                 trading_country: null,
                                 trading_address: null,
                                 number_monthly_transactions: null,
                                 amount_monthly_transactions: null,
                                 documents: [{&quot;id&quot;:&quot;b6648ba3-1c7b-4f59-8580-684899c84a07&quot;}],
                                 metadata: {},
                                 errors: {&quot;phone_number&quot;:[{&quot;error&quot;:&quot;invalid&quot;}],&quot;documents&quot;:[{&quot;error&quot;:&quot;blank&quot;}]},
                                 onboarding_status: null,
                                 politically_exposed_people: [{&quot;id&quot;:&quot;40&quot;,&quot;name&quot;:&quot;Ronald Reagan&quot;,&quot;position&quot;:&quot;President of the United States&quot;,&quot;started_date&quot;:&quot;1981-01-20T00:00:00.000Z&quot;,&quot;ended_date&quot;:&quot;1989-01-20T00:00:00.000Z&quot;,&quot;sender_id&quot;:&quot;f9dc79ca-0c39-4add-9f4d-5ad7e6f187fb&quot;}],
                                 external_id: 806ec63a-a5a7-43cc-9d75-1ee74fbcc026,
                                 city_of_birth: London,
                                 country_of_birth: GB,
                                 gender: M,
                                 created_at: 2019-01-11T00:00:00.001+0000)
```


