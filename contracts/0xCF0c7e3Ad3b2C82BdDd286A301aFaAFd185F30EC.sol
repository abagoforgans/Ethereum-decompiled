contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;

function _fallback() payable {
    stor1 = 0x2bd2326c993dfaef84f696526064ff22eba5b362
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[74 len 610]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
    revert 
}

function WithDraw() payable {
    require msg.sender == stor0
    require eth.balance(this.address) > 0
    call stor0 with:
       value eth.balance(this.address) wei
         gas 0 wei
    require ext_call.success
    return 1
}

function SendETH(address arg1) payable {
    call stor1.forked() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    require ext_call.return_data[0]
    call arg1 with:
       value msg.value - (msg.value / 1000) wei
         gas 0 wei
    require ext_call.success
    emit ETHTransfer((msg.value - (msg.value / 1000)), msg.sender, arg1);
    return 1
}

function SendETC(address arg1) payable {
    call stor1.forked() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    require not ext_call.return_data[0]
    call arg1 with:
       value msg.value - (msg.value / 1000) wei
         gas 0 wei
    require ext_call.success
    emit ETCTransfer((msg.value - (msg.value / 1000)), msg.sender, arg1);
    return 1
}



}
