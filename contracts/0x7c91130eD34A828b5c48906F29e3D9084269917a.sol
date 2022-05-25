contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[48 len 1257]
}



// =====================  Runtime code  =====================


address owner;

function owner() {
    return owner
}

function _fallback() payable {
  stop
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdrawEth() {
    require owner == msg.sender
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function withdrawToken(address arg1) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    require ext_call.success
}

function multiTransferEth(address[] arg1, uint256[] arg2) payable {
    require owner == msg.sender
    require arg2.length == arg1.length
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        call address(cd[((32 * idx) + arg1 + 36)]) with:
           value cd[((32 * idx) + arg2 + 36)] wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        idx = idx + 1
        continue 
}

function sub_41ed24a2(?) {
    require owner == msg.sender
    require ('cd', 68).length == ('cd', 36).length
    idx = 0
    while idx < ('cd', 36).length:
        require idx < ('cd', 68).length
        mem[100] = address(cd[((32 * idx) + cd[36] + 36)])
        mem[132] = cd[((32 * idx) + cd[68] + 36)]
        require ext_code.size(address(cd[4]))
        call address(cd[4]).0xa9059cbb with:
             gas gas_remaining wei
            args address(cd[((32 * idx) + cd[36] + 36)]), cd[((32 * idx) + cd[68] + 36)]
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        idx = idx + 1
        continue 
}



}
