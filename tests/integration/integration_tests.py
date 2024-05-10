import requests
import unittest

ENDPOINT = "http://app:5000/upload"

class UploadFileTest(unittest.TestCase):
    files_dir = "/tester/integration/examples"

    def test_upload_allowed_file(self):
        filename = "correct_file.txt"
        with open(f"{self.files_dir}/{filename}", "rb") as f:
            files = {'file': f}
            response = requests.post(ENDPOINT, files=files)
            self.assertIn("correct_file.txt", response.json()["files"])

    def test_upload_unresolved_file(self):
        filename = "bad_file.md"
        with open(f"{self.files_dir}/{filename}", "rb") as f:
            files = {'file': f}
            response = requests.post(ENDPOINT, files=files)
            self.assertIn("text/html", response.headers['content-type'])


if __name__=="__main__":
    unittest.main()