contract main {




// =====================  Runtime code  =====================


const name = 'Virtual Rehab'

const decimals = 18

const symbol = 'VRH'

const INITIAL_SUPPLY = 336265000 * 10^18

const MAX_SUPPLY = 400000000 * 10^18


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
address owner;
mapping of uint8 stor4;
uint8 stor5;
uint8 stor5; offset 8
uint256 stor5; offset 8
uint256 iCOEndDate;
mapping of uint8 stor7;

function totalSupply() {
    return totalSupply
}

function ICOEndDate() {
    return iCOEndDate
}

function admins(address arg1) {
    return bool(stor4[arg1])
}

function paused() {
    return bool(uint8(stor5.field_0))
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function released() {
    return bool(uint8(stor5.field_8))
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function isAdmin(address arg1) {
    if stor4[address(arg1)]:
        return bool(stor4[address(arg1)])
    return (arg1 == owner)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function unpause() {
    if not stor4[address(msg.sender)]:
        require msg.sender == owner
    require uint8(stor5.field_0)
    uint8(stor5.field_0) = 0
    emit Unpaused()
}

function pause() {
    if not stor4[address(msg.sender)]:
        require msg.sender == owner
    require not uint8(stor5.field_0)
    uint8(stor5.field_0) = 1
    emit Paused()
}

function setICOEndDate(uint256 arg1) {
    if not stor4[address(msg.sender)]:
        require msg.sender == owner
    require not iCOEndDate
    require arg1 > block.timestamp
    iCOEndDate = arg1
    emit ICOEndDateSet(arg1);
}

function addAdmin(address arg1) {
    if not stor4[address(msg.sender)]:
        require msg.sender == owner
    require arg1
    require not stor4[address(arg1)]
    require arg1 != owner
    stor4[address(arg1)] = 1
    emit AdminAdded(arg1);
}

function removeAdmin(address arg1) {
    if not stor4[address(msg.sender)]:
        require msg.sender == owner
    require arg1
    require stor4[address(arg1)]
    require arg1 != owner
    stor4[address(arg1)] = 0
    emit AdminRemoved(arg1);
}

function disableTokenTransfers() {
    if not stor4[address(msg.sender)]:
        require msg.sender == owner
    require not uint8(stor5.field_0)
    require uint8(stor5.field_8)
    Mask(248, 0, stor5.field_8) = 0
    emit TokenReleased(bool(uint8(stor5.field_8)));
}

function releaseTokenForTransfer() {
    if not stor4[address(msg.sender)]:
        require msg.sender == owner
    require not uint8(stor5.field_0)
    require not uint8(stor5.field_8)
    Mask(248, 0, stor5.field_8) = 1
    emit TokenReleased(bool(uint8(stor5.field_8)));
}

function burn(uint256 arg1) {
    require not uint8(stor5.field_0)
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
}

function approve(address arg1, uint256 arg2) {
    if uint8(stor5.field_0):
        if not stor4[address(msg.sender)]:
            require msg.sender == owner
    else:
        if not uint8(stor5.field_8):
            if not stor4[address(msg.sender)]:
                require msg.sender == owner
    require arg1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    if uint8(stor5.field_0):
        if not stor4[address(msg.sender)]:
            require msg.sender == owner
    else:
        if not uint8(stor5.field_8):
            if not stor4[address(msg.sender)]:
                require msg.sender == owner
    require arg1
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if uint8(stor5.field_0):
        if not stor4[address(msg.sender)]:
            require msg.sender == owner
    else:
        if not uint8(stor5.field_8):
            if not stor4[address(msg.sender)]:
                require msg.sender == owner
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if uint8(stor5.field_0):
        if not stor4[address(msg.sender)]:
            require msg.sender == owner
    else:
        if not uint8(stor5.field_8):
            if not stor4[address(msg.sender)]:
                require msg.sender == owner
    require arg1
    if arg2 >= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] = 0
    else:
        require arg2 <= allowance[address(msg.sender)][address(arg1)]
        allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if uint8(stor5.field_0):
        if not stor4[address(arg1)]:
            require arg1 == owner
    else:
        if not uint8(stor5.field_8):
            if not stor4[address(arg1)]:
                require arg1 == owner
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function mintTokensForAdvisors() {
    if not stor4[address(msg.sender)]:
        require msg.sender == owner
    require iCOEndDate
    require block.timestamp > iCOEndDate + (8760 * 24 * 3600)
    require not uint8(stor5.field_0)
    mem[200 len 0] = None
    require not stor7[mem[200 len 8]]
    require msg.sender
    require totalSupply + 1650000 * 10^18 >= totalSupply
    require totalSupply + 1650000 * 10^18 <= 400000000 * 10^18
    require balanceOf[address(msg.sender)] + 1650000 * 10^18 >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += 1650000 * 10^18
    require totalSupply + 1650000 * 10^18 >= totalSupply
    totalSupply += 1650000 * 10^18
    emit Mint(1650000 * 10^18, msg.sender);
    emit Transfer(1650000 * 10^18, 0, msg.sender);
    mem[240 len 0] = None
    stor7[mem[240 len 8]] = 1
}

function mintTokensForServices() {
    if not stor4[address(msg.sender)]:
        require msg.sender == owner
    require iCOEndDate
    require block.timestamp > iCOEndDate + (1440 * 24 * 3600)
    require not uint8(stor5.field_0)
    mem[200 len 0] = None
    require not stor7[mem[200 len 8]]
    require msg.sender
    require totalSupply + 2085000 * 10^18 >= totalSupply
    require totalSupply + 2085000 * 10^18 <= 400000000 * 10^18
    require balanceOf[address(msg.sender)] + 2085000 * 10^18 >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += 2085000 * 10^18
    require totalSupply + 2085000 * 10^18 >= totalSupply
    totalSupply += 2085000 * 10^18
    emit Mint(2085000 * 10^18, msg.sender);
    emit Transfer(2085000 * 10^18, 0, msg.sender);
    mem[240 len 0] = None
    stor7[mem[240 len 8]] = 1
}

function mintTokensForFounders() {
    if not stor4[address(msg.sender)]:
        require msg.sender == owner
    require iCOEndDate
    require block.timestamp > iCOEndDate + (17280 * 24 * 3600)
    require not uint8(stor5.field_0)
    mem[200 len 0] = None
    require not stor7[mem[200 len 8]]
    require msg.sender
    require totalSupply + 60000000 * 10^18 >= totalSupply
    require totalSupply + 60000000 * 10^18 <= 400000000 * 10^18
    require balanceOf[address(msg.sender)] + 60000000 * 10^18 >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += 60000000 * 10^18
    require totalSupply + 60000000 * 10^18 >= totalSupply
    totalSupply += 60000000 * 10^18
    emit Mint(60000000 * 10^18, msg.sender);
    emit Transfer(60000000 * 10^18, 0, msg.sender);
    mem[240 len 0] = None
    stor7[mem[240 len 8]] = 1
}

function addManyAdmins(address[] arg1) {
    if not stor4[address(msg.sender)]:
        require msg.sender == owner
    s = 0
    idx = 0
    while uint8(idx) < arg1.length:
        if address(cd[((32 * uint8(idx)) + arg1 + 36)]):
            mem[0] = address(cd[((32 * uint8(idx)) + arg1 + 36)])
            mem[32] = 4
            if not stor4[address(cd[((32 * uint8(idx)) + arg1 + 36)])]:
                if address(cd[((32 * uint8(idx)) + arg1 + 36)]) != owner:
                    mem[0] = address(cd[((32 * uint8(idx)) + arg1 + 36)])
                    mem[32] = 4
                    stor4[address(cd[((32 * uint8(idx)) + arg1 + 36)])] = 1
                    require uint8(idx) < arg1.length
                    emit AdminAdded(address(cd[((32 * uint8(idx)) + arg1 + 36)]));
        s = address(cd[((32 * uint8(idx)) + arg1 + 36)])
        idx = idx + 1
        continue 
}

function removeManyAdmins(address[] arg1) {
    if not stor4[address(msg.sender)]:
        require msg.sender == owner
    s = 0
    idx = 0
    while uint8(idx) < arg1.length:
        if address(cd[((32 * uint8(idx)) + arg1 + 36)]):
            mem[0] = address(cd[((32 * uint8(idx)) + arg1 + 36)])
            mem[32] = 4
            if stor4[address(cd[((32 * uint8(idx)) + arg1 + 36)])]:
                if address(cd[((32 * uint8(idx)) + arg1 + 36)]) != owner:
                    mem[0] = address(cd[((32 * uint8(idx)) + arg1 + 36)])
                    mem[32] = 4
                    stor4[address(cd[((32 * uint8(idx)) + arg1 + 36)])] = 0
                    require uint8(idx) < arg1.length
                    emit AdminRemoved(address(cd[((32 * uint8(idx)) + arg1 + 36)]));
        s = address(cd[((32 * uint8(idx)) + arg1 + 36)])
        idx = idx + 1
        continue 
}

function bulkTransfer(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if stor4[address(msg.sender)]:
        require arg1.length == arg2.length
        idx = 0
        s = 0
        while idx < arg2.length:
            require idx < arg2.length
            require s + mem[(32 * idx) + (32 * arg1.length) + 160] >= s
            idx = idx + 1
            s = s + mem[(32 * idx) + (32 * arg1.length) + 160]
            continue 
        require balanceOf[address(msg.sender)] >= s * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _234 = mem[(32 * idx) + 128]
            require idx < arg2.length
            if uint8(stor5.field_0):
                if not stor4[address(msg.sender)]:
                    require msg.sender == owner
            else:
                if not uint8(stor5.field_8):
                    if not stor4[address(msg.sender)]:
                        require msg.sender == owner
            require mem[(32 * idx) + 140 len 20]
            require mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[address(msg.sender)]
            require mem[(32 * idx) + 140 len 20]
            require mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= mem[(32 * idx) + (32 * arg1.length) + 160]
            require balanceOf[address(mem[(32 * idx) + 128])] + mem[(32 * idx) + (32 * arg1.length) + 160] >= balanceOf[address(mem[(32 * idx) + 128])]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 0
            balanceOf[address(mem[(32 * idx) + 128])] += mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
            emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], msg.sender, address(_234));
            idx = idx + 1
            continue 
    else:
        require msg.sender == owner
        require arg1.length == arg2.length
        idx = 0
        s = 0
        while idx < arg2.length:
            require idx < arg2.length
            require s + mem[(32 * idx) + (32 * arg1.length) + 160] >= s
            idx = idx + 1
            s = s + mem[(32 * idx) + (32 * arg1.length) + 160]
            continue 
        require balanceOf[address(msg.sender)] >= s * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _236 = mem[(32 * idx) + 128]
            require idx < arg2.length
            if uint8(stor5.field_0):
                if not stor4[address(msg.sender)]:
                    require msg.sender == owner
            else:
                if not uint8(stor5.field_8):
                    if not stor4[address(msg.sender)]:
                        require msg.sender == owner
            require mem[(32 * idx) + 140 len 20]
            require mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[address(msg.sender)]
            require mem[(32 * idx) + 140 len 20]
            require mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= mem[(32 * idx) + (32 * arg1.length) + 160]
            require balanceOf[address(mem[(32 * idx) + 128])] + mem[(32 * idx) + (32 * arg1.length) + 160] >= balanceOf[address(mem[(32 * idx) + 128])]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 0
            balanceOf[address(mem[(32 * idx) + 128])] += mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
            emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], msg.sender, address(_236));
            idx = idx + 1
            continue 
    mem[(32 * arg1.length) + (32 * arg2.length) + 256 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(64 * arg1.length) + (32 * arg2.length) + 256] = arg2.length
    mem[(64 * arg1.length) + (32 * arg2.length) + 288 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    emit BulkTransferPerformed(Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 256 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32]), (32 * arg1.length) + 96);
}



}
