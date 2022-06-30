contract main {




// =====================  Runtime code  =====================


const decimals = 18


address owner;
uint8 stor1; offset 160
address pendingOwner;
mapping of uint8 stor2;
mapping of struct sub_a2354324;
mapping of uint8 stor4;
array of uint256 name;
array of uint256 symbol;
uint256 totalSupply;
uint256 sub_1ae08013;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function sub_1ae08013(?) {
    return sub_1ae08013
}

function admins(address arg1) {
    return bool(stor2[arg1])
}

function paused() {
    return bool(stor1)
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_a2354324(?) {
    return sub_a2354324[arg1].field_0, sub_a2354324[arg1].field_256
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function pendingOwner() {
    return pendingOwner
}

function blacklist(address arg1) {
    return bool(stor4[arg1])
}

function _fallback() payable {
    revert
}

function sub_b2d52d27(?) {
    require msg.sender == owner
    sub_1ae08013 = arg1
    return 1
}

function unpause() {
    require msg.sender == owner
    require stor1
    stor1 = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not stor1
    stor1 = 1
    emit Pause()
}

function claimOwnership() {
    require msg.sender == pendingOwner
    emit OwnershipTransferred(owner, pendingOwner);
    owner = pendingOwner
    pendingOwner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferPending(owner, pendingOwner);
    pendingOwner = arg1
}

function changeName(string arg1, string arg2) {
    require msg.sender == owner
    name[] = Array(len=arg1.length, data=arg1[all])
    symbol[] = Array(len=arg2.length, data=arg2[all])
}

function addAddressToBlacklist(address arg1) {
    if not stor2[msg.sender]:
        require msg.sender == owner
    if stor4[address(arg1)]:
        return 0
    stor4[address(arg1)] = 1
    emit BlacklistedAddressAdded(arg1);
    return 1
}

function removeAddressFromBlacklist(address arg1) {
    if not stor2[msg.sender]:
        require msg.sender == owner
    if not stor4[address(arg1)]:
        return 0
    stor4[address(arg1)] = 0
    emit BlacklistedAddressRemoved(arg1);
    return 1
}

function approve(address arg1, uint256 arg2) {
    require not stor1
    require not stor4[msg.sender]
    require not stor4[address(arg1)]
    require arg2 <= balanceOf[msg.sender]
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function addAddressToAdmin(address arg1) {
    require msg.sender == owner
    if stor2[address(arg1)]:
        return 0
    stor2[address(arg1)] = 1
    sub_a2354324[address(arg1)].field_0 = 0
    sub_a2354324[address(arg1)].field_256 = 0
    emit AdminAddressAdded(arg1);
    return 1
}

function removeAddressFromAdmin(address arg1) {
    require msg.sender == owner
    if not stor2[address(arg1)]:
        return 0
    stor2[address(arg1)] = 0
    sub_a2354324[address(arg1)].field_0 = 0
    sub_a2354324[address(arg1)].field_256 = 0
    emit AdminAddressRemoved(arg1);
    return 1
}

function burn(uint256 arg1) {
    require not stor1
    require not stor4[msg.sender]
    require arg1 <= balanceOf[msg.sender]
    require arg1 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require msg.sender == owner
    require not stor4[address(arg1)]
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    emit Mint(arg2, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    require not stor1
    require not stor4[msg.sender]
    require not stor4[address(arg1)]
    require arg2 <= allowance[msg.sender][address(arg1)]
    require arg2 <= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] -= arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require not stor1
    require not stor4[msg.sender]
    require not stor4[address(arg1)]
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    require arg2 + allowance[msg.sender][address(arg1)] <= balanceOf[msg.sender]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require not stor1
    require not stor4[msg.sender]
    require not stor4[address(arg1)]
    require arg2 <= balanceOf[address(arg1)]
    require arg2 <= allowance[address(arg1)][msg.sender]
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function removeAddressesFromBlacklist(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if not stor2[msg.sender]:
        require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        if stor4[mem[(32 * idx) + 140 len 20]]:
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 4
            stor4[address(mem[(32 * idx) + 128])] = 0
            emit BlacklistedAddressRemoved(mem[(32 * idx) + 140 len 20]);
        idx = idx + 1
        continue 
    return 1
}

function addAddressesToBlacklist(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if not stor2[msg.sender]:
        require msg.sender == owner
    require arg1.length <= 100
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        if not stor4[mem[(32 * idx) + 140 len 20]]:
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 4
            stor4[address(mem[(32 * idx) + 128])] = 1
            emit BlacklistedAddressAdded(mem[(32 * idx) + 140 len 20]);
        idx = idx + 1
        continue 
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not stor1
    require not stor4[msg.sender]
    require not stor4[address(arg1)]
    require arg2 > 0
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require balanceOf[address(arg1)] + balanceOf[msg.sender] >= balanceOf[msg.sender]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    require balanceOf[address(arg1)] + balanceOf[msg.sender] == balanceOf[msg.sender] + balanceOf[address(arg1)]
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor1
    require not stor4[msg.sender]
    require not stor4[address(arg1)]
    require not stor4[address(arg2)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    require arg3 > 0
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require balanceOf[address(arg2)] + balanceOf[arg1] >= balanceOf[arg1]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    require balanceOf[address(arg2)] + balanceOf[arg1] == balanceOf[arg1] + balanceOf[address(arg2)]
    return 1
}

function sub_140de59b(?) {
    if not stor2[msg.sender]:
        require msg.sender == owner
    require not stor1
    require not stor4[address(arg1)]
    require arg2 <= sub_1ae08013
    if sub_a2354324[msg.sender].field_256 / 24 * 3600 != block.timestamp / 24 * 3600:
        sub_a2354324[msg.sender].field_0 = 0
    require arg2 + sub_a2354324[msg.sender].field_0 >= sub_a2354324[msg.sender].field_0
    require arg2 + sub_a2354324[msg.sender].field_0 <= sub_1ae08013
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    sub_a2354324[msg.sender].field_256 = block.timestamp
    require arg2 + sub_a2354324[msg.sender].field_0 >= sub_a2354324[msg.sender].field_0
    sub_a2354324[msg.sender].field_0 += arg2
    emit 0x8d5d21e1: arg2, msg.sender, arg1
    emit Mint(arg2, arg1);
    return 1
}

function batchTransfer(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require not stor1
    require not stor4[msg.sender]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        require not stor4[mem[(32 * idx) + 140 len 20]]
        idx = idx + 1
        continue 
    require arg1.length > 0
    require arg1.length <= 100
    require arg2.length > 0
    require arg1.length == arg2.length
    idx = 0
    s = 0
    while idx < arg2.length:
        require idx < arg2.length
        require mem[(32 * arg1.length) + (32 * idx) + 160] + s >= s
        idx = idx + 1
        s = mem[(32 * arg1.length) + (32 * idx) + 160] + s
        continue 
    require mem[(32 * arg1.length) + (32 * arg2.length) + 160] * arg2.length <= balanceOf[msg.sender]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _79 = mem[(32 * idx) + 128]
        require idx < arg2.length
        require mem[(32 * idx) + (32 * arg1.length) + 160] > 0
        require mem[(32 * idx) + 140 len 20]
        require mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[address(msg.sender)]
        _83 = sha3(address(mem[(32 * idx) + 128]), 9)
        require balanceOf[address(mem[(32 * idx) + 128])] + balanceOf[msg.sender] >= balanceOf[msg.sender]
        require mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= mem[(32 * idx) + (32 * arg1.length) + 160]
        require mem[(32 * idx) + (32 * arg1.length) + 160] + balanceOf[mem[(32 * idx) + 140 len 20]] >= balanceOf[mem[(32 * idx) + 140 len 20]]
        balanceOf[address(mem[(32 * idx) + 128])] = mem[(32 * idx) + (32 * arg1.length) + 160] + balanceOf[mem[(32 * idx) + 140 len 20]]
        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
        emit Transfer(mem[(32 * arg2.length) + (32 * arg1.length) + 160], msg.sender, address(_79));
        mem[32] = 9
        mem[0] = msg.sender
        require stor[_83] + balanceOf[msg.sender] == balanceOf[msg.sender] + balanceOf[address(_79)]
        idx = idx + 1
        continue 
    return 1
}



}
