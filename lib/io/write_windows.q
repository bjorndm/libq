write(buffer string) -> (written int) {
	stdout := kernel32.GetStdHandle(-11)
	kernel32.WriteFile(stdout, buffer.ptr, buffer.len, 0, 0)
	return buffer.len
}

// writeBuffer writes len bytes of the data ptr points to to stdout.
// writeBuffer returns the amount of bytes written on success or -1 on failure.
writeBuffer(ptr *byte, len int) -> (written int) {
	stdout := kernel32.GetStdHandle(-11)
	if kernel32.WriteFile(stdout, buffer.ptr, buffer.len, 0, 0) {
		return len
	} else {
		return -1
	}
}

extern {
	kernel32 {
		GetStdHandle(device int64) -> (handle int64)
		WriteFile(fd int64, buffer *byte, length uint32, written *uint32, overlapped *any) -> (success bool)
	}
}