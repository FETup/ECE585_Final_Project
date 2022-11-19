package cache_define;

parameter addr_size  = 32;
parameter cache_size = 16000000;
parameter assoc      = 8;
parameter byte_line  = 64;



parameter index       = $clog2(cache_size/assoc * byte_line);
parameter byte_bits   = $clog2(byte_line);
parameter tag_bits    = addr_size - (index + byte_bits);


endpackage