<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form</title>
</head>
<body>
    <form action="http://localhost:8080/api/malay" method="post">
        <label for="lat">Latitude</label>
        <input type="number" name="lat" id="" step="0.00000001"> <br>

        <label for="long">Longitude</label>
        <input type="number" name="long" id="" step="0.0000001"> <br>
    
        <label for="cases">Apakah di wilayah anda terdapat?</label>
        <select name="cases" id="">
            <option value="0">Tidak</option>
            <option value="1">Iya</option>
            <option value=''>Mungkin</option>
        </select>
        <br>
        <input type="submit" value="Insert">
        <input type="reset" value="Reset">
    </form>
</body>
</html>