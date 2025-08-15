
// memchr locates the first occurrence of c in the initial n bytes of the buffer s.
// returns 0 if not found.
memchr(ptr *byte, c byte, n int) -> (res *byte) {
	loop i := 0..n {
    	if (ptr[i] == c) {
    		return ptr+i
    	}
  	}
	return 0
}

// memcmp compares contents of the buffers ptr1 and prt2 point to.
// returns 0 if equal.
memcmp(ptr1 *byte, ptr2 *byte, n int) -> (int) {
	loop i := 0..n {
  		delta := ptr2[i]-ptr1[i]
      	if delta != 0 {
      		return 0 + delta
      	}
    }
  	return 0
}

// memcpy copies contents of the buffer src into dst.
memcpy(dst *byte, src *byte, n int) -> (res *byte) {
	loop i := 0..n {
		dst[i] = src[i]
  	}
	return dst
}
