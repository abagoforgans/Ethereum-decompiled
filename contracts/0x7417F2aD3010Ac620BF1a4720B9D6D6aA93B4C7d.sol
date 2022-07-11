contract main {




// =====================  Runtime code  =====================


#
#  - init(address arg1)
#  - term()
#
array of uint256 class;
array of uint256 sub_cb4774c4;
array of uint256 description;
uint256 sub_e24ff744;
uint256 sub_c47d1a7a;
address rootAddress;
address parentAddress;
mapping of address wallets;
mapping of uint8 sub_c79e6429;
uint8 walletCount;
uint8 totalWallet; offset 8

function walletCount() {
    return walletCount
}

function parent() {
    return parentAddress
}

function description() {
    return description[0 len description.length]
}

function wallets(uint8 arg1) {
    require calldata.size - 4 >= 32
    return wallets[arg1]
}

function totalWallet() {
    return totalWallet
}

function class() {
    return class[0 len class.length]
}

function sub_c47d1a7a(?) {
    return sub_c47d1a7a
}

function sub_c79e6429(?) {
    require calldata.size - 4 >= 32
    return sub_c79e6429[arg1]
}

function sub_cb4774c4(?) {
    return sub_cb4774c4[0 len sub_cb4774c4.length]
}

function sub_e24ff744(?) {
    return sub_e24ff744
}

function root() {
    return rootAddress
}

function _fallback() payable {
    revert
}

function sub_38d1fcc3(?) {
    if 0 == parentAddress:
        return this.address
    require ext_code.size(parentAddress)
    staticcall parentAddress.0x38d1fcc3 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function sub_ceb6c343(?) {
    require calldata.size - 4 >= 32
    if rootAddress != msg.sender:
        revert with 0, 'Node.onlyRoot: Access denied'
    if 0 == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Node.detach: Wallet address is empty'
    if 0 >= sub_c79e6429[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Node.detach: Wallet address is not registered'
    if 64 < sub_c79e6429[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Node.detach: Wallet address is not registered'
    if 0 >= uint32(ext_code.size(arg1)):
        if 1 > walletCount:
            revert with 0, 'Subtraction exception'
        walletCount = uint8(walletCount - 1)
    if 1 > totalWallet:
        revert with 0, 'Subtraction exception'
    totalWallet = uint8(totalWallet - 1)
    wallets[stor14[address(arg1)]] = 0
    sub_c79e6429[address(arg1)] = 0
    require ext_code.size(rootAddress)
    call rootAddress.0xd4ab68e4 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}

function sub_80882800(?) {
    require calldata.size - 4 >= 64
    if rootAddress != msg.sender:
        revert with 0, 'Node.onlyRoot: Access denied'
    if 0 >= arg1:
        revert with 0, 'Node.attach: Index out of range'
    if 64 < arg1:
        revert with 0, 'Node.attach: Index out of range'
    if 0 == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Node.attach: Wallet address is empty'
    if sub_c79e6429[address(arg2)] != 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Node.attach: Duplicated wallet address'
    if wallets[arg1 << 248] != 0:
        if rootAddress != msg.sender:
            revert with 0, 'Node.onlyRoot: Access denied'
        if 0 == wallets[arg1 << 248]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Node.detach: Wallet address is empty'
        if 0 >= sub_c79e6429[stor13[arg1 << 248]]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Node.detach: Wallet address is not registered'
        if 64 < sub_c79e6429[stor13[arg1 << 248]]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Node.detach: Wallet address is not registered'
        if 0 >= uint32(ext_code.size(wallets[arg1 << 248])):
            if 1 > walletCount:
                revert with 0, 'Subtraction exception'
            walletCount = uint8(walletCount - 1)
        if 1 > totalWallet:
            revert with 0, 'Subtraction exception'
        totalWallet = uint8(totalWallet - 1)
        wallets[stor14[wallets[arg1 << 248]]] = 0
        sub_c79e6429[stor13[arg1 << 248]] = 0
        require ext_code.size(rootAddress)
        call rootAddress.0xd4ab68e4 with:
             gas gas_remaining wei
            args wallets[arg1 << 248]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    sub_c79e6429[address(arg2)] = arg1
    wallets[arg1 << 248] = arg2
    if 0 >= uint32(ext_code.size(arg2)):
        if uint8(walletCount + 1) < walletCount:
            revert with 0, 'Addition exception'
        walletCount = uint8(walletCount + 1)
    if uint8(totalWallet + 1) < totalWallet:
        revert with 0, 'Addition exception'
    totalWallet = uint8(totalWallet + 1)
    require ext_code.size(rootAddress)
    call rootAddress.0xc4def70a with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}



}
