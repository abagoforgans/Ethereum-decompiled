contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
uint256 stor2;
array of uint256 stor3;
array of uint256 stor4;

function _fallback() payable {
    mem[96 len -711] = code.data[1140 len -711]
    mem[64] = -615
    stor0 = mem[96]
    mem[32] = 1
    stor1[address(msg.sender)] = mem[96]
    stor2 = mem[128]
    mem[0] = 3
    stor3.length = (2 * mem[mem[160] + 96]) + 1
    s = 0xc2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71f85b
    idx = mem[160] + 128
    while mem[160] + mem[mem[160] + 96] + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, mem[mem[160] + 96] + 31) >> 5) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5
    while (stor3.length + 31 / 32) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    stor4[] = Array(len=mem[mem[192] + 96], data=mem[mem[192] + 128 len mem[mem[192] + 96]])
    return code.data[429 len 711]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 balanceOf;
uint8 stor2;
array of uint256 sub_f1735116;
array of uint256 sub_37691242;

function totalSupply() payable {
    return totalSupply
}

function sub_37691242(?) payable {
    return sub_37691242[0 len sub_37691242.length]
}

function balanceOf(address arg1) payable {
    return balanceOf[address(arg1)]
}

function isSecured() payable {
    return bool(stor2)
}

function sub_f1735116(?) payable {
    return sub_f1735116[0 len sub_f1735116.length]
}

function _fallback() payable {
  stop
}

function transfer(address arg1, uint256 arg2) payable {
    require balanceOf[address(msg.sender)] >= arg2
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 0
}



}
