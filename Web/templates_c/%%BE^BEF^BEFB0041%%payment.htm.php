<?php /* Smarty version 2.6.26, created on 2015-06-15 19:33:52
         compiled from member/com/payment.htm */ ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['comstyle'])."/header.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?> 
<div class="page-container"> <?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['comstyle'])."/left.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?> 
    <script>
function paycheck(type){
	var type; 
	if(type=="bank"){
		document.getElementById('payform').action="index.php?c=payment&act=paybank";
		$(".alipaytype").hide();
		$(".paybank").show();
		$("#payform").attr("target","supportiframe");
	}else if(type!="balance"){
		if(type=="alipay"){
			document.getElementById('payform').action="../api/alipay/alipayto.php";
		}
		if(type=="alipaydual"){
			document.getElementById('payform').action="../api/alipaydual/alipayto.php";
		}
		if(type=="tenpay"){
			document.getElementById('payform').action="../api/tenpay/index.php";
		}
		$(".paybank").hide();
		$(".alipaytype").show();
		$("#payform").attr("target","_blank");
	} 
	if(type=="99bill" || type=="paypal" || type=="cncard"){ 
		layer.msg('�˽ӿ���δ���ţ�', 2, 0);
		document.getElementById('py1').checked="checked";
	}
}
$(function(){
	$("#check-balance").attr("checked",false);
	$("input[name='is_invoice']").attr("checked",false);
	$("#is_invoice_0").attr("checked",true);   
	$("input[name='pay_bank']").eq(0).attr("checked",true);  
	<?php if ($this->_tpl_vars['company']['link_null'] == ''): ?>
	$("input[name='linkway']").attr("checked",false); 
	$("#linkway_1").attr("checked",true);
	<?php endif; ?>	 
});
function invoice(type){
	if(type=='1'){$(".invoice_title").show();}else{$(".invoice_title").hide();}	
}
function payform(){ 
	var pay_bank=$("input[name='pay_bank']:checked").val();
	var linkway=$("input[name='linkway']:checked").val();
	<?php if ($this->_tpl_vars['config']['sy_com_invoice'] == '1' && $this->_tpl_vars['order']['invoice'] == '1' && $this->_tpl_vars['order']['order_type'] == ''): ?>
	var invoice_title=$.trim($("#invoice_title").val()); 
	var is_invoice=$("input[name='is_invoice']:checked").val();
	if(is_invoice=='1'&&invoice_title==''){
		layer.msg('�����뷢Ʊ̧ͷ��', 2, 2);return false;
	} 
	if(linkway=='2'&&is_invoice=='1'){
		var link_man=$.trim($("input[name='link_man']").val());
		var link_moblie=$.trim($("input[name='link_moblie']").val());
		var address=$.trim($("input[name='address']").val());
		if(link_man==''||link_man=='��ϵ��'||link_moblie==''||link_moblie=='��ϵ�绰'||address==''||address=='���͵�ַ'){
			layer.msg('��ϵ�ˡ���ϵ�绰�����͵�ַ������Ϊ�գ�', 2, 2);return false;
		}
	}
	<?php endif; ?>
	if($("#check-balance").attr("checked")!='checked'&&pay_bank!='bank'){ 
		$.layer({
			type : 1,
			title : '�˻���ֵ',
			closeBtn : [0 , true], 
			offset: [($(window).height() - 320)/2 + 'px', ''],
			border : [10 , 0.3 , '#000', true],
			area : ['340px','180px'],
			page : {dom : '#infobox'}
		});  
	} 
}
</script>
    <div class="page-content">
    <div class='right_box'>
      <div class=admincont_box>
        <div class=admin_tit><span class="admin_tit_bg">����ȷ��</span></div>
        <div class="">
			 <iframe id="supportiframe"  name="supportiframe" onload="returnmessage('supportiframe');" style="display:none"></iframe>
          <form name="alipayment"  id="payform" action="<?php if ($this->_tpl_vars['config']['alipaytype'] == '1' && $this->_tpl_vars['config']['alipay'] == '1'): ?>../api/alipay/alipayto.php<?php elseif ($this->_tpl_vars['config']['alipaytype'] == '2' && $this->_tpl_vars['config']['alipay'] == '1'): ?>../api/alipaydual/alipayto.php<?php elseif ($this->_tpl_vars['config']['tenpay'] == '1' && $this->_tpl_vars['config']['alipay'] == '0'): ?>../api/tenpay/index.php<?php endif; ?>" method="post" <?php if ($this->_tpl_vars['config']['tenpay'] == '1' || $this->_tpl_vars['config']['alipay'] == '1'): ?>target="_blank"<?php endif; ?> onsubmit="return payform();">

            <div class="clear"></div>
            <div class="pay_ment_box">
           <div class="pay_ment_box_left">
          <div class="pay_ment_box_n"> �����ţ�<?php echo $this->_tpl_vars['order']['order_id']; ?>

             <INPUT type="hidden" name="dingdan" value="<?php echo $this->_tpl_vars['order']['order_id']; ?>
