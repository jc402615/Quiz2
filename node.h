/**
*  @file node.h
*  @author Aberegg
*  @brief node class to act as building block of linked list
*/


#ifndef NODE_H
#define NODE_H
#include "course.h"

class node{
    public:
	typedef course value_type;
	// Universal constructor
        node(value_type d = value_type(), node *l = NULL)
		{data_field = d;  link_field = l;}

        // Mutator functions
	void set_data(value_type d)
		{data_field = d;}
	void set_link(node *l)
		{link_field = l;}

        // Accessor functions
        value_type data() const 
		{return data_field;}
        node* link() 
		{return link_field;}
	const node* link() const
		{return link_field;}

    private:
	value_type data_field;
	node* link_field;
};

#endif
