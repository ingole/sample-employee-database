package com.ekart.springbootjetty.sample.apis.service.mappers;

import com.ekart.springbootjetty.sample.apis.service.dtos.Employee;
import java.util.ArrayList;
import java.util.Collection;
import javax.annotation.Generated;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2017-01-10T01:55:32+0530",
    comments = "version: 1.0.0.Final, compiler: javac, environment: Java 1.8.0_111 (Oracle Corporation)"
)
@Component
public class ServiceDalDtoMapperImpl extends ServiceDalDtoMapper {

    @Override
    public com.ekart.springbootjetty.sample.apis.model.Employee serviceToDalCreateEmployee(Employee employee) {
        if ( employee == null ) {
            return null;
        }

        com.ekart.springbootjetty.sample.apis.model.Employee employee_ = new com.ekart.springbootjetty.sample.apis.model.Employee();

        employee_.setId( employee.getId() );
        employee_.setName( employee.getName() );
        employee_.setContact( employee.getContact() );

        return employee_;
    }

    @Override
    public Employee dalToServiceEmployee(com.ekart.springbootjetty.sample.apis.model.Employee employee) {
        if ( employee == null ) {
            return null;
        }

        Employee employee_ = new Employee();

        employee_.setId( employee.getId() );
        employee_.setName( employee.getName() );
        employee_.setContact( employee.getContact() );

        return employee_;
    }

    @Override
    public Collection<Employee> dalToServiceCollectionEmployee(Collection<com.ekart.springbootjetty.sample.apis.model.Employee> employee) {
        if ( employee == null ) {
            return null;
        }

        Collection<Employee> collection = new ArrayList<Employee>();
        for ( com.ekart.springbootjetty.sample.apis.model.Employee employee_ : employee ) {
            collection.add( dalToServiceEmployee( employee_ ) );
        }

        return collection;
    }
}