"/>
             </div>
           <div class="pay_ment_jiner">֧�����</div>
           <div class="pay_ment_jiner_n"><strong>��<?php echo $this->_tpl_vars['order']['order_price']; ?>
</strong> Ԫ (��������<?php echo $this->_tpl_vars['order']['order_price']; ?>
)</div>
              <INPUT type="hidden" name="aliorder" value="<?php echo $this->_tpl_vars['order']['order_id']; ?>
" />
                <INPUT type="hidden"  value="<?php echo $this->_tpl_vars['order']['id']; ?>
" name='oid' id='oid'/>
                <INPUT type="hidden" name="alimoney" value="<?php echo $this->_tpl_vars['order']['order_price']; ?>
"/>
                <INPUT type="hidden" name="pay_type" value="<?php echo $this->_tpl_vars['order']['pay_type']; ?>
"/> 
           </div>
           <?php if ($this->_tpl_vars['config']['sy_com_invoice'] == '1' && $this->_tpl_vars['order']['invoice'] == '1' && $this->_tpl_vars['order']['order_type'] == ''): ?>
              <div class="pay_ment_box_right">
             �Ƿ���Ҫ��Ʊ��<input type="radio" value="1" name='is_invoice' onclick="invoice('1');" <?php if ($this->_tpl_vars['order']['is_invoice'] == '1'): ?>checked="checked"<?php endif; ?> id='is_invoice_1' style=" vertical-align:middle; margin-right:5px;" ><label for="is_invoice_1">��</label> 
				<input type="radio" value="0" name='is_invoice'  id='is_invoice_0' onclick="invoice('2');" <?php if ($this->_tpl_vars['order']['is_invoice'] != '1'): ?>checked="checked"<?php endif; ?> style=" vertical-align:middle; margin-right:5px;" ><label for="is_invoice_0">��</label> 
              </div>
          
           
			
			  <div class="payment_fp" style="float:left">
            
                <div class="invoice_title" style="display:none">
                <div class="payment_fp_touch">
              <div class="payment_fp_tt" >��Ʊ̧ͷ�� <input type="text" class='com_info_text' name='invoice_title' id="invoice_title" style="float:none"></div>    
              <?php if ($this->_tpl_vars['company']['link_null'] == ''): ?>
              <div class="payment_fp_tt" ><input name='linkway' type='radio' value='1' id="linkway_1" checked="checked" onclick="invoice_link('1')">ʹ����ҵ��ϵ��ʽ&nbsp;&nbsp;��<?php echo $this->_tpl_vars['company']['linkman']; ?>
&nbsp;<?php echo $this->_tpl_vars['company']['linktel']; ?>
&nbsp;<?php echo $this->_tpl_vars['company']['address']; ?>
��</div> 
				<?php endif; ?>
              <div class="payment_fp_tt" ><input name='linkway' type='radio' <?php if ($this->_tpl_vars['company']['link_null']): ?>checked="checked"<?php endif; ?> value='2' id="linkway_2" onclick="invoice_link('2')"/>ʹ������ϵ��ʽ</div>  
				<div class="payment_fp_touch_in" <?php if ($this->_tpl_vars['company']['link_null'] == ''): ?>style="display:none"<?php endif; ?>>
					<input type="text" placeholder="��ϵ��" name="link_man" onblur="if(this.value==''){this.value='��ϵ��'}" onclick="if(this.value=='��ϵ��'){this.value=''}" value="��ϵ��" class="payment_fp_touch_text payment_fp_touch_text_p">
					<input type="text" onblur="if(this.value==''){this.value='��ϵ�绰'}" name="link_moblie" onclick="if(this.value=='��ϵ�绰'){this.value=''}" placeholder="��ϵ�绰"  value="��ϵ�绰" style='width:100px;' class="payment_fp_touch_text">
					<input type="text" onblur="if(this.value==''){this.value='���͵�ַ'}" name="address" onclick="if(this.value=='���͵�ַ'){this.value=''}" placeholder="���͵�ַ"  value="���͵�ַ" class="payment_fp_touch_text">
				</div>  
              </div>
            </div>   </div>
			</div> 
			<?php endif; ?>
			
            <div class="clear"></div>
             <div class="choose-pay_new"> <div class="choose-pay-type_e">ѡ��֧����ʽ</div></div>
            <div class="payment_choose"> 
				<div class="payway"> 
					<?php if ($this->_tpl_vars['config']['tenpay'] == '1' || $this->_tpl_vars['config']['bank'] == '1' || $this->_tpl_vars['config']['alipay'] == '1'): ?>
					<div class="payment_zfb">����֧��</div>
				  <ul class="paytype-list bank-list">
					<?php if ($this->_tpl_vars['config']['alipay'] == '1'): ?>
					<li class="item">
					  <input id="check-alipay" class="radio" type="radio" checked="checked" name="pay_bank" value="directPay" onclick="paycheck('alipay');">
					  <label class="bank bank--alipay" for="check-alipay">֧����</label>
					</li>
					<?php endif; ?>
					<?php if ($this->_tpl_vars['config']['tenpay'] == '1'): ?>
					<li class="item">
					  <input id="check-tenpay" class="radio" type="radio"  name="pay_bank" <?php if ($this->_tpl_vars['config']['alipay'] == '0'): ?>checked="checked"<?php endif; ?> value="tenpay" onclick="paycheck('tenpay');">
					  <label class="bank bank--tenpay " for="check-tenpay">�Ƹ�ͨ<?php echo $this->_tpl_vars['config']['alipay']; ?>
