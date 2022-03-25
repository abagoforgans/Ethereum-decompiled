contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor0;
uint256 stor1;
uint256 stor2;
mapping of uint256 stor4;
uint256 stor6;

function _fallback() payable {
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
    if code.data[1322 len 20]:
        if this.address != msg.sender:
            stor4[stor6] = code.data[1310 len 32] or Mask(96, 160, stor4[stor6])
            stor6++
    require msg.sender == address(stor0)
    stor1 = code.data[1342 len 32] or Mask(96, 160, stor1)
    stor2 = code.data[1374 len 32]
    return code.data[269 len 1041]
}



// =====================  Runtime code  =====================


address owner;
address proxyAddress;
uint256 stor1;
uint256 sub_1f55671a;
uint256 sub_6e03749e;
mapping of address sub_0a39ce02;
mapping of uint256 sub_ae4cc3f0;
uint256 sub_035aee26;

function sub_035aee26(?) payable {
    return sub_035aee26
}

function sub_0a39ce02(?) payable {
    return address(sub_0a39ce02[arg1])
}

function sub_1f55671a(?) payable {
    return sub_1f55671a
}

function sub_6e03749e(?) payable {
    return sub_6e03749e
}

function owner() payable {
    return owner
}

function sub_ae4cc3f0(?) payable {
    return sub_ae4cc3f0[arg1]
}

function proxy() payable {
    return address(proxyAddress)
}

function sub_d6db7631(?) payable {
    require msg.sender == owner
    uint256(sub_0a39ce02[arg1]) = arg2 or Mask(96, 160, uint256(sub_0a39ce02[arg1]))
}

function sub_6efaf9c3(?) payable {
    require msg.sender == owner
    if arg3:
        uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
    sub_1f55671a = arg2
}

function sub_6de45dee(?) payable {
    if this.address != msg.sender:
        uint256(sub_0a39ce02[stor6]) = arg1 or Mask(96, 160, uint256(sub_0a39ce02[stor6]))
        sub_035aee26++
}

function sub_aed70652(?) payable {
    sub_ae4cc3f0[address(msg.sender)] += arg1
    idx = 0
    while idx < arg1:
        mem[0] = sub_6e03749e
        mem[32] = 4
        call address(sub_0a39ce02[stor3]) with:
           value 1 wei
             gas 0 wei
        if sub_6e03749e < sub_035aee26:
            sub_6e03749e++
        else:
            sub_6e03749e = 0
        idx = idx + 1
        continue 
}

function execute(address arg1, uint256 arg2, bytes arg3) payable {
    mem[128 len arg3.length] = arg3[all]
    require msg.sender == owner
    mem[ceil32(arg3.length) + 128 len arg3.length] = arg3[all]
    if not arg3.length % 32:
        call arg1 with:
           value arg2 wei
             gas gas_remaining - 34050 wei
            args arg3[all]
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 128] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
        call arg1.mem[ceil32(arg3.length) + 128 len 4] with:
           value arg2 wei
             gas gas_remaining - 34050 wei
            args mem[ceil32(arg3.length) + 132 len floor32(arg3.length) + 28]
    require ext_call.success
}

function _fallback() payable {
    if this.address != msg.sender:
        uint256(sub_0a39ce02[stor6]) = msg.sender or Mask(96, 160, uint256(sub_0a39ce02[stor6]))
        sub_035aee26++
    sub_ae4cc3f0[address(msg.sender)] += sub_1f55671a
    idx = 0
    while idx < sub_1f55671a:
        mem[0] = sub_6e03749e
        mem[32] = 4
        call address(sub_0a39ce02[stor3]) with:
           value 1 wei
             gas 0 wei
        if sub_6e03749e < sub_035aee26:
            sub_6e03749e++
        else:
            sub_6e03749e = 0
        idx = idx + 1
        continue 
    if 0 == address(proxyAddress):
        if address(proxyAddress) != 0:
            call address(proxyAddress) with:
               value msg.value - sub_1f55671a wei
                 gas 0 wei
    else:
        if msg.value > sub_1f55671a:
            call address(proxyAddress) with:
               value msg.value - sub_1f55671a wei
                 gas 0 wei
}



}
