contract main {




// =====================  Runtime code  =====================


const name = 'STDX Crypto Platform'

const decimals = 18

const version = '1.0'

const symbol = 'STDX'


mapping of uint256 balanceOf;
address mintMasterAddress;
uint256 totalSTACoin;
uint256 totalSupply;
uint256 totalCrowdSale;
uint256 totalMintNums;
mapping of uint256 allowance;
uint8 stor9; offset 160
uint8 stor9; offset 168
uint128 stor9; offset 168
uint128 stor9; offset 160
address owner;

function mintingFinished() {
    return bool(uint8(stor9.field_160))
}

function totalSupply() {
    return totalSupply
}

function totalCrowdSale() {
    return totalCrowdSale
}

function paused() {
    return bool(uint8(stor9.field_168))
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function totalSTACoin() {
    return totalSTACoin
}

function owner() {
    return owner
}

function totalMintNums() {
    return totalMintNums
}

function mintMaster() {
    return mintMasterAddress
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function addCrowdSale(uint256 arg1) {
    require totalCrowdSale + arg1 >= totalCrowdSale
    totalCrowdSale += arg1
}

function unpause() {
    require msg.sender == owner
    require uint8(stor9.field_168)
    Mask(88, 0, stor9.field_168) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor9.field_168)
    Mask(88, 0, stor9.field_168) = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function finishMinting() {
    require msg.sender == owner
    require not uint8(stor9.field_160)
    Mask(96, 0, stor9.field_160) = 1
    emit MintFinished()
    return 1
}

function transferMintMaster(address arg1) {
    require msg.sender == owner
    require arg1
    emit MintMasterTransferred(mintMasterAddress, arg1);
    mintMasterAddress = arg1
}

function approve(address arg1, uint256 arg2) {
    require not uint8(stor9.field_168)
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferSub(address arg1, uint256 arg2) {
    require arg1
    require msg.sender
    if balanceOf[address(arg1)] >= arg2:
        require arg2 <= balanceOf[address(arg1)]
        balanceOf[address(arg1)] -= arg2
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require not uint8(stor9.field_168)
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    require not uint8(stor9.field_168)
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor9.field_168)
    require arg1
    require msg.sender
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    if mintMasterAddress != msg.sender:
        require msg.sender == owner
    require not uint8(stor9.field_160)
    owner = msg.sender
    require msg.sender == owner
    require not uint8(stor9.field_160)
    require totalMintNums + arg2 >= totalMintNums
    totalMintNums += arg2
    require totalMintNums <= totalSupply
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor9.field_168)
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

function mintToAddresses(address[] arg1, uint256 arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if msg.sender == mintMasterAddress:
        require not uint8(stor9.field_160)
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _36 = mem[(32 * idx) + 128]
            if mintMasterAddress != msg.sender:
                require msg.sender == owner
            require not uint8(stor9.field_160)
            owner = msg.sender
            require msg.sender == owner
            require not uint8(stor9.field_160)
            require totalMintNums + arg2 >= totalMintNums
            totalMintNums += arg2
            require totalMintNums <= totalSupply
            require balanceOf[mem[(32 * idx) + 140 len 20]] + arg2 >= balanceOf[mem[(32 * idx) + 140 len 20]]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 0
            balanceOf[address(mem[(32 * idx) + 128])] = balanceOf[mem[(32 * idx) + 140 len 20]] + arg2
            emit Mint(arg2, mem[(32 * idx) + 140 len 20]);
            mem[(32 * arg1.length) + 128] = arg2
            emit Transfer(arg2, 0, address(_36));
            idx = idx + 1
            continue 
    else:
        require msg.sender == owner
        require not uint8(stor9.field_160)
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _37 = mem[(32 * idx) + 128]
            if mintMasterAddress != msg.sender:
                require msg.sender == owner
            require not uint8(stor9.field_160)
            owner = msg.sender
            require msg.sender == owner
            require not uint8(stor9.field_160)
            require totalMintNums + arg2 >= totalMintNums
            totalMintNums += arg2
            require totalMintNums <= totalSupply
            require balanceOf[mem[(32 * idx) + 140 len 20]] + arg2 >= balanceOf[mem[(32 * idx) + 140 len 20]]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 0
            balanceOf[address(mem[(32 * idx) + 128])] = balanceOf[mem[(32 * idx) + 140 len 20]] + arg2
            emit Mint(arg2, mem[(32 * idx) + 140 len 20]);
            mem[(32 * arg1.length) + 128] = arg2
            emit Transfer(arg2, 0, address(_37));
            idx = idx + 1
            continue 
}

function mintToAddressesAndAmounts(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if msg.sender == mintMasterAddress:
        require not uint8(stor9.field_160)
        require arg1.length == arg2.length
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _45 = mem[(32 * idx) + 128]
            require idx < arg2.length
            _49 = mem[(32 * idx) + (32 * arg1.length) + 160]
            if mintMasterAddress != msg.sender:
                require msg.sender == owner
            require not uint8(stor9.field_160)
            owner = msg.sender
            require msg.sender == owner
            require not uint8(stor9.field_160)
            require totalMintNums + mem[(32 * idx) + (32 * arg1.length) + 160] >= totalMintNums
            totalMintNums += mem[(32 * idx) + (32 * arg1.length) + 160]
            require totalMintNums <= totalSupply
            require balanceOf[mem[(32 * idx) + 140 len 20]] + mem[(32 * idx) + (32 * arg1.length) + 160] >= balanceOf[mem[(32 * idx) + 140 len 20]]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 0
            balanceOf[address(mem[(32 * idx) + 128])] = balanceOf[mem[(32 * idx) + 140 len 20]] + mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
            emit Mint(mem[(32 * arg1.length) + (32 * arg2.length) + 160], address(_45));
            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = _49
            emit Transfer(_49, 0, address(_45));
            idx = idx + 1
            continue 
    else:
        require msg.sender == owner
        require not uint8(stor9.field_160)
        require arg1.length == arg2.length
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _47 = mem[(32 * idx) + 128]
            require idx < arg2.length
            _50 = mem[(32 * idx) + (32 * arg1.length) + 160]
            if mintMasterAddress != msg.sender:
                require msg.sender == owner
            require not uint8(stor9.field_160)
            owner = msg.sender
            require msg.sender == owner
            require not uint8(stor9.field_160)
            require totalMintNums + mem[(32 * idx) + (32 * arg1.length) + 160] >= totalMintNums
            totalMintNums += mem[(32 * idx) + (32 * arg1.length) + 160]
            require totalMintNums <= totalSupply
            require balanceOf[mem[(32 * idx) + 140 len 20]] + mem[(32 * idx) + (32 * arg1.length) + 160] >= balanceOf[mem[(32 * idx) + 140 len 20]]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 0
            balanceOf[address(mem[(32 * idx) + 128])] = balanceOf[mem[(32 * idx) + 140 len 20]] + mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
            emit Mint(mem[(32 * arg1.length) + (32 * arg2.length) + 160], address(_47));
            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = _50
            emit Transfer(_50, 0, address(_47));
            idx = idx + 1
            continue 
}



}
