/*
 * generated by Xtext
 */
package org.poc.idm.xtext.wdl.parser.antlr;

import java.io.InputStream;
import org.eclipse.xtext.parser.antlr.IAntlrTokenFileProvider;

public class WdlAntlrTokenFileProvider implements IAntlrTokenFileProvider {
	
	@Override
	public InputStream getAntlrTokenFile() {
		ClassLoader classLoader = getClass().getClassLoader();
    	return classLoader.getResourceAsStream("org/poc/idm/xtext/wdl/parser/antlr/internal/InternalWdl.tokens");
	}
}
