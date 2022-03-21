contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor1;

function _fallback() payable {
    mem[96 len -710] = code.data[918 len -710]
    mem[64] = -614
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    return code.data[208 len 710]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
array of uint256 sub_c5e57985;
uint256 ethBalance;

function ethBalance() payable {
    return ethBalance
}

function owner() payable {
    return address(owner)
}

function sub_c5e57985(?) payable {
    return sub_c5e57985[0 len sub_c5e57985.length]
}

function kill() payable {
    require address(owner) == msg.sender
    selfdestruct(address(owner))
}

function _fallback() payable {
    ethBalance += msg.value
    mem[256] = mem[281 len 7]
    return Array(len=7, data=mem[256])
}

function transferOwnership(address arg1) payable {
    require address(owner) == msg.sender
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function sub_5d91526d(?) payable {
    require msg.sender == address(owner)
    if arg1 > ethBalance:
        mem[256] = Mask(192, 32, 'error 01: insufficient funds') >> 32, mem[284 len 4]
        return Array(len=28, data=mem[256])
    call msg.sender with:
       value arg1 wei
         gas 0 wei
    mem[256] = mem[281 len 7]
    return Array(len=7, data=mem[256])
}



}
