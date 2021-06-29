/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Laba5;

import java.util.Objects;

/**
 *
 * @author Levik
 */
public class Model {
    private String _stringField;
    private Integer _IntField;

    public Model(String stringField, Integer IntField) {
        _stringField = stringField;
        _IntField = IntField;
    }

    public String getStringField() {
        return _stringField;
    }

    public void setStringField(String _stringField) {
        this._stringField = _stringField;
    }

    public Integer getIntField() {
        return _IntField;
    }

    public void setIntField(Integer _IntField) {
        this._IntField = _IntField;
    }

    @Override
    public String toString() {
        return "Model{" + "StringField=" + _stringField + ", IntField=" + _IntField + '}';
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (getClass() != obj.getClass())
            return false;
        Model other = (Model) obj;
        if (!Objects.equals(this._IntField, other._IntField))
            return false;
        if (!Objects.equals(this._stringField, other._stringField))
            return false;
        return true;
    }
}