import io

main() {
	test_io_write()
	test_io_writeBuffer()
}

test_io_write() {
	hi := "test_io_write: "
	res := io.write(hi)
	assert(res == hi.len)
	io.write("OK\n")
}

test_io_writeBuffer() {
	hi := "test_io_writeBuffer: "
	res := io.writeBuffer(hi.ptr, hi.len)
	assert(res == hi.len)
	io.write("OK\n")
}


