package com.xxx.etl.utils;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;

/**
 * @ClassName 类名 : PasswordEncoderUtil
 * @Description 作用 : 密码加密，存储r_database的数据库密码时使用
 *              使用方法：PasswordEncoder.encryptPasswordIfNotUsingVariables(password)
 * @Author 作者 : Lilg
 * @Date 创建时间 : 2017年4月26日 上午10:22:08
 * @Version 版本 : V1.0
 */

public class PasswordEncoderUtil {
	
	public static final String PASSWORD_ENCRYPTED_PREFIX = "Encrypted ";

	public static final String[] SYSTEM_PROPERTIES = new String[] { "java.version", "java.vendor", "java.vendor.url",
			"java.home", "java.vm.specification.version", "java.vm.specification.vendor", "java.vm.specification.name",
			"java.vm.version", "java.vm.vendor", "java.vm.name", "java.specification.version",
			"java.specification.vendor", "java.specification.name", "java.class.version", "java.class.path",
			"java.library.path", "java.io.tmpdir", "java.compiler", "java.ext.dirs",

			"os.name", "os.arch", "os.version",

			"file.separator", "path.separator", "line.separator",

			"user.name", "user.home", "user.dir", "user.country", "user.language", "user.timezone",

			"org.apache.commons.logging.Log", "org.apache.commons.logging.simplelog.log.org.apache.commons.httpclient",
			"org.apache.commons.logging.simplelog.showdatetime", "org.eclipse.swt.browser.XULRunnerInitialized",
			"org.eclipse.swt.browser.XULRunnerPath",

			"sun.arch.data.model", "sun.boot.class.path", "sun.boot.library.path", "sun.cpu.endian", "sun.cpu.isalist",
			"sun.io.unicode.encoding", "sun.java.launcher", "sun.jnu.encoding", "sun.management.compiler",
			"sun.os.patch.level", };
	
	private static final int RADIX = 16;
	private static final String SEED = "0933910847463829827159347601486730416058";
	public static final String UNIX_OPEN = "${";

	public static final String UNIX_CLOSE = "}";

	public static final String WINDOWS_OPEN = "%%";

	public static final String WINDOWS_CLOSE = "%%";

	public static final String HEX_OPEN = "$[";

	public static final String HEX_CLOSE = "]";

	public static final String FIELD_OPEN = "?{";

	public static final String FIELD_CLOSE = "}";

	public static final String CRLF = "\r\n";

	public static final String INDENTCHARS = "                    ";

	public static final String EMPTY_STRING = "";

	public static final String encryptPassword(String password) {
		if (password == null)
			return "";
		if (password.length() == 0)
			return "";

		BigInteger bi_passwd = new BigInteger(password.getBytes());

		BigInteger bi_r0 = new BigInteger(SEED);
		BigInteger bi_r1 = bi_r0.xor(bi_passwd);

		return bi_r1.toString(RADIX);
	}

	public static final String decryptPassword(String encrypted) {
		if (encrypted == null)
			return "";
		if (encrypted.length() == 0)
			return "";

		BigInteger bi_confuse = new BigInteger(SEED);

		try {
			BigInteger bi_r1 = new BigInteger(encrypted, RADIX);
			BigInteger bi_r0 = bi_r1.xor(bi_confuse);

			return new String(bi_r0.toByteArray());
		} catch (Exception e) {
			return "";
		}
	}

	public static int indexOfString(String lookup, String[] array) {
		if (array == null) {
			return -1;
		}
		if (lookup == null) {
			return -1;
		}

		for (int i = 0; i < array.length; i++) {
			if (lookup.equalsIgnoreCase(array[i])) {
				return i;
			}
		}
		return -1;
	}

	public static int indexOfString(String lookup, List<String> list) {
		if (list == null) {
			return -1;
		}

		for (int i = 0; i < list.size(); i++) {
			String compare = list.get(i);
			if (lookup.equalsIgnoreCase(compare)) {
				return i;
			}
		}
		return -1;
	}

	private static void getUsedVariables(String aString, String open, String close, List<String> list,
			boolean includeSystemVariables) {
		if (aString == null) {
			return;
		}

		int p = 0;
		while (p < aString.length()) {
			if (aString.substring(p).startsWith(open)) {
				int from = p + open.length();
				int to = aString.indexOf(close, from + 1);

				if (to >= 0) {
					String variable = aString.substring(from, to);

					if (indexOfString(variable, list) < 0) {

						if (includeSystemVariables || !isSystemVariable(variable)
								|| System.getProperty(variable) == null) {
							list.add(variable);
						}
					}
					p = to + close.length();
				}
			}
			p++;
		}
	}

	public static boolean isSystemVariable(String aString) {
		return indexOfString(aString, SYSTEM_PROPERTIES) >= 0;
	}

	public static void getUsedVariables(String aString, List<String> list, boolean includeSystemVariables) {
		getUsedVariables(aString, UNIX_OPEN, UNIX_CLOSE, list, includeSystemVariables);
		getUsedVariables(aString, WINDOWS_OPEN, WINDOWS_CLOSE, list, includeSystemVariables);
	}

	public static final String encryptPasswordIfNotUsingVariables(String password) {
		String encrPassword = "";
		List<String> varList = new ArrayList<String>();
		getUsedVariables(password, varList, true);
		if (varList.isEmpty()) {
			encrPassword = PASSWORD_ENCRYPTED_PREFIX + encryptPassword(password);
		} else {
			encrPassword = password;
		}

		return encrPassword;
	}
}
