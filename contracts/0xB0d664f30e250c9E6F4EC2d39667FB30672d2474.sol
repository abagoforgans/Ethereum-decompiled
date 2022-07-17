contract main {




// =====================  Runtime code  =====================


const name = 'Crypto Hongbao'

const decimals = 18

const symbol = 'HONGBAO'


uint256 totalSupply;
address owner;
uint8 stor2; offset 160
uint128 stor2; offset 160
address stor2;
mapping of uint8 stor3;
mapping of uint8 stor4;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor7;
address minterAddress; offset 8

function mintingFinished() {
    return bool(stor7)
}

function minter() {
    return minterAddress
}

function totalSupply() {
    return totalSupply
}

function isTransferable() {
    return bool(uint8(stor2.field_160))
}

function isInPassFilter(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor3[address(arg1)])
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function mapAddressPass(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor3[arg1])
}

function owner() {
    return owner
}

function mapAddressBlock(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor4[arg1])
}

function isInBlockFilter(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor4[address(arg1)])
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function finishMinting() {
    require not stor7
    require msg.sender == owner
    stor7 = 1
    emit MintFinished()
    return 1
}

function setTransferable(bool arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    Mask(96, 0, stor2.field_160) = Mask(96, 0, arg1)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    address(stor2.field_0) = arg1
}

function confirmChangeOwnership() {
    require msg.sender == address(stor2.field_0)
    emit OwnershipTransferred(owner, address(stor2.field_0));
    owner = address(stor2.field_0)
    address(stor2.field_0) = 0
}

function burn(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require arg2 <= balanceOf[address(arg1)]
    require arg2 <= totalSupply
    totalSupply -= arg2
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    emit Transfer(arg2, arg1, 0);
    emit Burn(arg2, arg1);
}

function mint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require not stor7
    if owner != msg.sender:
        require msg.sender == minterAddress
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require calldata.size >= 68
    if bool(uint8(stor2.field_160)) != 1:
        require bool(stor3[address(msg.sender)]) == 1
    else:
        require not stor4[address(msg.sender)]
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require calldata.size >= 68
    if bool(uint8(stor2.field_160)) != 1:
        require bool(stor3[address(msg.sender)]) == 1
    else:
        require not stor4[address(msg.sender)]
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require calldata.size >= 100
    if bool(uint8(stor2.field_160)) != 1:
        require bool(stor3[address(arg1)]) == 1
    else:
        require not stor4[address(arg1)]
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function addressToPass(address[] arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _14 = mem[(32 * idx) + 128]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 3
        if bool(stor3[mem[(32 * idx) + 140 len 20]]) != arg2:
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 3
            if arg2 != 1:
                stor3[address(mem[(32 * idx) + 128])] = 0
                mem[(32 * arg1.length) + 128] = 0
                emit LogFilterPass(0, address(_14));
            else:
                stor3[address(mem[(32 * idx) + 128])] = 1
                mem[(32 * arg1.length) + 128] = 1
                emit LogFilterPass(1, address(_14));
        idx = idx + 1
        continue 
}

function addressToBlock(address[] arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _14 = mem[(32 * idx) + 128]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        if bool(stor4[mem[(32 * idx) + 140 len 20]]) != arg2:
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 4
            if arg2 != 1:
                stor4[address(mem[(32 * idx) + 128])] = 0
                mem[(32 * arg1.length) + 128] = 0
                emit LogFilterBlock(0, address(_14));
            else:
                stor4[address(mem[(32 * idx) + 128])] = 1
                mem[(32 * arg1.length) + 128] = 1
                emit LogFilterBlock(1, address(_14));
        idx = idx + 1
        continue 
}



}
