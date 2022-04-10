contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[1153 len 20]
    return code.data[96 len 1045]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
  stop
}

function withdrawAll() {
    require stor0 == msg.sender
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_e9608eec(?) {
    require ext_code.size(stor1)
    call stor1.cancelBid(address rg1, bytes32 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg2), arg1
    require ext_call.success
}

function sub_d232e9c7(?) {
    require ext_code.size(stor1)
    call stor1.sealedBids(address rg1, bytes32 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg2), arg1
    require ext_call.success
    if not ext_call.return_data[12 len 20]:
    require ext_code.size(stor1)
    call stor1.cancelBid(address rg1, bytes32 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg2), arg1
    require ext_call.success
}

function invalidateName(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 0x15f7333100000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + 132] = 32
    mem[ceil32(arg1.length) + 164] = arg1.length
    if arg1.length:
        mem[ceil32(arg1.length) + 196] = mem[128]
        mem[ceil32(arg1.length) + 228 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
    require ext_code.size(stor1)
    call stor1.0x15f73331 with:
         gas gas_remaining - 710 wei
        args Array(len=arg1.length, data=mem[ceil32(arg1.length) + 196 len arg1.length])
    require ext_call.success
}



}
