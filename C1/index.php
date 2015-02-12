<?
$PAGE->setPath( 'ug.{/notes/ellabs EE/EL/EM/EEE Labs}.{/notes/ellabs/2 Part II}.C1' );
$PAGE->setTitle( "Part II EL/EE/EM/EEE Laboratories: C1" );
print $PAGE->renderHeader();
?>

<p><font size="+1"><b>Lab C1: Feedback Amplifier</b></font></p>

<p>
        <b>Exercise Information</b>
<p>Objectives of experiment:</p>
        <ul>
                <li>To build and test a simple three transistor amplifier</li>
		<li>To compare performance with simulation results</li>
		<li>To investigate the effect of negative feedback</li>
        </ul>
</p>

<!-- Code assumes that notes will be called 'notes.pdf' and be in same directory as 'index.php' -->
<!-- Will automatically list any supporting files in \files subdirectory -->

<?PHP
include '../filelist.php';
?>


<?
print $PAGE->renderFooter();
?>

