from app import app

def test_home():
    # Create a test client using Flask's built-in helper
    client = app.test_client()

    response = client.get("/")
    assert response.status_code == 200
    assert b"Hello DevOps from Docker!" in response.data

