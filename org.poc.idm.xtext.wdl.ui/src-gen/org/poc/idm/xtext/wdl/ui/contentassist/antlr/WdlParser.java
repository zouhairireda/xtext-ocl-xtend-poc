/*
 * generated by Xtext
 */
package org.poc.idm.xtext.wdl.ui.contentassist.antlr;

import java.util.Collection;
import java.util.Map;
import java.util.HashMap;

import org.antlr.runtime.RecognitionException;
import org.eclipse.xtext.AbstractElement;
import org.eclipse.xtext.ui.editor.contentassist.antlr.AbstractContentAssistParser;
import org.eclipse.xtext.ui.editor.contentassist.antlr.FollowElement;
import org.eclipse.xtext.ui.editor.contentassist.antlr.internal.AbstractInternalContentAssistParser;

import com.google.inject.Inject;

import org.poc.idm.xtext.wdl.services.WdlGrammarAccess;

public class WdlParser extends AbstractContentAssistParser {
	
	@Inject
	private WdlGrammarAccess grammarAccess;
	
	private Map<AbstractElement, String> nameMappings;
	
	@Override
	protected org.poc.idm.xtext.wdl.ui.contentassist.antlr.internal.InternalWdlParser createParser() {
		org.poc.idm.xtext.wdl.ui.contentassist.antlr.internal.InternalWdlParser result = new org.poc.idm.xtext.wdl.ui.contentassist.antlr.internal.InternalWdlParser(null);
		result.setGrammarAccess(grammarAccess);
		return result;
	}
	
	@Override
	protected String getRuleName(AbstractElement element) {
		if (nameMappings == null) {
			nameMappings = new HashMap<AbstractElement, String>() {
				private static final long serialVersionUID = 1L;
				{
					put(grammarAccess.getWebsiteRuleAccess().getGroup(), "rule__WebsiteRule__Group__0");
					put(grammarAccess.getWebsiteRuleAccess().getGroup_3(), "rule__WebsiteRule__Group_3__0");
					put(grammarAccess.getPageRuleAccess().getGroup(), "rule__PageRule__Group__0");
					put(grammarAccess.getPageRuleAccess().getGroup_5(), "rule__PageRule__Group_5__0");
					put(grammarAccess.getPageRuleAccess().getGroup_5_2(), "rule__PageRule__Group_5_2__0");
					put(grammarAccess.getWebsiteRuleAccess().getIsMobileFriendlyAssignment_0(), "rule__WebsiteRule__IsMobileFriendlyAssignment_0");
					put(grammarAccess.getWebsiteRuleAccess().getCopyrightAssignment_3_1(), "rule__WebsiteRule__CopyrightAssignment_3_1");
					put(grammarAccess.getWebsiteRuleAccess().getPagesAssignment_4(), "rule__WebsiteRule__PagesAssignment_4");
					put(grammarAccess.getPageRuleAccess().getNameAssignment_1(), "rule__PageRule__NameAssignment_1");
					put(grammarAccess.getPageRuleAccess().getTitleAssignment_4(), "rule__PageRule__TitleAssignment_4");
					put(grammarAccess.getPageRuleAccess().getTargetsAssignment_5_1(), "rule__PageRule__TargetsAssignment_5_1");
					put(grammarAccess.getPageRuleAccess().getTargetsAssignment_5_2_1(), "rule__PageRule__TargetsAssignment_5_2_1");
				}
			};
		}
		return nameMappings.get(element);
	}
	
	@Override
	protected Collection<FollowElement> getFollowElements(AbstractInternalContentAssistParser parser) {
		try {
			org.poc.idm.xtext.wdl.ui.contentassist.antlr.internal.InternalWdlParser typedParser = (org.poc.idm.xtext.wdl.ui.contentassist.antlr.internal.InternalWdlParser) parser;
			typedParser.entryRuleWebsiteRule();
			return typedParser.getFollowElements();
		} catch(RecognitionException ex) {
			throw new RuntimeException(ex);
		}		
	}
	
	@Override
	protected String[] getInitialHiddenTokens() {
		return new String[] { "RULE_WS", "RULE_ML_COMMENT", "RULE_SL_COMMENT" };
	}
	
	public WdlGrammarAccess getGrammarAccess() {
		return this.grammarAccess;
	}
	
	public void setGrammarAccess(WdlGrammarAccess grammarAccess) {
		this.grammarAccess = grammarAccess;
	}
}
