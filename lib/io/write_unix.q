write(buffer string) -> (written int) {
	return syscall(_write, 1, buffer.ptr, buffer.len)
}

// writeBuffer writes len bytes of the data ptr points to to stdout.
// writeBuffer returns the amount of bytes written on success or -1 on failure.
writeBuffer(ptr *byte, len int) -> (written int) {
	return syscall(_write, 1, ptr, len)
}


