contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;

function _fallback() payable {
    stor1 = 0x408c7c5887a0f3905767754f424989b0089c14ac502d7f851d11b31ea2d1baa6
    stor0 = msg.sender
    return code.data[85 len 694]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor1;

function owner() {
    return owner
}

function transferOwnership(address arg1) {
    owner = arg1
}

function _fallback() payable {
    if msg.value > 0:
        emit LogDeposit(msg.sender, msg.value);
}

function sub_44685013(?) {
    mem[128 len arg2.length] = arg2[all]
    require owner == msg.sender
    mem[ceil32(arg2.length) + 160] = 0
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    hash = sha256hash(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len arg2.length % 32]) 
    require sha256hash.result
    if hash == stor1:
        call arg1 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}



}
