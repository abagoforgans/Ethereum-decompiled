contract main {


// =======================  Init code  ======================


uint256 stor0;
uint8 stor1; offset 160
uint256 stor1;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    uint256(stor1.field_0) = code.data[3344 len 32]
    uint8(stor1.field_160) = 1
    call msg.sender with:
       value msg.value wei
         gas 0 wei
    return code.data[225 len 3119]
}



// =====================  Runtime code  =====================


address owner;
uint8 sub_b307ffa5; offset 160
address sub_e0b35266Address;
uint256 stor1;
address sub_3395df25Address;
uint256 stor2;
mapping of uint8 statusOf;
array of address sub_d2cbb4fd;
uint256 sub_64fdf6ab;

function sub_3395df25(?) payable {
    return address(sub_3395df25Address)
}

function contractEnabled() payable {
    return sub_b307ffa5
}

function sub_64fdf6ab(?) payable {
    return sub_64fdf6ab
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

function sub_d2cbb4fd(?) payable {
    require arg1 < sub_d2cbb4fd.length
    return address(sub_d2cbb4fd[arg1])
}

function sub_e0b35266(?) payable {
    return sub_e0b35266Address
}

function _fallback() payable {
    revert 
}

function sub_c32e269f(?) payable {
    return (statusOf[tx.origin] == 4)
}

function sub_a1fb8a1a(?) payable {
    if statusOf[tx.origin] == 3:
        return True
    return (statusOf[tx.origin] == 4)
}

function sub_6738b953(?) payable {
    if statusOf[tx.origin] == 2:
        return True
    if statusOf[tx.origin] == 3:
        return True
    return (statusOf[tx.origin] == 4)
}

function sub_47d23419(?) payable {
    call sub_e0b35266Address.0x6ee4da3 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    require ext_call.return_data[0]
    sub_b307ffa5 = 1
}

function disableContract() payable {
    call sub_e0b35266Address.0x6ee4da3 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    require ext_call.return_data[0]
    sub_b307ffa5 = 0
}

function sub_79cfce9a(?) payable {
    require not sub_b307ffa5
    call sub_e0b35266Address.0x6ee4da3 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    require ext_call.return_data[0]
    stor1 = arg1 or Mask(96, 160, stor1)
}

function sub_72626a08(?) payable {
    require not sub_b307ffa5
    call sub_e0b35266Address.0x6ee4da3 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    require ext_call.return_data[0]
    uint256(stor2) = arg1 or Mask(96, 160, uint256(stor2))
}

function sub_6e0af80c(?) payable {
    require sub_b307ffa5
    require statusOf[tx.origin] == 4
    if not statusOf[address(arg1)]:
        sub_d2cbb4fd.length++
        if not sub_d2cbb4fd.length <= sub_d2cbb4fd.length + 1:
            idx = sub_d2cbb4fd.length + 1
            while sub_d2cbb4fd.length > idx:
                uint256(sub_d2cbb4fd[idx]) = 0
                idx = idx + 1
                continue 
        uint256(sub_d2cbb4fd[sub_d2cbb4fd.length]) = arg1 or Mask(96, 160, uint256(sub_d2cbb4fd[sub_d2cbb4fd.length]))
        sub_64fdf6ab++
    statusOf[address(arg1)] = 3
}

function sub_07efe1fb(?) payable {
    require sub_b307ffa5
    if statusOf[tx.origin] != 3:
        require statusOf[tx.origin] == 4
    if not statusOf[address(arg1)]:
        sub_d2cbb4fd.length++
        if not sub_d2cbb4fd.length <= sub_d2cbb4fd.length + 1:
            idx = sub_d2cbb4fd.length + 1
            while sub_d2cbb4fd.length > idx:
                uint256(sub_d2cbb4fd[idx]) = 0
                idx = idx + 1
                continue 
        uint256(sub_d2cbb4fd[sub_d2cbb4fd.length]) = arg1 or Mask(96, 160, uint256(sub_d2cbb4fd[sub_d2cbb4fd.length]))
        sub_64fdf6ab++
    statusOf[address(arg1)] = 2
}

function sub_1a62a689(?) payable {
    require sub_b307ffa5
    if statusOf[tx.origin] != 4:
        call sub_e0b35266Address.0x6ee4da3 with:
             gas gas_remaining - 25050 wei
        require ext_call.success
        require ext_call.return_data[0]
    if not statusOf[address(arg1)]:
        sub_d2cbb4fd.length++
        if not sub_d2cbb4fd.length <= sub_d2cbb4fd.length + 1:
            idx = sub_d2cbb4fd.length + 1
            while sub_d2cbb4fd.length > idx:
                uint256(sub_d2cbb4fd[idx]) = 0
                idx = idx + 1
                continue 
        uint256(sub_d2cbb4fd[sub_d2cbb4fd.length]) = arg1 or Mask(96, 160, uint256(sub_d2cbb4fd[sub_d2cbb4fd.length]))
        sub_64fdf6ab++
    statusOf[address(arg1)] = 4
}

function sub_e463d2fb(?) payable {
    require sub_b307ffa5
    if statusOf[tx.origin] != 3:
        require statusOf[tx.origin] == 4
    if statusOf[address(arg1)] == 3:
        if statusOf[tx.origin] != 3:
            require statusOf[tx.origin] == 4
    if statusOf[address(arg1)] == 4:
        require statusOf[tx.origin] == 4
    if not statusOf[address(arg1)]:
        sub_d2cbb4fd.length++
        if not sub_d2cbb4fd.length <= sub_d2cbb4fd.length + 1:
            idx = sub_d2cbb4fd.length + 1
            while sub_d2cbb4fd.length > idx:
                uint256(sub_d2cbb4fd[idx]) = 0
                idx = idx + 1
                continue 
        uint256(sub_d2cbb4fd[sub_d2cbb4fd.length]) = arg1 or Mask(96, 160, uint256(sub_d2cbb4fd[sub_d2cbb4fd.length]))
        sub_64fdf6ab++
    statusOf[address(arg1)] = 1
}



}
