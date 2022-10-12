package dao;

import model.Student;

import java.util.List;

public interface IStudentDAO {

    void insertStudent(Student student);

    Student selectStudent(int id);

    List<Student> selectAllStudent();

    List<Student> searchStudentByName(String input);

    List<Student> sortStudentByName();

    boolean deleteStudent(int id);

    boolean updateStudent(Student student);
}

