/**
 * @license Copyright (c) 2003-2017, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see LICENSE.md or http://ckeditor.com/license
 */
var ckRemoveTag = ["em", "span", "i", "strong", "sub", "sup"];
$(ckRemoveTag).each(function(){
	CKEDITOR.dtd.$removeEmpty[this] = 0;
});

CKEDITOR.editorConfig = function( config ) {
	//config.autoParagraph = false;

	// config.language = 'fr';
	// config.uiColor = '#AADC6E';

	// config.language_list = [ 'ar:Arabic:rtl', 'fr:French',  'he:Hebrew:rtl', 'es:Spanish' ];
	config.filebrowserUploadUrl = '/upload/ck';
	config.allowedContent = true;

	config.toolbarGroups = [
		{ name: 'document', groups: [ 'mode', 'document', 'doctools' ] },
		{ name: 'clipboard', groups: [ 'clipboard', 'undo' ] },
		{ name: 'editing', groups: [ 'find', 'selection', 'spellchecker', 'editing' ] },
		{ name: 'forms', groups: [ 'forms' ] },
		{ name: 'links', groups: [ 'links' ] },
		{ name: 'insert', groups: [ 'insert' ] },
		{ name: 'paragraph', groups: [ 'list', 'indent', 'blocks', 'align', 'bidi', 'paragraph' ] },
		'/',
		{ name: 'basicstyles', groups: [ 'basicstyles', 'cleanup' ] },
		{ name: 'styles', groups: [ 'styles' ] },
		{ name: 'colors', groups: [ 'colors' ] },
		{ name: 'tools', groups: [ 'tools' ] },
		{ name: 'others', groups: [ 'others' ] },
		{ name: 'about', groups: [ 'about' ] }
	];

	config.removeButtons = 'Save,NewPage,Preview,Print,Templates,Cut,Copy,Paste,PasteText,Undo,Redo,Find,Replace,SelectAll,Scayt,Form,Checkbox,Radio,TextField,Textarea,Select,Button,ImageButton,HiddenField,RemoveFormat,CopyFormatting,BidiLtr,BidiRtl,Flash,PageBreak,Iframe,Maximize,ShowBlocks,About';
};

// 이미지 업로드 관련 Plugin 수정
CKEDITOR.on('dialogDefinition', function(e) {
    if (e.data.name == 'image') {
        var dialog = e.data.definition;
        oldOnShow = dialog.onShow;

        // 이미지 선택 시 업로드 tab 이 보여지게
        dialog.onShow = function() {
             oldOnShow.apply(this, arguments);
             console.log(arguments);
             this.selectPage('Upload');
        };

        dialog.removeContents( 'advanced' ); // 자세히 탭 삭제
        dialog.removeContents( 'Link' ); // 링크 탭 삭제

        //info탭을 제거하면 이미지 업로드가 안된다.
        var infoTab = dialog.getContents( 'info' );
        infoTab.remove( 'txtHSpace');
        infoTab.remove( 'txtVSpace');
        infoTab.remove( 'txtBorder');
        infoTab.remove( 'txtWidth');
        infoTab.remove( 'txtHeight');
        infoTab.remove( 'ratioLock');
        infoTab.remove( 'cmbAlign');
    }
});


