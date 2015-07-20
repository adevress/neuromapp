#include "utils/storage/storage.hpp"
extern "C" {
#include "utils/storage/storage.h"
}
#include "utils/storage/neuromapp_data.h"

storage::~storage() {

    std::map < std::string, impl::container >::iterator it;

    for(it=M.begin(); it!=M.end(); it++)
        it->second.del_(it->second.data_);

}

struct safe_map_element_wrapper {
    map_element_t ptr;
    destroyer_function_pointer dtor;

    safe_map_element_wrapper(): ptr(NULL), dtor(NULL), k(new size_t(0)) {}

    safe_map_element_wrapper(map_element_t ptr_,destroyer_function_pointer dtor_): ptr(ptr_), dtor(dtor_), k(new size_t(1)) {}

    safe_map_element_wrapper(const safe_map_element_wrapper &x): ptr(x.ptr), dtor(x.dtor), k(x.k) { ++*k; }

    safe_map_element_wrapper &operator=(const safe_map_element_wrapper &x) {
        if (&x!=this) {
            ptr=x.ptr;
            dtor=x.dtor;
            k=x.k;
            ++*k;
        }
        return *this;
    }

    ~safe_map_element_wrapper() {
        if (*k>1) --*k;
        else {
            dtor(ptr);
            ptr = NULL;
            *k=0;
        }
    };

private:
    size_t *k; // reference count
};

struct safe_map_element_wrapper_maker {
    maker_function_pointer maker;
    context_t context;
    destroyer_function_pointer dtor;

    safe_map_element_wrapper operator()() {
        return safe_map_element_wrapper(maker(context),dtor);
    }
};

map_element_t storage_get(const char * name,
                          maker_function_pointer maker,
                          context_t context,
                          destroyer_function_pointer destroyer ) {

   safe_map_element_wrapper_maker mk = {maker, context, destroyer};

   return neuromapp_data.get<safe_map_element_wrapper,
                             safe_map_element_wrapper_maker> (name, mk).ptr;


};



