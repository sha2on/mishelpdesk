<?php if(!defined('BASEPATH')) exit('Hacking Attempt. Keluar dari sistem.');

class Admin extends CI_Controller /* Konsruktor*/
{
  public function __construct()
  {
    parent::__construct();
      $this->load->library(array('form_validation','session','pagination'));
      $this->load->helper(array('url','date'));
      $this->load->database();
      $this->load->model(array('m_login','m_operator','m_admin'));
      $level = $this->session->userdata('level');

     if($level<>1){
        redirect('home');
     } 
  }

/*Index page /admin */
public function index($id=NULL)
  {   //Validasi
      if($this->session->userdata('isLogin') == FALSE)
        {
          redirect('login/login_form');
      }else{
            $user = $this->session->userdata('username');
            $data['level'] = $this->session->userdata('level');  
            $data['pengguna'] = $this->m_login->dataPengguna($user);
            }

            //Memanggil data table_category
            $jumlahcat = $this->db->get('table_category');

            //pengaturan pagination
             $config['base_url'] = base_url().'admin/index';
             $config['total_rows'] = $jumlahcat->num_rows();
             $config['per_page'] = '5';
             $config['first_page'] = 'First';
             $config['last_page'] = 'Last';
             $config['next_page'] = '&laquo;';
             $config['prev_page'] = '&raquo;';

             //Inisialisasi
             $this->pagination->initialize($config);
             $data['page'] = $this->pagination->create_links();
             //$data['case_list'] = $this->m_operator->getProblem();
             $data['category_list'] = $this->m_operator->getCategory($config['per_page'], $id);
             $data['case_list'] = $this->m_operator->getProblem();
             $data['case_processed'] = $this->m_operator->getProblemProcessed();
             $data['case_fix'] = $this->m_operator->getProblemFixed();

      $this->load->view('css/header');
      $this->load->view('admin/topnav',$data);
      $this->load->view('admin/adminmenu');
      $this->load->view('admin/ticketlist');
      $this->load->view('css/js');
      $this->load->view('css/store_process');
      $this->load->view('css/footer');
  }


  public function addcategory(){
    $this->m_admin->insertcategory();
    redirect('admin');}

public function updatecategory(){
  $this->m_operator->setCategory();
  redirect('admin');
}

  public function delete($id = null){
  $this->m_operator->deleteCategory($id);
  redirect('admin');
}

public function updatequeued($id = null){
  $this->m_operator->setQueued($id);
  redirect('admin');
}


public function deletecase($id=null){
  $this->m_operator->deleteCase($id);
  redirect('admin');
}

public function closecase($id = null){
  $this->m_operator->setClosed($id);
  redirect('admin');
}

public function deletecaseproses($id=null){
  $this->m_operator->deleteCaseProcess($id);
  redirect('admin');
}

public function updateprocess(){
  $this->m_operator->setProcess();
  redirect('admin');
}

public function deletecaseclosed($id=null){
  $this->m_operator->deleteCaseClosed($id);
  redirect('admin');
}

/*--------------------------------- START CONTROLLER PAGE COMPANY (admin/company)--------------------------------------------*/
  public function company()
  {
    if($this->session->userdata('isLogin') == FALSE)
          {
            redirect('login/login_form');
            }else
          {
            $user = $this->session->userdata('username');
            $data['level'] = $this->session->userdata('level');  
            $data['pengguna'] = $this->m_login->dataPengguna($user);
     
            }

    $this->load->model('m_admin');
    $data['site_list'] = $this->m_admin->getSiteList();
    $data['site_table'] = $this->m_admin->tableSite();
    $data['client_list'] = $this->m_admin->getClientList();
    $data['getsitetotalclient'] = $this->m_admin->getTotalClientOfList();

    $this->load->view('css/header');
    $this->load->view('admin/topnav',$data);
    $this->load->view('admin/adminmenu');
    $this->load->view('admin/companylist');
    $this->load->view('css/js');
    $this->load->view('css/store_process');
    $this->load->view('css/footer');
  } 



  /*Fungsi menambahkan Site ke database : /admin/addsite_to_db*/
  public function addsite_to_db(){
    $this->m_admin->addSite();
    redirect('admin/company');
  }

  /*Fungsi getSite untuk ditampilkan di DropDown*/
  public function getSite(){
    $data['site_list'] = $this->m_admin->getSiteList();
  
  }

