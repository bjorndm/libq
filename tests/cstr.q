import io
import mem
import cstr

main() {
	test_cstr_memchr()
	test_cstr_memcmp()
	// TODO: test_cstr_memcpy()
}

test_cstr_memchr() {
	io.write("test_cstr_memchr: ")
	in := "0123456789"
	res := cstr.memchr(in.ptr, '4', in.len)
	assert(res == (in.ptr + 4))
	res := cstr.memchr(in.ptr, 'z', in.len)
	assert(res == 0)
	io.write("OK\n")
}

test_cstr_memcmp() {
	io.write("test_cstr_memcmp: ")
	in1 := "0123456789"
	in2 := "0123456789"
	res := cstr.memcmp(in1.ptr, in2.ptr, in1.len)
	assert(res == 0)
	in3 := "0123567890"
	res := cstr.memcmp(in1.ptr, in3.ptr, in1.len)
	assert(res > 0)
	io.write("OK\n")
}

test_cstr_memcpy() {
	io.write("test_cstr_memcpy: ")
	in := "0123456789"
	len := in.len
	io.write("mem.alloc(len) ")

	buf := mem.alloc(len)
	io.writeInt(0 + buf)

	io.write("1 ")
	res := cstr.memcpy(buf, in.ptr, in.len)
	assert(res == buf)

	io.write("2 ")
	res := cstr.memcmp(buf, in.ptr, in.len)
	assert(res == 0)

	mem.free(buf, in.len)
	io.write("OK\n")
}

