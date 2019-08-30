global class BusinessApplicationCtrl{
    
    public static BusinessApplication businessAppInfo;
     
    public BusinessApplicationCtrl(){
        
        //String conRecId = ApexPages.currentPage().getParameters().get('con');
    }
    
    @RemoteAction
    global static boolean SaveBusinessApplication(String businessAppJsonStr){
    
        businessAppInfo = (BusinessApplication) System.JSON.deserializeStrict(businessAppJsonStr, BusinessApplication.Class);
        //creditAppInfo = (CreditApplication) System.JSON.deserializeStrict(creditAppJsonStr, CreditApplication.Class);

        System.debug('___@@___: ' + businessAppInfo);
        System.debug('___@@___: ' + businessAppInfo.BusinessAppLegalBusinessName); // you can read all other fields like this
        System.debug('___@@___: ' + businessAppInfo.BusinessAppDunsOptional);
        System.debug('___@@___: ' + businessAppInfo.BusinessAppCompanyPhone);
        System.debug('___@@___: ' + businessAppInfo.BusinessAppAddress);
        System.debug('___@@___: ' + businessAppInfo.BusinessAppAptSuite);
        System.debug('___@@___: ' + businessAppInfo.BusinessAppZip);
        System.debug('___@@___: ' + businessAppInfo.BusinessAppState);
        System.debug('___@@___: ' + businessAppInfo.BusinessAppCity);
        System.debug('___@@___: ' + businessAppInfo.BusinessAppTAXID);
        System.debug('___@@___: ' + businessAppInfo.BusinessAppType);
        System.debug('___@@___: ' + businessAppInfo.BusinessAppYearsEstablished);
        System.debug('___@@___: ' + businessAppInfo.BusinessAppGrossAnnualIncome);
        
        System.debug('___@@___: ' + businessAppInfo.BusAppPersonalGuarantorLastName);
        System.debug('___@@___: ' + businessAppInfo.BusAppPersonalGuarantorMiddleName);
        System.debug('___@@___: ' + businessAppInfo.BusAppPersonalGuarantorFirstName);
        System.debug('___@@___: ' + businessAppInfo.BusAppPersonalGuarantorBirthday);
        System.debug('___@@___: ' + businessAppInfo.BusAppPersonalGuarantorSSN);
        System.debug('___@@___: ' + businessAppInfo.BusAppPersonalGuarantorZip);
        System.debug('___@@___: ' + businessAppInfo.BusAppPersonalGuarantorAddress);
        System.debug('___@@___: ' + businessAppInfo.BusAppPersonalGuarantorAptSuite);
        System.debug('___@@___: ' + businessAppInfo.BusAppPersonalGuarantorCity);
        System.debug('___@@___: ' + businessAppInfo.BusAppPersonalGuarantorState);
        System.debug('___@@___: ' + businessAppInfo.BusAppPersonalGuarantorHomePhone);
        System.debug('___@@___: ' + businessAppInfo.BusAppPersonalGuarantorCellPhone);
        System.debug('___@@___: ' + businessAppInfo.BusAppPerGuarantorTypeofResidence);
        System.debug('___@@___: ' + businessAppInfo.BusAppPerGuarantorYearsatAddress);
        System.debug('___@@___: ' + businessAppInfo.BusAppPerGuarantorMonthlyPayment);
        
        System.debug('___@@___: ' + businessAppInfo.BusEmployerName);
        System.debug('___@@___: ' + businessAppInfo.BusEmploymentPhone);
        System.debug('___@@___: ' + businessAppInfo.BusEmploymentAddress);
        System.debug('___@@___: ' + businessAppInfo.BusEmploymentSuite);
        System.debug('___@@___: ' + businessAppInfo.BusEmploymentZip);
        System.debug('___@@___: ' + businessAppInfo.BusEmploymentState);
        System.debug('___@@___: ' + businessAppInfo.BusEmploymentCity);
        System.debug('___@@___: ' + businessAppInfo.BusEmploymentYearsataddress);
        System.debug('___@@___: ' + businessAppInfo.BusEmploymentPosition);
        System.debug('___@@___: ' + businessAppInfo.BusEmploymentGrossAnnualIncome);
        System.debug('___@@___: ' + businessAppInfo.BusEmploymentOtherIncome);
        System.debug('___@@___: ' + businessAppInfo.BusEmploymentSourceofotherIncome);
        
        System.debug('___@@___: ' + businessAppInfo.BusinessAppDate);
        System.debug('___@@___: ' + businessAppInfo.BusinessAppInitial);
        
        /*
        System.debug('___@@___: ' + businessAppInfo.BusAppperviousaddress);
        System.debug('___@@___: ' + businessAppInfo.BusappPreviousAptSuite);
        System.debug('___@@___: ' + businessAppInfo.BusappPreviousZip);
        System.debug('___@@___: ' + businessAppInfo.BusappPreviousState);
        System.debug('___@@___: ' + businessAppInfo.BusappPreviousCity);
        System.debug('___@@___: ' + businessAppInfo.BusappPreviousYearsataddress);
        */
        
        System.debug('___@@___: ' + businessAppInfo.BusIagreetermscondtions);
        
        //Id accrecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('Business Account').getRecordTypeId();
        Id AccRecordTypeId = [SELECT Id FROM RecordType WHERE IsPersonType = False AND SObjectType='Account' AND DeveloperName='Business_Account' LIMIT 1].Id;
        
        Account acc = new Account(RecordTypeId=AccRecordTypeId);
        //Date.parse(today);
        
        acc.RecordTypeId = businessAppInfo.RecordType;
        acc.Name = businessAppInfo.BusinessAppLegalBusinessName;
        acc.Business_App_Duns_Optional__c = businessAppInfo.BusinessAppDunsOptional;
        acc.Phone = businessAppInfo.BusinessAppCompanyPhone;
        acc.BillingStreet = businessAppInfo.BusinessAppAddress;
        acc.BillingPostalCode = businessAppInfo.BusinessAppZip;
        acc.Business_App_Apt_Suite__c = businessAppInfo.BusinessAppAptSuite;
        acc.BillingCity = businessAppInfo.BusinessAppCity;
        acc.BillingState = businessAppInfo.BusinessAppState;
        acc.Business_App_TAX_ID__c = businessAppInfo.BusinessAppTAXID;
        acc.Business_App_Type__c = businessAppInfo.BusinessAppType;
        acc.Business_App_Years_Established__c = businessAppInfo.BusinessAppYearsEstablished;
        acc.Bus_Gross_Annual_Income__c = businessAppInfo.BusinessAppGrossAnnualIncome;
        
        acc.Bus_App_Personal_Guarantor_Last_Name__c = businessAppInfo.BusAppPersonalGuarantorLastName;
        acc.Bus_App_Personal_Guarantor_Middle_Name__c = businessAppInfo.BusAppPersonalGuarantorMiddleName;
        acc.Bus_App_Personal_Guarantor_First_Name__c = businessAppInfo.BusAppPersonalGuarantorFirstName;
        businessAppInfo.BusAppPersonalGuarantorBirthday = businessAppInfo.BusAppPersonalGuarantorBirthday.split('/')[1] +'/'+ businessAppInfo.BusAppPersonalGuarantorBirthday.split('/')[0] +'/'+ businessAppInfo.BusAppPersonalGuarantorBirthday.split('/')[2];
        acc.Bus_App_Per_Gu_Birthday__c = date.parse(businessAppInfo.BusAppPersonalGuarantorBirthday);
        acc.Bus_App_Per_Gu_SSN__c = businessAppInfo.BusAppPersonalGuarantorSSN;
        acc.Bus_App_Per_Gu_zip__c = businessAppInfo.BusAppPersonalGuarantorZip;
        acc.Bus_App_Personal_Guarantor_Address__c = businessAppInfo.BusAppPersonalGuarantorAddress;
        acc.Bus_App_Personal_Guarantor_Apt_Suite__c = businessAppInfo.BusAppPersonalGuarantorAptSuite;
        acc.Bus_App_Personal_Guarantor_City__c = businessAppInfo.BusAppPersonalGuarantorCity;
        acc.Bus_App_Personal_Guarantor_State__c = businessAppInfo.BusAppPersonalGuarantorState;
        acc.Bus_App_Personal_Guarantor_Home_Phone__c = businessAppInfo.BusAppPersonalGuarantorHomePhone;
        acc.Bus_App_Personal_Guarantor_Cell_Phone__c = businessAppInfo.BusAppPersonalGuarantorCellPhone;
        acc.Bus_App_Per_Guarantor_Type_of_Residence__c = businessAppInfo.BusAppPerGuarantorTypeofResidence;
        acc.Bus_App_Per_Guarantor_Years_at_Address__c = businessAppInfo.BusAppPerGuarantorYearsatAddress;
        acc.Bus_App_Per_Guarantor_Monthly_Payment__c = businessAppInfo.BusAppPerGuarantorMonthlyPayment;
        
        acc.Bus_Emp_Employer_Name__c = businessAppInfo.BusEmployerName;
        acc.Bus_Emp_Phone__c = businessAppInfo.BusEmploymentPhone;
        acc.Bus_Emp_Business_address__c = businessAppInfo.BusEmploymentAddress;
        acc.Bus_Emp_Suite__c = businessAppInfo.BusEmploymentSuite;
        acc.Bus_Emp_Zip__c = businessAppInfo.BusEmploymentZip;
        acc.Bus_Emp_State__c = businessAppInfo.BusEmploymentState;
        acc.Bus_Emp_City__c = businessAppInfo.BusEmploymentCity;
        acc.Bus_Emp_Years_at_address__c = businessAppInfo.BusEmploymentYearsataddress;
        acc.Bus_Emp_Position__c = businessAppInfo.BusEmploymentPosition;
        acc.Bus_Emp_Gross_Annual_Income__c = businessAppInfo.BusEmploymentGrossAnnualIncome;
        acc.Bus_Emp_Other_Income__c = businessAppInfo.BusEmploymentOtherIncome;
        acc.Bus_Emp_Source_of_other_Income__c = businessAppInfo.BusEmploymentSourceofotherIncome;
        
        acc.Business_App_Date__c = date.parse(businessAppInfo.BusinessAppDate);
        acc.Business_App_Initial__c = businessAppInfo.BusinessAppInitial;
        
        acc.Bus_I_agree_terms_condtions__c = Boolean.valueOf(businessAppInfo.BusIagreetermscondtions);
        
        /*
        acc.Bus_App_pervious_address__c = businessAppInfo.BusAppperviousaddress;
        acc.Bus_app_Previous_Apt_Suite__c = businessAppInfo.BusappPreviousAptSuite;
        acc.Bus_app_Previous_Zip__c = businessAppInfo.BusappPreviousZip;
        acc.Bus_app_Previous_City__c = businessAppInfo.BusappPreviousCity;
        acc.Bus_app_Previous_Years_at_address__c = businessAppInfo.BusappPreviousYearsataddress;
        acc.Bus_app_Previous_State__c = businessAppInfo.BusappPreviousState;
        */
        
        acc.recordTypeId = accrecordTypeId;
        
        insert acc;
     
        if(acc.Id != null){
            return true;
        }
        else{
            return false;
        }
    }
    

    // wrapper class to hold the JSON string in object format
    public class BusinessApplication{
    
    string RecordType;    
    string BusinessAppLegalBusinessName;
    string BusinessAppDunsOptional;
    string BusinessAppCompanyPhone;
    string BusinessAppAddress;
    string BusinessAppAptSuite;
    String BusinessAppZip;
    string BusinessAppState;
    string BusinessAppCity;
    string BusinessAppTAXID;
    string BusinessAppType;
    string BusinessAppYearsEstablished;
    string BusinessAppGrossAnnualIncome;
    
    string BusAppPersonalGuarantorLastName;
    string BusAppPersonalGuarantorMiddleName;
    string BusAppPersonalGuarantorFirstName;
    string BusAppPersonalGuarantorBirthday;
    string BusAppPersonalGuarantorSSN;
    string BusAppPersonalGuarantorZip;
    string BusAppPersonalGuarantorAddress;
    string BusAppPersonalGuarantorAptSuite;
    string BusAppPersonalGuarantorCity;
    string BusAppPersonalGuarantorState;
    string BusAppPersonalGuarantorHomePhone;
    string BusAppPersonalGuarantorCellPhone;
    string BusAppPerGuarantorTypeofResidence;
    string BusAppPerGuarantorYearsatAddress;
    string BusAppPerGuarantorMonthlyPayment;
    
    string BusEmployerName;
    string BusEmploymentPhone;
    string BusEmploymentAddress;
    string BusEmploymentSuite;
    string BusEmploymentZip;
    string BusEmploymentState;
    string BusEmploymentCity;
    string BusEmploymentYearsataddress;
    string BusEmploymentPosition;
    string BusEmploymentGrossAnnualIncome;
    string BusEmploymentOtherIncome;
    string BusEmploymentSourceofotherIncome;
           
    string BusinessAppDate;
    string BusinessAppInitial;
    
    /*
    string BusAppperviousaddress;
    string BusappPreviousAptSuite;
    string BusappPreviousZip;
    string BusappPreviousState;
    string BusappPreviousCity;
    string BusappPreviousYearsataddress;
    */
    
    string BusIagreetermscondtions;
    }
}