  /*Fungsi menambahkan Client ke database : /admin/addclient_to_db*/
  public function addclient_to_db(){
    $this->m_admin->addClient();
    redirect('admin/company');
  }

  public function deletesite($id = null){
  $this->m_admin->deleteSite($id);
  redirect('admin/company');
}


public function deleteclient($id = null){
  $this->m_admin->deleteClient($id);
  redirect('admin/company');
}

public function updatesitename(){
  $this->m_admin->setSitename();
  redirect('admin/company');
}

public function updateclient(){
  $this->m_admin->setClientname();
  redirect('admin/company');
}

/*--------------------------------- START CONTROLLER PAGE USER (admin/user)--------------------------------------------*/
  public function user()
  {
    if($this->session->userdata('isLogin') == FALSE)
          {
            redirect('login/login_form');
            }else
          {
            $user = $this->session->userdata('username');
            $data['level'] = $this->session->userdata('level');  
            $data['pengguna'] = $this->m_login->dataPengguna($user);
     
            }

    $data['user_list'] = $this->m_admin->listUser();
    $data['level_list'] = $this->m_admin->getPriv();
    $data['priv_list'] = $this->m_login->getPriv();

    $this->load->view('css/header');
    $this->load->view('admin/topnav',$data);
    $this->load->view('admin/adminmenu');
    $this->load->view('admin/userlist');
    $this->load->view('css/js');
    $this->load->view('css/store_process');
    $this->load->view('css/footer');
  }

  public function check_username_availablity(){
      $this->load->model('m_admin');
      $get_result = $this->m_admin->check_username_availablity();
  
        if(!$get_result )
            echo '<span style="color:#f00">Username already in use. </span>';
        else
            echo '<span style="color:#00c">Username Available</span>';
    }

  public function adduser_to_db(){
    $this->load->model('m_admin');
    $this->m_admin->addUser();
    redirect('admin/user');
  }

