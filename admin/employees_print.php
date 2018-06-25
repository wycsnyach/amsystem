<?php
/**
 * Created by PhpStorm.
 * User: wnyachiro
 * Date: 6/22/2018
 * Time: 2:34 PM
 */
?>
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

    $sql = "SELECT *, employees.id AS empid FROM employees LEFT JOIN POSITION ON position.id=employees.position_id LEFT JOIN schedules ON schedules.id=employees.schedule_id";

    $query = $conn->query($sql);
    $total = 0;
    while($row = $query->fetch_assoc()){
        $contents .= "
			<tr>

				<td>".$row['lastname']." ".$row['firstname']."</td>
				<td>".$row['employee_id']."</td>
				<td>".$row['description']."</td>
				<td>".date('h:i A', strtotime($row['time_in'])).' - '. date('h:i A', strtotime($row['time_out']))."</td>
				<td>".date('M d, Y', strtotime($row['created_on']))."</td>
			</tr>
			";
    }

    return $contents;
}

require_once('../tcpdf/tcpdf.php');
$pdf = new TCPDF('P', PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);
$pdf->SetCreator(PDF_CREATOR);
$pdf->SetTitle('Quest Holdings - Employee List');
$pdf->SetHeaderData('', '', PDF_HEADER_TITLE, PDF_HEADER_STRING);
$pdf->setHeaderFont(Array(PDF_FONT_NAME_MAIN, '', PDF_FONT_SIZE_MAIN));
$pdf->setFooterFont(Array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA));
$pdf->SetDefaultMonospacedFont('helvetica');
$pdf->SetFooterMargin(PDF_MARGIN_FOOTER);
$pdf->SetMargins(PDF_MARGIN_LEFT, '10', PDF_MARGIN_RIGHT);
$pdf->setPrintHeader(false);
$pdf->setPrintFooter(false);
$pdf->SetAutoPageBreak(TRUE, 10);
$pdf->SetFont('helvetica', '', 9);
$pdf->AddPage();
$content = '';
$content .= '
      	<h2 align="center">Quest Holdings Ltd.</h2>
      	<h4 align="center">Employee List</h4>
      	<table border="1" cellspacing="0" cellpadding="3">
           <tr>

           		<th width="25%" align="center"><b>Employee Name</b></th>
                <th width="17%" align="center"><b>Employee ID</b></th>
				<th width="20%" align="center"><b>Position</b></th>
				<th width="20%" align="center"><b>Schedule</b></th>
				<th width="18%" align="center"><b>Member Since</b></th>
           </tr>
      ';
$content .= generateRow($conn);
$content .= '</table>';
$pdf->writeHTML($content);
$pdf->Output('schedule.pdf', 'I');

?>