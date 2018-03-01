/*****************************************
* File: INT_Interaction
* Author: Sierra-Cedar
* Description: Interaction__c Trigger. Uses the HEDA TDTM Trigger Framework.
******************************************/
trigger INT_Interaction on Interaction__c (after insert, after update) {
    hed.TDTM_Global_API.run(Trigger.isBefore, Trigger.isAfter, Trigger.isInsert, Trigger.isUpdate, Trigger.isDelete,
        Trigger.isUnDelete, Trigger.new, Trigger.old, Schema.Sobjecttype.Interaction__c);
}