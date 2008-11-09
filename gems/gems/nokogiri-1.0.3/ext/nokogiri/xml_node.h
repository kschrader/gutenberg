#ifndef NOKOGIRI_XML_NODE
#define NOKOGIRI_XML_NODE

#include <native.h>

void init_xml_node();
VALUE Nokogiri_wrap_xml_node(xmlNodePtr root);

extern VALUE cNokogiriXmlNode ;
VALUE Nokogiri_wrap_xml_node(xmlNodePtr node) ;
void Nokogiri_xml_node_properties(xmlNodePtr node, VALUE attr_hash) ;
void Nokogiri_xml_node_namespaces(xmlNodePtr node, VALUE attr_hash) ;
int Nokogiri_xml_node_owned_get(xmlNodePtr node) ;
void Nokogiri_xml_node_owned_set(xmlNodePtr node) ;
void Nokogiri_xml_node2obj_set(xmlNodePtr node, VALUE rb_obj) ;
VALUE Nokogiri_xml_node2obj_get(xmlNodePtr node) ;
void Nokogiri_xml_node2obj_remove(xmlNodePtr node) ;
#endif
