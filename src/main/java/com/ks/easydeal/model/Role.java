package com.ks.easydeal.model;

import lombok.Data;

import javax.persistence.*;
import java.util.Set;

@Data
@Entity
@Table(name="role")
public class Role extends BaseEntity {

    private String name;
    @ManyToMany(mappedBy = "roles")
    private Set<User> users;
}
