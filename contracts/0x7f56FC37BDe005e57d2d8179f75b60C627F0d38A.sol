contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor0;
uint256 stor1;
uint256 stor2;
mapping of uint256 stor3;
uint256 stor5;

function _fallback() payable {
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
    require msg.sender == address(stor0)
    if code.data[1243 len 20]:
        stor3[stor5] = code.data[1231 len 32] or Mask(96, 160, stor3[stor5])
    else:
        stor3[stor5] = this.address or Mask(96, 160, stor3[stor5])
    stor5++
    stor1 = code.data[1263 len 32] or Mask(96, 160, stor1)
    stor2 = code.data[1295 len 32]
    return code.data[271 len 960]
}



// =====================  Runtime code  =====================


address owner;
address proxyAddress;
uint256 stor1;
uint256 sub_1f55671a;
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
}

function sub_6efaf9c3(?) payable {
    require msg.sender == owner
    if arg3:
        uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
    sub_1f55671a = arg2
}

function sub_6de45dee(?) payable {
    require msg.sender == owner
    uint256(sub_0a39ce02[stor5]) = arg1 or Mask(96, 160, uint256(sub_0a39ce02[stor5]))
    sub_035aee26++
}

function sub_aed70652(?) payable {
    sub_ae4cc3f0[address(msg.sender)] += arg1
    idx = 0
    s = 0
    while idx < arg1:
        mem[0] = 0
        mem[32] = 3
        idx = idx + 1
        s = address(sub_0a39ce02[0])
        continue 
}

function _fallback() payable {
    sub_ae4cc3f0[address(msg.sender)] += sub_1f55671a
    idx = 0
    s = 0
    while idx < sub_1f55671a:
        mem[0] = 0
        mem[32] = 3
        idx = idx + 1
        s = address(sub_0a39ce02[0])
        continue 
    if address(proxyAddress) != 0:
        if msg.value > 0:
            call address(proxyAddress) with:
               value msg.value wei
                 gas 0 wei
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



}
