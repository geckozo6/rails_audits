var public_vars = public_vars || {};


$(document).ready(function()
	{
		// Sidebar Menu var
		public_vars.$body	 	 	= $("body");
		public_vars.$pageContainer  = public_vars.$body.find(".page-container");
		public_vars.$chat 			= public_vars.$pageContainer.find('#chat');
		public_vars.$horizontalMenu = public_vars.$pageContainer.find('header.navbar');
		public_vars.$sidebarMenu	= public_vars.$pageContainer.find('.sidebar-menu');
		public_vars.$mainMenu	    = public_vars.$sidebarMenu.find('#main-menu');
		public_vars.$mainContent	= public_vars.$pageContainer.find('.main-content');
		public_vars.$sidebarUserEnv = public_vars.$sidebarMenu.find('.sidebar-user-info');
		public_vars.$sidebarUser 	= public_vars.$sidebarUserEnv.find('.user-link');


		// Block UI Helper
		function blockUI($el)
		{
			$el.block({
				message: '',
				css: {
					border: 'none',
					padding: '0px',
					backgroundColor: 'none'
				},
				overlayCSS: {
					backgroundColor: '#fff',
					opacity: .3,
					cursor: 'wait'
				}
			});
		}

		function unblockUI($el)
		{
			$el.unblock();
		}

		
		
// Replace Checkbox
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


replaceCheckboxes();

// Modal Static
public_vars.$body.on('click', '.modal[data-backdrop="static"]', function(ev)
{
	if( $(ev.target).is('.modal') )
	{
		var $modal_dialog = $(this).find('.modal-dialog .modal-content'),
			tt = new TimelineMax({paused: true});

		tt.append( TweenMax.to($modal_dialog, .1, {css: {scale: 1.1}, ease: Expo.easeInOut}) );
		tt.append( TweenMax.to($modal_dialog, .3, {css: {scale: 1}, ease: Back.easeOut}) );

		tt.play();
	}
});






$('body').on('click', '.panel > .panel-heading > .panel-options > a[data-rel="reload"]', function(ev)
{
	ev.preventDefault();

	var $this = jQuery(this).closest('.panel');

	blockUI($this);
	$this.addClass('reloading');

	setTimeout(function()
	{
		unblockUI($this)
		$this.removeClass('reloading');

	}, 900);

});
$('body').on('click', '.panel > .panel-heading > .panel-options > a[data-rel="close"]', function(ev)
{
	ev.preventDefault();

	var $this = $(this),
		$panel = $this.closest('.panel');

	var t = new TimelineLite({
		onComplete: function()
		{
			$panel.slideUp(function()
			{
				$panel.remove();
			});
		}
	});

	t.append( TweenMax.to($panel, .2, {css: {scale: 0.95}}) );
	t.append( TweenMax.to($panel, .5, {css: {autoAlpha: 0, transform: "translateX(100px) scale(.95)"}}) );

});
$('body').on('click', '.panel > .panel-heading > .panel-options > a[data-rel="collapse"]', function(ev)
{
	ev.preventDefault();

	var $this = $(this),
		$panel = $this.closest('.panel'),
		$body = $panel.children('.panel-body, .table'),
		do_collapse = ! $panel.hasClass('panel-collapse');

	if($panel.is('[data-collapsed="1"]'))
	{
		$panel.attr('data-collapsed', 0);
		$body.hide();
		do_collapse = false;
	}

	if(do_collapse)
	{
		$body.slideUp('normal');
		$panel.addClass('panel-collapse');
	}
	else
	{
		$body.slideDown('normal');
		$panel.removeClass('panel-collapse');
	}
});









});
