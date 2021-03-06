<?php
defined('BASEPATH') or exit('No direct script access allowed');

class dDashboard extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        //Session Login
        if (!$this->session->userdata('email')) {
            redirect('Auth/access_blocked');
        } else {
            $role = $this->session->userdata('id_role');
            if ($role != '2') {
                redirect('Auth/access_blocked');
            }
        }
    }

    public function index()
    {
        //title
        $data['title'] = 'Dashboard';

        //ambil data session login
        $data['user'] = $this->db->get_where('tb_user', ['email' => $this->session->userdata('email')])->row_array();
        $data['role'] = $this->db->get_where('tb_role', ['id_role' => $this->session->userdata('id_role')])->row_array();
        $data['totalAppointment'] = $this->db->get_where('tb_event', ['id_dosen' => $this->session->userdata('id_user')])->num_rows();
        $data['totalChat'] = $this->db->get_where('tb_chat', ['id_dosen' => $this->session->userdata('id_user')])->num_rows();
        $data['totalStudent'] = $this->db->get_where('tb_user', ['id_prodi' => $data['user']['id_prodi']])->num_rows();
        $data['pendingAppointment'] = $this->db->get_where('tb_event', ['id_dosen' => $this->session->userdata('id_user'), 'status' => 'waiting'])->num_rows();

        $this->load->view('templates/header', $data);
        $this->load->view('templates/dosen_sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('dosen/d_dashboard', $data);
        $this->load->view('templates/footer');
    }
}
