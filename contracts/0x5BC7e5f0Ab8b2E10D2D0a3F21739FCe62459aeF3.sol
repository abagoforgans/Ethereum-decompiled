contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
address stor3;
uint256 stor5;

function _fallback() {
    stor3 = 0xda3780cff2ae3a59ae16ec1734deec77a7fd8db2
    stor0 = 100000000 * 10^18
    stor1[0x3135f4aca3c1ad4758981500f8db20ebdc5a1cab] = stor0
    emit Transfer(address rg1, address rg2, uint256 rg3):
                  stor0,
    emit 0x0: stor0
    emit 0x3135f4ac: stor0
    require 20000000 * 10^18 <= stor1[0x3135f4aca3c1ad4758981500f8db20ebdc5a1cab]
    emit Transfer(20000000 * 10^18, 0x3135f4aca3c1ad4758981500f8db20ebdc5a1cab, Mask(160, 96, 'Hut34 Vesting') >> 96);
    require stor1[0x3135f4aca3c1ad4758981500f8db20ebdc5a1cab] - 20000000 * 10^18 <= stor1[0x3135f4aca3c1ad4758981500f8db20ebdc5a1cab]
    stor1[0x3135f4aca3c1ad4758981500f8db20ebdc5a1cab] -= 20000000 * 10^18
    require stor1[Mask(160, 96, 'Hut34 Vesting')] + 20000000 * 10^18 >= stor1[Mask(160, 96, 'Hut34 Vesting')]
    stor1[Mask(160, 96, 'Hut34 Vesting')] += 20000000 * 10^18
    require block.timestamp + (4368 * 24 * 3600) >= block.timestamp
    stor5 = block.timestamp + (4368 * 24 * 3600)
    return code.data[1527 len 5692]
}



// =====================  Runtime code  =====================


const name = 'Hut34 Entropy Token'

const decimals = 18

const symbol = 'ENTRP'

const VESTING_PERIOD = (4368 * 24 * 3600)

const TOTAL_TOKENS = 100 * 10^6

const HUT34_VEST_ADDR = (Mask(160, 96, 'Hut34 Vesting') >> 96)

const OWNER = 0xda3780cff2ae3a59ae16ec1734deec77a7fd8db2

const HUT34_WALLET = 0xa70d04dc4a64960c40cd2ed2cde36d76ca4edfab

const REPLACES = 0x9901ed1e649c4a77c7fff3dfd446ffe3464da747

const VESTED_PERCENT = 20

const VESTED_TOKENS = 20000000 * 10^18

const HUT34_RETAIN = 0x3135f4aca3c1ad4758981500f8db20ebdc5a1cab


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
address newOwner;
uint256 nextReleaseDate;

function nextReleaseDate() {
    return nextReleaseDate
}

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function newOwner() {
    return newOwner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function changeOwner(address arg1) {
    require msg.sender == owner
    emit ChangeOwnerTo(arg1);
    newOwner = arg1
    return 1
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit ChangedOwner(owner, msg.sender);
    owner = newOwner
    newOwner = 0
    return 1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferExternalToken(address arg1, address arg2, uint256 arg3) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg2), arg3
    require ext_call.success
    require ext_call.return_data[0]
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(msg.sender)]
    emit Transfer(arg2, msg.sender, arg1);
    if arg2:
        require balanceOf[address(msg.sender)] - arg2 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= arg2
        require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += arg2
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require allowance[address(arg1)][address(msg.sender)] - arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg3 <= balanceOf[address(arg1)]
    emit Transfer(arg3, arg1, arg2);
    if arg3:
        require balanceOf[address(arg1)] - arg3 <= balanceOf[address(arg1)]
        balanceOf[address(arg1)] -= arg3
        require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
        balanceOf[address(arg2)] += arg3
    return 1
}

function releaseVested() {
    require block.timestamp > nextReleaseDate
    emit VestingReleased(nextReleaseDate);
    require nextReleaseDate + (4368 * 24 * 3600) >= nextReleaseDate
    nextReleaseDate += 4368 * 24 * 3600
    require 5000000 * 10^18 <= balanceOf[Mask(160, 96, 'Hut34 Vesting')]
    emit Transfer(5000000 * 10^18, Mask(160, 96, 'Hut34 Vesting') >> 96, 0x3135f4aca3c1ad4758981500f8db20ebdc5a1cab);
    require balanceOf[Mask(160, 96, 'Hut34 Vesting')] - 5000000 * 10^18 <= balanceOf[Mask(160, 96, 'Hut34 Vesting')]
    balanceOf[Mask(160, 96, 'Hut34 Vesting')] -= 5000000 * 10^18
    require balanceOf[0x3135f4aca3c1ad4758981500f8db20ebdc5a1cab] + 5000000 * 10^18 >= balanceOf[0x3135f4aca3c1ad4758981500f8db20ebdc5a1cab]
    balanceOf[0x3135f4aca3c1ad4758981500f8db20ebdc5a1cab] += 5000000 * 10^18
    return 1
}

function transferToMany(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg1.length == arg2.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _22 = mem[(32 * idx) + 128]
        require idx < arg2.length
        _24 = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[0] = msg.sender
        mem[32] = 1
        require mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[address(msg.sender)]
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
        emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], msg.sender, address(_22));
        if _24:
            require balanceOf[address(msg.sender)] - _24 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= _24
            require balanceOf[address(_22)] + _24 >= balanceOf[address(_22)]
            mem[0] = address(_22)
            mem[32] = 1
            balanceOf[address(_22)] += _24
        idx = idx + 1
        continue 
    return 1
}



}
