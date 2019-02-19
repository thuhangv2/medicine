<!doctype html>
<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Laravel</title>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <div id="signupbox" style=" margin-top:50px" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
        <div class="panel panel-info">
            <div class="panel-heading">
                <h1>Install S-cart</h1>
            </div>
            <div class="panel-body" >
                    <form  class="form-horizontal">
                        <div id="div_database_host" class="form-group required">
                            <label for="database_host"  required class="control-label col-md-4  requiredField"> Database host<span class="asteriskField">*</span> </label>
                            <div class="controls col-md-8 ">
                                <input class="input-md  textinput textInput form-control" id="database_host"  name="database_host" placeholder="Choose your username" style="margin-bottom: 10px" type="text" value="127.0.0.1" />
                            </div>
                        </div>
                        <div id="div_database_port" class="form-group required">
                            <label for="database_port"  required class="control-label col-md-4  requiredField"> Database port<span class="asteriskField">*</span> </label>
                            <div class="controls col-md-8 ">
                                <input class="input-md  textinput textInput form-control" id="database_port"  name="database_port" placeholder="Choose your username" style="margin-bottom: 10px" type="number" value="3306" />
                            </div>
                        </div>
                        <div id="div_database_name" class="form-group required">
                            <label for="database_name"  required class="control-label col-md-4  requiredField"> Database name<span class="asteriskField">*</span> </label>
                            <div class="controls col-md-8 ">
                                <input class="input-md  textinput textInput form-control" id="database_name"  name="database_name" placeholder="Choose your username" style="margin-bottom: 10px" type="text" value="" />
                            </div>
                        </div>
                        <div id="div_database_user" class="form-group required">
                            <label for="database_user"  required class="control-label col-md-4  requiredField"> Database user<span class="asteriskField">*</span> </label>
                            <div class="controls col-md-8 ">
                                <input class="input-md  textinput textInput form-control" id="database_user"  name="database_user" placeholder="Choose your username" style="margin-bottom: 10px" type="text" value="" />
                            </div>
                        </div>
                        <div id="div_database_password" class="form-group required">
                            <label for="database_password"  required class="control-label col-md-4  requiredField"> Database password<span class="asteriskField">*</span> </label>
                            <div class="controls col-md-8 ">
                                <input class="input-md  textinput textInput form-control" id="database_password"  name="database_password" placeholder="Choose your username" style="margin-bottom: 10px" type="text" value="" />
                            </div>
                        </div>
{{--                         <div class="form-group">
                            <div class="controls col-md-offset-4 col-md-8 ">
                                <div id="div_id_terms" class="checkbox required">
                                    <label for="id_terms" class=" requiredField">
                                         <input class="input-ms checkboxinput" id="id_terms" name="terms" style="margin-bottom: 10px" type="checkbox" />
                                         Agree with the terms and conditions
                                    </label>
                                </div>

                            </div>
                        </div> --}}
                        <div id="msg" class="form-group required"></div>
                        <div class="form-group">
                            <div class="controls col-md-4 "></div>
                            <div class="controls col-md-8 ">
                                <input type="button"  value="Install S-Cart" class="btn btn-primary btn btn-info" id="submit-install" />
                            </div>
                        </div>
                </form>
            </div>
        </div>
    </div>
</div>
</div>

<script type="text/javascript">
$('#submit-install').click(function(event) {
    $(this).button('loading');
    $.ajax({
        url: 'install.php',
        type: 'POST',
        dataType: 'json',
        data: {
            database_host:$('#database_host').val(),
            database_port:$('#database_port').val(),
            database_name:$('#database_name').val(),
            database_user:$('#database_user').val(),
            database_password:$('#database_password').val(),
            step:'step1',
        },
    })
    .done(function(data) {
        error= parseInt(data.error);
        if(error != 1 && error !=0){
            $('#msg').html(data);
        }
        else if(error ===0)
        {
            generateKey();
        }else{
            $('#msg').html(data.msg);
        }
    })
    .fail(function() {
        $('#msg').html("error while installing");
        // $(this).button('reset');
    })
    .always(function() {
        $('#msg').html("Installing");
    });

});

function generateKey(){
    $.ajax({
        url: 'install.php',
        type: 'POST',
        dataType: 'json',
        data: {step: 'step2'},
    })
    .done(function(data) {
        error= parseInt(data.error);
        if(error != 1 && error !=0){
            $('#msg').html(data);
        }
        else if(error ===0)
        {
            installDatabase();
        }else{
            $('#msg').html(data.msg);
        }

    })
    .fail(function() {
        $('#msg').html("error while generating key");
    })
    .always(function() {
        $('#msg').html("generating key");
    });
}

function installDatabase(){
    $.ajax({
        url: 'install.php',
        type: 'POST',
        dataType: 'json',
        data: {step: 'step3'},
    })
    .done(function(data) {
         error= parseInt(data.error);
        if(error != 1 && error !=0){
            $('#msg').html(data);
        }
        else if(error ===0)
        {
            setPermission();
        }else{
            $('#msg').html(data.msg);
        }

    })
    .fail(function() {
        $('#msg').html("error while install database");
    })
    .always(function() {
        $('#msg').html("database");
    });
}

function setPermission(){
    $.ajax({
        url: 'install.php',
        type: 'POST',
        dataType: 'json',
        data: {step: 'step4'},
    })
    .done(function(data) {
         error= parseInt(data.error);
        if(error != 1 && error !=0){
            $('#msg').html(data);
        }
        else if(error ===0)
        {
            ('#msg').html("Done!!!!");
        }else{
            $('#msg').html(data.msg);
        }
        $
    })
    .fail(function() {
        $('#msg').html("error while set permission");
    })
    .always(function() {
        $('#msg').html("permission");
    });
}

</script>

</body>
</html>