</label>
					</li>
					<?php endif; ?>
					<?php if ($this->_tpl_vars['config']['bank'] == '1'): ?>
					<li class="item">
					  <input id="check-bank" class="radio" type="radio"  name="pay_bank" value="bank" onclick="paycheck('bank');">
					  <label class="bank bank--yinlian" for="check-bank"><span class='pay_Money' style="float:left;padding-top:5px;width:100%;text-align:center;">���л��</span></label>
					</li>
					<?php endif; ?>
				  </ul>
				<?php else: ?>
				<div class="con_banner_no" style="width:300px;"><span></span><em>��վ�ѹر�֧���ӿڣ�����ϵ����Ա</em></div>
				<?php endif; ?>
				<?php if ($this->_tpl_vars['config']['bank'] == '1'): ?>
				<div class="paybank item" <?php if ($this->_tpl_vars['config']['tenpay'] == '1' || $this->_tpl_vars['config']['alipay'] == '1'): ?>style="display:none"<?php endif; ?>>
					<div class="payment_zfb">���л��</div>
					<textarea class="bank" style="height:100px;width:550px;font-size:12px;cursor:text;line-height:18px" name='order_remark'><?php echo $this->_tpl_vars['order_remark']; ?>
</textarea>
				</div>
				<?php endif; ?>
              <?php if ($this->_tpl_vars['config']['alipaytype'] == '1' && $this->_tpl_vars['config']['alipay'] == '1'): ?> 
				<div class="alipaytype">
					<div class="payment_zfb">��������֧��</div>
					<ul class="paytype-list bank-list">
						<li class="item">
							<input type="radio" class="radio" value="ICBCB2C" id="bank-type-ICBCB2C" name="pay_bank" onclick="paycheck('alipay');">
							<label title="�й���������" for="bank-type-ICBCB2C" class="bank bank--icbc">�й���������</label>
						</li>
						<li class="item">
							<input type="radio" class="radio" value="CMB" id="bank-type-CMB" name="pay_bank" onclick="paycheck('alipay');">
							<label title="��������" for="bank-type-CMB" class="bank bank--cmb">��������</label>
						</li>
						<li class="item">
							<input type="radio" class="radio" value="CCB" id="bank-type-CCB" name="pay_bank" onclick="paycheck('alipay');">
							<label title="�й���������" for="bank-type-CCB" class="bank bank--ccb">�й���������</label>
						</li>
						<li class="item">
							<input type="radio" class="radio" value="ABC" id="bank-type-ABC" name="pay_bank" onclick="paycheck('alipay');">
							<label title="�й�ũҵ����" for="bank-type-ABC" class="bank bank--abc">�й�ũҵ����</label>
						</li>
						<li class="item">
							<input type="radio" class="radio" value="COMM" id="bank-type-1020" name="pay_bank" onclick="paycheck('alipay');">
							<label title="��ͨ����" for="bank-type-1020" class="bank bank--boc">��ͨ����</label>
						</li>
						<li class="item">
							<input type="radio" class="radio" value="BOCB2C" id="bank-type-BOCB2C" name="pay_bank" onclick="paycheck('alipay');">
							<label title="�й�����" for="bank-type-BOCB2C" class="bank bank--bofc">�й�����</label>
						</li>
						<li class="item">
							<input type="radio" class="radio" value="CIB" id="bank-type-CIB" name="pay_bank" onclick="paycheck('alipay');">
							<label title="��ҵ����" for="bank-type-CIB" class="bank bank--cib">��ҵ����</label>
						</li>
						<li class="item">
							<input type="radio" class="radio" value="CEBBANK" id="bank-type-CEBBANK" name="pay_bank" onclick="paycheck('alipay');">
							<label title="�������" for="bank-type-CEBBANK" class="bank bank--cebb">�������</label>
						</li>
						<li class="item">
							<input type="radio" class="radio" value="SPDB" id="bank-type-SPDB" name="pay_bank" onclick="paycheck('alipay');">
							<label title="�Ϻ��ֶ���չ����" for="bank-type-SPDB" class="bank bank--spdb">�Ϻ��ֶ���չ����</label>
						</li>
						<li class="item">
							<input type="radio" class="radio" value="GDB" id="bank-type-GDB" name="pay_bank" onclick="paycheck('alipay');">
							<label title="�㶫��չ����" for="bank-type-GDB" class="bank bank--gdb">�㶫��չ����</label>
						</li>
						<li class="item">
							<input type="radio" class="radio" value="CITIC" id="bank-type-CITIC" name="pay_bank" onclick="paycheck('alipay');">
							<label title="��������" for="bank-type-CITIC" class="bank bank--zxyh">��������</label>
						</li>
						<li class="item">
							<input type="radio" class="radio" value="CMBC" id="bank-type-CMBC" name="pay_bank" onclick="paycheck('alipay');">
							<label title="�й���������" for="bank-type-CMBC" class="bank bank--cmbc">�й���������</label>
						</li>
						<li class="item">
							<input type="radio" class="radio" value="SPABANK" id="bank-type-SPABANK" name="pay_bank" onclick="paycheck('alipay');">
							<label title="ƽ������" for="bank-type-SPABANK" class="bank bank--pingan">ƽ������</label>
						</li>
						<li class="item">
							<input type="radio" class="radio" value="BJBANK" id="bank-type-BJBANK" name="pay_bank" onclick="paycheck('alipay');">
							<label title="��������" for="bank-type-BJBANK" class="bank bank--bob">��������</label>
						</li>
						<li class="item">
							<input type="radio" class="radio" value="BJRCB" id="bank-type-BJRCB" name="pay_bank" onclick="paycheck('alipay');">
							<label title="����ũ������" for="bank-type-BJRCB" class="bank bank--bjrcb">����ũ������</label>
						</li>
						<li class="item">
							<input type="radio" class="radio" value="PSBC-DEBIT" id="bank-type-PSBC-DEBIT" name="pay_bank" onclick="paycheck('alipay');">
							<label title="�й�������������" for="bank-type-PSBC-DEBIT" class="bank bank--pspc">�й�������������</label>
						</li>
						<li class="item">
							<input type="radio" class="radio" value="SHRCB" id="bank-type-SHRCB" name="pay_bank" onclick="paycheck('alipay');">
							<label title="�Ϻ�ũ������" for="bank-type-SHRCB" class="bank bank--shrcb">�Ϻ�ũ������</label>
						</li>
						<li class="item">
							<input type="radio" class="radio" value="HZCBB2C" id="bank-type-HZCBB2C" name="pay_bank" onclick="paycheck('alipay');">
							<label title="��������" for="bank-type-HZCBB2C" class="bank bank--hzcb">��������</label>
						</li>
					</ul>
				</div> 
				<?php endif; ?>
				</div>
            </div> 
			<?php if ($this->_tpl_vars['config']['tenpay'] == '1' || $this->_tpl_vars['config']['bank'] == '1' || $this->_tpl_vars['config']['alipay'] == '1'): ?><div class="payment_fk"><input id="dingdan_submit" class="pay_ment_fk_q" type="submit" value="ȥ����" name="nextstep" /></div><?php endif; ?>
            <div style=" float:left"> </div> 
          </form>
        </div> 
        <div id="infobox" style="display:none;">
			<div style="margin-top:20px; margin-left:30px;">
            <div style="width:100%; line-height:23px;">�����´򿪵�֧��ҳ������ɸ���������ǰ�벻Ҫ�رմ˴��ڡ�
           ������֧���������������⣬����ϵ�ͷ���<?php echo $this->_tpl_vars['config']['sy_freewebtel']; ?>

           </div>
				 <a style="padding-left:2px;float:left; display:block; margin-right:10px;" href="index.php?c=paylog"><img  src="<?php echo $this->_tpl_vars['comstyle']; ?>
/images/laster1.gif" /></a> 
				 <a href="index.php?c=payment&id=<?php echo $this->_tpl_vars['order']['id']; ?>
"><img src="<?php echo $this->_tpl_vars['comstyle']; ?>
/images/laster2.gif" /></a>
			 </div>
		</div>
      </div>
    </div>
  <?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['comstyle'])."/footer.htm", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>