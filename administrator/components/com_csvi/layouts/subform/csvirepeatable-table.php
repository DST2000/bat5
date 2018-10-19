<?php
/**
 * @package     CSVI
 * @subpackage  Plugin.Multireplace
 *
 * @author      RolandD Cyber Produksi <contact@csvimproved.com>
 * @copyright   Copyright (C) 2006 - 2018 RolandD Cyber Produksi. All rights reserved.
 * @license     GNU/GPLv3 http://www.gnu.org/licenses/gpl-3.0.html
 * @link        https://csvimproved.com
 */

defined('_JEXEC') or die;

/**
 * Make thing clear
 *
 * @var JForm  $tmpl            The Empty form for template
 * @var array  $forms           Array of JForm instances for render the rows
 * @var bool   $multiple        The multiple state for the form field
 * @var int    $min             Count of minimum repeating in multiple mode
 * @var int    $max             Count of maximum repeating in multiple mode
 * @var string $fieldname       The field name
 * @var string $control         The forms control
 * @var string $label           The field label
 * @var string $description     The field description
 * @var array  $buttons         Array of the buttons that will be rendered
 * @var bool   $groupByFieldset Whether group the subform fields by it`s fieldset
 */
extract($displayData);

// Add script
if ($multiple)
{
	JHtml::_('jquery.ui', array('core', 'sortable'));
	JHtml::_('script', 'system/subform-repeatable.js', false, true);
}

// Build heading
$table_head = '';

if (!empty($groupByFieldset))
{
	foreach ($tmpl->getFieldsets() as $fieldset)
	{
		$table_head .= '<th width="' . $fieldset->width . '">' . JText::_($fieldset->title);

		if (!empty($fieldset->description))
		{
			$table_head .= '<br /><small style="font-weight:normal">' . JText::_($fieldset->description) . '</small>';
		}

		$table_head .= '</th>';
	}

	$sublayout = 'section-byfieldsets';
}
else
{
	foreach ($tmpl->getGroup('') as $field)
	{
		$table_head .= '<th>' . strip_tags($field->label);
		$table_head .= '<br /><small style="font-weight:normal">' . JText::_($field->description) . '</small>';
		$table_head .= '</th>';
	}

	$sublayout = 'section';
}

?>

<div class="row-fluid">
	<div class="subform-repeatable-wrapper subform-table-layout">
		<div class="subform-repeatable"
		     data-bt-add="a.group-add" data-bt-remove="a.group-remove" data-bt-move="a.group-move"
		     data-repeatable-element="tr.subform-repeatable-group"
		     data-rows-container="tbody" data-minimum="<?php echo $min; ?>" data-maximum="<?php echo $max; ?>">

			<table class="adminlist table table-striped table-bordered">
				<thead>
				<tr>
					<?php echo $table_head; ?>
					<?php if (!empty($buttons)): ?>
						<th style="width:8%;">
							<?php if (!empty($buttons['add'])): ?>
								<div class="btn-group">
									<a class="group-add btn btn-mini button btn-success"><span class="icon-plus"></span>
									</a>
								</div>
							<?php endif; ?>
						</th>
					<?php endif; ?>
				</tr>
				</thead>
				<tbody>
				<?php
				foreach ($forms as $k => $form):
					echo $this->sublayout($sublayout, array('form' => $form, 'basegroup' => $fieldname, 'group' => $fieldname . $k, 'buttons' => $buttons));
				endforeach;
				?>
				</tbody>
			</table>
			<?php if ($multiple): ?>
				<script type="text/subform-repeatable-template-section" class="subform-repeatable-template-section">
					<?php echo $this->sublayout($sublayout, array('form' => $tmpl, 'basegroup' => $fieldname, 'group' => $fieldname . 'X', 'buttons' => $buttons)); ?>
				</script>
			<?php endif; ?>
		</div>
	</div>
</div>