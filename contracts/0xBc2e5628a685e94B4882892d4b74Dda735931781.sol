contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;

function _fallback() payable {
    stor1 = 0x8197a236bd44b2173ce44b09d1c417cba150ad25
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[74 len 478]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;

function Kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function sub_8efdc15d(?) payable {
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = Mask(32, 224, sha3('SendEmail(string, string)'))
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 164 len arg1.length] = arg1[all]
    if not arg1.length % 32:
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 164 len arg2.length] = arg2[all]
        if not arg2.length % 32:
            call stor1 with:
               funct Mask(32, 224, sha3('SendEmail(string, string)')) >> 224
                 gas gas_remaining - 25050 wei
                args mem[ceil32(arg1.length) + ceil32(arg2.length) + 164 len arg2.length + arg1.length]
        else:
            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 164] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 196 len arg2.length % 32]
            call stor1 with:
               funct Mask(32, 224, sha3('SendEmail(string, string)')) >> 224
                 gas gas_remaining - 25050 wei
                args arg1[all], arg2[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + arg2.length + 164 len -(arg2.length % 32) + 32]
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 164] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg1.length % 32) + 196 len arg1.length % 32]
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 196 len arg2.length] = arg2[all]
        if not arg2.length % 32:
            call stor1 with:
               funct Mask(32, 224, sha3('SendEmail(string, string)')) >> 224
                 gas gas_remaining - 25050 wei
                args arg1[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 164 len -(arg1.length % 32) + 32], arg2[all]
        else:
            mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 196] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 228 len arg2.length % 32]
            call stor1 with:
               funct Mask(32, 224, sha3('SendEmail(string, string)')) >> 224
                 gas gas_remaining - 25050 wei
                args arg1[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 164 len -(arg1.length % 32) + 32], arg2[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + arg2.length + 196 len -(arg2.length % 32) + 32]
}



}
