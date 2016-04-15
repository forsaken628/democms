'~^(?:(' . $this->_num_const_regexp . '|' . $this->_obj_call_regexp . '|' . $this->_var_regexp
. '|\/?' . $this->_reg_obj_regexp . '|\/?' . $this->_func_regexp . ')(' . $this->_mod_regexp . '*))
(?:\s+(.*))?$
~xs'