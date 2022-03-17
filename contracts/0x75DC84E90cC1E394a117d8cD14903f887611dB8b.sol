contract main {


// =======================  Init code  ======================


uint256 stor3;
uint256 stor4;
uint8 stor5; offset 160
uint128 stor5; offset 168
address stor5;

function _fallback() payable {
    stor4 = msg.sender or Mask(96, 160, stor4)
    stor3 = 0
    address(stor5.field_0) = msg.sender
    uint8(stor5.field_160) = 0
    Mask(88, 0, stor5.field_168) = Mask(88, 168, msg.sender) >> 168
    return code.data[67 len 2339]
}



// =====================  Runtime code  =====================


mapping of struct nameOf;
mapping of address addressOfId;
mapping of address addressOfName;
uint256 numberOfAccounts;
address stor4;
uint8 stor5; offset 160
uint128 stor5; offset 160
address stor5;
uint256 stor5;

function getNumberOfAccounts() payable {
    return numberOfAccounts
}

function getAddressOfName(string arg1) payable {
    return address(addressOfName[arg1[all]])
}

function getNameOfAddress(address arg1) payable {
    return nameOf[address(arg1)][0 len nameOf[address(arg1)].length].field_0
}

function getAddressOfId(uint256 arg1) payable {
    return address(addressOfId[arg1])
}

function adminDeleteRegistry() payable {
    if stor4 != msg.sender:
    selfdestruct(stor4)
}

function _fallback() payable {
  stop
}

function adminSetRegistrationDisabled(bool arg1) payable {
    if msg.sender == stor4:
        Mask(96, 0, stor5.field_160) = Mask(96, 0, arg1)
}

function adminRetrieveDonations() payable {
    if msg.sender == stor4:
        call stor4 with:
           value eth.balance(this.address) wei
             gas 0 wei
}

function adminSetAccountAdministrator(address arg1) payable {
    if msg.sender == stor4:
        uint256(stor5.field_0) = arg1 or Mask(96, 160, uint256(stor5.field_0))
}

function register(string arg1, address arg2) payable {
    if address(addressOfName[arg1[all]]) != 0:
        return -1
    if Mask(255, 1, nameOf[address(arg2)].field_0 and (256 * not nameOf[address(arg2)].field_0) - 1):
        return -2
    if arg1.length >= 64:
        return -3
    if uint8(stor5.field_160):
        return -4
    nameOf[address(arg2)][].field_0 = Array(len=arg1.length, data=arg1[all])
    uint256(addressOfName[arg1[all]]) = arg2 or Mask(96, 160, uint256(addressOfName[arg1[all]]))
    uint256(addressOfId[stor3]) = arg2 or Mask(96, 160, uint256(addressOfId[stor3]))
    numberOfAccounts++
    return 0
}

function unregister() payable {
    mem[160] = nameOf[address(msg.sender)].field_0
    idx = 160
    s = 0
    while nameOf[address(msg.sender)].length + 128 > idx:
        mem[idx + 32] = nameOf[address(msg.sender)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    nameOf[address(msg.sender)].field_0 = 0
    nameOf[address(msg.sender)].field_1 = 0
    nameOf[address(msg.sender)].field_8 = mem[ceil32(nameOf[address(msg.sender)].length) + 192 len 31]
    idx = 0
    while nameOf[address(msg.sender)].length + 31 / 32 > idx:
        nameOf[address(msg.sender)][idx].field_0 = 0
        idx = idx + 1
        continue 
    address(addressOfName[mem[160 len stor0[address(msg.sender)].length]]) = 0
    return Array(len=nameOf[address(msg.sender)].length, data=mem[160 len nameOf[address(msg.sender)].length])
}

function adminUnregister(string arg1) payable {
    if msg.sender == stor4:
        mem[ceil32(arg1.length) + 128 len arg1.length] = arg1[all]
        mem[ceil32(arg1.length) + arg1.length + 128] = 2
        nameOf[address(stor2[arg1[all]])].field_0 = 0
        nameOf[address(stor2[arg1[all]])].field_1 = 0
        nameOf[address(stor2[arg1[all]])].field_8 = mem[ceil32(arg1.length) + 160 len 31]
        idx = 0
        while nameOf[address(stor2[arg1[all]])].length + 31 / 32 > idx:
            nameOf[address(stor2[arg1[all]])][idx].field_0 = 0
            idx = idx + 1
            continue 
        address(addressOfName[arg1[all]]) = 0
    else:
        if msg.sender == address(stor5.field_0):
            mem[ceil32(arg1.length) + 128 len arg1.length] = arg1[all]
            mem[ceil32(arg1.length) + arg1.length + 128] = 2
            nameOf[address(stor2[arg1[all]])].field_0 = 0
            nameOf[address(stor2[arg1[all]])].field_1 = 0
            nameOf[address(stor2[arg1[all]])].field_8 = mem[ceil32(arg1.length) + 160 len 31]
            idx = 0
            while nameOf[address(stor2[arg1[all]])].length + 31 / 32 > idx:
                nameOf[address(stor2[arg1[all]])][idx].field_0 = 0
                idx = idx + 1
                continue 
            address(addressOfName[arg1[all]]) = 0
}



}
