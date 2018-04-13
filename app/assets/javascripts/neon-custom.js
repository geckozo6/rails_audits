
$(document).ready(function()
	{


function replaceCheckboxes()
{
	var $ = jQuery;

	$(".checkbox-replace:not(.neon-cb-replacement), .radio-replace:not(.neon-cb-replacement)").each(function(i, el)
	{
		var $this = $(el),
			$input = $this.find('input:first'),
			$wrapper = $('<label class="cb-wrapper" />'),
			$checked = $('<div class="checked" />'),
			checked_class = 'checked',
			is_radio = $input.is('[type="radio"]'),
			$related,
			name = $input.attr('name');


		$this.addClass('neon-cb-replacement');


		$input.wrap($wrapper);

		$wrapper = $input.parent();

		$wrapper.append($checked).next('label').on('click', function(ev)
		{
			$wrapper.click();
		});

		$input.on('change', function(ev)
		{
			if(is_radio)
			{
				//$(".neon-cb-replacement input[type=radio][name='"+name+"']").closest('.neon-cb-replacement').removeClass(checked_class);
				$(".neon-cb-replacement input[type=radio][name='"+name+"']:not(:checked)").closest('.neon-cb-replacement').removeClass(checked_class);
			}

			if($input.is(':disabled'))
			{
				$wrapper.addClass('disabled');
			}

			$this[$input.is(':checked') ? 'addClass' : 'removeClass'](checked_class);

		}).trigger('change');
	});
}





});
