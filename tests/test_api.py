# -*- coding: utf-8 -*-

from learn_lua import api


def test():
    _ = api


if __name__ == "__main__":
    from learn_lua.tests import run_cov_test

    run_cov_test(__file__, "learn_lua.api", preview=False)
