package redsocial.dao;

import java.util.*;

public interface InterfazRedSocial<T> {
    List<T> findAll();
    boolean insert(T t);
    boolean update(T t);
    boolean delete(T t);
}
