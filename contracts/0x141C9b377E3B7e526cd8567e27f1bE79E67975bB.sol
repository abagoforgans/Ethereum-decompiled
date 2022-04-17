contract main {


// =======================  Init code  ======================


uint256 stor1;
address stor3;
address stor4;
address stor5;
address stor6;
uint256 stor8;
uint256 stor9;

function _fallback() {
    stor4 = code.data[2513 len 20]
    stor5 = code.data[2545 len 20]
    stor1 = code.data[2565 len 32]
    stor6 = code.data[2609 len 20]
    stor3 = code.data[2641 len 20]
    stor8 = code.data[2661 len 32]
    stor9 = 0
    return code.data[185 len 2316]
}



// =====================  Runtime code  =====================


uint256 priceInETH;
uint256 sub_d41edb7b;
uint256 stor2;
address oracleAddress;
address artistAddress;
address sub_cb4774c4Address;
address adminAddress;
mapping of uint8 stor7;
uint256 stor8;
uint256 sub_6949faeb;
uint8 locked;
address stor10; offset 8

function priceInETH() {
    return priceInETH
}

function artist() {
    return artistAddress
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

function sub_cb4774c4(?) {
    return sub_cb4774c4Address
}

function locked() {
    return bool(locked)
}

function sub_d41edb7b(?) {
    return sub_d41edb7b
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function sub_16fd265d(?) {
    require adminAddress == msg.sender
    locked = 1
}

function sub_745c27c9(?) {
    require adminAddress == msg.sender
    require not locked
    artistAddress = arg1
}

function changeToken(address arg1) {
    require adminAddress == msg.sender
    require not locked
    stor10 = arg1
}

function sub_3ee79567(?) {
    require adminAddress == msg.sender
    require not locked
    sub_cb4774c4Address = arg1
}

function changeOracle(address arg1) {
    require adminAddress == msg.sender
    require not locked
    oracleAddress = arg1
}

function sub_503a0e1b(?) {
    require ext_code.size(oracleAddress)
    call oracleAddress.lastUpdated() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[0] > sub_6949faeb:
        sub_6949faeb = ext_call.return_data[0]
        require ext_code.size(oracleAddress)
        call oracleAddress.0x58836e9f with:
             gas gas_remaining - 710 wei
        require ext_call.success
        stor2 = ext_call.return_data[0]
        require ext_call.return_data[0]
        priceInETH = 10^18 / ext_call.return_data[0] * sub_d41edb7b
    return priceInETH
}

function pay(string arg1) payable {
    require ext_code.size(oracleAddress)
    call oracleAddress.lastUpdated() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[0] > sub_6949faeb:
        sub_6949faeb = ext_call.return_data[0]
        require ext_code.size(oracleAddress)
        call oracleAddress.0x58836e9f with:
             gas gas_remaining - 710 wei
        require ext_call.success
        stor2 = ext_call.return_data[0]
        require ext_call.return_data[0]
        priceInETH = 10^18 / ext_call.return_data[0] * sub_d41edb7b
    require msg.value >= 90 * priceInETH / 100
    require stor10
    if msg.value < priceInETH:
        require block.timestamp - sub_6949faeb <= stor8
        stor7[address(msg.sender)] = 1
        call sub_cb4774c4Address with:
           value 8 * msg.value / 10 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        call artistAddress with:
           value msg.value - (8 * msg.value / 10) wei
             gas 2300 * is_zero(value) wei
        require ext_code.size(stor10)
        call stor10.0x71e928af with:
             gas gas_remaining - 710 wei
            args msg.sender
        require ext_call.success
        emit 0x6a0f12fe: Array(len=arg1.length, data=arg1[all]), msg.sender, msg.value
    else:
        stor7[address(msg.sender)] = 1
        call sub_cb4774c4Address with:
           value 8 * priceInETH / 10 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        call artistAddress with:
           value priceInETH - (8 * priceInETH / 10) wei
             gas 2300 * is_zero(value) wei
        require ext_code.size(stor10)
        call stor10.0x71e928af with:
             gas gas_remaining - 710 wei
            args msg.sender
        require ext_call.success
        if msg.value - priceInETH > 0:
            call msg.sender with:
               value msg.value - priceInETH wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        emit 0x6a0f12fe: Array(len=arg1.length, data=arg1[all]), msg.sender, priceInETH
}



}
