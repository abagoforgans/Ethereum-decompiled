contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor3;
uint8 stor4;

function _fallback() payable {
    stor4 = 0
    require not msg.value
    mem[96 len -4320] = code.data[5485 len -4320]
    mem[64] = -4224
    _4 = mem[160]
    stor0 = mem[108 len 20]
    stor1 = mem[140 len 20]
    mem[-1257] = mem[160]
    mem[-1193] = mem[255 len 1]
    mem[-1129] = mem[mem[192] + 96]
    _11 = mem[mem[192] + 96]
    mem[-1097 len ceil32(mem[mem[192] + 96])] = mem[mem[192] + 128 len ceil32(mem[mem[192] + 96])]
    if not _11 % 32:
        mem[_11 - 1097] = mem[mem[256] + 96]
        _128 = mem[mem[256] + 96]
        mem[_11 - 1065 len ceil32(mem[mem[256] + 96])] = mem[mem[256] + 128 len ceil32(mem[mem[256] + 96])]
        if not _128 % 32:
            create contract with 0 wei
                            code: code.data[2518 len 2967], mem[-1257], Array(len=_11 + 160, data=mem[-1129 len _128 + _11 + 64]), mem[-1193]
        else:
            mem[floor32(_128) + _11 - 1065] = mem[floor32(_128) + _11 + -(_128 % 32) - 1033 len _128 % 32]
            create contract with 0 wei
                            code: code.data[2518 len 2967], mem[-1257], Array(len=_11 + 160, data=mem[-1129 len floor32(_128) + _11 + 96]), mem[-1193]
    else:
        mem[floor32(_11) - 1097] = mem[floor32(_11) + -(_11 % 32) - 1065 len _11 % 32]
        mem[floor32(_11) - 1065] = mem[mem[256] + 96]
        _131 = mem[mem[256] + 96]
        mem[floor32(_11) - 1033 len ceil32(mem[mem[256] + 96])] = mem[mem[256] + 128 len ceil32(mem[mem[256] + 96])]
        if not _131 % 32:
            create contract with 0 wei
                            code: code.data[2518 len 2967], mem[-1257], Array(len=floor32(_11) + 192, data=mem[-1129 len _131 + floor32(_11) + 96]), mem[-1193]
        else:
            mem[floor32(_131) + floor32(_11) - 1033] = mem[floor32(_131) + floor32(_11) + -(_131 % 32) - 1001 len _131 % 32]
            create contract with 0 wei
                            code: code.data[2518 len 2967], mem[-1257], Array(len=floor32(_11) + 192, data=mem[-1129 len floor32(_131) + floor32(_11) + 128]), mem[-1193]
    require create.new_address
    stor2 = address(create.new_address)
    stor3 = mem[288]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(this.address), ext_call.return_data[0]
    require ext_call.success
    require ext_code.size(stor2)
    call stor2.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(stor2)
    call stor2.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor2)
    call stor2.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] == _4
    return code.data[1165 len 1353]
}



// =====================  Runtime code  =====================


address owner;
address walletAddress;
address tokenAddress;
uint256 price;
uint8 stor4;
uint256 stor4;

function wallet() {
    return walletAddress
}

function owner() {
    return owner
}

function price() {
    return price
}

function emergencyFlag() {
    return bool(uint8(stor4))
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function changePrice(uint256 arg1) {
    require owner == msg.sender
    require arg1
    price = arg1
}

function changeOwner(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
}

function changeWallet(address arg1) {
    require owner == msg.sender
    require arg1
    walletAddress = arg1
}

function emergencyToggle() {
    require owner == msg.sender
    uint256(stor4) = not uint8(stor4) or Mask(248, 8, uint256(stor4))
}

function purchaseTokens() payable {
    require not uint8(stor4)
    require price
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require msg.value - (msg.value % price) / price <= ext_call.return_data[0]
    if msg.value % price <= 0:
        call walletAddress with:
           value msg.value - (msg.value % price) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    else:
        call msg.sender with:
           value msg.value % price wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        call walletAddress with:
           value msg.value - (msg.value % price) wei
             gas 2300 * is_zero(value) wei
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value - (msg.value % price) / price
    require ext_call.success
    emit PurchasedTokens((msg.value - (msg.value % price) / price), msg.sender);
}



}
