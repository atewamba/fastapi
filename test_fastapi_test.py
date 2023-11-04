from fastapi_test import read_root


def test_read_root():
    assert {"Hello": "World"}==read_root()