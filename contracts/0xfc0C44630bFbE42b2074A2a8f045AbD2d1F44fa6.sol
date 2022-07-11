contract main {




// =====================  Runtime code  =====================


uint256 stor0;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint8 stor5; offset 160
uint128 stor5; offset 160
address owner;
array of address stor6;
array of address admins;
mapping of struct balanceOf;

function name() {
    return name[0 len name.length]
}

function admins(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < admins.length
    return address(admins[arg1])
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function adminLength() {
    require owner == msg.sender
    return admins.length
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)].field_256
}

function user(address arg1) {
    require calldata.size - 4 >= 32
    return bool(balanceOf[arg1].field_0), balanceOf[arg1].field_256
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function stopTransfer() {
    return bool(uint8(stor5.field_160))
}

function _fallback() payable {
    revert
}

function sub_9d17cd7e(?) {
    require calldata.size - 4 >= 32
    require owner == msg.sender
    Mask(96, 0, stor5.field_160) = Mask(96, 0, arg1)
    emit 0x588773ee: arg1, msg.sender
}

function sub_6aa08f7f(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        idx = 0
        while idx < admins.length:
            require address(admins[idx]) == msg.sender
            mem[0] = arg1
            mem[32] = 8
            balanceOf[address(arg1)].field_0 = uint8(arg2)
            mem[96] = arg2
            emit 0x54cadd39: arg2, msg.sender, arg1
            idx = idx + 1
            continue 
    else:
        balanceOf[address(arg1)].field_0 = uint8(arg2)
        emit 0x54cadd39: arg2, msg.sender, arg1
    balanceOf[address(arg1)].field_0 = uint8(arg2)
    emit 0x54cadd39: arg2, msg.sender, arg1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require not uint8(stor5.field_160)
    require bool(balanceOf[address(msg.sender)].field_0) != 1
    require bool(balanceOf[address(arg1)].field_0) != 1
    require balanceOf[address(msg.sender)].field_256 >= arg2
    require balanceOf[address(arg1)].field_256 + arg2 >= balanceOf[address(arg1)].field_256
    require balanceOf[address(arg1)].field_256 + arg2 >= balanceOf[address(arg1)].field_256
    require balanceOf[address(msg.sender)].field_256 + balanceOf[address(arg1)].field_256 >= balanceOf[address(msg.sender)].field_256
    require arg2 <= balanceOf[address(msg.sender)].field_256
    balanceOf[address(msg.sender)].field_256 -= arg2
    require balanceOf[address(arg1)].field_256 + arg2 >= balanceOf[address(arg1)].field_256
    balanceOf[address(arg1)].field_256 += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require balanceOf[address(msg.sender)].field_256 + balanceOf[address(arg1)].field_256 >= balanceOf[address(msg.sender)].field_256
    require balanceOf[address(msg.sender)].field_256 + balanceOf[address(arg1)].field_256 == balanceOf[address(msg.sender)].field_256 + balanceOf[address(arg1)].field_256
    return 1
}

function sub_8ce1e4d6(?) {
    require calldata.size - 4 >= 64
    require owner == msg.sender
    require owner != arg1
    if arg2:
        require admins.length <= stor0 - 1
        idx = 0
        while idx < admins.length:
            mem[0] = 7
            require address(admins[idx]) != arg1
            idx = idx + 1
            continue 
        admins.length++
        address(admins[admins.length]) = arg1
    else:
        idx = 0
        while idx < admins.length:
            mem[0] = 7
            if address(admins[idx]) != arg1:
                require idx < admins.length
                stor6.length++
                mem[0] = 6
                address(stor6[stor6.length]) = address(admins[idx])
            idx = idx + 1
            continue 
        admins.length = stor6.length
        if not stor6.length:
            idx = 0
            while admins.length > idx:
                address(admins[idx]) = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while stor6.length > idx:
                uint256(admins[s]) = uint256(stor6[idx])
                s = s + 1
                idx = idx + 1
                continue 
            idx = stor6.length
            while admins.length > idx:
                address(admins[idx]) = 0
                idx = idx + 1
                continue 
        stor6.length = 0
        idx = 0
        while stor6.length > idx:
            uint256(stor6[idx]) = 0
            idx = idx + 1
            continue 
    emit 0xae6f4f3c: arg2, msg.sender, arg1
}



}
