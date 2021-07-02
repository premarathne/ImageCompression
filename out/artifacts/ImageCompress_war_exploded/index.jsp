<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>File Uploading Form</title>
  <script src="customjs/ImageUpload.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
  <script src="js/compressor.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<body>
<div class="card-body">
  <div class="card-body mb-10">
    <div class="card-body">
      <h4>Image Compression</h4>
         <div class="row">
           <div class="col-7">
             <input type="file"  class="form-control" id="file" accept="image/*" onchange="compressImage()">
           </div>
            <div class="col-5">
              <button type="button" class="btn btn-primary" id="uploadbtn" onclick="uploadImage()">Upload</button>
            </div>
        </div>
    </div>
    <div class="row">
      <div class="col-11">
        <div class="card mb-4">
            <h5 class="card-header d-flex align-items-center justify-content-between">
                <span>Original Image</span>
             </h5>
             <div class="card-body">
              <div class="row">
                <div class="col-md-5 d-flex mb-3">
                  <div class="w-100 text-center">
                    <img id="input" width="400">
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="row">
                    <dt class="col-3">name</dt>
                    <dd class="col-7" id="imagename"></dd>
                    <dt class="col-3">type</dt>
                    <dd class="col-7" id="imagetype"></dd>
                    <dt class="col-3">size</dt>
                    <dd class="col-7" id="imagesize"></dd>
                  </div>
                </div>
              </div>
          </div>
      </div>
      </div>
    </div>
    <div class="row">
      <div class="col-11">
          <div class="card">
             <h5 class="card-header d-flex align-items-center justify-content-between">
                 <span>Compressed Image</span>
                   <button type="button" class="btn btn-primary" id="downloadBtn" onclick="downloadImage()">Save Compressed Image</button>
             </h5>
               <div class="card-body">
                  <div class="row">
                    <div class="col-md-5 d-flex mb-3">
                      <div class="w-100 text-center">
                        <img id="output" width="400">
                      </div>
                    </div>
                    <div class="col-md-6">
                      <div class="row">
                        <dt class="col-3">name</dt>
                        <dd class="col-7" id="compressimagename"></dd>
                        <dt class="col-3">type</dt>
                        <dd class="col-7" id="compressimagetype"></dd>
                        <dt class="col-3">size</dt>
                        <dd class="col-7" id="compressimagesize"></dd>
                    </div>
                  </div>
                </div>
               </div>
            </div>
        </div>
    </div>
  </div>
</div>
</body>
</html>
