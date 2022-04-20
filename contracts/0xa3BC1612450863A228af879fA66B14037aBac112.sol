contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = 0x56be5715c8fc2c1d745aef6dbe56cb59f959075d
    return code.data[114 len 823]
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
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = Mask(32, 224, sha3('submitMessage(string)'))
    mem[ceil32(arg1.length) + 132 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        call stor0 with:
           funct Mask(32, 224, sha3('submitMessage(string)')) >> 224
           value msg.value wei
             gas gas_remaining - 34710 wei
            args (Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256)
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + 132] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 164 len arg1.length % 32]
        call stor0 with:
           funct Mask(32, 224, sha3('submitMessage(string)')) >> 224
           value msg.value wei
             gas gas_remaining - 34710 wei
            args Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 132 len floor32(arg1.length) + -ceil32(arg1.length) + 32]
    return bool(ext_call.success)
}



}
