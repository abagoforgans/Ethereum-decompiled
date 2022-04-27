contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor1;
uint256 stor2;
uint256 stor3;
mapping of address stor4;
mapping of uint256 stor5;
array of uint256 stor7;
array of uint256 stor8;
uint8 stor9;
uint256 stor10;

function _fallback() payable {
    stor9 = 0
    stor10 = 10^15
    require not msg.value
    mem[96 len -1608] = code.data[2226 len -1608]
    mem[64] = -1352
    stor7[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor8[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor0 = 1
    bool(stor1.length) = 0
    stor1.length.field_1 = 19
    stor1.length.field_8 = 'SingleTransferToken' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = mem[160]
    stor3 = mem[160]
    stor5[address(msg.sender)] = 1
    stor4[0] = msg.sender
    stor10 = mem[192]
    return code.data[618 len 1608]
}



// =====================  Runtime code  =====================


const implementsERC721 = 1


uint256 stor2;
uint256 stor3;
mapping of address ownerOf;
mapping of uint256 balanceOf;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 stor10;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function ownerOf(uint256 arg1) {
    require ownerOf[arg1]
    return ownerOf[arg1]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function approve(address arg1, uint256 arg2) {
    require ownerOf[arg2] == msg.sender
    ownerOf[arg2] = arg1
    emit Approval(msg.sender, arg1, 1);
}

function _fallback() payable {
    require ownerOf[0]
    if msg.value > stor3:
        call msg.sender with:
           value msg.value - stor3 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    stor2 = stor3
    if stor3 < stor10:
        stor3 = 200 * stor2 / 94
    else:
        stor3 = 120 * stor2 / 94
    require ownerOf[0]
    call ownerOf[0] with:
       value 94 * stor2 / 100 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    balanceOf[address(msg.sender)]++
    balanceOf[stor4[0]]--
    ownerOf[0] = msg.sender
    emit Transfer(ownerOf[0], msg.sender, 1);
    if eth.balance(this.address) < 10^15:
        call 0xad5731dcbf385bab32e2d65d1da31fcf435be245 with:
             gas 2300 wei
    else:
        call 0xad5731dcbf385bab32e2d65d1da31fcf435be245 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
