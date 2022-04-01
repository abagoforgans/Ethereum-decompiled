contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;

function _fallback() {
    stor1 = msg.sender
    stor0 = code.data[1124 len 32]
    return code.data[80 len 1044]
}



// =====================  Runtime code  =====================


uint256 stor0;
address creatorAddress;

function creator() {
    return creatorAddress
}

function kill() {
    require creatorAddress == msg.sender
    selfdestruct(creatorAddress)
}

function _fallback() payable {
    revert
}

function change_price(uint256 arg1) {
    require creatorAddress == msg.sender
    stor0 = arg1
}

function withdraw() payable {
    require creatorAddress == msg.sender
    call creatorAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_202ab744(?) payable {
    mem[128 len arg1.length] = arg1[all]
    require msg.value >= stor0
    mem[ceil32(arg1.length) + 128] = msg.sender
    mem[ceil32(arg1.length) + 160] = 64
    mem[ceil32(arg1.length) + 192] = arg1.length
    if arg1.length:
        mem[ceil32(arg1.length) + 224] = mem[128]
        mem[ceil32(arg1.length) + 256 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
    emit 0x799a19aa: msg.sender, Array(len=arg1.length, data=mem[ceil32(arg1.length) + 224 len arg1.length])
}

function sub_d60f8f4d(?) payable {
    mem[128 len arg1.length] = arg1[all]
    require msg.value >= stor0
    mem[ceil32(arg1.length) + 128] = msg.sender
    mem[ceil32(arg1.length) + 160] = 64
    mem[ceil32(arg1.length) + 192] = arg1.length
    if arg1.length:
        mem[ceil32(arg1.length) + 224] = mem[128]
        if arg1.length > 32:
            mem[ceil32(arg1.length) + 256] = mem[160]
            mem[ceil32(arg1.length) + 288 len floor32(arg1.length - 33)] = mem[192 len floor32(arg1.length - 33)]
    emit 0x43245712: msg.sender, Array(len=arg1.length, data=mem[ceil32(arg1.length) + 224 len arg1.length])
}



}
