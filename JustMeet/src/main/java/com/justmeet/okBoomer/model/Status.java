/**
 * 
 */
package com.justmeet.okBoomer.model;

import javax.persistence.Entity;
import javax.persistence.Enumerated;
import javax.persistence.Id;
import javax.persistence.IdClass;

import org.hibernate.annotations.Immutable;

/**
 * @author Cippitelli, Rinaldi
 *
 */
public enum Status {
	IN_CORSO,
    PASSATO,
    IN_ATTESA
}
