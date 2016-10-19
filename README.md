# Stack Overflow Code Formatter

This program barely deserves its own repository, but whatever.

If you pass this script a source file (C family languages), it will turn it from:

	if (brk(proc_break + strlen(feed)+1 ) < 0) {
		perror("Couldn't Allocate Memory!!!\n");
		exit(3);
	}

To:

	/* 52 */  if (brk(proc_break + strlen(feed)+1 ) < 0) {
	/* 53 */      perror("Couldn't Allocate Memory!!!\n");
	/* 54 */      exit(3);
	/* 55 */  }

Tabs are converted into four spaces each.

---

My motivation to write this comes from the abhorrent code formatting on Stack Overflow. Even code that doesn't compile still deserves to look good.
