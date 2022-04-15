contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor3;
uint8 stor5;

function _fallback() payable {
    stor5 = 0
    require not msg.value
    mem[96 len -4374] = code.data[5539 len -4374]
    mem[64] = -4278
    _4 = mem[160]
    stor0 = mem[108 len 20]
    stor1 = mem[140 len 20]
    mem[-1311] = mem[160]
    mem[-1247] = mem[255 len 1]
    mem[-1183] = mem[mem[192] + 96]
    _11 = mem[mem[192] + 96]
    mem[-1151 len ceil32(mem[mem[192] + 96])] = mem[mem[192] + 128 len ceil32(mem[mem[192] + 96])]
    if not _11 % 32:
        mem[_11 - 1151] = mem[mem[256] + 96]
        _128 = mem[mem[256] + 96]
        mem[_11 - 1119 len ceil32(mem[mem[256] + 96])] = mem[mem[256] + 128 len ceil32(mem[mem[256] + 96])]
        if not _128 % 32:
            create contract with 0 wei
                            code: code.data[2572 len 2967], mem[-1311], Array(len=_11 + 160, data=mem[-1183 len _128 + _11 + 64]), mem[-1247]
        else:
            mem[floor32(_128) + _11 - 1119] = mem[floor32(_128) + _11 + -(_128 % 32) - 1087 len _128 % 32]
            create contract with 0 wei
                            code: code.data[2572 len 2967], mem[-1311], Array(len=_11 + 160, data=mem[-1183 len floor32(_128) + _11 + 96]), mem[-1247]
    else:
        mem[floor32(_11) - 1151] = mem[floor32(_11) + -(_11 % 32) - 1119 len _11 % 32]
        mem[floor32(_11) - 1119] = mem[mem[256] + 96]
        _131 = mem[mem[256] + 96]
        mem[floor32(_11) - 1087 len ceil32(mem[mem[256] + 96])] = mem[mem[256] + 128 len ceil32(mem[mem[256] + 96])]
        if not _131 % 32:
            create contract with 0 wei
                            code: code.data[2572 len 2967], mem[-1311], Array(len=floor32(_11) + 192, data=mem[-1183 len _131 + floor32(_11) + 96]), mem[-1247]
        else:
            mem[floor32(_131) + floor32(_11) - 1087] = mem[floor32(_131) + floor32(_11) + -(_131 % 32) - 1055 len _131 % 32]
            create contract with 0 wei
                            code: code.data[2572 len 2967], mem[-1311], Array(len=floor32(_11) + 192, data=mem[-1183 len floor32(_131) + floor32(_11) + 128]), mem[-1247]
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
    return code.data[1165 len 1407]
}



// =====================  Runtime code  =====================


address owner;
address walletAddress;
address tokenAddress;
uint256 price;
uint256 startBlock;
uint8 stor5;
uint256 stor5;

function startBlock() {
    return startBlock
}

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
    return bool(uint8(stor5))
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
    uint256(stor5) = not uint8(stor5) or Mask(248, 8, uint256(stor5))
}

function purchaseTokens() payable {
    require not uint8(stor5)
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
