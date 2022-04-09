contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
address stor2;
address stor3;
address stor4;
uint8 stor5; offset 160
address stor5;
address stor8;
uint256 stor10;
uint256 stor11;

function _fallback() {
    stor2 = code.data[2659 len 20]
    stor3 = code.data[2691 len 20]
    stor4 = code.data[2723 len 20]
    address(stor5.field_0) = code.data[2787 len 20]
    uint8(stor5.field_160) = 0
    stor1 = code.data[2743 len 32]
    stor0 = 10^18 * code.data[2743 len 32]
    stor8 = code.data[2819 len 20]
    stor10 = code.data[2839 len 32]
    stor11 = block.timestamp
    return code.data[246 len 2401]
}



// =====================  Runtime code  =====================


uint256 priceInETH;
uint256 sub_d41edb7b;
address paymentsAddress;
address sub_2df012cdAddress;
address sub_cb4774c4Address;
uint8 stor5; offset 160
address adminAddress;
array of address payees;
mapping of uint8 stor7;
address oracleAddress;
uint256 stor9;
uint256 stor10;
uint256 sub_6949faeb;

function sub_2df012cd(?) {
    return sub_2df012cdAddress
}

function priceInETH() {
    return priceInETH
}

function payees(uint256 arg1) {
    require arg1 < payees.length
    return address(payees[arg1])
}

function sub_6949faeb(?) {
    return sub_6949faeb
}

function oracle() {
    return oracleAddress
}

function sub_8015da19(?) {
    return bool(stor7[arg1])
}

function payments() {
    return paymentsAddress
}

function sub_cb4774c4(?) {
    return sub_cb4774c4Address
}

function locked() {
    return bool(stor5)
}

function sub_d41edb7b(?) {
    return sub_d41edb7b
}

function admin() {
    return adminAddress
}

function _fallback() payable {
  stop
}

function sub_16fd265d(?) {
    require adminAddress == msg.sender
    stor5 = 1
}

function sub_3ee79567(?) {
    require adminAddress == msg.sender
    require bool(stor5) != 1
    sub_cb4774c4Address = arg1
}

function sub_5649102b(?) {
    require adminAddress == msg.sender
    require bool(stor5) != 1
    sub_2df012cdAddress = arg1
}

function changeOracle(address arg1) {
    require adminAddress == msg.sender
    require bool(stor5) != 1
    oracleAddress = arg1
}

function updatePrice() {
    require stor9
    priceInETH = 10^18 / stor9 * sub_d41edb7b
    return (10^18 / stor9 * sub_d41edb7b)
}

function sub_af1a2814(?) {
    if paymentsAddress == msg.sender:
        call sub_cb4774c4Address with:
           value 8 * arg1 / 10 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        call sub_2df012cdAddress with:
           value arg1 - (8 * arg1 / 10) wei
             gas 2300 * is_zero(value) wei
}

function sub_3290ed9c(?) {
    require ext_code.size(paymentsAddress)
    call paymentsAddress.0xaed9f4c6 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    call sub_cb4774c4Address with:
       value 8 * eth.balance(this.address) / 10 wei
         gas 2300 * is_zero(value) wei
    call sub_2df012cdAddress with:
       value eth.balance(this.address) - (8 * eth.balance(this.address) / 10) wei
         gas 2300 * is_zero(value) wei
}

function sub_779aea92(?) {
    require ext_code.size(oracleAddress)
    call oracleAddress.0x58836e9f with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor9 = ext_call.return_data[0]
    require ext_code.size(oracleAddress)
    call oracleAddress.lastUpdated() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    sub_6949faeb = ext_call.return_data[0]
    require stor9
    priceInETH = 10^18 / stor9 * sub_d41edb7b
    return (10^18 / stor9 * sub_d41edb7b)
}

function sub_7321a80d(?) {
    require paymentsAddress == msg.sender
    require ext_code.size(oracleAddress)
    call oracleAddress.0x58836e9f with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor9 = ext_call.return_data[0]
    require ext_code.size(oracleAddress)
    call oracleAddress.lastUpdated() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    sub_6949faeb = ext_call.return_data[0]
    require stor9
    priceInETH = 10^18 / stor9 * sub_d41edb7b
    if arg1 >= priceInETH:
        payees.length++
        if not payees.length <= payees.length + 1:
            idx = payees.length + 1
            while payees.length > idx:
                uint256(payees[idx]) = 0
                idx = idx + 1
                continue 
        address(payees[payees.length]) = arg2
        stor7[address(arg2)] = 1
        emit 0x9bca65ce: address(arg2), arg1
        return priceInETH
    require priceInETH - arg1 <= priceInETH / 10
    require block.timestamp - sub_6949faeb <= stor10
    payees.length++
    if not payees.length <= payees.length + 1:
        idx = payees.length + 1
        while payees.length > idx:
            uint256(payees[idx]) = 0
            idx = idx + 1
            continue 
    address(payees[payees.length]) = arg2
    stor7[address(arg2)] = 1
    emit 0x9bca65ce: address(arg2), arg1
    return arg1
}



}
