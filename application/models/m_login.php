<?php if(!defined('BASEPATH')) exit('Hacking Attempt : Keluar dari sistem..!!');

class M_login extends CI_Model
{
  public function __construct()
  {
    parent::__construct();
  }
  
  public function getPriv(){
    $query=$this->db->query("SELECT * FROM table_privilege");
    return $query->result();

  }

  public function getLogin(){
    $this->db->select('*');
    $this->db->from('table_user');
    $this->db->where('userId', $username);

    return $query->result();

  }


  public function getSiteTitle(){
    $query=$this->db->query("SELECT * FROM table_setting");
    return $query->result();

  }

  public function ambilPengguna($username, $password, $status, $level)
  {
    $this->db->select('*');
    $this->db->from('table_user');
    $this->db->where('userId', $username);
    $this->db->where('userPassword', $password);
    $this->db->where('userStatus', $status);
    $this->db->where('fkPrivilegeId', $level);
    $query = $this->db->get();
    
    return $query->num_rows();
  }
  
  
  public function dataPengguna($username)
  {
   $this->db->select('userId');
   $this->db->select('userName');
   $this->db->where('userId', $username);
   $query = $this->db->get('table_user');
   
   return $query->row();
  }
  
}  

?>