contract main {


// =======================  Init code  ======================


address stor0;
address stor4; offset 8

function _fallback() {
    stor0 = msg.sender
    require code.data[2869 len 20]
    stor4 = code.data[2869 len 20]
    return code.data[138 len 2719]
}



// =====================  Runtime code  =====================


const sub_928e6d44(?) = 35


address owner;
address proposedOwner;
uint256 stor1;
mapping of struct presales;
array of struct accounts;
uint8 status;
address tokenSaleAddress; offset 8
address sub_de5f5d6bAddress;
uint256 stor5;

function status() {
    require status <= 2
    return status
}

function owner() {
    return owner
}

function getAccountsSize() {
    return accounts.length
}

function tokenSale() {
    return tokenSaleAddress
}

function proposedOwner() {
    return address(proposedOwner)
}

function sub_de5f5d6b(?) {
    return address(sub_de5f5d6bAddress)
}

function presales(address arg1) {
    return presales[arg1].field_0, presales[arg1].field_256
}

function accounts(uint256 arg1) {
    require arg1 < accounts.length
    return accounts[arg1].field_0
}

function _fallback() payable {
    revert
}

function initiateOwnershipTransfer(address arg1) {
    require msg.sender == owner
    address(proposedOwner) = arg1
    emit OwnershipTransferInitiated(arg1);
    return 1
}

function completeOwnershipTransfer() {
    require address(proposedOwner) == msg.sender
    owner = address(proposedOwner)
    address(proposedOwner) = 0
    emit OwnershipTransferCompleted(address(proposedOwner));
    return 1
}

function lock() {
    require msg.sender == owner
    require status <= 2
    require not status
    require accounts.length > 0
    status = 1
    require ext_code.size(0 or tokenSaleAddress)
    call 0 or tokenSaleAddress.adminAddress() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    uint256(stor5) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor5))
    require msg.sender == owner
    uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
    emit OwnershipTransferInitiated(ext_call.return_data[12 len 20]);
    emit Locked()
    return 1
}

function addPresale(address arg1, uint256 arg2, uint256 arg3) {
    require msg.sender == owner
    require status <= 2
    require not status
    require arg1
    require arg2 > 0
    require arg3 < arg2
    require accounts.length < 35
    require not presales[address(arg1)].field_0
    presales[address(arg1)].field_0 = arg2
    presales[address(arg1)].field_256 = arg3
    accounts.length++
    if not accounts.length <= accounts.length + 1:
        idx = accounts.length + 1
        while accounts.length > idx:
            accounts[idx].field_0 = 0
            idx = idx + 1
            continue 
    accounts[accounts.length].field_0 = arg1
    emit PresaleAdded(arg2, arg3, arg1);
    return 1
}

function getAccounts() {
    if not accounts.length:
        mem[(32 * accounts.length) + 160] = 32
        mem[(32 * accounts.length) + 192] = accounts.length
        mem[(32 * accounts.length) + 224 len floor32(accounts.length)] = mem[160 len floor32(accounts.length)]
        return memory
          from (32 * accounts.length) + 160
           len (96 * accounts.length) + 64
    mem[160] = address(accounts.field_0)
    idx = 160
    s = 0
    while (32 * accounts.length) + 128 > idx:
        mem[idx + 32] = accounts[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * accounts.length) + 224 len floor32(accounts.length)] = mem[160 len floor32(accounts.length)]
    return Array(len=accounts.length, data=mem[160 len floor32(accounts.length)], mem[(32 * accounts.length) + floor32(accounts.length) + 224 len (32 * accounts.length) - floor32(accounts.length)]), 
}

function process() {
    require msg.sender == owner
    require status <= 2
    require status == 1
    require ext_code.size(tokenSaleAddress)
    call tokenSaleAddress.adminAddress() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == this.address
    s = 0
    idx = 0
    while idx < accounts.length:
        mem[32] = 2
        mem[132] = presales[stor3[idx].field_0].field_0
        mem[164] = presales[stor3[idx].field_0].field_256
        require ext_code.size(tokenSaleAddress)
        call tokenSaleAddress.0x69d0292d with:
             gas gas_remaining - 710 wei
            args accounts[idx].field_0, presales[stor3[idx].field_0].field_0, presales[stor3[idx].field_0].field_256
        require ext_call.success
        require ext_call.return_data[0]
        require idx < accounts.length
        mem[0] = 3
        mem[96] = presales[stor3[idx].field_0].field_0
        mem[128] = presales[stor3[idx].field_0].field_256
        emit PresaleAddedToTokenSale(presales[stor3[idx].field_0].field_0, presales[stor3[idx].field_0].field_256, accounts[idx].field_0);
        s = sha3(accounts[idx].field_0, 2)
        idx = idx + 1
        continue 
    require ext_code.size(tokenSaleAddress)
    call tokenSaleAddress.setAdminAddress(address rg1) with:
         gas gas_remaining - 710 wei
        args address(sub_de5f5d6bAddress)
    require ext_call.success
    status = 2
    return 1
}



}
