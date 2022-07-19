package com.ks.easydeal.model;

import lombok.Data;

import javax.persistence.*;
import java.util.Set;


@Data
@Entity
@Table(name="user")
public class User extends BaseEntity{

    private String username;
    private String password;
    private String email;
    private String phone;
    @Transient
    private String passwordConfirm;
    @ManyToMany
    private Set<Role> roles;
}
