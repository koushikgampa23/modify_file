import os
from fastapi import FastAPI, File, UploadFile
from fastapi.responses import FileResponse
from flask import request

UPLOAD_DIR = "c:\\Users\\prjanani\\Desktop\\work\\working.dir\\temp_batch\\temp"
app = FastAPI()

@app.get("/")
async def index():
    return FileResponse("index.html")

@app.post("/upload_and_download/")
async def upload_and_download(xmlFile: UploadFile = File(...)):
    # Upload the XML file
    file_location = os.path.join(UPLOAD_DIR, xmlFile.filename)
    with open(file_location, "wb") as f:
        f.write(xmlFile.file.read())

    # Generate and return the download URL
    download_url = f"/download_file/{xmlFile.filename}"
    return {"message": "Upload successful", "download_url": download_url}

# @app.route('/rewrite_file/', methods=['POST'])
# def upload_and_download():
#     uploaded_file = request.files['C:\Users\prjanani\Desktop\work\working.dir\temp_batch\romAI_Model.tpl']
    
#     # Get the filename from the URL (replace with your URL)
#     url = "http://example.com/somepath"
#     filename = url.split("/")[-1]
    
#     # Save the uploaded file with the dynamically generated filename
#     uploaded_file.save(f"uploads/{filename}")
    
#     # Return a response indicating success (replace with your response logic)
#     return "File uploaded successfully"

# from flask import Flask, request, jsonify

# app = Flask(__name__)

# # Define an API endpoint to read and update the file
# @app.route('/update_template', methods=['POST'])
# def update_template():
#     try:
#         file_path = 'C:/Documents/your_template.tpl'  # Update this with the actual file path
#         new_url = request.json.get('url')

#         # Read the content of the file
#         with open(file_path, 'r') as file:
#             content = file.read()

#         # Replace the URL field with the new URL
#         content = content.replace('URL_PLACEHOLDER', new_url)

#         # Write the updated content back to the file
#         with open(file_path, 'w') as file:
#             file.write(content)

#         return jsonify({'message': 'File updated successfully'})
#     except Exception as e:
#         return jsonify({'error': str(e)}), 500

# if __name__ == '__main__':
#     app.run(debug=True)


# @app.get("/download_file/{filename}")
# async def download_file(filename: str):
#     file_path = os.path.join(UPLOAD_DIR, filename)
#     return FileResponse(file_path, headers={"Content-Disposition": f"attachment; filename={filename}"})

if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="0.0.0.0", port=8000)
