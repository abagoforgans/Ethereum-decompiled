contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[63 len 1980]
}



// =====================  Runtime code  =====================


address stor0;
array of struct stor1;
array of uint256 nameBy;
array of uint256 sub_56cc14ec;

function sub_56cc14ec(?) payable {
    return sub_56cc14ec[address(arg1)][0 len sub_56cc14ec[address(arg1)].length]
}

function getNameByAddress(address arg1) payable {
    return nameBy[address(arg1)][0 len nameBy[address(arg1)].length]
}

function _fallback() payable {
  stop
}

function empty() payable {
    if stor0 == msg.sender:
        stor1.length = 0
        idx = 0
        while stor1.length > idx:
            stor1[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function getAll() payable {
    if stor1.length:
        mem[160] = address(stor1.field_0)
        idx = 160
        s = 0
        while (32 * stor1.length) + 128 > idx:
            mem[idx + 32] = stor1[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=stor1.length, data=mem[160 len 32 * stor1.length])
}

function register(address arg1, string arg2, string arg3) payable {
    stor1.length++
    if not stor1.length <= stor1.length + 1:
        idx = stor1.length + 1
        while stor1.length > idx:
            stor1[idx].field_0 = 0
            idx = idx + 1
            continue 
    stor1[stor1.length].field_0 = arg1 or Mask(96, 160, stor1[stor1.length].field_0)
    nameBy[address(arg1)][] = Array(len=arg2.length, data=arg2[all])
    sub_56cc14ec[address(arg1)][] = Array(len=arg3.length, data=arg3[all])
}



}
