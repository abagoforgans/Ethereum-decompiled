contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor4;
uint8 stor7;

function _fallback() payable {
    stor0 = code.data[2724 len 32]
    stor2 = code.data[2756 len 32]
    stor1 = msg.sender or Mask(96, 160, stor1)
    stor7 = 1
    stor4 = 10^12
    return code.data[228 len 2496]
}



// =====================  Runtime code  =====================


address tokenContractAddress;
address owner;
address beyondAddress;
uint256 etherValue;
uint256 sub_7ba8be85;
array of address sub_d269857d;
mapping of struct sub_d24f8cdd;
uint8 isOpen;

function beyond() payable {
    return beyondAddress
}

function isOpen() payable {
    return isOpen
}

function tokenContract() payable {
    return tokenContractAddress
}

function sub_7ba8be85(?) payable {
    return sub_7ba8be85
}

function owner() payable {
    return owner
}

function sub_d24f8cdd(?) payable {
    return sub_d24f8cdd[arg1].field_0, sub_d24f8cdd[arg1].field_256, sub_d24f8cdd[arg1].field_512
}

function sub_d269857d(?) payable {
    require arg1 < sub_d269857d.length
    return address(sub_d269857d[arg1])
}

function etherValue() payable {
    return etherValue
}

function endPreSale() payable {
    require msg.sender == owner
    isOpen = 0
}

function setValues(uint256 arg1, uint256 arg2) payable {
    require msg.sender == owner
    etherValue = arg1
    sub_7ba8be85 = arg2
}

function kill() payable {
    require msg.sender == owner
    call tokenContractAddress.0x70a08231 with:
         gas gas_remaining - 25050 wei
        args this.address
    require ext_call.success
    call tokenContractAddress.0xa9059cbb with:
         gas gas_remaining - 25050 wei
        args msg.sender, ext_call.return_data[0]
    call beyondAddress with:
       value eth.balance(this.address) wei
         gas 0 wei
    require msg.sender == owner
    isOpen = 0
}

function giveFor(address arg1) payable {
    require isOpen
    call tokenContractAddress.0xa9059cbb with:
         gas gas_remaining - 25050 wei
        args address(arg1), msg.value / sub_7ba8be85
    require ext_call.success
    if not sub_d24f8cdd[address(arg1)].field_0:
        sub_d269857d.length++
        if not sub_d269857d.length <= sub_d269857d.length + 1:
            idx = sub_d269857d.length + 1
            while sub_d269857d.length > idx:
                uint256(sub_d269857d[idx]) = 0
                idx = idx + 1
                continue 
        require sub_d269857d.length < sub_d269857d.length
        uint256(sub_d269857d[sub_d269857d.length]) = arg1 or Mask(96, 160, uint256(sub_d269857d[sub_d269857d.length]))
        sub_d24f8cdd[address(arg1)].field_512 = msg.sender or Mask(96, 160, sub_d24f8cdd[address(arg1)].field_512)
    sub_d24f8cdd[address(arg1)].field_0 += msg.value
    sub_d24f8cdd[address(arg1)].field_256 += msg.value * etherValue / 10^18
    call beyondAddress with:
       value msg.value wei
         gas 0 wei
    emit Gave(arg1);
}

function _fallback() payable {
    require isOpen
    call tokenContractAddress.0xa9059cbb with:
         gas gas_remaining - 25050 wei
        args msg.sender, msg.value / sub_7ba8be85
    require ext_call.success
    if not sub_d24f8cdd[address(msg.sender)].field_0:
        sub_d269857d.length++
        if not sub_d269857d.length <= sub_d269857d.length + 1:
            idx = sub_d269857d.length + 1
            while sub_d269857d.length > idx:
                uint256(sub_d269857d[idx]) = 0
                idx = idx + 1
                continue 
        require sub_d269857d.length < sub_d269857d.length
        uint256(sub_d269857d[sub_d269857d.length]) = msg.sender or Mask(96, 160, uint256(sub_d269857d[sub_d269857d.length]))
        sub_d24f8cdd[address(msg.sender)].field_512 = msg.sender or Mask(96, 160, sub_d24f8cdd[address(msg.sender)].field_512)
    sub_d24f8cdd[address(msg.sender)].field_0 += msg.value
    sub_d24f8cdd[address(msg.sender)].field_256 += msg.value * etherValue / 10^18
    call beyondAddress with:
       value msg.value wei
         gas 0 wei
    emit Gave(msg.sender);
}



}
