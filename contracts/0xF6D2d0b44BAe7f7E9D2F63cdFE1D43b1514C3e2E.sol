contract main {


// =======================  Init code  ======================


mapping of uint8 stor0;
mapping of uint8 stor1;
uint256 stor4;
uint256 stor5;
uint256 stor6;
address stor9;
address stor10;
address stor11;

function _fallback() payable {
    stor5 = 0
    stor6 = 0
    require not msg.value
    stor11 = code.data[5325 len 20]
    stor10 = code.data[5325 len 20]
    stor1[code.data[5229 len 20]] = 1
    stor0[address(code.data[5249 len 32])] = 1
    require ext_code.size(stor11)
    call stor11.0x313ce567 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require 3500 * 10^ext_call.return_data[31 len 1]
    stor4 = 10^18 / 3500 * 10^ext_call.return_data[31 len 1]
    stor9 = code.data[5293 len 20]
    return code.data[683 len 4534]
}



// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of uint8 stor1;
mapping of uint256 investments;
uint256 lastUpdate;
uint256 tokenPrice;
uint256 sub_427e1918;
uint256 sub_8d103cde;
address minterAddress;
address burnerAddress;
address etherVaultAddress;
address sub_9fdb31f1Address;
address sub_013e2addAddress;

function sub_013e2add(?) {
    return sub_013e2addAddress
}

function minterAddress() {
    return minterAddress
}

function sub_427e1918(?) {
    return sub_427e1918
}

function tokenPrice() {
    return tokenPrice
}

function sub_8d103cde(?) {
    return sub_8d103cde
}

function investments(address arg1) {
    return investments[arg1]
}

function sub_9fdb31f1(?) {
    return sub_9fdb31f1Address
}

function oracles(address arg1) {
    return bool(stor0[arg1])
}

function etherVault() {
    return etherVaultAddress
}

function lastUpdate() {
    return lastUpdate
}

function burnerAddress() {
    return burnerAddress
}

function managers(address arg1) {
    return bool(stor1[arg1])
}

function _fallback() payable {
    revert
}

function changeMinter(address arg1) {
    require stor1[address(msg.sender)]
    minterAddress = arg1
}

function changeBurner(address arg1) {
    require stor1[address(msg.sender)]
    burnerAddress = arg1
}

function sub_1975f059(?) {
    require stor1[address(msg.sender)]
    require sha3(arg1) == arg2
    stor0[address(arg1)] = 1
}

function sub_1d580b75(?) {
    require stor1[address(msg.sender)]
    require sha3(arg1) == arg2
    stor0[address(arg1)] = 0
}

function sub_a0a2d0b9(?) {
    require msg.sender == burnerAddress
    if investments[address(arg1)] >= arg2:
        investments[address(arg1)] -= arg2
    else:
        investments[address(arg1)] = 0
    if sub_8d103cde >= arg2:
        sub_8d103cde -= arg2
    else:
        sub_8d103cde = 0
}

function sub_2fde999c(?) {
    if minterAddress != msg.sender:
        require stor1[address(msg.sender)]
        require ext_code.size(sub_013e2addAddress)
        call sub_013e2addAddress.0xc9bba27b with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_call.return_data[0]
    investments[address(arg1)] += arg2
    sub_8d103cde += arg2
}

function changeEtherVault(address arg1) {
    require stor1[address(msg.sender)]
    etherVaultAddress = arg1
    require ext_code.size(sub_013e2addAddress)
    call sub_013e2addAddress.0x313ce567 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(sub_013e2addAddress)
    call sub_013e2addAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if not ext_call.return_data[0]:
        require 3500 * 10^uint8(ext_call.return_data[0])
        tokenPrice = 10^18 / 3500 * 10^uint8(ext_call.return_data[0])
    else:
        require ext_code.size(sub_013e2addAddress)
        call sub_013e2addAddress.0x18160ddd with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_call.return_data[0]
        tokenPrice = sub_427e1918 + eth.balance(etherVaultAddress) / ext_call.return_data[0]
}

function sub_7688d109(?) {
    if not stor0[address(msg.sender)]:
        require stor1[address(msg.sender)]
    sub_427e1918 = arg1
    lastUpdate = block.timestamp
    require ext_code.size(sub_013e2addAddress)
    call sub_013e2addAddress.0x313ce567 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(sub_013e2addAddress)
    call sub_013e2addAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if not ext_call.return_data[0]:
        require 3500 * 10^uint8(ext_call.return_data[0])
        tokenPrice = 10^18 / 3500 * 10^uint8(ext_call.return_data[0])
    else:
        require ext_code.size(sub_013e2addAddress)
        call sub_013e2addAddress.0x18160ddd with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_call.return_data[0]
        tokenPrice = sub_427e1918 + eth.balance(etherVaultAddress) / ext_call.return_data[0]
}



}
