package com.helper;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class FactoryProvider {
	public static SessionFactory factroy;
	
	public static SessionFactory getFactory() {
		if(factroy==null) {
			factroy = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
		}
		return factroy;
		
	}
	public void closeFactory() {
		if(factroy.isOpen()) {
			factroy.close();
		}
	}
}
