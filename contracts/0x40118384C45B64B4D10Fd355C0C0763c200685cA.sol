contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor2;
array of uint256 stor3;
uint8 stor4;
uint256 stor5;
mapping of uint256 stor6;
uint8 stor9; offset 160

function _fallback() {
    stor0 = msg.sender
    bool(stor3.length) = 0
    stor3.length.field_1 = 2
    stor3.length.field_8 = 'ST' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    stor2.length.field_1 = 12
    stor2.length.field_8 = 'Simple Token' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor4 = 18
    stor5 = 800000000 * 10^18
    stor6[stor0] = 800000000 * 10^18
    emit Transfer(800000000 * 10^18, 0, stor0);
    stor9 = 0
    return code.data[505 len 3497]
}



// =====================  Runtime code  =====================


const TOKEN_NAME = 'Simple Token'

const TOKEN_SYMBOL = 'ST'

const TOKEN_DECIMALS = 18

const DECIMALSFACTOR = 10^18

const TOKENS_MAX = 800000000 * 10^18


address owner;
address proposedOwner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address opsAddress;
uint8 stor9; offset 160
address adminAddress;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function opsAddress() {
    return opsAddress
}

function symbol() {
    return symbol[0 len symbol.length]
}

function finalized() {
    return bool(stor9)
}

function proposedOwner() {
    return proposedOwner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function adminAddress() {
    return adminAddress
}

function remove() {
    require msg.sender == owner
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function finalize() {
    require adminAddress
    require adminAddress == msg.sender
    require not stor9
    stor9 = 1
    emit Finalized()
    return 1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function initiateOwnershipTransfer(address arg1) {
    require msg.sender == owner
    proposedOwner = arg1
    emit OwnershipTransferInitiated(arg1);
    return 1
}

function completeOwnershipTransfer() {
    require proposedOwner == msg.sender
    owner = proposedOwner
    proposedOwner = 0
    emit OwnershipTransferCompleted(proposedOwner);
    return 1
}

function setOpsAddress(address arg1) {
    if owner != msg.sender:
        require adminAddress
        require adminAddress == msg.sender
    require owner != arg1
    require arg1 != this.address
    if adminAddress:
        require adminAddress != arg1
    opsAddress = arg1
    emit OpsAddressChanged(arg1);
    return 1
}

function setAdminAddress(address arg1) {
    if owner != msg.sender:
        require adminAddress
        require adminAddress == msg.sender
    require owner != arg1
    require arg1 != this.address
    if opsAddress:
        require arg1 != opsAddress
    adminAddress = arg1
    emit AdminAddressChanged(arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if not stor9:
        if owner != msg.sender:
            if not opsAddress:
                require owner == arg1
            else:
                if opsAddress != msg.sender:
                    require owner == arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if not stor9:
        if owner != msg.sender:
            if not opsAddress:
                require owner == arg2
            else:
                if opsAddress != msg.sender:
                    require owner == arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
