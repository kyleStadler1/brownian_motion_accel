package data_types_pkg;

    typedef struct packed {
        logic [31:0] price;
        logic [7:0] day;
        logic       last;
        logic       valid;
        logic [16:0] uid;
    } path_t;

    typedef struct packed {
        logic [15:0] price;
        logic [7:0]  day;
        logic valid;
        logic [16:0]  uid;
    } stream_path_t;

endpackage
