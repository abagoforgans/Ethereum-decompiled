contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
array of uint256 allowance;
array of uint256 stor2;
address owner;
address admin1Address;
uint8 stor5; offset 160
address admin2Address;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_97e278da;
uint8 stor10;
mapping of uint8 stor11;

function admin2() {
    return admin2Address
}

function name() {
    return name[0 len name.length]
}

function admin1() {
    return admin1Address
}

function totalSupply() {
    return stor2.length
}

function decimals() {
    return decimals
}

function paused() {
    return bool(stor5)
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function totalMintHoldTransactions() {
    return sub_97e278da.length
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_97e278da(?) {
    require arg1 < sub_97e278da.length
    return sub_97e278da[arg1].field_0, uint256(sub_97e278da[arg1].field_256), uint256(sub_97e278da[arg1].field_512)
}

function frozenAccount(address arg1) {
    return bool(stor11[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    revert with 0, 'Not supported'
}

function unpause() {
    require msg.sender == owner
    require stor5
    stor5 = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not stor5
    stor5 = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_e21ef626(?) {
    require msg.sender == owner
    if arg1:
        require arg1 != owner
        require admin1Address != arg1
    admin2Address = arg1
}

function sub_f0fd1160(?) {
    require msg.sender == owner
    if arg1:
        require arg1 != owner
        require admin2Address != arg1
    admin1Address = arg1
}

function approve(address arg1, uint256 arg2) {
    require not stor5
    require arg1
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1
    require arg2 <= stor2.length
    stor2.length -= arg2
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    emit Transfer(arg2, arg1, 0);
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require not stor5
    require arg1
    require arg2 <= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] -= arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function sub_117d6286(?) {
    require not stor10
    require arg4
    name[] = Array(len=arg1.length, data=arg1[all])
    symbol[] = Array(len=arg2.length, data=arg2[all])
    decimals = arg3
    require arg4
    emit OwnershipTransferred(owner, arg4);
    owner = arg4
    admin1Address = arg5
    admin2Address = arg6
    stor10 = 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require not stor5
    require arg1
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function freezeAccount(address arg1) {
    if owner != msg.sender:
        if admin1Address != msg.sender:
            if admin2Address != msg.sender:
                revert with 0, 'Unauthorised caller'
    if stor11[address(arg1)]:
        revert with 0, 'address already frozen'
    stor11[address(arg1)] = 1
    emit AccountFrozen(arg1);
}

function unFreezeAccount(address arg1) {
    if owner != msg.sender:
        if admin1Address != msg.sender:
            if admin2Address != msg.sender:
                revert with 0, 'Unauthorised caller'
    if not stor11[address(arg1)]:
        revert with 0, 'address already unfrozen'
    stor11[address(arg1)] = 0
    emit AccountUnfrozen(arg1);
}

function transfer(address arg1, uint256 arg2) {
    if stor11[msg.sender]:
        revert with 0, 'address frozen'
    if stor11[address(arg1)]:
        revert with 0, 'address frozen'
    require not stor5
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 0
}

function reclaimTokens(address arg1, uint256 arg2) {
    if owner != msg.sender:
        if admin1Address != msg.sender:
            if admin2Address != msg.sender:
                revert with 0, 'Unauthorised caller'
    require not stor5
    if not arg1:
        revert with 0, 'Invalid address'
    require owner
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 + balanceOf[stor3] >= balanceOf[stor3]
    balanceOf[stor3] += arg2
    emit Transfer(arg2, arg1, owner);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if stor11[msg.sender]:
        revert with 0, 'address frozen'
    if stor11[address(arg1)]:
        revert with 0, 'address frozen'
    if stor11[address(arg2)]:
        revert with 0, 'address frozen'
    require not stor5
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    emit Approval(allowance[address(arg1)][msg.sender], arg1, msg.sender);
    return 0
}

function cancelHoldMint(uint256 arg1) {
    require msg.sender == owner
    require arg1 < sub_97e278da.length
    require 1 <= sub_97e278da.length
    require sub_97e278da.length - 1 < sub_97e278da.length
    require arg1 < sub_97e278da.length
    sub_97e278da[arg1].field_0 = sub_97e278da[sub_97e278da.length].field_0
    uint256(sub_97e278da[arg1].field_256) = uint256(sub_97e278da[sub_97e278da.length].field_0)
    uint256(sub_97e278da[arg1].field_512) = uint256(sub_97e278da[sub_97e278da.length].field_0)
    sub_97e278da.length--
    if sub_97e278da.length > sub_97e278da.length - 1:
        idx = (3 * sub_97e278da.length) - 3
        while 3 * sub_97e278da.length > idx:
            sub_97e278da[idx].field_0 = 0
            uint256(sub_97e278da[idx].field_256) = 0
            uint256(sub_97e278da[idx].field_512) = 0
            idx = idx + 3
            continue 
    return 1
}

function mint(address arg1, uint256 arg2) {
    if owner != msg.sender:
        if admin1Address != msg.sender:
            if admin2Address != msg.sender:
                revert with 0, 'Unauthorised caller'
    require not stor5
    if stor11[address(arg1)]:
        revert with 0, 'address frozen'
    require arg2 > 0
    if msg.sender == owner:
        require arg1
        require arg2 + stor2.length >= stor2.length
        stor2.length += arg2
        require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, 0, arg1);
    else:
        if msg.sender == admin1Address:
            require block.timestamp + (12 * 3600) >= block.timestamp
            sub_97e278da.length++
            sub_97e278da[sub_97e278da.length].field_0 = arg1
            uint256(sub_97e278da[sub_97e278da.length].field_256) = arg2
            uint256(sub_97e278da[sub_97e278da.length].field_512) = block.timestamp + (12 * 3600)
        else:
            if msg.sender == admin2Address:
                require block.timestamp + (12 * 3600) >= block.timestamp
                sub_97e278da.length++
                sub_97e278da[sub_97e278da.length].field_0 = arg1
                uint256(sub_97e278da[sub_97e278da.length].field_256) = arg2
                uint256(sub_97e278da[sub_97e278da.length].field_512) = block.timestamp + (12 * 3600)
    return 1
}

function sub_a394d22f(?) {
    if owner != msg.sender:
        if admin1Address != msg.sender:
            if admin2Address != msg.sender:
                revert with 0, 'Unauthorised caller'
    require not stor5
    require arg1 < sub_97e278da.length
    if uint256(sub_97e278da[arg1].field_512) < block.timestamp:
        require arg1 < sub_97e278da.length
        if not stor11[stor9[arg1].field_0]:
            require arg1 < sub_97e278da.length
            require sub_97e278da[arg1].field_0
            require uint256(sub_97e278da[arg1].field_256) + stor2.length >= stor2.length
            stor2.length += uint256(sub_97e278da[arg1].field_256)
            require uint256(sub_97e278da[arg1].field_256) + balanceOf[stor9[arg1].field_0] >= balanceOf[stor9[arg1].field_0]
            balanceOf[stor9[arg1].field_0] += uint256(sub_97e278da[arg1].field_256)
            emit Transfer(uint256(sub_97e278da[arg1].field_256), 0, sub_97e278da[arg1].field_0);
            require arg1 < sub_97e278da.length
            require 1 <= sub_97e278da.length
            require sub_97e278da.length - 1 < sub_97e278da.length
            require arg1 < sub_97e278da.length
            sub_97e278da[arg1].field_0 = sub_97e278da[sub_97e278da.length].field_0
            uint256(sub_97e278da[arg1].field_256) = uint256(sub_97e278da[sub_97e278da.length].field_0)
            uint256(sub_97e278da[arg1].field_512) = uint256(sub_97e278da[sub_97e278da.length].field_0)
            sub_97e278da.length--
            if sub_97e278da.length > sub_97e278da.length - 1:
                idx = (3 * sub_97e278da.length) - 3
                while 3 * sub_97e278da.length > idx:
                    sub_97e278da[idx].field_0 = 0
                    uint256(sub_97e278da[idx].field_256) = 0
                    uint256(sub_97e278da[idx].field_512) = 0
                    idx = idx + 3
                    continue 
    return 1
}

function sub_80c07755(?) {
    if owner != msg.sender:
        if admin1Address != msg.sender:
            if admin2Address != msg.sender:
                revert with 0, 'Unauthorised caller'
    require not stor5
    require arg1 <= sub_97e278da.length
    idx = 0
    while idx < arg1:
        require idx < sub_97e278da.length
        mem[0] = 9
        if uint256(sub_97e278da[idx].field_512) < block.timestamp:
            require idx < sub_97e278da.length
            mem[0] = sub_97e278da[idx].field_0
            mem[32] = 11
            if not stor11[stor9[idx].field_0]:
                require idx < sub_97e278da.length
                require sub_97e278da[idx].field_0
                require uint256(sub_97e278da[idx].field_256) + stor2.length >= stor2.length
                stor2.length += uint256(sub_97e278da[idx].field_256)
                require uint256(sub_97e278da[idx].field_256) + balanceOf[stor9[idx].field_0] >= balanceOf[stor9[idx].field_0]
                mem[32] = 0
                balanceOf[stor9[idx].field_0] += uint256(sub_97e278da[idx].field_256)
                mem[96] = uint256(sub_97e278da[idx].field_256)
                emit Transfer(uint256(sub_97e278da[idx].field_256), 0, sub_97e278da[idx].field_0);
                require idx < sub_97e278da.length
                require 1 <= sub_97e278da.length
                require sub_97e278da.length - 1 < sub_97e278da.length
                require idx < sub_97e278da.length
                mem[0] = 9
                sub_97e278da[idx].field_0 = sub_97e278da[sub_97e278da.length].field_0
                uint256(sub_97e278da[idx].field_256) = uint256(sub_97e278da[sub_97e278da.length].field_0)
                uint256(sub_97e278da[idx].field_512) = uint256(sub_97e278da[sub_97e278da.length].field_0)
                sub_97e278da.length--
                if sub_97e278da.length > sub_97e278da.length - 1:
                    mem[0] = 9
                    s = sha3(9) + (3 * sub_97e278da.length) - 3
                    while sha3(9) + (3 * sub_97e278da.length) > s:
                        stor[s] = 0
                        allowance[s] = 0
                        stor2[s] = 0
                        s = s + 3
                        continue 
        idx = idx + 1
        continue 
    return 1
}



}
