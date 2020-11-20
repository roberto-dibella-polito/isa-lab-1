fb = (sw * a) >> (NB+1);    // 6 bits Compute feedback value 
ff = (sw * b) >> (NB+1);    // Compute feedforward value 
w = x - fb;                 // adjust 
y = (w * b0) >> (NB+1);
y += ff;
sw = w;