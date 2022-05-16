contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[83 len 1871]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdraw(address arg1) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, ext_call.return_data[0]
    require ext_call.success
}

function sub_98899507(?) {
    require msg.sender == owner
    require ('cd', 68).length == ('cd', 100).length
    require not stor1[cd[36]]
    stor1[cd[36]] = 1
    idx = 0
    while idx < ('cd', 68).length:
        require idx < ('cd', 100).length
        mem[100] = address(cd[((32 * idx) + cd[68] + 36)])
        mem[132] = cd[((32 * idx) + cd[100] + 36)]
        require ext_code.size(address(cd[4]))
        call address(cd[4]).0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(cd[((32 * idx) + cd[68] + 36)]), cd[((32 * idx) + cd[100] + 36)]
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        idx = idx + 1
        continue 
}



}
