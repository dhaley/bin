<?php
$sql = 'SELECT title, summary FROM api_documentation WHERE branch_id = "3" AND object_type = "function"';
$result = db_query($sql);

while ($record = db_fetch_object($result)) {
  if ($record->summary == "") {
    $record->summary = 'no description';
  }
  $output .= 'function ';
  $output .= $record->title . '()';
  $output .= '<br />';
  $output .= '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;';
  $output .= $record->summary;
  $output .= '<br />';
}
print $output;
?>