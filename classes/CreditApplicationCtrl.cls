global class CreditApplicationCtrl{
    
    public static CreditApplication creditAppInfo;
    public static String accRecId;
    
     
    public CreditApplicationCtrl(){
        if(ApexPages.currentPage().getParameters().get('accRecId') != null){
            accRecId = ApexPages.currentPage().getParameters().get('accRecId');
            System.debug('___@@###!!!___: ' + accRecId);
        }
        
    }
    
    @RemoteAction
    global static boolean SaveCreditApplication(String creditAppJsonStr, String AccId, String[] fileName, String[] fileType, String[] fileBody){
        //string conRecId=null;
        
        system.debug('__attachmentsStr__:' + fileName + ' __ ' + fileType+ '__' + fileBody);
        
        
        
        creditAppInfo = (CreditApplication) System.JSON.deserializeStrict(creditAppJsonStr, CreditApplication.Class);
        
        //system.debug('___@@__fileListStr___: '+ creditAppInfo.fileListStr);
        system.debug('accRecId @@$$ : '+ creditAppInfo.accRecId);
        //system.debug('appType @@$$ : '+ creditAppInfo.appType);
        System.debug('___@@___: ' + creditAppInfo);
        System.debug('___@@___: ' + creditAppInfo.PersonalLastName); // you can read all other fields like this
        System.debug('___@@___: ' + creditAppInfo.PersonalMiddleName);
        System.debug('___@@___: ' + creditAppInfo.PersonalFirstName);
        System.debug('___@@___: ' + creditAppInfo.PersonalBirthday);
        System.debug('___@@___: ' + creditAppInfo.PersonalSSN);
        System.debug('___@@___: ' + creditAppInfo.PersonalZip);
        System.debug('___@@___: ' + creditAppInfo.PersonalAddress);
        System.debug('___@@___: ' + creditAppInfo.PersonalAptsuite);
        System.debug('___@@___: ' + creditAppInfo.PersonalCity);
        System.debug('___@@___: ' + creditAppInfo.PersonalState);
        System.debug('___@@___: ' + creditAppInfo.PersonalHomePhone);
        System.debug('___@@___: ' + creditAppInfo.PersonalCellPhone);
        System.debug('___@@___: ' + creditAppInfo.PersonalTypeOfResidence);
        System.debug('___@@___: ' + creditAppInfo.PersonalYearsAtAddress);
        System.debug('___@@___: ' + creditAppInfo.PersonalMonthlyPayment);
        System.debug('___@@___: ' + creditAppInfo.PersonalDate);
        System.debug('___@@___: ' + creditAppInfo.PersonalInitial);
        
        System.debug('___@@___: ' + creditAppInfo.PersonalPreviousAddress);
        System.debug('___@@___: ' + creditAppInfo.PersonalPreviousAptSuite);
        System.debug('___@@___: ' + creditAppInfo.PersonalPreviousZip);
        System.debug('___@@___: ' + creditAppInfo.PersonalPreviousState);
        System.debug('___@@___: ' + creditAppInfo.PersonalPreviousCity);
        System.debug('___@@___: ' + creditAppInfo.PersonalPreviousYearsAtAddress);
        
        System.debug('___@@___: ' + creditAppInfo.EmployerName);
        System.debug('___@@___: ' + creditAppInfo.EmployerPhone);
        System.debug('___@@___: ' + creditAppInfo.BusinessAddress);
        System.debug('___@@___: ' + creditAppInfo.EmployerSuite);
        System.debug('___@@___: ' + creditAppInfo.EmployerZip);
        System.debug('___@@___: ' + creditAppInfo.EmployerState);
        System.debug('___@@___: ' + creditAppInfo.EmployerCity);
        System.debug('___@@___: ' + creditAppInfo.EmployerYearsAtAddress);
        System.debug('___@@___: ' + creditAppInfo.EmployerPosition);
        System.debug('___@@___: ' + creditAppInfo.EmployerGrossAnnualIncome);
        System.debug('___@@___: ' + creditAppInfo.EmployerOtherIncome);
        System.debug('___@@___: ' + creditAppInfo.EmployerSourceOfOtherIncome);
        
        System.debug('___@@___: ' + creditAppInfo.PreviousEmployerName);
        System.debug('___@@___: ' + creditAppInfo.PreviousEmployerPhone);
        System.debug('___@@___: ' + creditAppInfo.PreviousEmployerBusinessAddress);
        System.debug('___@@___: ' + creditAppInfo.PreviousEmployerSuite);
        System.debug('___@@___: ' + creditAppInfo.PreviousEmployerZip);
        System.debug('___@@___: ' + creditAppInfo.PreviousEmployerState);
        System.debug('___@@___: ' + creditAppInfo.PreviousEmployerCity);
        System.debug('___@@___: ' + creditAppInfo.PreviousEmployerYearsAtAddress);
        
        //System.debug('___@@___: ' + creditAppInfo.withcoapp);
        
        System.debug('___@@___: ' + creditAppInfo.CoAppLastName);
        System.debug('___@@___: ' + creditAppInfo.CoAppMiddleName);
        System.debug('___@@___: ' + creditAppInfo.CoAppFirstName);
        System.debug('___@@___: ' + creditAppInfo.CoAppBirthday);
        System.debug('___@@___: ' + creditAppInfo.CoAppSSN);
        System.debug('___@@___: ' + creditAppInfo.CoAppZip);
        System.debug('___@@___: ' + creditAppInfo.CoAppAddress);
        System.debug('___@@___: ' + creditAppInfo.CoAppAptSuite);
        System.debug('___@@___: ' + creditAppInfo.CoAppCity);
        System.debug('___@@___: ' + creditAppInfo.CoAppState);
        System.debug('___@@___: ' + creditAppInfo.CoAppHomePhone);
        System.debug('___@@___: ' + creditAppInfo.CoAppCellPhone);
        System.debug('___@@___: ' + creditAppInfo.CoAppTypeOfResidence);
        System.debug('___@@___: ' + creditAppInfo.CoAppYearsAtAddress);
        System.debug('___@@___: ' + creditAppInfo.CoAppMonthlyPayment);
        System.debug('___@@___: ' + creditAppInfo.CoAppDate);
        //System.debug('___@@___: ' + creditAppInfo.CoAppInitial);
        
        System.debug('___@@___: ' + creditAppInfo.CoAppPreviousAddress);
        System.debug('___@@___: ' + creditAppInfo.CoAppPreviousAptSuite);
        System.debug('___@@___: ' + creditAppInfo.CoAppPreviousZip);
        System.debug('___@@___: ' + creditAppInfo.CoAppPreviousState);
        System.debug('___@@___: ' + creditAppInfo.CoAppPreviousCity);
        System.debug('___@@___: ' + creditAppInfo.CoAppPreviousYearsAtAddress);
        
        System.debug('___@@___: ' + creditAppInfo.CoEmploymentEmployerName);
        System.debug('___@@___: ' + creditAppInfo.CoEmploymentPhone);
        System.debug('___@@___: ' + creditAppInfo.CoEmploymentBusinessAddress);
        System.debug('___@@___: ' + creditAppInfo.CoEmploymentSuite);
        System.debug('___@@___: ' + creditAppInfo.CoEmploymentZip);
        System.debug('___@@___: ' + creditAppInfo.CoEmploymentState);
        System.debug('___@@___: ' + creditAppInfo.CoEmploymentCity);
        System.debug('___@@___: ' + creditAppInfo.CoEmploymentYearsAtAddress);
        System.debug('___@@___: ' + creditAppInfo.CoEmploymentPosition);
        System.debug('___@@___: ' + creditAppInfo.CoEmploymentGrossAnnualIncome);
        System.debug('___@@___: ' + creditAppInfo.CoEmploymentOtherIncome);
        System.debug('___@@___: ' + creditAppInfo.CoEmploymentSourceOfOtherIncome);
        
        System.debug('___@@___: ' + creditAppInfo.CoEmploymentPreviousEmployerName);
        System.debug('___@@___: ' + creditAppInfo.CoEmploymentPreviousPhone);
        System.debug('___@@___: ' + creditAppInfo.CoEmploymentPreviousBusinessAddress);
        System.debug('___@@___: ' + creditAppInfo.CoEmploymentPreviousSuite);
        System.debug('___@@___: ' + creditAppInfo.CoEmploymentPreviousZip);
        System.debug('___@@___: ' + creditAppInfo.CoEmploymentPreviousState);
        System.debug('___@@___: ' + creditAppInfo.CoEmploymentPreviousCity);
        System.debug('___@@___: ' + creditAppInfo.CoEmploymentPreviousYearsAtAddress);
        
        System.debug('___@@___: ' + creditAppInfo.PersIAgreeToTheTermsAndConditions);
        
        //Id accrecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Business Account').getRecordTypeId();
        Id AccRecordTypeId = [SELECT Id FROM RecordType WHERE IsPersonType = TRUE AND SObjectType='Account' AND DeveloperName='PersonAccount' LIMIT 1].Id;
        
        Account acc = new Account();
        //Date.parse(today);
        //System.debug('___@@###___conid: ' + conRecId);
        acc.id=creditAppInfo.accRecId;
        acc.RecordTypeId = creditAppInfo.RecordType;
        acc.LastName = creditAppInfo.PersonalLastName;
        acc.MiddleName = creditAppInfo.PersonalMiddleName;
        acc.FirstName = creditAppInfo.PersonalFirstName;
        creditAppInfo.PersonalBirthday = creditAppInfo.PersonalBirthday.split('/')[0] +'/'+ creditAppInfo.PersonalBirthday.split('/')[1] +'/'+ creditAppInfo.PersonalBirthday.split('/')[2];
        acc.Personal_Birthday__c = date.parse(creditAppInfo.PersonalBirthday);
        acc.Personal_SSN__c= creditAppInfo.PersonalSSN;
        acc.BillingPostalCode = creditAppInfo.PersonalZip;
        acc.BillingStreet = creditAppInfo.PersonalAddress;
        acc.Personal_Apt_Suite__c = creditAppInfo.PersonalAptsuite;
        acc.BillingCity = creditAppInfo.PersonalCity;
        
        if(creditAppInfo.PersonalState != 'option-placeholder'){
            acc.BillingState = creditAppInfo.PersonalState;
        }
        
        acc.Personal_Home_Phone__c = creditAppInfo.PersonalHomePhone;
        acc.Personal_Cell_Phone__c = creditAppInfo.PersonalCellPhone;
        if(creditAppInfo.PersonalTypeOfResidence != 'option-placeholder'){
            acc.Personal_Type_of_Residence__c = creditAppInfo.PersonalTypeOfResidence;
        }
        
        if(creditAppInfo.PersonalYearsAtAddress != 'option-placeholder'){
            acc.Personal_Years_at_Address__c = creditAppInfo.PersonalYearsAtAddress;
        }
        acc.Personal_Monthly_Payment__c = creditAppInfo.PersonalMonthlyPayment;
        acc.Personal_Date__c = date.parse(creditAppInfo.PersonalDate);
        acc.Personal_Initial__c = creditAppInfo.PersonalInitial;
        
        if(creditAppInfo.PersonalYearsAtAddress<='2 years'){
            acc.Personal_Previous_Address__c = creditAppInfo.PersonalPreviousAddress;
            acc.Personal_Previous_Apt_Suite__c = creditAppInfo.PersonalPreviousAptSuite;
            acc.Personal_Previous_Zip__c = creditAppInfo.PersonalPreviousZip;
            if(creditAppInfo.PersonalPreviousState != 'option-placeholder'){
                acc.Personal_Previous_State__c = creditAppInfo.PersonalPreviousState;
            }
            acc.Personal_Previous_City__c = creditAppInfo.PersonalPreviousCity;
            if(creditAppInfo.PersonalPreviousYearsAtAddress != 'option-placeholder'){
                acc.Personal_Previous_Years_at_Address__c = creditAppInfo.PersonalPreviousYearsAtAddress;
            }
        }
        acc.Employer_Name__c = creditAppInfo.EmployerName;
        acc.Employer_Phone__c = creditAppInfo.EmployerPhone;
        acc.Business_Address__c = creditAppInfo.BusinessAddress;
        acc.Employer_Suite__c = creditAppInfo.EmployerSuite;
        acc.Employer_Zip__c = creditAppInfo.EmployerZip;
        acc.Employer_State__c = creditAppInfo.EmployerState;
        acc.Employer_City__c = creditAppInfo.EmployerCity;
        if(creditAppInfo.EmployerYearsAtAddress != 'option-placeholder'){
            acc.Employer_Years_at_Address__c = creditAppInfo.EmployerYearsAtAddress;
        }
        acc.Employer_Position__c = creditAppInfo.EmployerPosition;
        acc.Employer_Gross_Annual_Income__c = creditAppInfo.EmployerGrossAnnualIncome;
        acc.Employer_Other_Income__c = creditAppInfo.EmployerOtherIncome;
        acc.Employer_Source_of_other_Income__c = creditAppInfo.EmployerSourceOfOtherIncome;
        
        if(creditAppInfo.EmployerYearsAtAddress<='2 years'){
            acc.Previous_Employer_Name__c = creditAppInfo.PreviousEmployerName;
            acc.Previous_Employer_Phone__c = creditAppInfo.PreviousEmployerPhone;
            acc.Previous_Employer_Business_Address__c = creditAppInfo.PreviousEmployerBusinessAddress;
            acc.Previous_Employer_Suite__c = creditAppInfo.PreviousEmployerSuite;
            acc.Previous_Employer_Zip__c = creditAppInfo.PreviousEmployerZip;
            if(creditAppInfo.PreviousEmployerState != 'option-placeholder'){
                acc.Previous_Employer_State__c = creditAppInfo.PreviousEmployerState;
            }
            acc.Previous_Employer_City__c = creditAppInfo.PreviousEmployerCity;
            if(creditAppInfo.PreviousEmployerYearsAtAddress != 'option-placeholder'){
                acc.Previous_Employer_Years_at_Address__c = creditAppInfo.PreviousEmployerYearsAtAddress;
            }
        }
        //acc.Add_a_co_applicant__c = Boolean.valueOf(creditAppInfo.withcoapp);
        
        if(creditAppInfo.AddACoApplicant == 'true'){
            acc.Co_App_Last_Name__c = creditAppInfo.CoAppLastName;
            acc.Co_App_Middle_Name__c = creditAppInfo.CoAppMiddleName;
            acc.Co_App_First_Name__c = creditAppInfo.CoAppFirstName;
            creditAppInfo.CoAppBirthday = creditAppInfo.CoAppBirthday.split('/')[0] +'/'+ creditAppInfo.CoAppBirthday.split('/')[1] +'/'+ creditAppInfo.CoAppBirthday.split('/')[2];
            acc.Co_App_Birthday__c = date.parse(creditAppInfo.CoAppBirthday);
            acc.Co_App_SSN__c = creditAppInfo.CoAppSSN;
            acc.Co_App_Zip__c = creditAppInfo.CoAppZip;
            acc.Co_App_Address__c = creditAppInfo.CoAppAddress;
            acc.Co_App_Apt_Suite__c = creditAppInfo.CoAppAptSuite;
            acc.Co_App_City__c = creditAppInfo.CoAppCity;
            //acc.Add_a_co_applicant__c = creditAppInfo.withcoapp;
            if(creditAppInfo.CoAppState != 'option-placeholder'){
                acc.Co_App_State__c = creditAppInfo.CoAppState;
            }
            acc.Co_App_Home_Phone__c = creditAppInfo.CoAppHomePhone;
            acc.Co_App_Cell_Phone__c = creditAppInfo.CoAppCellPhone;
            if(creditAppInfo.CoAppTypeOfResidence != 'option-placeholder'){
                acc.Co_App_Type_of_Residence__c = creditAppInfo.CoAppTypeOfResidence;
            }
            
            if(creditAppInfo.CoAppYearsAtAddress != 'option-placeholder'){
                acc.Co_App_Years_at_Address__c = creditAppInfo.CoAppYearsAtAddress;
            }
            acc.Co_App_Monthly_Payment__c = creditAppInfo.CoAppMonthlyPayment;
            acc.Co_App_Date__c = date.parse(creditAppInfo.CoAppDate);
            acc.Co_App_Initial__c = creditAppInfo.CoAppInitial;
            
            acc.Co_App_Previous_Address__c = creditAppInfo.CoAppPreviousAddress;
            acc.Co_App_Previous_Apt_Suite__c = creditAppInfo.CoAppPreviousAptSuite;
            acc.Co_App_Previous_Zip__c = creditAppInfo.CoAppPreviousZip;
            if(creditAppInfo.CoAppPreviousState != 'option-placeholder'){
                acc.Co_App_Previous_State__c = creditAppInfo.CoAppPreviousState;
            }
            acc.Co_App_Previous_City__c = creditAppInfo.CoAppPreviousCity;
            
            if(creditAppInfo.CoAppPreviousYearsAtAddress != 'option-placeholder'){
                acc.Co_App_Previous_Years_at_Address__c = creditAppInfo.CoAppPreviousYearsAtAddress;
            }
            
            acc.Co_Employment_Employer_Name__c = creditAppInfo.CoEmploymentEmployerName;
            acc.Co_Employment_Phone__c = creditAppInfo.CoEmploymentPhone;
            acc.Co_Employment_Business_Address__c = creditAppInfo.CoEmploymentBusinessAddress;
            acc.Co_Employment_Suite__c = creditAppInfo.CoEmploymentSuite;
            acc.Co_Employment_Zip__c = creditAppInfo.CoEmploymentZip;
            if(creditAppInfo.CoEmploymentState != 'option-placeholder'){
                acc.Co_Employment_State__c = creditAppInfo.CoEmploymentState;
            }
            acc.Co_Employment_City__c = creditAppInfo.CoEmploymentCity;
            if(creditAppInfo.CoEmploymentYearsAtAddress != 'option-placeholder'){
                acc.Co_Employment_Years_at_Address__c = creditAppInfo.CoEmploymentYearsAtAddress;
            }
            acc.Co_Employment_Position__c = creditAppInfo.CoEmploymentPosition;
            acc.Co_Employment_Gross_Annual_Income__c = creditAppInfo.CoEmploymentGrossAnnualIncome;
            acc.Co_Employment_Other_Income__c = creditAppInfo.CoEmploymentOtherIncome;
            acc.Co_Employment_Source_of_other_Income__c = creditAppInfo.CoEmploymentSourceOfOtherIncome;
            
            acc.Co_Employment_Previous_Employer_Name__c = creditAppInfo.CoEmploymentPreviousEmployerName;
            acc.Co_Employment_Previous_Phone__c = creditAppInfo.CoEmploymentPreviousPhone;
            acc.Co_Employment_Previous_Business_Address__c = creditAppInfo.CoEmploymentPreviousBusinessAddress;
            acc.Co_Employment_Previous_Suite__c = creditAppInfo.CoEmploymentPreviousSuite;
            acc.Co_Employment_Previous_Zip__c = creditAppInfo.CoEmploymentPreviousZip;
            if(creditAppInfo.CoEmploymentPreviousState != 'option-placeholder'){
                acc.Co_Employment_Previous_State__c = creditAppInfo.CoEmploymentPreviousState;
            }
            acc.Co_Employment_Previous_City__c = creditAppInfo.CoEmploymentPreviousCity;
            if(creditAppInfo.CoEmploymentPreviousYearsAtAddress != 'option-placeholder'){
                acc.Co_Employment_Previous_Years_at_Address__c = creditAppInfo.CoEmploymentPreviousYearsAtAddress;
            }
        }
        
        acc.Pers_I_agree_to_the_terms_and_conditions__c = true; //Boolean.valueOf(creditAppInfo.PersIAgreeToTheTermsAndConditions);
        acc.recordTypeId = accrecordTypeId;
        
        system.debug('---Insert New Record: '+acc);
        
            update acc;
            //upsert acc;
            //insert acc;
            
        
        List<Attachment> attList = new List<Attachment>();
        
        for(integer i=0; i< fileName.size(); i++){
            Attachment att = new Attachment();
            att.Name = fileName[i];
            att.ContentType = fileType[i];
            att.ParentId = AccId;
            att.Body = EncodingUtil.base64Decode(fileBody[i]);
            attList.add(att);
        }
        
        insert attList;
        
        
        system.debug('----Record--: '+acc.Id != null);
        
        if(acc.Id != null){
            system.debug('---####---: '+acc.Id);
            return true;
        }
        else{
            system.debug('---$$$$---: '+acc.Id);
            return false;
        }
    }
    

    // wrapper class to hold the JSON string in object format
    public class CreditApplication{
    
    string accRecId;
    //string appType;
    string RecordType;    
    string PersonalLastName;
    string PersonalMiddleName;
    string PersonalFirstName;
    string PersonalBirthday;
    string PersonalSSN;
    String PersonalZip;
    string PersonalAddress;
    string PersonalAptsuite;
    string PersonalCity;
    string PersonalState;
    string PersonalHomePhone;
    string PersonalCellPhone;
    string PersonalTypeOfResidence;
    string PersonalYearsAtAddress;
    string PersonalMonthlyPayment;
    string PersonalDate;
    string PersonalInitial;

    // Previous address information fields
    string PersonalPreviousAddress;
    string PersonalPreviousAptSuite;
    string PersonalPreviousZip;
    string PersonalPreviousState;
    string PersonalPreviousCity;
    string PersonalPreviousYearsAtAddress;

    // Employment Fields
    string EmployerName;
    string EmployerPhone;
    string BusinessAddress;
    string EmployerSuite;
    string EmployerZip;
    string EmployerState;
    string EmployerCity;
    string EmployerYearsAtAddress;
    string EmployerPosition;
    string EmployerGrossAnnualIncome;
    string EmployerOtherIncome;
    string EmployerSourceOfOtherIncome;

    // Previous Employer Info Fields
    string PreviousEmployerName;
    string PreviousEmployerPhone;
    string PreviousEmployerBusinessAddress;
    string PreviousEmployerSuite;
    string PreviousEmployerZip;
    string PreviousEmployerState;
    string PreviousEmployerCity;
    string PreviousEmployerYearsAtAddress;
    
    string withcoapp;
    
    // Co-app Info Fields 
    string AddACoApplicant;
    string CoAppLastName;
    string CoAppMiddleName;
    string CoAppFirstName;
    string CoAppBirthday;
    string CoAppSSN;
    string CoAppZip;
    string CoAppAddress;
    string CoAppAptSuite;
    string CoAppCity;
    string CoAppState;
    string CoAppHomePhone;
    string CoAppCellPhone;
    string CoAppTypeOfResidence;
    string CoAppYearsAtAddress;
    string CoAppMonthlyPayment;
    string CoAppDate;
    string CoAppInitial;

    // Co-App Previous address information Fields
    string CoAppPreviousAddress;
    string CoAppPreviousAptSuite;
    string CoAppPreviousZip;
    string CoAppPreviousState;
    string CoAppPreviousCity;
    string CoAppPreviousYearsAtAddress;

    // Co-Employment Fields
    string CoEmploymentEmployerName;
    string CoEmploymentPhone;
    string CoEmploymentBusinessAddress;
    string CoEmploymentSuite;
    string CoEmploymentZip;
    string CoEmploymentState;
    string CoEmploymentCity;
    string CoEmploymentYearsAtAddress;
    string CoEmploymentPosition;
    string CoEmploymentGrossAnnualIncome;
    string CoEmploymentOtherIncome;
    string CoEmploymentSourceOfOtherIncome;

    // Co-Employment Previous Employer Info Fields
    string CoEmploymentPreviousEmployerName;
    string CoEmploymentPreviousPhone;
    string CoEmploymentPreviousBusinessAddress;
    string CoEmploymentPreviousSuite;
    string CoEmploymentPreviousZip;
    string CoEmploymentPreviousState;
    string CoEmploymentPreviousCity;
    string CoEmploymentPreviousYearsAtAddress;

    string PersIAgreeToTheTermsAndConditions;

    }
}