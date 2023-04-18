<?php

include_once './config/connectDB.php';
include_once './object/student.php';

$method = $_SERVER['REQUEST_METHOD'];
$uri = $_SERVER['REQUEST_URI'];$uri = trim($uri, "/");
$uri = explode("/", $uri);
$second = isset($uri[1]) ? strtolower($uri[1]) : '';
$count = count($uri);

switch ($count) {
    case 1:
        if ($uri[0] == "students") {
            switch ($method) {

                case "GET":
                    require __DIR__ . "/api/student/read.php";
                    break;

                case "POST":
                    $database = new Db();
                    $db = $database->getConnection();
                    $studente = new studente($db);
                    $data = json_decode(file_get_contents("php://input", true));
                    $studente->codice_fiscale = $data->codice_fiscale;
                    $studente->cognome = $data->cognome;
                    $studente->nome = $data->nome;
                    $studente->data_nascita = $data->data_nascita;
                    $studente->id_classe = $data->id_classe;
                    require __DIR__ . "/api/student/create.php";
                    break;
            }
        }
        break;
    case 2:
        if ($uri[0] == "students") {$id = $uri[1];
            switch ($method) {

                case "GET":$student_id = $id;
                    require __DIR__ . "/api/student/readOne.php";
                    break;
            
                case "DELETE":$student_id = $id;
                    require __DIR__ . "/api/student/delete.php";
                    break;

                case "PATCH":$data = json_decode(file_get_contents("php://input", true));
                    $database = new Db();
                    $db = $database->getConnection();
                    $studente = new studente($db);
                    
                    $studente->id = $uri[1];
                    $studente->nome = $data->nome;
                    $studente->cognome = $data->cognome;
                    $studente->data_nascita = $data->data_nascita;
                    $studente->codice_fiscale = $data->codice_fiscale;
                    $studente->id_classe = $data->id_classe;
                    
                    require __DIR__ . "/api/student/update.php";
                    break;
            }
            break;
        }
}