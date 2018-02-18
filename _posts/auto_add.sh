
#!/usr/bin/env sh

# Gitadd - A shorthand shell script for a git add, commit and push

# Copyright (C) 2012 Rob Dudley
# Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
# The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

# do we have more than one argument?
if [ $# -gt 1 ]; then
	echo "$# arguments provided, 1 expected."
	echo "Usage: gitadd [commitMessage]. Aborting."
	exit 1
fi

# Is git installed on user's path?
command -v git >/dev/null 2>&1 || { echo "git is required but not found in $PATH. Aborting." >&2; exit 1; }

# Add all files in the current dir
git add --all -v '*'

# Did we get a clean add?
if [ $? -ne 0 ]; then
	# No
	echo 'No files added. Please check script output for details. Aborting.'
	exit $?
fi

# # Do we have a message?
# if [ $# -eq 0 ]; then
# 	# no commit msg - need to ask for one
# 	echo "Please supply a commit message:"
# 	read
# 	MSG=$REPLY
# else
# 	# We have a commit message passed in
# 	MSG=$1
# fi

# # Commit
# git commit -vam "$MSG"

# Commit
git commit -vam "some minor change"


# Did we get a clean commit?
if [ $? -eq 0 ]; then
	# Yes - Push
	git push -v
else
	# No ... erm?
	echo 'Not pushed. Please check script output for details. Aborting.'
	exit $?
fi