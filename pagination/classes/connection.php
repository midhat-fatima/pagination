<?php

class Connection{
    
  public $con;  
  public $error;  

  public function __construct(){  

    $this->con = mysqli_connect("localhost", "root", "", "users");  

    if(!$this->con){  

      echo 'Error Found..... ' . mysqli_connect_error($this->con);  
    }  
  }         
} 