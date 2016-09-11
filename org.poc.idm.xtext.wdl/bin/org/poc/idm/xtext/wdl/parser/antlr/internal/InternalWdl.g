/*
 * generated by Xtext
 */
grammar InternalWdl;

options {
	superClass=AbstractInternalAntlrParser;
	
}

@lexer::header {
package org.poc.idm.xtext.wdl.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package org.poc.idm.xtext.wdl.parser.antlr.internal; 

import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.AbstractInternalAntlrParser;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.antlr.AntlrDatatypeRuleToken;
import org.poc.idm.xtext.wdl.services.WdlGrammarAccess;

}

@parser::members {

 	private WdlGrammarAccess grammarAccess;
 	
    public InternalWdlParser(TokenStream input, WdlGrammarAccess grammarAccess) {
        this(input);
        this.grammarAccess = grammarAccess;
        registerRules(grammarAccess.getGrammar());
    }
    
    @Override
    protected String getFirstRuleName() {
    	return "WebsiteRule";	
   	}
   	
   	@Override
   	protected WdlGrammarAccess getGrammarAccess() {
   		return grammarAccess;
   	}
}

@rulecatch { 
    catch (RecognitionException re) { 
        recover(input,re); 
        appendSkippedTokens();
    } 
}




// Entry rule entryRuleWebsiteRule
entryRuleWebsiteRule returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getWebsiteRuleRule()); }
	 iv_ruleWebsiteRule=ruleWebsiteRule 
	 { $current=$iv_ruleWebsiteRule.current; } 
	 EOF 
;

// Rule WebsiteRule
ruleWebsiteRule returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
((
(
		lv_isMobileFriendly_0_0=	'mobile' 
    {
        newLeafNode(lv_isMobileFriendly_0_0, grammarAccess.getWebsiteRuleAccess().getIsMobileFriendlyMobileKeyword_0_0());
    }
 
	    {
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getWebsiteRuleRule());
	        }
       		setWithLastConsumed($current, "isMobileFriendly", true, "mobile");
	    }

)
)?	otherlv_1='website' 
    {
    	newLeafNode(otherlv_1, grammarAccess.getWebsiteRuleAccess().getWebsiteKeyword_1());
    }
	otherlv_2='{' 
    {
    	newLeafNode(otherlv_2, grammarAccess.getWebsiteRuleAccess().getLeftCurlyBracketKeyword_2());
    }
(	otherlv_3='copyright :' 
    {
    	newLeafNode(otherlv_3, grammarAccess.getWebsiteRuleAccess().getCopyrightKeyword_3_0());
    }
(
(
		lv_copyright_4_0=RULE_STRING
		{
			newLeafNode(lv_copyright_4_0, grammarAccess.getWebsiteRuleAccess().getCopyrightSTRINGTerminalRuleCall_3_1_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getWebsiteRuleRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"copyright",
        		lv_copyright_4_0, 
        		"STRING");
	    }

)
))?(
(
		{ 
	        newCompositeNode(grammarAccess.getWebsiteRuleAccess().getPagesPageRuleParserRuleCall_4_0()); 
	    }
		lv_pages_5_0=rulePageRule		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getWebsiteRuleRule());
	        }
       		add(
       			$current, 
       			"pages",
        		lv_pages_5_0, 
        		"PageRule");
	        afterParserOrEnumRuleCall();
	    }

)
)+	otherlv_6='}' 
    {
    	newLeafNode(otherlv_6, grammarAccess.getWebsiteRuleAccess().getRightCurlyBracketKeyword_5());
    }
)
;





// Entry rule entryRulePageRule
entryRulePageRule returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getPageRuleRule()); }
	 iv_rulePageRule=rulePageRule 
	 { $current=$iv_rulePageRule.current; } 
	 EOF 
;

// Rule PageRule
rulePageRule returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='page' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getPageRuleAccess().getPageKeyword_0());
    }
(
(
		lv_name_1_0=RULE_ID
		{
			newLeafNode(lv_name_1_0, grammarAccess.getPageRuleAccess().getNameIDTerminalRuleCall_1_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getPageRuleRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"name",
        		lv_name_1_0, 
        		"ID");
	    }

)
)	otherlv_2='{' 
    {
    	newLeafNode(otherlv_2, grammarAccess.getPageRuleAccess().getLeftCurlyBracketKeyword_2());
    }
	otherlv_3='title : ' 
    {
    	newLeafNode(otherlv_3, grammarAccess.getPageRuleAccess().getTitleKeyword_3());
    }
(
(
		lv_title_4_0=RULE_STRING
		{
			newLeafNode(lv_title_4_0, grammarAccess.getPageRuleAccess().getTitleSTRINGTerminalRuleCall_4_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getPageRuleRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"title",
        		lv_title_4_0, 
        		"STRING");
	    }

)
)(	otherlv_5='menu :' 
    {
    	newLeafNode(otherlv_5, grammarAccess.getPageRuleAccess().getMenuKeyword_5_0());
    }
(
(
		{
			if ($current==null) {
	            $current = createModelElement(grammarAccess.getPageRuleRule());
	        }
        }
	otherlv_6=RULE_ID
	{
		newLeafNode(otherlv_6, grammarAccess.getPageRuleAccess().getTargetsPageCrossReference_5_1_0()); 
	}

)
)(	otherlv_7=',' 
    {
    	newLeafNode(otherlv_7, grammarAccess.getPageRuleAccess().getCommaKeyword_5_2_0());
    }
(
(
		{
			if ($current==null) {
	            $current = createModelElement(grammarAccess.getPageRuleRule());
	        }
        }
	otherlv_8=RULE_ID
	{
		newLeafNode(otherlv_8, grammarAccess.getPageRuleAccess().getTargetsPageCrossReference_5_2_1_0()); 
	}

)
))*)?	otherlv_9='}' 
    {
    	newLeafNode(otherlv_9, grammarAccess.getPageRuleAccess().getRightCurlyBracketKeyword_6());
    }
)
;





RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;

