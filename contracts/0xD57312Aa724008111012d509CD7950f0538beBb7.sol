contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
mapping of uint256 stor2;
mapping of uint8 stor3;

function _fallback() payable {
    stor1 = 0
    require not msg.value
    stor0 = msg.sender
    if stor0 != msg.sender:
        emit 0x4a0bfec1: msg.sender
    else:
        if stor3[address(msg.sender)]:
            emit 0xef1c2b43: msg.sender
            revert 
        if stor2[address(msg.sender)] + 10^14 < stor2[address(msg.sender)]:
            emit 0x7574a3c7: -2
            revert 
        if stor1 + 10^14 < stor1:
            emit 0x7574a3c7: -3
            revert 
        stor2[address(msg.sender)] += 10^14
        stor1 += 10^14
        emit Transfer(10^14, 0, stor0);
        emit Transfer(10^14, stor0, msg.sender);
    return code.data[1349 len 4523]
}



// =====================  Runtime code  =====================


address owner;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint8 stor3;
array of uint256 nicknames;

function supply() {
    return totalSupply
}

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function owner() {
    return owner
}

function nicknames(address arg1) {
    return nicknames[arg1][0 len nicknames[arg1].length]
}

function frozenAccount(address arg1) {
    return bool(stor3[arg1])
}

function _fallback() {
    revert 
}

function sub_6e2cf7d3(?) {
    if msg.sender == owner:
        nicknames[address(arg1)][] = Array(len=arg2.length, data=arg2[all])
        return 1
    emit 0x4a0bfec1: msg.sender
    return 0
}

function freezeAccount(address arg1, bool arg2) {
    if owner != msg.sender:
        emit 0x4a0bfec1: msg.sender
    else:
        stor3[address(arg1)] = uint8(arg2)
        emit FrozenFunds(address(arg1), arg2);
}

function mintToken(address arg1, uint256 arg2) {
    if owner != msg.sender:
        emit 0x4a0bfec1: msg.sender
    else:
        if stor3[address(arg1)]:
            emit 0xef1c2b43: arg1
            return -1
        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
            emit 0x7574a3c7: -2
            return -2
        if totalSupply + arg2 < totalSupply:
            emit 0x7574a3c7: -3
            return -3
        balanceOf[address(arg1)] += arg2
        totalSupply += arg2
        emit Transfer(arg2, 0, owner);
        emit Transfer(arg2, owner, arg1);
    return 0
}

function transfer(address arg1, address arg2, uint256 arg3) {
    if owner != msg.sender:
        emit 0x4a0bfec1: msg.sender
    else:
        if balanceOf[address(arg1)] < arg3:
            emit 0xfbe9dd4e: balanceOf[address(arg1)], arg3
            return -1
        if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
            emit 0x7574a3c7: -2
            return -2
        if stor3[address(arg2)]:
            emit 0xef1c2b43: arg2
            return -3
        balanceOf[address(arg1)] -= arg3
        balanceOf[address(arg2)] += arg3
        emit Transfer(arg3, arg1, arg2);
    return 0
}



}
