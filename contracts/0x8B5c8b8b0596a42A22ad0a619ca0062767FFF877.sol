contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint8 stor1;
array of uint256 stor2;
uint256 stor3;
uint8 stor4;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    if not stor1[tx.origin]:
        stor2.length++
        if not stor2.length <= stor2.length + 1:
            idx = stor2.length + 1
            while stor2.length > idx:
                stor2[idx] = 0
                idx = idx + 1
                continue 
        stor2[stor2.length] = tx.origin or Mask(96, 160, stor2[stor2.length])
        stor3++
    stor1[tx.origin] = 3
    stor4 = 1
    call msg.sender with:
       value msg.value wei
         gas 0 wei
    return code.data[459 len 1664]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint8 statusOf;
array of address sub_d89d1510;
uint256 sub_3c2e5288;
uint8 sub_b307ffa5;

function sub_3c2e5288(?) payable {
    return sub_3c2e5288
}

function contractEnabled() payable {
    return sub_b307ffa5
}

function owner() payable {
    return owner
}

function statusOf(address arg1) payable {
    return statusOf[arg1]
}

function sub_b307ffa5(?) payable {
    return sub_b307ffa5
}

function sub_d89d1510(?) payable {
    require arg1 < sub_d89d1510.length
    return address(sub_d89d1510[arg1])
}

function _fallback() payable {
    revert 
}

function sub_06ee4da3(?) payable {
    return (statusOf[tx.origin] == 3)
}

function sub_47d23419(?) payable {
    require statusOf[tx.origin] == 3
    sub_b307ffa5 = 1
}

function disableContract() payable {
    require statusOf[tx.origin] == 3
    sub_b307ffa5 = 0
}

function sub_b1bc8477(?) payable {
    if statusOf[tx.origin] == 2:
        return True
    return (statusOf[tx.origin] == 3)
}

function sub_11afd4e7(?) payable {
    require sub_b307ffa5
    require statusOf[tx.origin] == 3
    if not statusOf[address(arg1)]:
        sub_d89d1510.length++
        if not sub_d89d1510.length <= sub_d89d1510.length + 1:
            idx = sub_d89d1510.length + 1
            while sub_d89d1510.length > idx:
                uint256(sub_d89d1510[idx]) = 0
                idx = idx + 1
                continue 
        uint256(sub_d89d1510[sub_d89d1510.length]) = arg1 or Mask(96, 160, uint256(sub_d89d1510[sub_d89d1510.length]))
        sub_3c2e5288++
    statusOf[address(arg1)] = 3
}

function sub_a5c64259(?) payable {
    require sub_b307ffa5
    if statusOf[tx.origin] != 2:
        require statusOf[tx.origin] == 3
    if not statusOf[address(arg1)]:
        sub_d89d1510.length++
        if not sub_d89d1510.length <= sub_d89d1510.length + 1:
            idx = sub_d89d1510.length + 1
            while sub_d89d1510.length > idx:
                uint256(sub_d89d1510[idx]) = 0
                idx = idx + 1
                continue 
        uint256(sub_d89d1510[sub_d89d1510.length]) = arg1 or Mask(96, 160, uint256(sub_d89d1510[sub_d89d1510.length]))
        sub_3c2e5288++
    statusOf[address(arg1)] = 2
}

function sub_c41176cd(?) payable {
    require sub_b307ffa5
    if statusOf[tx.origin] != 2:
        require statusOf[tx.origin] == 3
    if statusOf[address(arg1)] == 3:
        require statusOf[tx.origin] == 3
    if not statusOf[address(arg1)]:
        sub_d89d1510.length++
        if not sub_d89d1510.length <= sub_d89d1510.length + 1:
            idx = sub_d89d1510.length + 1
            while sub_d89d1510.length > idx:
                uint256(sub_d89d1510[idx]) = 0
                idx = idx + 1
                continue 
        uint256(sub_d89d1510[sub_d89d1510.length]) = arg1 or Mask(96, 160, uint256(sub_d89d1510[sub_d89d1510.length]))
        sub_3c2e5288++
    statusOf[address(arg1)] = 1
}



}
