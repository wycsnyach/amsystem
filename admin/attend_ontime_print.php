<?php
/**
 * Created by PhpStorm.
 * User: wnyachiro
 * Date: 6/22/2018
 * Time: 2:08 PM
 */
?>
<?php
include 'includes/session.php';

function generateRow($conn){
    $contents = '';
    $today = date('Y-m-d');

    $sql = "SELECT *, employees.employee_id AS empid, attendance.id AS attid FROM attendance LEFT JOIN employees ON employees.id=attendance.employee_id WHERE date = '$today' AND attendance.status=1
                                        ORDER BY attendance.date DESC, attendance.time_in DESC";

    $query = $conn->query($sql);
    $total = 0;
    while($row = $query->fetch_assoc()){
        $contents .= "
			<tr>
				<td>".date('M d, Y', strtotime($row['date']))."</td>
				<td>".$row['lastname'].", ".$row['firstname']."</td>
				<td>".$row['employee_id']."</td>
				<td>".date('h:i A', strtotime($row['time_in'])).' - '. date('h:i A', strtotime($row['time_out']))."</td>
			</tr>
			";
    }

    return $contents;
}

require_once('../tcpdf/tcpdf.php');
$pdf = new TCPDF('P', PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);
$pdf->SetCreator(PDF_CREATOR);
$pdf->SetTitle('Quest Holdings - Employee Schedule');
$pdf->SetHeaderData('', '', PDF_HEADER_TITLE, PDF_HEADER_STRING);
$pdf->setHeaderFont(Array(PDF_FONT_NAME_MAIN, '', PDF_FONT_SIZE_MAIN));
$pdf->setFooterFont(Array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA));
$pdf->SetDefaultMonospacedFont('helvetica');
$pdf->SetFooterMargin(PDF_MARGIN_FOOTER);
$pdf->SetMargins(PDF_MARGIN_LEFT, '10', PDF_MARGIN_RIGHT);
$pdf->setPrintHeader(false);
$pdf->setPrintFooter(false);
$pdf->SetAutoPageBreak(TRUE, 10);
$pdf->SetFont('helvetica', '', 11);
$pdf->AddPage();
$content = '';
$content .= '
      	<h2 align="center">Quest Holdings Ltd.</h2>
      	<h4 align="center">Late Employee Report</h4>
      	<table border="1" cellspacing="0" cellpadding="3">
           <tr>
           		<th width="20%" align="center"><b>Date</b></th>
           		<th width="30%" align="center"><b>Employee Name</b></th>
                <th width="20%" align="center"><b>Employee ID</b></th>
				<th width="30%" align="center"><b>Schedule</b></th>
           </tr>
      ';
$content .= generateRow($conn);
$content .= '</table>';
$pdf->writeHTML($content);
$pdf->Output('schedule.pdf', 'I');

?>