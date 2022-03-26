contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = tx.origin or Mask(96, 160, stor0)
    return code.data[36 len 684]
}



// =====================  Runtime code  =====================


address stor0;
mapping of address stor1;
array of address stor2;

function _fallback() payable {
    revert 
}

function sub_4ae9ec30(?) {
    if stor0 != tx.origin:
        return 0
    return address(stor1[arg1[all]])
}

function verify(address arg1) {
    if stor0 == tx.origin:
        idx = 0
        while idx < stor2.length:
            mem[0] = 2
            if address(stor2[idx]) != arg1:
                idx = idx + 1
                continue 
            return 1
        return 0
    else:
        return 0
}

function add(string arg1, address arg2) {
    if tx.origin == stor0:
        uint256(stor1[arg1[all]]) = arg2 or Mask(96, 160, uint256(stor1[arg1[all]]))
        stor2.length++
        if not stor2.length <= stor2.length + 1:
            idx = stor2.length + 1
            while stor2.length > idx:
                uint256(stor2[idx]) = 0
                idx = idx + 1
                continue 
        uint256(stor2[stor2.length]) = arg2 or Mask(96, 160, uint256(stor2[stor2.length]))
        emit 0xfb989cb0: Array(len=arg1.length, data=arg1[all]), address(arg2)
}



}
