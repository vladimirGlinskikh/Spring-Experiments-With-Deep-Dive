package kz.zhelezyaka.springexperimentswithdeepdive.entity;

import lombok.Data;

import java.util.List;

@Data
public class Taco {

    private String name;
    private List<Ingredient> intgredients;
}
