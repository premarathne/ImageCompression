
var uploadImg = undefined;
var compressImg = undefined;

function uploadImage()
{

    if(uploadImg!==undefined)
    {

                $.ajax({
                    type: "POST",
                    enctype: 'multipart/form-data',
                    url: "FileUploadHandler",
                    data: uploadImg,
                    // data: data,
                    processData: false,
                    contentType: false,
                    cache: false,
                    timeout: 600000,
                    success: function (data) {
                        uploadImg = undefined;

                        if (data == 1) {
                            swal({
                                icon: "success",
                                title: "File Uploaded Sucessfully!!"
                            });
                        } else {
                            swal({
                                icon: "error",
                                title: "Upload Failed!!"
                            });
                        }
                    }
                });
            }
    else
        {
            swal({
                icon: "error",
                title: "Please Select a File!!"
            });

        }
        }

function compressImage()
{

    const file = $('#file')[0].files[0];
    var imgname=document.getElementById('imagename')
    imgname.innerText=file.name;
    var imgsize=document.getElementById('imagesize')
    imgsize.innerText=file.size/1024+" KiloBytes";
    var imagetype = document.getElementById('imagetype')
    compressimagesize.innerText=file.size/1024+" KB";
    imagetype.innerText=file.type

    var image = document.getElementById('input');
    image.src = URL.createObjectURL(file);

        if (!file) {
            return;
        }

        new Compressor(file,
            {
            quality: 0.5,

            success(result)
            {
                compressImg= result;
                const formData = new FormData();
                formData.append('customerFile', result, result.name);

                uploadImg = formData;
                var compressimagename=document.getElementById('compressimagename')
                compressimagename.innerText=file.name;
                var compressimagesize=document.getElementById('compressimagesize')
                var compressimagetype = document.getElementById('compressimagetype')
                compressimagesize.innerText=compressImg.size/1024+" KB";
                compressimagetype.innerText=compressImg.type
                var image1 = document.getElementById('output');
                image1.src = URL.createObjectURL( compressImg);

            },
            error(err)
            {
                console.log(err.message);
            },
        });
}
function downloadImage()
{
    if(compressImg!==undefined)
    {
        url = URL.createObjectURL(compressImg);
        var a = document.createElement('A');
        a.href = url;
        a.download = url.substr(url.lastIndexOf('/') + 1);
        document.body.appendChild(a);
        a.click();
        document.body.removeChild(a);
    }
}
