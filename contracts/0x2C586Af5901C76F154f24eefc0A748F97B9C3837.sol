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
    mem[96 len -1959] = code.data[2577 len -1959]
    mem[64] = -1703
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
    return code.data[618 len 1959]
}



// =====================  Runtime code  =====================


const implementsERC721 = 1

const totalSupply = 1


uint256 stor2;
uint256 sellingPrice;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address tokenIndexToApproved;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 stor10;

function name() {
    return name[0 len name.length]
}

function sellingPrice() {
    return sellingPrice
}

function tokenIndexToOwner(uint256 arg1) {
    return ownerOf[arg1]
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

function tokenIndexToApproved(uint256 arg1) {
    return tokenIndexToApproved[arg1]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    require ownerOf[arg2] == msg.sender
    ownerOf[arg2] = arg1
    emit Approval(msg.sender, arg1, arg2);
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require ownerOf[arg2] == msg.sender
    require not arg2
    balanceOf[address(arg1)]++
    balanceOf[msg.sender]--
    ownerOf[arg2] = arg1
    emit Transfer(msg.sender, arg1, arg2);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require ownerOf[arg3] == msg.sender
    require ownerOf[arg3] == arg1
    require not arg3
    balanceOf[address(arg2)]++
    balanceOf[arg1]--
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
}

function takeOwnership() payable {
    require ownerOf[0]
    require ownerOf[0] != msg.sender
    require msg.value >= sellingPrice
    if msg.value > sellingPrice:
        call msg.sender with:
           value msg.value - sellingPrice wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    require ownerOf[0]
    call ownerOf[0] with:
       value 94 * stor2 / 100 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    balanceOf[address(msg.sender)]++
    balanceOf[stor4[0]]--
    ownerOf[0] = msg.sender
    emit Transfer(ownerOf[0], msg.sender, 0);
    stor2 = sellingPrice
    if sellingPrice < stor10:
        sellingPrice = 200 * stor2 / 94
    else:
        sellingPrice = 120 * stor2 / 94
}



}
