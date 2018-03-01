/*****************************************
* File: INT_OpportunityContactRoleHandler
* Author: Sierra-Cedar
* Description: Implements the TDTM_Runnable HEDA framework and calls the InteractionProcessor.
******************************************/
global without sharing class INT_InteractionHandler extends hed.TDTM_Runnable {
    global override DmlWrapper run(List<SObject> newlist, List<SObject> oldlist,
        hed.TDTM_Runnable.Action triggerAction, Schema.DescribeSObjectResult objResult
    ) {
        INT_InteractionProcessor processor = new INT_InteractionProcessor();
        processor.filterAndProcessInteractions((List<Interaction__c>) newlist);

        return new DmlWrapper();
    }
}