  public function deleteuser($id = null){
  $this->m_admin->deleteUser($id);
  redirect('admin/user');
}

public function updateuser(){
  $this->m_admin->setUserData();
  redirect('admin/user');
}



/*--------------------------------- START CONTROLLER PAGE REPORT (admin/report)--------------------------------------------*/
  public function report()
  {
    if($this->session->userdata('isLogin') == FALSE)
          {
            redirect('login/login_form');
            }else
          {
            $user = $this->session->userdata('username');
            $data['level'] = $this->session->userdata('level');  
            $data['pengguna'] = $this->m_login->dataPengguna($user);
     
            }

            $data['site_list'] = $this->m_admin->getSiteList();

    $this->load->view('css/header');
    $this->load->view('admin/topnav',$data);
    $this->load->view('admin/adminmenu');
    $this->load->view('admin/report');
    $this->load->view('css/js');
    $this->load->view('css/logic_date');
    $this->load->view('css/footer');
  } 



public function createrepport()
{
  $datestring = "%d/%m/%Y - %h:%i %A";
  $waktu = mdate($datestring);
  //$site = trim($this->input->post('siteid'));
  //$dateone = trim($this->input->post('start'));
  //$datetwo = trim($this->input->post('endingdate'));
  //$hasil = $this->m_admin->getReport($dateone,$datetwo);
  $hasil = $this->m_admin->getReport();
      //print_r($hasil);
//exit();
      require_once APPPATH.'libraries/PHPExcel.php';
      $excel = new PHPExcel();
      
      /*Start PageStyle*/
      $fontBig = array('size' => '16', 'bold' => true, 'name'=>'Calibri');
      $fontBold = array('size' => '11', 'bold' => true, 'name'=>'Calibri');
      $fontData = array('size' => '10', 'bold' => true, 'name'=>'Arial');

      $titleStyle = array(
        'alignment' => array(
            'horizontal' => PHPExcel_Style_Alignment::HORIZONTAL_CENTER, 'vertical' => PHPExcel_Style_Alignment::VERTICAL_CENTER,
        )
    );

      $border = $styleArray = array(
        'borders' => array(
          'allborders' => array(
            'style' => PHPExcel_Style_Border::BORDER_THIN
          )
        )
      );
      /*End Page Style*/
      
      $excel->setActiveSheetIndex(0);
      $excel->setActiveSheetIndex(0)->mergeCells('C1:I2');
      $excel->setActiveSheetIndex(0)->mergeCells('A1:B1');
      $excel->setActiveSheetIndex(0)->mergeCells('J1:K1');
      $sheet = $excel->getActiveSheet();
      $sheet->getStyle()->getNumberFormat()->setFormatCode('@');
      $sheet->setTitle('REPORT Troubleshoot');

      $colsname = array('No' => 'A', 'Date Opened' => 'B', 'Time Opened' => 'C', 'Analyst' => 'D', 'Status' => 'E', 'Customer' => 'F', 'Details' => 'G', 'Category' => 'H', 'Resolution' => 'I' , 'Time Closed' => 'J', 'Date Closed' => 'K', 'Site' => 'L' );

      $endcol = 'L';
      $sheet->setCellValue('C1', 'IPS ACTIVITY LOG WEEKLY');
      $sheet->setCellValue('A1', 'LOGO');
      $sheet->setCellValue('J1', 'NOMOR');
      
      $sheet->getStyle('C1:I2')->getFont()->applyFromArray($fontBig);
      $sheet->getStyle('A1')->getFont()->applyFromArray($fontBig);
      $sheet->getStyle('A2:A3')->getFont()->applyFromArray($fontBold);
      $sheet->getStyle("C1:I2")->applyFromArray($titleStyle);

      foreach ($colsname as $key => $value){
        $sheet->getColumnDimension($value)->setAutoSize(true);
        $sheet->getRowDimension($value)->setRowHeight(100);
        $sheet->setCellValue($value.'5', $key);
      }
      $sheet->getStyle('A5:'.$endcol.'5')->getFont()->applyFromArray($fontBold);
      $sheet->getStyle('A5:'.$endcol.'5')->applyFromArray($titleStyle);

      $row = 5;
      if (isset($hasil)) {
        foreach ($hasil as $r) {
          $row++;
          $sheet->setCellValue('A'.$row, ($row-5));
          $sheet->getCell('B'.$row)->setValueExplicit($r['caseDateOpened'], PHPExcel_Cell_DataType::TYPE_STRING);
          $sheet->setCellValue('C'.$row, $r['caseTimeOpened']);
          $sheet->setCellValue('D'.$row, $r['caseAnalyst']);
          $sheet->setCellValue('E'.$row, $r['caseStatusCategory']);
          $sheet->setCellValue('F'.$row, $r['clientSiteName']);
          $sheet->setCellValue('G'.$row, $r['caseDetail']);
          $sheet->setCellValue('H'.$row, $r['categoryName']);
          $sheet->setCellValue('I'.$row, $r['caseResolution']);
          $sheet->setCellValue('J'.$row, $r['caseTimeClosed']);
          $sheet->setCellValue('K'.$row, $r['caseDateClosed']);
		  $sheet->setCellValue('L'.$row, $r['siteName']);
        }
        $sheet->getStyle('A5:'.$endcol.$row)->applyFromArray($border);
      }
      
      $writer = new PHPExcel_Writer_Excel5($excel);
      header('Content-type: application/vnd.ms-excel');
      $waktu = str_replace('/', '_', $waktu);
      $filename = 'IPS_LOGBOOK_'.$waktu.'.xls';
      header("Content-Disposition: attachment; filename=\"".$filename."\"");
      $writer->save('php://output'); 
      $excel->disconnectWorksheets();
      unset($excel);

    }


/*Admin profile page*/
  public function profile()
  {
    if($this->session->userdata('isLogin') == FALSE)
          {
            redirect('login/login_form');
            }else
          {
            $user = $this->session->userdata('username');
            $data['level'] = $this->session->userdata('level');  
            $data['pengguna'] = $this->m_login->dataPengguna($user);
     
            }

    $this->load->view('css/header');
    $this->load->view('admin/topnav',$data);
    $this->load->view('admin/adminmenu');
    $this->load->view('admin/profile');
    $this->load->view('css/js');
    $this->load->view('css/footer');
  }


  public function updatepass(){
  $this->m_admin->updatePassword();
  redirect('admin/profile');
}

public function setting()
  {
    if($this->session->userdata('isLogin') == FALSE)
          {
            redirect('login/login_form');
            }else
          {
            $user = $this->session->userdata('username');
            $data['level'] = $this->session->userdata('level');  
            $data['pengguna'] = $this->m_login->dataPengguna($user);
     
            }

    $this->load->view('css/header');
    $this->load->view('admin/topnav',$data);
    $this->load->view('admin/adminmenu');
    $this->load->view('admin/setting');
    $this->load->view('css/js');
    $this->load->view('css/footer');
  }

public function submitsetting(){
  $this->m_admin->submitSetting();
  redirect('admin/setting');
}

}

?>