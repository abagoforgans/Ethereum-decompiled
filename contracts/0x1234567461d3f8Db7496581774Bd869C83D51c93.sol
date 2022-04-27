contract main {


// =======================  Init code  ======================


uint8 stor3; offset 160
address stor3;
uint8 stor4; offset 160
address stor4;

function _fallback() payable {
    address(stor3.field_0) = msg.sender
    uint8(stor3.field_160) = 0
    address(stor4.field_0) = msg.sender
    uint8(stor4.field_160) = 0
    return code.data[63 len 4479]
}



// =====================  Runtime code  =====================


const name = 'BitClave'

const decimals = 18

const version = '2.0'

const symbol = 'CAT'


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor3; offset 160
address owner;
uint8 stor4; offset 160
address mintMasterAddress;

function mintingFinished() {
    return bool(stor3)
}

function totalSupply() {
    return totalSupply
}

function paused() {
    return bool(stor4)
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
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

function unpause() {
    require owner == msg.sender
    require stor4
    stor4 = 0
    emit Unpause()
}

function pause() {
    require owner == msg.sender
    require not stor4
    stor4 = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function finishMinting() {
    require owner == msg.sender
    require not stor3
    require owner == msg.sender
    stor3 = 1
    emit MintFinished()
    return 1
}

function transferMintMaster(address arg1) {
    require owner == msg.sender
    require arg1
    emit MintMasterTransferred(mintMasterAddress, arg1);
    mintMasterAddress = arg1
}

function approve(address arg1, uint256 arg2) {
    require not stor4
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not stor4
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require not stor4
    require arg2 + allowance[address(msg.sender)][address(arg1)] >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    require not stor4
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor4
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function mint(address arg1, uint256 arg2) {
    if mintMasterAddress != msg.sender:
        require owner == msg.sender
    require not stor3
    owner = msg.sender
    require owner == msg.sender
    require not stor3
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function mintToAddresses(address[] arg1, uint256 arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if mintMasterAddress == msg.sender:
        require not stor3
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _36 = mem[(32 * idx) + 128]
            if mintMasterAddress != msg.sender:
                require owner == msg.sender
            require not stor3
            owner = msg.sender
            require owner == msg.sender
            require not stor3
            require arg2 + totalSupply >= totalSupply
            totalSupply += arg2
            require arg2 + balanceOf[mem[(32 * idx) + 140 len 20]] >= balanceOf[mem[(32 * idx) + 140 len 20]]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 1
            balanceOf[address(mem[(32 * idx) + 128])] = arg2 + balanceOf[mem[(32 * idx) + 140 len 20]]
            emit Mint(arg2, mem[(32 * idx) + 140 len 20]);
            mem[(32 * arg1.length) + 128] = arg2
            emit Transfer(arg2, 0, address(_36));
            idx = idx + 1
            continue 
    else:
        require owner == msg.sender
        require not stor3
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _37 = mem[(32 * idx) + 128]
            if mintMasterAddress != msg.sender:
                require owner == msg.sender
            require not stor3
            owner = msg.sender
            require owner == msg.sender
            require not stor3
            require arg2 + totalSupply >= totalSupply
            totalSupply += arg2
            require arg2 + balanceOf[mem[(32 * idx) + 140 len 20]] >= balanceOf[mem[(32 * idx) + 140 len 20]]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 1
            balanceOf[address(mem[(32 * idx) + 128])] = arg2 + balanceOf[mem[(32 * idx) + 140 len 20]]
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
    if mintMasterAddress == msg.sender:
        require not stor3
        require arg1.length == arg2.length
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _45 = mem[(32 * idx) + 128]
            require idx < arg2.length
            _49 = mem[(32 * idx) + (32 * arg1.length) + 160]
            if mintMasterAddress != msg.sender:
                require owner == msg.sender
            require not stor3
            owner = msg.sender
            require owner == msg.sender
            require not stor3
            require mem[(32 * idx) + (32 * arg1.length) + 160] + totalSupply >= totalSupply
            totalSupply += mem[(32 * idx) + (32 * arg1.length) + 160]
            require mem[(32 * idx) + (32 * arg1.length) + 160] + balanceOf[mem[(32 * idx) + 140 len 20]] >= balanceOf[mem[(32 * idx) + 140 len 20]]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 1
            balanceOf[address(mem[(32 * idx) + 128])] = mem[(32 * idx) + (32 * arg1.length) + 160] + balanceOf[mem[(32 * idx) + 140 len 20]]
            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
            emit Mint(mem[(32 * arg1.length) + (32 * arg2.length) + 160], address(_45));
            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = _49
            emit Transfer(_49, 0, address(_45));
            idx = idx + 1
            continue 
    else:
        require owner == msg.sender
        require not stor3
        require arg1.length == arg2.length
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _47 = mem[(32 * idx) + 128]
            require idx < arg2.length
            _50 = mem[(32 * idx) + (32 * arg1.length) + 160]
            if mintMasterAddress != msg.sender:
                require owner == msg.sender
            require not stor3
            owner = msg.sender
            require owner == msg.sender
            require not stor3
            require mem[(32 * idx) + (32 * arg1.length) + 160] + totalSupply >= totalSupply
            totalSupply += mem[(32 * idx) + (32 * arg1.length) + 160]
            require mem[(32 * idx) + (32 * arg1.length) + 160] + balanceOf[mem[(32 * idx) + 140 len 20]] >= balanceOf[mem[(32 * idx) + 140 len 20]]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 1
            balanceOf[address(mem[(32 * idx) + 128])] = mem[(32 * idx) + (32 * arg1.length) + 160] + balanceOf[mem[(32 * idx) + 140 len 20]]
            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
            emit Mint(mem[(32 * arg1.length) + (32 * arg2.length) + 160], address(_47));
            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = _50
            emit Transfer(_50, 0, address(_47));
            idx = idx + 1
            continue 
}



}
