#!/bin/sh

_git_del () {
    # list of branches for deleting
    __gitcomp_nl "$(__git_refs '' 1)"
}