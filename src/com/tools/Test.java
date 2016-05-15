package com.tools;

public class Test {
	
	public enum LoginResult{
		SUCCESS, NO_USER, ERROR_PWD
	}

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		LoginResult result = LoginResult.ERROR_PWD;
		System.out.println(result);
		System.out.println(LoginResult.ERROR_PWD);
		System.out.println(LoginResult.SUCCESS);
		System.out.println(LoginResult.NO_USER);
	}

}
