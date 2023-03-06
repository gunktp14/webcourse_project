<?php
interface lregister {
    public function getRegisterCourse(string $cs_id):array;
    public function registerCourse(array $data_reg_course):bool;

}

Class Register implements lregister {
  private $ConDB;
    public function __construct(){
        $con = new ConDB();
        $con->connect();
        $this->ConDB = $con->conn;
    }
  // public function getRegisterCourse(string $cs_id)
   public function getRegisterCourse(string $cs_id):array
  {
    $sql = "SELECT * FROM sci_cs where cs_id = ".$cs_id;
    $query = $this->ConDB->prepare($sql);
    if( $query->execute()){
        $result = $query->fetch(PDO::FETCH_ASSOC);
        return $result;
    }else {
        return false;
    }
  }
  public function registerCourse(array $data_reg_course):bool
  {
      $sql = "INSERT INTO `sci_re` (`re_id`, `re_email`, `re_prefix`, `re_name`, `re_phonenumber`, `re_IDnumber`, `re_educational`, `re_img`, `re_course_reg`)";
      $sql .= " VALUES ('', :re_email, :re_prefix, :re_name, :re_phonenumber , :re_IDnumber , :re_educational, :re_img, :re_course_reg);";
      $query = $this->ConDB->prepare($sql);
      if($query->execute($data_reg_course)){
          return true;
      }else {
          return false;
      }
  }

//     private $isOn = false;
  
//     public function activate() {
//       $this->isOn = true;
//     }
    
//     public function deactivate() {
//       $this->isOn = false;
//     }
    
//     public function isActive() {
//       return $this->isOn;
//     }
//   }
  
//   $machine = new Kettle();
  
//   $machine->activate();
//   if($machine->isActive()) {
//     echo "The machine is on";
//   } else {
//     echo "The machine is off";
//   }
  
//   echo "<br>";
//   $machine->deactivate();
//   if($machine->isActive()) {
//     echo "The machine is on";
//   } else {
//     echo "The machine is off";
  }
?>