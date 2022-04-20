contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = 0x56be5715c8fc2c1d745aef6dbe56cb59f959075d
    return code.data[114 len 981]
}



// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
  stop
}

function withdrawBenefit(address arg1, uint256 arg2) {
    require eth.balance(this.address) >= arg2
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if ext_call.success:
        emit Transfer(arg2, this.address, arg1);
}

function sub_994b0554(?) payable {
    require ext_code.size(stor0)
    call stor0.0x87433926 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require msg.value >= ext_call.return_data[0]
    require ext_code.size(stor0)
    call stor0.submitMessage(string rg1) with:
       value ext_call.return_data[0] wei
         gas gas_remaining - 9710 wei
        args Array(len=arg1.length, data=arg1[all])
    require ext_call.success
    if msg.value > ext_call.return_data[0]:
        require eth.balance(this.address) >= msg.value - ext_call.return_data[0]
        call msg.sender with:
           value msg.value - ext_call.return_data[0] wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
            emit Transfer((msg.value - ext_call.return_data[0]), this.address, msg.sender);
}



}
