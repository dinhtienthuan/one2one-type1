package com.dinhtienthuan.main;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.dinhtienthuan.dao.PersonDAO;
import com.dinhtienthuan.entity.Person;

public class Main {

    private static ApplicationContext context;

    public static void main(String[] args) {
        context = new ClassPathXmlApplicationContext("applicationContext.xml");

        PersonDAO personDAO = context.getBean(PersonDAO.class);
        List<Person> persons = personDAO.getAllPersons();

        for (Person person : persons) {
            System.out.println(person);
            System.out.println("\t" + person.getAddress());
        }
    }

}
