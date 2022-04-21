contract main {


// =======================  Init code  ======================


address stor1;
address stor2;

function _fallback() payable {
    stor1 = msg.sender
    stor2 = msg.sender
    require not msg.value
    return code.data[160 len 3005]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;

function _fallback() payable {
  stop
}

function confirmOwner() {
    if msg.sender == stor0:
        stor1 = stor0
}

function changeOwner(address arg1) {
    if stor1 == msg.sender:
        stor0 = arg1
}

function WthdrawToCreator(uint256 arg1) payable {
    if msg.sender == stor2:
        call stor2 with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function WthdrawTo(address arg1, uint256 arg2) payable {
    if msg.sender == stor2:
        call arg1 with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function WthdrawAllToCreator() payable {
    if msg.sender == stor2:
        call stor2 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function WithdrawToken(address arg1, uint256 arg2) {
    if msg.sender == stor2:
        call arg1 with:
           funct Mask(32, 224, sha3('transfer(address,uint256)')) >> 224
             gas gas_remaining - 25710 wei
            args stor2, arg2
}

function sub_8106669c(?) {
    if stor1 != msg.sender:
        require stor2 == msg.sender
    require ext_code.size(arg1)
    call arg1.0xe1c7392a with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xae8e3b70 with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function sub_01fe84f0(?) payable {
    if stor1 != msg.sender:
        require stor2 == msg.sender
    require ext_code.size(arg1)
    call arg1.0xe1c7392a with:
         gas gas_remaining - 710 wei
    require ext_call.success
    call arg1 with:
       value msg.value wei
         gas gas_remaining - 34710 wei
    require ext_code.size(arg1)
    call arg1.0xb0a77ef7 with:
         gas gas_remaining - 710 wei
        args address(this.address), eth.balance(arg1)
    require ext_call.success
    require eth.balance(this.address) >= eth.balance(this.address)
}

function sub_8a12d582(?) payable {
    mem[128 len arg2.length] = arg2[all]
    if stor1 != msg.sender:
        require stor2 == msg.sender
    mem[ceil32(arg2.length) + 128 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        call arg1.mem[ceil32(arg2.length) + 128 len 4] with:
           value arg3 wei
             gas gas_remaining - 34710 wei
            args mem[ceil32(arg2.length) + 132 len arg2.length - 4]
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 128] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
        call arg1.mem[ceil32(arg2.length) + 128 len 4] with:
           value arg3 wei
             gas gas_remaining - 34710 wei
            args mem[ceil32(arg2.length) + 132 len floor32(arg2.length) + 28]
}



}
